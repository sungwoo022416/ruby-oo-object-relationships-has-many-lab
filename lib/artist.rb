class Artist
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        save
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def self.all
        @@all
    end

    def save
        @@all << self
    end

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(song)
        song = Song.new(song)
        song.artist = self
    end
    
    def self.song_count
        Song.all.count
    end
end

