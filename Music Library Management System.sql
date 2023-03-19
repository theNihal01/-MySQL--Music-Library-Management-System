# Here I'm Creating my Music collection Project 
Go

create database music_collection;
use music_collection;

# Now Create =======================Tables====================

CREATE TABLE music_collection (
  id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(255) NOT NULL,
  year INT,
  director VARCHAR(255),
  genre VARCHAR(255)
);

CREATE TABLE artist (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL
);

# Now Insert All ====================Values================

INSERT INTO music_collection (title, year, director, genre)
VALUES ('The Godfather', 1972, 'Francis Ford Coppola', 'Crime/Drama'),
       ('The Shawshank Redemption', 1994, 'Frank Darabont', 'Drama'),
       ('Pulp Fiction', 1994, 'Quentin Tarantino', 'Crime/Thriller');

INSERT INTO artist (name)
VALUES ('The Beatles'),
       ('Pink Floyd'),
       ('Led Zeppelin');

# Retrieve all ==========music_collection or albums============

SELECT * FROM music_collection;

# Retrieve all music_collection or albums by a particular director or artist:


SELECT * FROM music_collection WHERE director = 'Quentin Tarantino';

SELECT music_collection.title FROM music_collection INNER JOIN artist ON 
music_collection.artist_id = artist.id WHERE artist.name = 'Pink Floyd';

# ++++++++++ Update the year of a DVD or album +++++++++++++++++

UPDATE music_collection SET year = 1974 WHERE title = 'The Godfather';
# ========Delete a DVD or album:=======
DELETE FROM music_collection WHERE title = 'Pulp Fiction';
