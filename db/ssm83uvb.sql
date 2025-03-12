-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssm83uvb
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `binglicaiji`
--

DROP TABLE IF EXISTS `binglicaiji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `binglicaiji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `zhuyuanhao` varchar(200) DEFAULT NULL COMMENT '住院号',
  `ruyuanshijian` varchar(200) DEFAULT NULL COMMENT '入院时间',
  `bingchengzhongsuochuxianzhuangkuang` longtext NOT NULL COMMENT '病程中所出现状况',
  `jiazujujifabing` varchar(200) NOT NULL COMMENT '家族聚集发病',
  `shifouhesuanjiance` varchar(200) NOT NULL COMMENT '是否核酸检测',
  `jiechuhubeishengneiren` varchar(200) NOT NULL COMMENT '接触湖北省内人',
  `jiwangbingshi` varchar(200) NOT NULL COMMENT '既往病史',
  `bingrenzhaopian` varchar(200) DEFAULT NULL COMMENT '病人照片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='病例采集';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `binglicaiji`
--

LOCK TABLES `binglicaiji` WRITE;
/*!40000 ALTER TABLE `binglicaiji` DISABLE KEYS */;
INSERT INTO `binglicaiji` VALUES (21,'2021-03-22 14:00:44','账号1','姓名1','住院号1','入院时间1','病程中所出现状况1','是','是','是','既往病史1','http://localhost:8080/ssm83uvb/upload/binglicaiji_bingrenzhaopian1.jpg'),(22,'2021-03-22 14:00:44','账号2','姓名2','住院号2','入院时间2','病程中所出现状况2','是','是','是','既往病史2','http://localhost:8080/ssm83uvb/upload/binglicaiji_bingrenzhaopian2.jpg'),(23,'2021-03-22 14:00:44','账号3','姓名3','住院号3','入院时间3','病程中所出现状况3','是','是','是','既往病史3','http://localhost:8080/ssm83uvb/upload/binglicaiji_bingrenzhaopian3.jpg'),(24,'2021-03-22 14:00:44','账号4','姓名4','住院号4','入院时间4','病程中所出现状况4','是','是','是','既往病史4','http://localhost:8080/ssm83uvb/upload/binglicaiji_bingrenzhaopian4.jpg'),(25,'2021-03-22 14:00:44','账号5','姓名5','住院号5','入院时间5','病程中所出现状况5','是','是','是','既往病史5','http://localhost:8080/ssm83uvb/upload/binglicaiji_bingrenzhaopian5.jpg'),(26,'2021-03-22 14:00:44','账号6','姓名6','住院号6','入院时间6','病程中所出现状况6','是','是','是','既往病史6','http://localhost:8080/ssm83uvb/upload/binglicaiji_bingrenzhaopian6.jpg');
/*!40000 ALTER TABLE `binglicaiji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bingren`
--

DROP TABLE IF EXISTS `bingren`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bingren` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shengaoCM` int(11) DEFAULT NULL COMMENT '身高CM',
  `chusheng` varchar(200) DEFAULT NULL COMMENT '出生',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `tizhongKG` int(11) DEFAULT NULL COMMENT '体重KG',
  `jiguan` varchar(200) DEFAULT NULL COMMENT '籍贯',
  `juzhudi` varchar(200) DEFAULT NULL COMMENT '居住地',
  `zhiye` varchar(200) DEFAULT NULL COMMENT '职业',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `bingrenzhaopian` varchar(200) DEFAULT NULL COMMENT '病人照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='病人';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bingren`
--

LOCK TABLES `bingren` WRITE;
/*!40000 ALTER TABLE `bingren` DISABLE KEYS */;
INSERT INTO `bingren` VALUES (11,'2021-03-22 14:00:44','病人1','姓名1','123456','男',1,'出生1',1,1,'籍贯1','城镇','职业1','13823888881','http://localhost:8080/ssm83uvb/upload/bingren_bingrenzhaopian1.jpg'),(12,'2021-03-22 14:00:44','病人2','姓名2','123456','男',2,'出生2',2,2,'籍贯2','城镇','职业2','13823888882','http://localhost:8080/ssm83uvb/upload/bingren_bingrenzhaopian2.jpg'),(13,'2021-03-22 14:00:44','病人3','姓名3','123456','男',3,'出生3',3,3,'籍贯3','城镇','职业3','13823888883','http://localhost:8080/ssm83uvb/upload/bingren_bingrenzhaopian3.jpg'),(14,'2021-03-22 14:00:44','病人4','姓名4','123456','男',4,'出生4',4,4,'籍贯4','城镇','职业4','13823888884','http://localhost:8080/ssm83uvb/upload/bingren_bingrenzhaopian4.jpg'),(15,'2021-03-22 14:00:44','病人5','姓名5','123456','男',5,'出生5',5,5,'籍贯5','城镇','职业5','13823888885','http://localhost:8080/ssm83uvb/upload/bingren_bingrenzhaopian5.jpg'),(16,'2021-03-22 14:00:44','病人6','姓名6','123456','男',6,'出生6',6,6,'籍贯6','城镇','职业6','13823888886','http://localhost:8080/ssm83uvb/upload/bingren_bingrenzhaopian6.jpg');
/*!40000 ALTER TABLE `bingren` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bingrenzhiliaozhuangkuang`
--

DROP TABLE IF EXISTS `bingrenzhiliaozhuangkuang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bingrenzhiliaozhuangkuang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `dangqianzhuangkuang` varchar(200) DEFAULT NULL COMMENT '当前状况',
  `zhiliaozhuangtai` varchar(200) DEFAULT NULL COMMENT '治疗状态',
  `zhuzhiyisheng` varchar(200) DEFAULT NULL COMMENT '主治医生',
  `zhenduanjieguo` varchar(200) DEFAULT NULL COMMENT '诊断结果',
  `xinlizhuangkuang` varchar(200) DEFAULT NULL COMMENT '心理状况',
  `hulizhuangkuang` varchar(200) DEFAULT NULL COMMENT '护理状况',
  `bingrenmanyidu` varchar(200) DEFAULT NULL COMMENT '病人满意度',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='病人治疗状况';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bingrenzhiliaozhuangkuang`
--

LOCK TABLES `bingrenzhiliaozhuangkuang` WRITE;
/*!40000 ALTER TABLE `bingrenzhiliaozhuangkuang` DISABLE KEYS */;
INSERT INTO `bingrenzhiliaozhuangkuang` VALUES (81,'2021-03-22 14:00:44','账号1','姓名1','当前状况1','差','主治医生1','诊断结果1','心理状况1','护理状况1','不满意'),(82,'2021-03-22 14:00:44','账号2','姓名2','当前状况2','差','主治医生2','诊断结果2','心理状况2','护理状况2','不满意'),(83,'2021-03-22 14:00:44','账号3','姓名3','当前状况3','差','主治医生3','诊断结果3','心理状况3','护理状况3','不满意'),(84,'2021-03-22 14:00:44','账号4','姓名4','当前状况4','差','主治医生4','诊断结果4','心理状况4','护理状况4','不满意'),(85,'2021-03-22 14:00:44','账号5','姓名5','当前状况5','差','主治医生5','诊断结果5','心理状况5','护理状况5','不满意'),(86,'2021-03-22 14:00:44','账号6','姓名6','当前状况6','差','主治医生6','诊断结果6','心理状况6','护理状况6','不满意');
/*!40000 ALTER TABLE `bingrenzhiliaozhuangkuang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='在线咨询';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (91,'2021-03-22 14:00:44',1,1,'提问1','回复1',1),(92,'2021-03-22 14:00:44',2,2,'提问2','回复2',2),(93,'2021-03-22 14:00:44',3,3,'提问3','回复3',3),(94,'2021-03-22 14:00:44',4,4,'提问4','回复4',4),(95,'2021-03-22 14:00:44',5,5,'提问5','回复5',5),(96,'2021-03-22 14:00:44',6,6,'提问6','回复6',6);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssm83uvb/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm83uvb/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm83uvb/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fenlei`
--

DROP TABLE IF EXISTS `fenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bumenfenlei` varchar(200) DEFAULT NULL COMMENT '部门分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fenlei`
--

LOCK TABLES `fenlei` WRITE;
/*!40000 ALTER TABLE `fenlei` DISABLE KEYS */;
INSERT INTO `fenlei` VALUES (71,'2021-03-22 14:00:44','部门分类1'),(72,'2021-03-22 14:00:44','部门分类2'),(73,'2021-03-22 14:00:44','部门分类3'),(74,'2021-03-22 14:00:44','部门分类4'),(75,'2021-03-22 14:00:44','部门分类5'),(76,'2021-03-22 14:00:44','部门分类6');
/*!40000 ALTER TABLE `fenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='留言板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (111,'2021-03-22 14:00:44',1,'用户名1','留言内容1','回复内容1'),(112,'2021-03-22 14:00:44',2,'用户名2','留言内容2','回复内容2'),(113,'2021-03-22 14:00:44',3,'用户名3','留言内容3','回复内容3'),(114,'2021-03-22 14:00:44',4,'用户名4','留言内容4','回复内容4'),(115,'2021-03-22 14:00:44',5,'用户名5','留言内容5','回复内容5'),(116,'2021-03-22 14:00:44',6,'用户名6','留言内容6','回复内容6');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='医疗资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (101,'2021-03-22 14:00:44','标题1','简介1','http://localhost:8080/ssm83uvb/upload/news_picture1.jpg','内容1'),(102,'2021-03-22 14:00:44','标题2','简介2','http://localhost:8080/ssm83uvb/upload/news_picture2.jpg','内容2'),(103,'2021-03-22 14:00:44','标题3','简介3','http://localhost:8080/ssm83uvb/upload/news_picture3.jpg','内容3'),(104,'2021-03-22 14:00:44','标题4','简介4','http://localhost:8080/ssm83uvb/upload/news_picture4.jpg','内容4'),(105,'2021-03-22 14:00:44','标题5','简介5','http://localhost:8080/ssm83uvb/upload/news_picture5.jpg','内容5'),(106,'2021-03-22 14:00:44','标题6','简介6','http://localhost:8080/ssm83uvb/upload/news_picture6.jpg','内容6');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangchuanhesuanjiancebaogao`
--

DROP TABLE IF EXISTS `shangchuanhesuanjiancebaogao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangchuanhesuanjiancebaogao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `hesuanjiancebaogao` varchar(200) NOT NULL COMMENT '核算检测报告',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='上传核酸检测报告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangchuanhesuanjiancebaogao`
--

LOCK TABLES `shangchuanhesuanjiancebaogao` WRITE;
/*!40000 ALTER TABLE `shangchuanhesuanjiancebaogao` DISABLE KEYS */;
INSERT INTO `shangchuanhesuanjiancebaogao` VALUES (51,'2021-03-22 14:00:44','账号1','姓名1','手机1',''),(52,'2021-03-22 14:00:44','账号2','姓名2','手机2',''),(53,'2021-03-22 14:00:44','账号3','姓名3','手机3',''),(54,'2021-03-22 14:00:44','账号4','姓名4','手机4',''),(55,'2021-03-22 14:00:44','账号5','姓名5','手机5',''),(56,'2021-03-22 14:00:44','账号6','姓名6','手机6','');
/*!40000 ALTER TABLE `shangchuanhesuanjiancebaogao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangchuanxingdongguiji`
--

DROP TABLE IF EXISTS `shangchuanxingdongguiji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangchuanxingdongguiji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shangchuanchuxingbaogao` varchar(200) NOT NULL COMMENT '上传出行报告',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='上传行动轨迹';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangchuanxingdongguiji`
--

LOCK TABLES `shangchuanxingdongguiji` WRITE;
/*!40000 ALTER TABLE `shangchuanxingdongguiji` DISABLE KEYS */;
INSERT INTO `shangchuanxingdongguiji` VALUES (61,'2021-03-22 14:00:44','账号1','姓名1','手机1',''),(62,'2021-03-22 14:00:44','账号2','姓名2','手机2',''),(63,'2021-03-22 14:00:44','账号3','姓名3','手机3',''),(64,'2021-03-22 14:00:44','账号4','姓名4','手机4',''),(65,'2021-03-22 14:00:44','账号5','姓名5','手机5',''),(66,'2021-03-22 14:00:44','账号6','姓名6','手机6','');
/*!40000 ALTER TABLE `shangchuanxingdongguiji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-22 14:00:44');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yisheng`
--

DROP TABLE IF EXISTS `yisheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yisheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yishengxingming` varchar(200) NOT NULL COMMENT '医生姓名',
  `zhiwei` varchar(200) DEFAULT NULL COMMENT '职位',
  `suozaiyiyuan` varchar(200) DEFAULT NULL COMMENT '所在医院',
  `suozaibumen` varchar(200) DEFAULT NULL COMMENT '所在部门',
  `yuyuexingqiduan` longtext COMMENT '预约星期段',
  `yuyueshijianduan` datetime NOT NULL COMMENT '预约时间段',
  `yuyuejine` int(11) NOT NULL COMMENT '预约金额',
  `yishengzhaopian` varchar(200) DEFAULT NULL COMMENT '医生照片',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='医生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yisheng`
--

LOCK TABLES `yisheng` WRITE;
/*!40000 ALTER TABLE `yisheng` DISABLE KEYS */;
INSERT INTO `yisheng` VALUES (41,'2021-03-22 14:00:44','医生姓名1','职位1','所在医院1','所在部门1','预约星期段1','2021-03-22 22:00:44',1,'http://localhost:8080/ssm83uvb/upload/yisheng_yishengzhaopian1.jpg','13823888881'),(42,'2021-03-22 14:00:44','医生姓名2','职位2','所在医院2','所在部门2','预约星期段2','2021-03-22 22:00:44',2,'http://localhost:8080/ssm83uvb/upload/yisheng_yishengzhaopian2.jpg','13823888882'),(43,'2021-03-22 14:00:44','医生姓名3','职位3','所在医院3','所在部门3','预约星期段3','2021-03-22 22:00:44',3,'http://localhost:8080/ssm83uvb/upload/yisheng_yishengzhaopian3.jpg','13823888883'),(44,'2021-03-22 14:00:44','医生姓名4','职位4','所在医院4','所在部门4','预约星期段4','2021-03-22 22:00:44',4,'http://localhost:8080/ssm83uvb/upload/yisheng_yishengzhaopian4.jpg','13823888884'),(45,'2021-03-22 14:00:44','医生姓名5','职位5','所在医院5','所在部门5','预约星期段5','2021-03-22 22:00:44',5,'http://localhost:8080/ssm83uvb/upload/yisheng_yishengzhaopian5.jpg','13823888885'),(46,'2021-03-22 14:00:44','医生姓名6','职位6','所在医院6','所在部门6','预约星期段6','2021-03-22 22:00:44',6,'http://localhost:8080/ssm83uvb/upload/yisheng_yishengzhaopian6.jpg','13823888886');
/*!40000 ALTER TABLE `yisheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuyue`
--

DROP TABLE IF EXISTS `yuyue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `yuyuejine` int(11) DEFAULT NULL COMMENT '预约金额',
  `yuyueshijian` datetime DEFAULT NULL COMMENT '预约时间',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='预约';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuyue`
--

LOCK TABLES `yuyue` WRITE;
/*!40000 ALTER TABLE `yuyue` DISABLE KEYS */;
INSERT INTO `yuyue` VALUES (31,'2021-03-22 14:00:44','账号1','姓名1','医生姓名1',1,'2021-03-22 22:00:44','联系电话1','是','','未支付'),(32,'2021-03-22 14:00:44','账号2','姓名2','医生姓名2',2,'2021-03-22 22:00:44','联系电话2','是','','未支付'),(33,'2021-03-22 14:00:44','账号3','姓名3','医生姓名3',3,'2021-03-22 22:00:44','联系电话3','是','','未支付'),(34,'2021-03-22 14:00:44','账号4','姓名4','医生姓名4',4,'2021-03-22 22:00:44','联系电话4','是','','未支付'),(35,'2021-03-22 14:00:44','账号5','姓名5','医生姓名5',5,'2021-03-22 22:00:44','联系电话5','是','','未支付'),(36,'2021-03-22 14:00:44','账号6','姓名6','医生姓名6',6,'2021-03-22 22:00:44','联系电话6','是','','未支付');
/*!40000 ALTER TABLE `yuyue` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-23  9:57:04
