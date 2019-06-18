/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50508
Source Host           : localhost:3306
Source Database       : note

Target Server Type    : MYSQL
Target Server Version : 50508
File Encoding         : 65001

Date: 2019-06-18 20:08:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `vipadminis`
-- ----------------------------
DROP TABLE IF EXISTS `vipadminis`;
CREATE TABLE `vipadminis` (
  `Vip_No` varchar(10) NOT NULL COMMENT '卡号',
  `VipAdminis_No` varchar(10) DEFAULT NULL COMMENT '会员号',
  `VipAdminis_Name` varchar(10) DEFAULT NULL COMMENT '姓名',
  `Vip_passwd` varchar(15) DEFAULT NULL COMMENT '密码',
  `VipAdminis_Tel` varchar(15) DEFAULT NULL COMMENT '电话',
  `VipAdminis_Time` date DEFAULT NULL COMMENT '办卡时间',
  `VipAdminis_Money` float DEFAULT NULL COMMENT '账户余额',
  `VipAdminis_Level` int(11) DEFAULT NULL COMMENT '会员级别',
  `VipAdminis_Score` int(11) DEFAULT NULL COMMENT '会员积分',
  `Vip_peo` varchar(10) DEFAULT NULL COMMENT '推荐人',
  PRIMARY KEY (`Vip_No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vipadminis
-- ----------------------------
INSERT INTO `vipadminis` VALUES ('10001', '1', '崔烁豪', '0', '13781255018', '2017-10-01', '37', '1', '100', '汤姆');
INSERT INTO `vipadminis` VALUES ('10002', '2', '方腾飞', '0', '15090237921', '2017-10-01', '120', '1', '100', '汤姆');
INSERT INTO `vipadminis` VALUES ('10003', '3', '周嘉奇', '0', '13137282575', '2017-10-01', '80', '2', '100', '汤姆');
INSERT INTO `vipadminis` VALUES ('10004', '4', '张坤宇', '0', '18336495385', '2017-10-02', '100', '1', '101', '汤姆');
INSERT INTO `vipadminis` VALUES ('10005', '5', '张智雄', '0', '15638189337', '2017-10-03', '90', '2', '100', '汤姆');
INSERT INTO `vipadminis` VALUES ('10006', '6', '纪昌宗', '0', '13137283575', '2017-10-04', '120', '3', '100', '汤姆');
INSERT INTO `vipadminis` VALUES ('10033', '33', '王二', '0', '1222', '2017-11-09', '110', '1', '100', '汤姆');

-- ----------------------------
-- Table structure for `vipin`
-- ----------------------------
DROP TABLE IF EXISTS `vipin`;
CREATE TABLE `vipin` (
  `Vip_No` varchar(10) NOT NULL,
  `VipAdminis_Name` varchar(10) DEFAULT NULL,
  `Vip_Money` float DEFAULT NULL COMMENT '充值金额',
  `Vip_intro` varchar(20) DEFAULT NULL,
  `Vip_Time` date DEFAULT NULL COMMENT '时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vipin
-- ----------------------------
INSERT INTO `vipin` VALUES ('10001', '崔烁豪', '20', '123', '2017-10-03');
INSERT INTO `vipin` VALUES ('10006', '纪昌宗', '80', '123', '2017-11-02');
INSERT INTO `vipin` VALUES ('10006', '纪昌宗', '20', '123', '2017-11-02');
INSERT INTO `vipin` VALUES ('10001', '崔烁豪', '30', '123', '2017-11-06');
INSERT INTO `vipin` VALUES ('10003', '周嘉奇', '10', '123', '2017-11-06');
INSERT INTO `vipin` VALUES ('10004', '张坤宇', '100', '123', '2017-11-08');
INSERT INTO `vipin` VALUES ('10002', '方腾飞', '50', '储值', '2017-10-28');

-- ----------------------------
-- Table structure for `viplevel`
-- ----------------------------
DROP TABLE IF EXISTS `viplevel`;
CREATE TABLE `viplevel` (
  `VipLevel_No` int(11) NOT NULL DEFAULT '0' COMMENT '级别编号',
  `VipLevel_Discount` float DEFAULT NULL COMMENT '折扣',
  `VipLevel_ins` varchar(10) DEFAULT NULL,
  `VipLevel_Instructions` varchar(10) DEFAULT NULL COMMENT '级别说明',
  PRIMARY KEY (`VipLevel_No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of viplevel
-- ----------------------------
INSERT INTO `viplevel` VALUES ('1', '0.7', '七折', '钻石会员');
INSERT INTO `viplevel` VALUES ('2', '0.9', '九折', '黄金会员');
INSERT INTO `viplevel` VALUES ('3', '1', '不打折', '普通用户');

-- ----------------------------
-- Table structure for `vipmanager`
-- ----------------------------
DROP TABLE IF EXISTS `vipmanager`;
CREATE TABLE `vipmanager` (
  `Vipm_No` varchar(10) NOT NULL DEFAULT '',
  `Vipm_passwd` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`Vipm_No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vipmanager
-- ----------------------------
INSERT INTO `vipmanager` VALUES ('1378', '0');

-- ----------------------------
-- Table structure for `vipout`
-- ----------------------------
DROP TABLE IF EXISTS `vipout`;
CREATE TABLE `vipout` (
  `Vip_No` varchar(10) NOT NULL DEFAULT '',
  `VipAdminis_Name` varchar(10) DEFAULT NULL,
  `Vip_Money` float DEFAULT NULL COMMENT '消费金额',
  `Vip_intro` varchar(20) DEFAULT NULL,
  `Vip_Time` date NOT NULL COMMENT '消费时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vipout
-- ----------------------------
INSERT INTO `vipout` VALUES ('10001', '崔烁豪', '20', null, '2017-02-03');
INSERT INTO `vipout` VALUES ('10002', '方腾飞', '20', null, '2017-10-02');
INSERT INTO `vipout` VALUES ('10005', '张智雄', '20', null, '2017-10-03');
INSERT INTO `vipout` VALUES ('10006', '纪昌宗', '10', null, '2017-02-03');
INSERT INTO `vipout` VALUES ('10001', '崔烁豪', '30', null, '2017-10-02');
INSERT INTO `vipout` VALUES ('10001', '崔烁豪', '30', null, '2017-10-04');
INSERT INTO `vipout` VALUES ('10005', '张智雄', '10', null, '2017-11-04');
INSERT INTO `vipout` VALUES ('10003', '周嘉奇', '30', null, '2017-11-06');
INSERT INTO `vipout` VALUES ('10003', '周嘉奇', '20', null, '2017-11-12');
INSERT INTO `vipout` VALUES ('10002', '方腾飞', '30', null, '2017-11-12');
INSERT INTO `vipout` VALUES ('10001', '崔烁豪', '2', '农夫山泉', '2017-11-27');
INSERT INTO `vipout` VALUES ('10001', '崔烁豪', '10', '理发', '2017-10-28');
INSERT INTO `vipout` VALUES ('10001', '崔烁豪', '6', '早饭', '2017-10-28');
INSERT INTO `vipout` VALUES ('10001', '崔烁豪', '15', '理发', '2017-12-02');
