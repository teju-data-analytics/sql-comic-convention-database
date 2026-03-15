-- Comic Convention Database Schema

CREATE TABLE ConventionAttendee (
AttendeeID INT PRIMARY KEY,
FirstName VARCHAR(25),
LastName VARCHAR(25),
PhoneNumber VARCHAR(10),
EmailAddress VARCHAR(40),
BadgeType VARCHAR(1),
DaysAttending VARCHAR(10)
);

CREATE TABLE EventSchedule (
EventID INT PRIMARY KEY,
EventDay VARCHAR(3),
EventTime VARCHAR(5),
EventName VARCHAR(50),
EventLocation VARCHAR(20),
EventDescription VARCHAR(100)
);

CREATE TABLE ArtistBooths (
ArtistID INT PRIMARY KEY,
ArtistName VARCHAR(50),
BoothNumber INT,
Genre VARCHAR(20),
Products VARCHAR(100)
);

CREATE TABLE Merchandise (
ProductID INT PRIMARY KEY,
ProductName VARCHAR(50),
ProductDescription VARCHAR(100),
ProductPrice DECIMAL(5,2),
ProductStock INT
);

CREATE TABLE AttendeeItinerary (
ItineraryID INT PRIMARY KEY,
AttendeeID INT,
EventID INT,
ArtistID INT,
ProductID INT
);
