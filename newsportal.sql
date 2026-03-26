-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 28, 2024 at 09:59 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newsportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `id` int(11) NOT NULL,
  `AdminUserName` varchar(255) DEFAULT NULL,
  `AdminPassword` varchar(255) DEFAULT NULL,
  `AdminEmailId` varchar(255) DEFAULT NULL,
  `userType` int(11) DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `AdminUserName`, `AdminPassword`, `AdminEmailId`, `userType`, `CreationDate`, `UpdationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', 'phpgurukulofficial@gmail.com', 1, '2024-01-09 18:30:00', '2024-01-31 05:42:52'),
(5, 'TaazaKhabar', 'f925916e2754e5e03f75dd58a5733251', 'admin@gmail.com', 0, '2024-09-27 15:56:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Description`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(3, 'Sports', 'Related to sports news', '2024-01-11 18:30:00', '2024-01-31 05:43:16', 1),
(5, 'Entertainment', 'Entertainment related  News', '2024-01-11 18:30:00', '2024-01-31 05:43:25', 1),
(6, 'Politics', 'Politics', '2024-01-11 18:30:00', '2024-01-31 05:43:25', 1),
(7, 'Business', 'Business', '2024-01-11 18:30:00', '2024-01-31 05:43:25', 1),
(8, 'COVID-19', 'COVID-19', '2024-01-11 18:30:00', '2024-01-31 05:43:25', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblcomments`
--

CREATE TABLE `tblcomments` (
  `id` int(11) NOT NULL,
  `postId` int(11) DEFAULT NULL,
  `name` varchar(120) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `comment` mediumtext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcomments`
--

INSERT INTO `tblcomments` (`id`, `postId`, `name`, `email`, `comment`, `postingDate`, `status`) VALUES
(4, 19, 'Techy Guy', 'techyguy@gmail.com', 'Just watched it, I am thrilled with the Bhuvan acting in Season 2.', '2024-09-27 16:03:02', 1),
(5, 19, 'Vasant gawde', 'vasant@gmail.com', 'Jinhone v abhi tak nahi dekha, der kis baat ki hey ?', '2024-09-27 16:04:40', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `Description` longtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `PageTitle`, `Description`, `PostingDate`, `UpdationDate`) VALUES
(1, 'aboutus', 'About News Portal', '<p><font color=\"#7b8898\" face=\"Mercury SSm A, Mercury SSm B, Georgia, Times, Times New Roman, Microsoft YaHei New, Microsoft Yahei, å¾®è½¯é›…é»‘, å®‹ä½“, SimSun, STXihei, åŽæ–‡ç»†é»‘, serif\"><span style=\"font-size: 26px;\">Welcome to Taaza Khabar, your one-stop destination for staying informed and up-to-date with the latest news and developments from around the world.<br></span></font><font color=\"#7b8898\" face=\"Mercury SSm A, Mercury SSm B, Georgia, Times, Times New Roman, Microsoft YaHei New, Microsoft Yahei, å¾®è½¯é›…é»‘, å®‹ä½“, SimSun, STXihei, åŽæ–‡ç»†é»‘, serif\"><span style=\"font-size: 26px;\">At&nbsp;</span></font><span style=\"color: rgb(123, 136, 152); font-family: &quot;Mercury SSm A&quot;, &quot;Mercury SSm B&quot;, Georgia, Times, &quot;Times New Roman&quot;, &quot;Microsoft YaHei New&quot;, &quot;Microsoft Yahei&quot;, å¾®è½¯é›…é»‘, å®‹ä½“, SimSun, STXihei, åŽæ–‡ç»†é»‘, serif; font-size: 26px;\">Taaza Khabar</span><font color=\"#7b8898\" face=\"Mercury SSm A, Mercury SSm B, Georgia, Times, Times New Roman, Microsoft YaHei New, Microsoft Yahei, å¾®è½¯é›…é»‘, å®‹ä½“, SimSun, STXihei, åŽæ–‡ç»†é»‘, serif\"><span style=\"font-size: 26px;\">, we understand the importance of reliable and timely information in today\'s fast-paced world. </span></font></p><p><font color=\"#7b8898\" face=\"Mercury SSm A, Mercury SSm B, Georgia, Times, Times New Roman, Microsoft YaHei New, Microsoft Yahei, å¾®è½¯é›…é»‘, å®‹ä½“, SimSun, STXihei, åŽæ–‡ç»†é»‘, serif\"><span style=\"font-size: 26px;\">Our team of dedicated journalists and editors work tirelessly to bring you the most relevant and engaging stories from a variety of sources, ensuring that you are always well-informed on the issues that matter most to you.<br></span></font><font color=\"#7b8898\" face=\"Mercury SSm A, Mercury SSm B, Georgia, Times, Times New Roman, Microsoft YaHei New, Microsoft Yahei, å¾®è½¯é›…é»‘, å®‹ä½“, SimSun, STXihei, åŽæ–‡ç»†é»‘, serif\"><span style=\"font-size: 26px;\">Whether you\'re interested in politics, sports, entertainment, technology, or business, you\'ll find it all here on&nbsp;</span></font><span style=\"color: rgb(123, 136, 152); font-family: &quot;Mercury SSm A&quot;, &quot;Mercury SSm B&quot;, Georgia, Times, &quot;Times New Roman&quot;, &quot;Microsoft YaHei New&quot;, &quot;Microsoft Yahei&quot;, å¾®è½¯é›…é»‘, å®‹ä½“, SimSun, STXihei, åŽæ–‡ç»†é»‘, serif; font-size: 26px;\">News Portal</span><font color=\"#7b8898\" face=\"Mercury SSm A, Mercury SSm B, Georgia, Times, Times New Roman, Microsoft YaHei New, Microsoft Yahei, å¾®è½¯é›…é»‘, å®‹ä½“, SimSun, STXihei, åŽæ–‡ç»†é»‘, serif\"><span style=\"font-size: 26px;\">. Our user-friendly interface makes it easy to navigate through the latest headlines, explore in-depth articles, and discover new perspectives on the events shaping our world.<br></span></font><font color=\"#7b8898\" face=\"Mercury SSm A, Mercury SSm B, Georgia, Times, Times New Roman, Microsoft YaHei New, Microsoft Yahei, å¾®è½¯é›…é»‘, å®‹ä½“, SimSun, STXihei, åŽæ–‡ç»†é»‘, serif\"><span style=\"font-size: 26px;\">But Taaza Khabar</span></font><font color=\"#7b8898\" face=\"Mercury SSm A, Mercury SSm B, Georgia, Times, Times New Roman, Microsoft YaHei New, Microsoft Yahei, å¾®è½¯é›…é»‘, å®‹ä½“, SimSun, STXihei, åŽæ–‡ç»†é»‘, serif\"><span style=\"font-size: 26px;\">&nbsp;is more than just a news website – it\'s a community of curious minds and engaged citizens who come together to discuss, debate, and share ideas. We believe in the power of journalism to inspire change and foster understanding, and we\'re committed to providing a platform where voices from all walks of life can be heard.<br></span></font><font color=\"#7b8898\" face=\"Mercury SSm A, Mercury SSm B, Georgia, Times, Times New Roman, Microsoft YaHei New, Microsoft Yahei, å¾®è½¯é›…é»‘, å®‹ä½“, SimSun, STXihei, åŽæ–‡ç»†é»‘, serif\"><span style=\"font-size: 26px;\">Join us on our mission to inform, inspire, and empower. Together, we can make a difference.</span></font></p>', '2024-01-14 18:30:00', '2024-09-27 15:20:28'),
(2, 'contactus', 'Contact Details', '<p><br></p><p><b>Address :&nbsp; </b>Madhyapur Thimi-1, Bhaktapur, Nepal</p><p><b>Phone Number : </b>+977 -01234567</p><p><b>Email -id : </b>harshchy143@gmail.com</p>', '2024-01-15 18:30:00', '2024-09-27 15:21:36');

-- --------------------------------------------------------

--
-- Table structure for table `tblposts`
--

CREATE TABLE `tblposts` (
  `id` int(11) NOT NULL,
  `PostTitle` longtext DEFAULT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `SubCategoryId` int(11) DEFAULT NULL,
  `PostDetails` longtext CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL,
  `PostUrl` mediumtext DEFAULT NULL,
  `PostImage` varchar(255) DEFAULT NULL,
  `viewCounter` int(11) DEFAULT NULL,
  `postedBy` varchar(255) DEFAULT NULL,
  `lastUpdatedBy` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblposts`
--

INSERT INTO `tblposts` (`id`, `PostTitle`, `CategoryId`, `SubCategoryId`, `PostDetails`, `PostingDate`, `UpdationDate`, `Is_Active`, `PostUrl`, `PostImage`, `viewCounter`, `postedBy`, `lastUpdatedBy`) VALUES
(14, 'All domestic flights cancelled due to bad weather', 7, 11, '<p><span style=\"color: rgb(42, 42, 42); font-family: Mukta, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 22px;\">Kathmandu: The Civil Aviation Authority of Nepal (CAAN) has decided to cancel all domestic flights from 7 pm on Friday to Saturday morning due to inclement weather.</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Mukta, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 22px;\">According to NRA Joint Spokesperson Gyanendra Bhul, the AUTHORITY has decided not to operate domestic flights anywhere until the weather improves on Saturday due to the inclement weather. \"It has been decided not to operate domestic flights from 7 am to tomorrow morning,\" said Deputy Spokesperson Bhul.</span></p><p _msttexthash=\"30038411\" _msthash=\"90\" style=\"font-size: 22px; line-height: 36px; color: rgb(42, 42, 42); font-family: Mukta, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\">Due to heavy rains since Friday morning, domestic flights were affected throughout the day. According to preliminary estimates, around 300 two-way flights were operated daily at domestic airports across the country, including Kathmandu.</p><p _msttexthash=\"28094950\" _msthash=\"91\" style=\"font-size: 22px; line-height: 36px; color: rgb(42, 42, 42); font-family: Mukta, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\">Tribhuvan Airport\'s Domestic Terminal Office has said that the data is being collected as most of the airlines send information through e-mail about the reduction of flights. In Nepal, seven airlines operate daily domestic flights.</p><p><span style=\"color: rgb(42, 42, 42); font-family: Mukta, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 22px;\"><br></span><br></p>', '2024-09-27 15:41:23', '2024-09-27 15:41:31', 1, 'All-domestic-flights-cancelled-due-to-bad-weather', '0682277bf11cd3fd6bbf5053ca3ec7d3.jpg', 1, 'admin', NULL),
(15, 'Nepal Cricket Association (NCA) annual general meeting held', 3, 4, '<p><span style=\"color: rgb(42, 42, 42); font-family: Mukta, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 22px;\">Pokhara: Minister for Social Development, Youth and Sports of Gandaki State, Bindu Kumar Thapa, has said that cricket has strengthened the spirit of national unity. Addressing the Annual General Meeting of The Cricket Association of Nepal in Pokhara on Friday, he said the achievements made by Nepal in the field of sports were commendable.</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Mukta, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 22px;\">\"All Nepalis around the world have become united because of cricket. It has strengthened our sentiments,\" he said. Congratulating all the athletes and can families, he said that the activism and contribution of sports organizations in the development of sports is unique and exemplary.</span></p><p _msttexthash=\"81966898\" _msthash=\"90\" style=\"font-size: 22px; line-height: 36px; color: rgb(42, 42, 42); font-family: Mukta, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\">He said that the government, private sector and non-government sector could work together to accelerate the development of sports in Nepal. According to him, the Constitution of Nepal 2072 bs has entrusted the sports sector to the responsibility of the federal, provincial and local levels and the National Sports Bodies Act 2077 BS, the State Sports Development Act 2077 BS and local laws have been formulated.</p><p _msttexthash=\"40428037\" _msthash=\"91\" style=\"font-size: 22px; line-height: 36px; color: rgb(42, 42, 42); font-family: Mukta, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\">He opined that all the organizations related to sports should be updated through their general assembly as the federal structure has been formed through local level, district and province. He said that the beginning of The Cricket Association of Nepal was exemplary and exemplary.</p><p _msttexthash=\"133651908\" _msthash=\"92\" style=\"font-size: 22px; line-height: 36px; color: rgb(42, 42, 42); font-family: Mukta, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\">He said the Gandaki state government has implemented standards for the regulation and operation of sports organizations at the local level, district and state level, annual emergency insurance has been implemented for referees/ coaches/ players and the state government has made arrangements for annual allowance to nine Olympian players. For this purpose, the working procedure for the establishment and operation of the Players Welfare Fund and Gandaki State Sports Medal is in the construction stage, he said.</p><p _msttexthash=\"70316324\" _msthash=\"96\" style=\"font-size: 22px; line-height: 36px; color: rgb(42, 42, 42); font-family: Mukta, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\">Stating that the gandaki state government\'s decision of March 2080 had declared the playground of Village Farodaya Secondary School at Ganapati of Shuklagandaki municipality-8 of Tanahun and The Navadurga Playground of Kawasoti of Nawalpur as provincial cricket playgrounds, he expressed the belief that it would also support the playgrounds of Pokhara and Bharatpur.</p><p _msttexthash=\"53988558\" _msthash=\"97\" style=\"font-size: 22px; line-height: 36px; color: rgb(42, 42, 42); font-family: Mukta, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\">National Sports Council member secretary Tanka Lal Ghising said preparations were underway to bring into operation the scoreboard at tu playground for npl. He said that the Council was working to link sports with enterprise and income generation. He said that there is a need to strengthen the structure of domestic cricket.</p><p _msttexthash=\"53988558\" _msthash=\"97\" style=\"font-size: 22px; line-height: 36px; color: rgb(42, 42, 42); font-family: Mukta, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\">Paras Khadka, general secretary of The Cricket Association of Nepal, said that the Nepali cricket team has participated in 19 international tournaments. He also urged the government to give priority to Nepali cricket. He pointed out the need to connect the players professionally from the district level.<br></p><p><span style=\"color: rgb(42, 42, 42); font-family: Mukta, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 22px;\"><br></span><br></p>', '2024-09-27 15:43:25', NULL, 1, 'Nepal-Cricket-Association-(NCA)-annual-general-meeting-held', '233d32ad129990d4c583c6db55ea5e17.jpg', NULL, 'admin', NULL),
(16, 'Smartphone imports worth nearly Rs 7 billion in two months', 7, 11, '<p><span style=\"color: rgb(42, 42, 42); font-family: Mukta, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 22px;\">Kathmandu: Smartphones worth rs 7 billion have been imported in the first two months of the current fiscal year. According to the Data of the Department of Customs, 454,958 units of smartphones worth Rs 6.70 billion were imported.</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Mukta, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 22px;\">The highest number of petroleum products have been imported during this period. According to the Department, petrol worth Rs 11.65 billion and diesel worth Rs 13.64 billion have been imported.</span></p><p _msttexthash=\"33301710\" _msthash=\"90\" style=\"font-size: 22px; line-height: 36px; color: rgb(42, 42, 42); font-family: Mukta, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\">Similarly, lpg worth Rs 9.42 billion has been imported. The import of vehicles has also been high during the period. According to the data released by the Department, motorcycles worth Rs 2.94 billion and electric vehicles worth Rs 2.43 billion were imported.</p><p _msttexthash=\"41471937\" _msthash=\"91\" style=\"font-size: 22px; line-height: 36px; color: rgb(42, 42, 42); font-family: Mukta, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\">Carpets, tea, jute and yarn are among the most exported items from Nepal. According to the Department, carpets worth Rs 1.99 billion were exported in the months of July and August. Similarly, tea worth Rs 1.14 billion has been exported. Jute, yarn and juice are among the most exported items.</p><p _msttexthash=\"11267945\" _msthash=\"92\" style=\"font-size: 22px; line-height: 36px; color: rgb(42, 42, 42); font-family: Mukta, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\">In the first two months of the current fiscal year 2081/82 BS, Nepal suffered a trade deficit of Rs 237.44 billion in foreign trade worth Rs 287.63 billion.</p><p _msttexthash=\"11267945\" _msthash=\"92\" style=\"font-size: 22px; line-height: 36px; color: rgb(42, 42, 42); font-family: Mukta, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\">Imports amounted to Rs 262.54 billion in July and August, while exports amounted to Rs 25.93 billion.<br></p><p><span style=\"color: rgb(42, 42, 42); font-family: Mukta, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 22px;\"><br></span><br></p>', '2024-09-27 15:45:43', NULL, 1, 'Smartphone-imports-worth-nearly-Rs-7-billion-in-two-months', 'a2da32e868ac46afba3bcae69a19f05d.jpg', NULL, 'admin', NULL),
(17, 'PM Oli leaves for Boston to address Harvard', 6, 7, '<p><span style=\"color: rgb(42, 42, 42); font-family: Mukta, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 22px;\">New York: Prime Minister KP Sharma Oli left New York for Boston on Friday morning after addressing the 78th Session of the United Nations General Assembly( UNGA). Prime Minister Oli has gone to Boston by road from New York.</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Mukta, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 22px;\">Prime Minister Oli is scheduled to address and interact at Harvard University in Boston on Friday evening. He will deliver an address titled \'Nepal\'s Transitional Justice and Climate Justice\'.</span></p><p _msttexthash=\"9176830\" _msthash=\"92\" style=\"font-size: 22px; line-height: 36px; color: rgb(42, 42, 42); font-family: Mukta, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\">Oli has also addressed and interacted at Columbia University in New York. Oli is scheduled to return to Nepal from Boston on Sunday.</p><p _msttexthash=\"2280226\" _msthash=\"93\" style=\"font-size: 22px; line-height: 36px; color: rgb(42, 42, 42); font-family: Mukta, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\">He had come to the US to attend the General Assembly on October 4.</p><p><span style=\"color: rgb(42, 42, 42); font-family: Mukta, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 22px;\"><br></span><br></p>', '2024-09-27 15:53:37', '2024-09-27 15:53:59', 1, 'PM-Oli-leaves-for-Boston-to-address-Harvard', 'e238d18ae4602cfe9ae74f22d2cdfc9a.jpg', 1, 'admin', NULL),
(18, 'AP1 TV claims GB Rai has never been a director', 5, 6, '<p><span style=\"color: rgb(42, 42, 42); font-family: Mukta, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 22px;\">Annapurna Broadcast Media Pvt. Ltd. has claimed that Gitendra Babu (GB) Rai has not been the operator of AP1 TV since its inception.</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Mukta, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 22px;\">Keshari Ballav Dahal, chief of accounts/trade department of Annapurna Broadcast Media Pvt Ltd, in a press release issued on Friday said that his attention has been drawn towards the news published in various media.</span></p><p _msttexthash=\"69767464\" _msthash=\"90\" style=\"font-size: 22px; line-height: 36px; color: rgb(42, 42, 42); font-family: Mukta, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\">\"We would like to inform everyone that since the inception of Annapurna Broadcast Media Pvt Ltd (AP1 HDTV), a person named GB Rai has not been the director of this television and there is no truth in the fact that he has invested in this society through any cooperative. It is known that information is being communicated to the general public through independent television. \'</p><p _msttexthash=\"49486632\" _msthash=\"91\" style=\"font-size: 22px; line-height: 36px; color: rgb(42, 42, 42); font-family: Mukta, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\">The Government of Nepal, the Parliamentary Committee and the concerned concerned organizations have always been positive and supportive for the continuation and success of the efforts and achievements made so far to solve the existing cooperative problems and provide justice to the cooperative victims.</p><p _msttexthash=\"98329374\" _msthash=\"94\" style=\"font-size: 22px; line-height: 36px; color: rgb(42, 42, 42); font-family: Mukta, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\">However, the report of the Cooperative Savings Embezzlement Investigation Special Committee has revealed that the cooperative\'s money has also been invested in AP1 Television. According to the report, Gitendra Babu (GB) Rai had invested in AP1 before opening Gorkha Media and the amount belonged to the cooperative. According to the report, loans have been disbursed to AP1 from Swarna Laxmi Multipurpose Cooperative in Kathmandu, owned by Rai.</p><p><span style=\"color: rgb(42, 42, 42); font-family: Mukta, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 22px;\"><br></span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Mukta, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 22px;\"><br></span><br></p>', '2024-09-27 15:58:08', '2024-09-27 15:58:30', 1, 'AP1-TV-claims-GB-Rai-has-never-been-a-director', 'fc0415acc5dbc4b28814fd74f4cfc102.jpg', 1, 'taazakhabar', NULL),
(19, 'Taaza Khabar Season 2 Review: Bhuvan Bam And Jaaved Jaaferi Deliver a Thrilling Masterpiece', 5, 6, '<p id=\"0\" class=\"story_para_0\" style=\"margin-bottom: 15px; padding: 15px 0px 0px; outline-style: initial; outline-width: 0px; font-family: &quot;PT Serif&quot;, serif; font-size: 18px; line-height: 26px;\">How often do we witness a show, that was already impressive in its debut, returns with a second season that transcends expectations, becoming a masterclass in storytelling, performance, and execution? Rare as such instances may be, Bhuvan Bam, Shriya Pilgaonkar, and Jaaved Jaaferi’s show achieves just that, leaving no room for doubt about its brilliance. Directed by the visionary Himank Gaur, this season is not just a continuation of the first season but an elevation, offering a concoction that feels like a Michelin-star-worthy recipe, crafted with precision, intensity, and a plot that sizzles with fresh unpredictability.</p><p id=\"1\" class=\"story_para_1\" style=\"margin-bottom: 15px; padding: 15px 0px 0px; outline-style: initial; outline-width: 0px; font-family: &quot;PT Serif&quot;, serif; font-size: 18px; line-height: 26px;\">From the outset, the series unshackles itself from the norms of Indian OTT, defying any preconceptions and immersing viewers in a whirlwind of suspense, drama, and emotion. The screenplay, meticulously penned, manages to weave intricate layers of tension that never let the audience breathe easily. It is a rare feat to witness the perfect synergy between thriller elements and human emotions. However, this show achieves it effortlessly, dragging you deeper into the chaotic yet compelling world of Vasant “Vasya” Gawde.</p><p id=\"2\" class=\"story_para_2\" style=\"margin-bottom: 15px; padding: 15px 0px 0px; outline-style: initial; outline-width: 0px; font-family: &quot;PT Serif&quot;, serif; font-size: 18px; line-height: 26px;\">The second season wastes no time in reeling us back into the thick of things. The opening scene—a brief yet crucial flashback—swiftly transitions into the present, where we find Vasya, the once downtrodden sanitation worker, at the precipice of his greatest challenge yet. Armed with a supernatural gift, he faces the grim reality of his impending death, as foretold by the Taaza Khabar app. The tension is palpable as Vasya, wracked with guilt and regret, attempts to undo the chaos he’s caused, only to realize that fate has more devastating blows in store.</p><p id=\"3\" class=\"story_para_3\" style=\"margin-bottom: 15px; padding: 15px 0px 0px; outline-style: initial; outline-width: 0px; font-family: &quot;PT Serif&quot;, serif; font-size: 18px; line-height: 26px;\">The narrative does not shy away from gut-wrenching moments, particularly when Vasya, convinced that his death will be a resolution, dramatically collapses to the ground after a gunshot, fulfilling the app’s prophecy. The viewer is left stunned, only for the plot to take yet another twist—Vasya is not dead, but hiding, and the weight of his decisions continues to wreak havoc on his loved ones.</p>', '2024-09-27 16:01:31', '2024-09-27 16:16:10', 1, 'Taaza-Khabar-Season-2-Review:-Bhuvan-Bam-And-Jaaved-Jaaferi-Deliver-a-Thrilling-Masterpiece', '53955961d431a1d1088612504a34102d.jpg', 29, 'taazakhabar', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubcategory`
--

CREATE TABLE `tblsubcategory` (
  `SubCategoryId` int(11) NOT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `Subcategory` varchar(255) DEFAULT NULL,
  `SubCatDescription` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblsubcategory`
--

INSERT INTO `tblsubcategory` (`SubCategoryId`, `CategoryId`, `Subcategory`, `SubCatDescription`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(4, 3, 'Cricket', 'Cricket\r\n\r\n', '2024-01-14 18:30:00', '2024-01-31 05:48:39', 1),
(5, 3, 'Football', 'Football', '2024-01-14 18:30:00', '2024-01-31 05:48:39', 1),
(6, 5, 'Television', 'TeleVision', '2024-01-14 18:30:00', '2024-01-31 05:48:39', 1),
(7, 6, 'National', 'National', '2024-01-14 18:30:00', '2024-01-31 05:48:39', 1),
(8, 6, 'International', 'International', '2024-01-14 18:30:00', '2024-01-31 05:48:39', 1),
(10, 8, 'Vaccination', 'Vaccination', '2024-01-14 18:30:00', '2024-01-31 05:48:39', 1),
(11, 7, 'Commerce', 'commerce', '2024-09-27 15:39:42', NULL, 1),
(12, 5, 'Movies', 'Film', '2024-09-27 15:51:35', NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `AdminUserName` (`AdminUserName`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomments`
--
ALTER TABLE `tblcomments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `postId` (`postId`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblposts`
--
ALTER TABLE `tblposts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `postcatid` (`CategoryId`),
  ADD KEY `postsucatid` (`SubCategoryId`),
  ADD KEY `subadmin` (`postedBy`);

--
-- Indexes for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  ADD PRIMARY KEY (`SubCategoryId`),
  ADD KEY `catid` (`CategoryId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblcomments`
--
ALTER TABLE `tblcomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblposts`
--
ALTER TABLE `tblposts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  MODIFY `SubCategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblcomments`
--
ALTER TABLE `tblcomments`
  ADD CONSTRAINT `pid` FOREIGN KEY (`postId`) REFERENCES `tblposts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tblposts`
--
ALTER TABLE `tblposts`
  ADD CONSTRAINT `postcatid` FOREIGN KEY (`CategoryId`) REFERENCES `tblcategory` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `postsucatid` FOREIGN KEY (`SubCategoryId`) REFERENCES `tblsubcategory` (`SubCategoryId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `subadmin` FOREIGN KEY (`postedBy`) REFERENCES `tbladmin` (`AdminUserName`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  ADD CONSTRAINT `catid` FOREIGN KEY (`CategoryId`) REFERENCES `tblcategory` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
