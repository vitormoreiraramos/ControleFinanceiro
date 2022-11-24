-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 23-Set-2022 às 21:18
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `tcc`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `areacomum`
--

CREATE TABLE `areacomum` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `areacomum`
--

INSERT INTO `areacomum` (`id`, `nome`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'QUIOSQUE', '2017-04-20 05:38:29', '2017-04-20 02:38:29', NULL),
(2, 'QUADRA', '2017-04-20 05:38:34', '2017-04-20 02:38:34', NULL),
(3, 'ESTACIONAMENTO', '2017-04-20 05:38:41', '2017-04-20 02:38:41', NULL),
(4, 'teste', '2017-09-17 03:49:09', '2017-09-17 03:49:09', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `assembleiass`
--

CREATE TABLE `assembleiass` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `ordemdodia` text NOT NULL,
  `data` date NOT NULL,
  `hora` time NOT NULL,
  `areacomum_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `assembleiass`
--

INSERT INTO `assembleiass` (`id`, `nome`, `ordemdodia`, `data`, `hora`, `areacomum_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Assembleia do dia X', '<p>asdasdasd</p>', '2017-04-30', '15:30:45', 1, '2017-04-21 21:33:14', '2017-05-30 20:10:25', NULL),
(2, 'assemleia do dia tal', '<p>bla bla bla la bla</p>', '2017-06-13', '16:00:45', 1, '2017-05-27 22:02:18', '2017-05-27 19:02:18', NULL),
(3, 'Assembleia do dia 19-08-2017', '<ol><li>Sobre as obras</li><li>Votação Cor das grades</li><li>Assuntos Diversos</li></ol>', '2017-10-13', '19:30:00', 3, '2017-09-17 22:37:53', '2017-09-17 22:37:53', NULL),
(4, 'eeee', '<p>eeee</p>', '2017-09-15', '19:00:15', 3, '2017-10-23 01:01:34', '2017-10-22 22:01:34', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `banco`
--

CREATE TABLE `banco` (
  `id` int(11) NOT NULL,
  `codigo` varchar(3) NOT NULL,
  `nome` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `banco`
--

INSERT INTO `banco` (`id`, `codigo`, `nome`) VALUES
(1, '001', 'BANCO DO BRASIL SA'),
(2, '002', 'BANCO CENTRAL DO BRASIL SA'),
(3, '003', 'BANCO DA AMAZONIA SA'),
(4, '004', 'BANCO DO NORDESTE DO BRASIL SA'),
(8, '008', 'BANCO SANTANDER MERIDIONAL S.A.'),
(21, '021', 'BANCO DO ESTADO DO ESPIRITO SANTO SA'),
(24, '024', 'BANCO DE PERNAMBUCO - BANDEPE'),
(25, '025', 'BANCO ALFA S/A'),
(27, '027', 'BANCO DO ESTADO DE SANTA CATARINA SA'),
(29, '029', 'BANCO BANERJ S/A'),
(31, '031', 'BANCO BEG S.A.'),
(33, '033', 'BANCO DO ESTADO DE SAO PAULO S.A.'),
(35, '035', 'BANCO  BEC  S/A.'),
(36, '036', 'BANCO BEM S.A.'),
(37, '037', 'BANCO DO ESTADO DO PARA SA'),
(38, '038', 'BANCO BANESTADO S.A.'),
(39, '039', 'BANCO DO ESTADO DO PIAUI SA'),
(40, '040', 'BANCO CARGILL S/A'),
(41, '041', 'BANCO DO ESTADO DO RIO GRANDE DO SUL SA'),
(44, '044', 'BANCO BVA S/A'),
(45, '045', 'BANCO OPPORTUNITY S.A.'),
(47, '047', 'BANCO DO ESTADO DE SERGIPE SA'),
(62, '062', 'HIPERCARD BANCO MULTIPLO S.A.'),
(63, '063', 'IBIBANK S.A. BANCO MULTIPLO'),
(64, '064', 'GOLDMAN SACHS DO BRASIL - BANCO MULTIPLO S.A.'),
(65, '065', 'LEMON BANK BANCO MULTIPLO S/A'),
(66, '066', 'BANCO MORGAN STANLEY DEAN WITTER S.A.'),
(69, '069', 'BPN BRASIL BANCO MULTIPLO S/A'),
(70, '070', 'BANCO DE BRASILIA SA'),
(72, '072', 'BANCO RURAL MAIS S.A.'),
(73, '073', 'BB BANCO POPULAR DO BRASIL S.A'),
(74, '074', 'BANCO J. SAFRA S/A'),
(75, '075', 'BANCO CR2 S/A'),
(76, '076', 'BANCO KDB S.A.'),
(77, '77', 'Banco Intermedium S/A'),
(78, '078', 'BES INVESTIMENTO DO BRASIL S.A - BANCO DE INVESTIMENTO'),
(89, '089', 'COOPERATIVA DE CRÉDITO RURAL DA REGIÃO DA MOGIANA'),
(92, '092', 'BANCO BRICKELL S.A.'),
(96, '096', 'BCO BMF DE SERV DE LIQUIDACAO  CUSTODIA'),
(104, '104', 'CAIXA ECONOMICA FEDERAL SA'),
(107, '107', 'BANCO BBM S.A'),
(116, '116', 'BANCO UNICO S.A.'),
(151, '151', 'BANCO NOSSA CAIXA'),
(175, '175', 'BANCO FINASA S/A'),
(184, '184', 'BANCO ITAU BBA S.A.'),
(204, '204', 'AMERICAN EXPRESS BANK(BR) BCO MULTIPLO'),
(208, '208', 'BANCO PACTUAL SA'),
(210, '210', 'DRESDNER BANK LATEINAMERIKA S.A'),
(212, '212', 'BANCO MATONE SA'),
(213, '213', 'BANCO ARBI SA'),
(214, '214', 'BANCO DIBENS SA'),
(215, '215', 'BCO COML INV SUDAMERIS SA'),
(217, '217', 'BANCO JOH  DEERE S/A'),
(218, '218', 'BANCO BONSUCESSO S.A'),
(222, '222', 'BANCO CALYON BRASIL S.A.'),
(224, '224', 'BANCO FIBRA SA'),
(225, '225', 'BANCO BRASCAN SA.'),
(229, '229', 'BANCO CRUZEIRO S.A.'),
(230, '230', 'UNICARD BANCO MULTIPLO'),
(233, '233', 'BANCO GE CAPITAL S.A'),
(237, '237', 'BANCO BRADESCO S.A'),
(241, '241', 'BANCO CLASSICO SA'),
(243, '243', 'BANCO STOCK MAXIMA S.A.'),
(244, '244', 'BANCO CIDADE SA'),
(246, '246', 'BANCO ABC-BRASIL S.A'),
(247, '247', 'BANCO UBS WARBURG S/A'),
(248, '248', 'BANCO BOAVISTA INTERATLANTICO SA'),
(249, '249', 'BANCO INVESTCRED UNIBANCO SA'),
(250, '250', 'BANCO SCHAHIN S/A'),
(252, '252', 'BANCO FININVEST SA'),
(254, '254', 'BANCO PARANA BANCO SA'),
(263, '263', 'BANCO CACIQUE SA'),
(265, '265', 'BANCO FATOR SA'),
(266, '266', 'BANCO CEDULA SA'),
(291, '291', 'BANCO BCN S.A.'),
(300, '300', 'BANCO DE LA NACION ARGENTINA SA'),
(318, '318', 'BANCO BMG COMERCIAL S.A.'),
(320, '320', 'BANCO INDUSTRIAL E COMERCIAL SPAULO SA'),
(341, '341', 'BANCO ITAÚ SA'),
(347, '347', 'BANCO SUDAMERIS BRASIL SA'),
(351, '351', 'BANCO SANTANDER S/A'),
(353, '353', 'BANCO SANTANDER BRASIL S.A.'),
(356, '356', 'BANCO ABN AMRO REAL S.A.'),
(366, '366', 'BANCO SOCIETE GENERALE BRASIL S.A'),
(370, '370', 'BANCO WESTLB DO BRASIL S/A'),
(376, '376', 'BANCO JP MORGAN S.A.'),
(389, '389', 'BANCO MERCANTIL DO BRASIL SA'),
(392, '392', 'BANCO MERCANTIL DE SÃO PAULO S.A.'),
(394, '394', 'BANCO MERCANTIL DE CREDITO SA'),
(399, '399', 'HSBC BANK BRASIL S.A. - BANCO MULTIPLO'),
(409, '409', 'BANCO UNIBANCO SA'),
(412, '412', 'BANCO CAPITAL S.A'),
(422, '422', 'BANCO SAFRA SA'),
(453, '453', 'BANCO RURAL SA'),
(456, '456', 'BANCO TOKYO-MITSUBISHI UFJ BRASIL'),
(464, '464', 'BANCO SUMITOMO MITSUI BRASILEIRO S/A'),
(477, '477', 'CITIBANK N.A.'),
(479, '479', 'BANKBOSTON-BCO MULTIPLO S.A.'),
(487, '487', 'BANCO DEUTSCHE BANK SA'),
(488, '488', 'BANCO MORGAN GUARANTY TRUST COMPANY'),
(492, '492', 'BANCO NMB POSTBANK GROEP N.V. SA'),
(494, '494', 'BANCO LA REPUBL.ORIENTAL DEL URUGUAY SA'),
(495, '495', 'BANCO LA PROVINCIA DE BUENOS AIRES SA'),
(505, '505', 'BANCO CREDIT SUISSE (BRASIL) S/A'),
(600, '600', 'BANCO LUSO BRASILEIRO SA'),
(604, '604', 'BANCO INDUSTRIAL DO BRASIL S/A'),
(610, '610', 'BANCO VR S.A'),
(611, '611', 'BANCO PAULISTA S.A'),
(612, '612', 'BANCO GUANABARA SA'),
(613, '613', 'BANCO PECUNIA S.A.'),
(623, '623', 'BANCO PANAMERICANO S.A.'),
(626, '626', 'BANCO FICSA SA'),
(630, '630', 'BANCO INTERCAP SA'),
(633, '633', 'BANCO RENDIMENTO S.A.'),
(634, '634', 'BANCO TRIANGULO SA'),
(637, '637', 'BANCO SOFISA SA'),
(638, '638', 'BANCO PROSPER SA'),
(641, '641', 'BANCO ALVORADA S.A.'),
(643, '643', 'BANCO PINE S.A.'),
(650, '650', 'BANCO PEBB S.A.'),
(652, '652', 'BANCO ITAU HOLDING FINANCEIRA SA'),
(653, '653', 'BANCO INDUSVAL SA'),
(654, '654', 'BANCO A.J. RENNER SA'),
(655, '655', 'BANCO VOTORANTIM S.A. '),
(707, '707', 'BANCO DAYCOVAL SA'),
(719, '719', 'BANIF-BCO INTERNAC DO FUNCHAL(BR) S.A'),
(721, '721', 'BANCO CREDIBEL S.A.'),
(724, '724', 'BANCO PORTO SEGURO S.A.'),
(734, '734', 'BANCO GERDAU SA'),
(735, '735', 'BANCO POTTENCIAL S.A.'),
(738, '738', 'BANCO MORADA SA'),
(739, '739', 'BANCO GALVAO DE NEGOCIOS SA'),
(740, '740', 'BANCO BARCLAYS  S.A.'),
(741, '741', 'BANCO RIBEIRAO PRETO SA'),
(743, '743', 'BANCO EMBLEMA SA'),
(744, '744', 'BANKBOSTON N.A.'),
(745, '745', 'BANCO CITIBANK S.A.'),
(746, '746', 'BANCO MODAL SA'),
(747, '747', 'BANCO RABOBANK INTERNATIONAL BR S.A.'),
(748, '748', 'BANCO COOPERATIVO SICREDI S.A'),
(749, '749', 'BANCO SIMPLES S.A.'),
(751, '751', 'DRESDNER BANK BRASIL S.A. BANCO MULTIPLO'),
(752, '752', 'BANCO BNP PARIBAS BRASIL S/A'),
(753, '753', 'BANCO COMERCIAL URUGUAI S.A.'),
(756, '756', 'BANCO COOPERATIVO DO BRASIL S.A.'),
(757, '757', 'BANCO KEB DO BRASIL S.A.'),
(998, '998', 'INSTITUIÇÃO FINANCEIRA (NÃO BANCÁRIA)'),
(999, '999', '999 - CAIXA');

-- --------------------------------------------------------

--
-- Estrutura da tabela `bloco`
--

CREATE TABLE `bloco` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `condominio_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `bloco`
--

INSERT INTO `bloco` (`id`, `nome`, `condominio_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Bloco 01', 1, '2017-04-13 03:00:00', '2017-04-13 03:00:00', NULL),
(2, 'Bloco 02', 1, '2017-04-13 03:00:00', '0000-00-00 00:00:00', NULL),
(3, 'Bloco 03', 1, '2017-04-14 01:05:08', '2017-04-13 22:05:08', NULL),
(4, 'Bloco 04', 1, '2017-04-14 01:05:14', '2017-04-13 22:05:14', NULL),
(5, 'Bloco 05', 1, '2017-04-14 01:05:14', '2017-04-13 22:05:14', NULL),
(6, 'Bloco 06', 1, '2017-04-14 01:05:14', '2017-04-13 22:05:14', NULL),
(7, 'Bloco 07', 1, '2017-04-14 01:05:14', '2017-04-13 22:05:14', NULL),
(8, 'Bloco 08', 1, '2017-04-14 01:05:14', '2017-04-13 22:05:14', NULL),
(9, 'Bloco 09', 1, '2017-04-14 01:05:14', '2017-04-13 22:05:14', NULL),
(10, 'Bloco 10', 1, '2017-04-14 01:05:14', '2017-04-13 22:05:14', NULL),
(11, 'Bloco 11', 1, '2017-04-14 01:05:14', '2017-04-13 22:05:14', NULL),
(12, 'Bloco 12', 1, '2017-04-14 01:05:14', '2017-04-13 22:05:14', NULL),
(13, 'teste', 1, '2017-08-01 00:51:47', '2017-07-31 21:51:47', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoriacontas`
--

CREATE TABLE `categoriacontas` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `categoriacontas`
--

INSERT INTO `categoriacontas` (`id`, `nome`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'NAO INFORMADO', '2017-04-29 17:25:08', '2017-04-29 17:25:08', NULL),
(2, 'TAXA DE CONDOMINIO', '2017-04-30 01:32:37', '2017-04-29 22:32:37', NULL),
(3, 'FUNDO DE RESERVA', '2017-04-30 01:32:44', '2017-04-29 22:32:44', NULL),
(4, 'ÁGUA', '2017-04-30 01:32:49', '2017-04-29 22:32:49', NULL),
(5, 'LUZ', '2017-04-30 01:32:53', '2017-04-29 22:32:53', NULL),
(6, 'GÁS', '2017-04-30 01:33:01', '2017-04-29 22:33:01', NULL),
(7, 'TELEFONE', '2017-04-30 01:33:07', '2017-04-29 22:33:07', NULL),
(8, 'INTERNET', '2017-04-30 01:33:10', '2017-04-29 22:33:10', NULL),
(9, 'MULTA', '2017-04-30 01:33:15', '2017-04-29 22:33:15', NULL),
(10, 'PROVISÕES', '2017-04-30 01:33:24', '2017-04-29 22:33:24', NULL),
(11, 'SERVIÇOS GERAIS', '2017-04-30 01:33:33', '2017-04-29 22:33:33', NULL),
(12, 'CONSUMO', '2017-04-30 01:33:44', '2017-04-29 22:33:44', NULL),
(13, 'AJUSTE DE CAIXA', '2017-04-30 01:33:51', '2017-04-29 22:33:51', NULL),
(14, 'APLICAÇÕES FINANCEIRAS', '2017-04-30 01:33:59', '2017-04-29 22:33:59', NULL),
(15, 'ALUGUEL', '2017-04-30 01:34:05', '2017-04-29 22:34:05', NULL),
(16, 'ESTORNO', '2017-04-30 01:34:10', '2017-04-29 22:34:10', NULL),
(17, 'SALDO INICIAL', '2017-04-30 01:34:14', '2017-04-29 22:34:14', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cms_apicustom`
--

CREATE TABLE `cms_apicustom` (
  `id` int(10) UNSIGNED NOT NULL,
  `permalink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `responses` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cms_apikey`
--

CREATE TABLE `cms_apikey` (
  `id` int(10) UNSIGNED NOT NULL,
  `screetkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cms_dashboard`
--

CREATE TABLE `cms_dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cms_email_queues`
--

CREATE TABLE `cms_email_queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_attachments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cms_email_templates`
--

CREATE TABLE `cms_email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `cms_email_templates`
--

INSERT INTO `cms_email_templates` (`id`, `name`, `slug`, `subject`, `content`, `description`, `from_name`, `from_email`, `cc_email`, `created_at`, `updated_at`) VALUES
(1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2022-09-21 18:10:25', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cms_logs`
--

CREATE TABLE `cms_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `ipaddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `cms_logs`
--

INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2022-09-21 18:11:38', NULL),
(2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/users/add-save', 'Add New Data Síndico at Users Management', '', 1, '2022-09-21 20:28:16', NULL),
(3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/users/add-save', 'Add New Data Morador at Users Management', '', 1, '2022-09-21 20:29:14', NULL),
(4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'morador@gmail.com login with IP Address 127.0.0.1', '', 3, '2022-09-21 20:29:58', NULL),
(5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2022-09-21 22:00:01', NULL),
(6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2022-09-22 18:20:53', NULL),
(7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/module_generator/delete/12', 'Delete data Condomínio at Module Generator', '', 1, '2022-09-22 18:29:23', NULL),
(8, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2022-09-23 16:36:40', NULL),
(9, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/module_generator/delete/13', 'Delete data Condomínio at Module Generator', '', 1, '2022-09-23 16:37:09', NULL),
(10, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/fa%20fa-bars/edit-save/18', 'Update data Configs at Gestão de menus', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Condomínio</td><td>Configs</td></tr><tr><td>path</td><td>Condominio</td><td>pais</td></tr><tr><td>color</td><td>aqua</td><td>green</td></tr><tr><td>icon</td><td>fa fa-renren</td><td>fa fa-list</td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2022-09-23 17:59:01', NULL),
(11, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/fa%20fa-bars/add-save', 'Add New Data Financeiro at Gestão de menus', '', 1, '2022-09-23 18:01:09', NULL),
(12, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'sindico@gmail.com login with IP Address 127.0.0.1', '', 2, '2022-09-23 18:02:33', NULL),
(13, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/fa%20fa-bars/edit-save/19', 'Update data Financeiro at Gestão de menus', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2022-09-23 18:02:56', NULL),
(14, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/contasapagar', 'Try view the data :name at Contas a Pagar', '', 2, '2022-09-23 18:03:05', NULL),
(15, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/fa%20fa-bars/add-save', 'Add New Data Condomínio at Gestão de menus', '', 1, '2022-09-23 18:06:43', NULL),
(16, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/condominio', 'Try view the data :name at Condomínio', '', 2, '2022-09-23 18:06:51', NULL),
(17, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/fa%20fa-bars/edit-save/21', 'Update data UFF at Gestão de menus', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>UF</td><td>UFF</td></tr><tr><td>parent_id</td><td>18</td><td></td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2022-09-23 18:14:39', NULL),
(18, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/fa%20fa-bars/add-save', 'Add New Data Bancos at Gestão de menus', '', 1, '2022-09-23 18:16:55', NULL),
(19, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/fa%20fa-bars/add-save', 'Add New Data Categoria de Contas at Gestão de menus', '', 1, '2022-09-23 18:17:46', NULL),
(20, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/fa%20fa-bars/add-save', 'Add New Data Contas a Pagar at Gestão de menus', '', 1, '2022-09-23 18:18:22', NULL),
(21, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/fa%20fa-bars/add-save', 'Add New Data Contas a Receber at Gestão de menus', '', 1, '2022-09-23 18:18:48', NULL),
(22, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/fa%20fa-bars/add-save', 'Add New Data Contas Bancárias at Gestão de menus', '', 1, '2022-09-23 18:19:13', NULL),
(23, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/fa%20fa-bars/add-save', 'Add New Data Fornecedor at Gestão de menus', '', 1, '2022-09-23 18:19:34', NULL),
(24, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/fa%20fa-bars/add-save', 'Add New Data Áreas Comum at Gestão de menus', '', 1, '2022-09-23 18:20:09', NULL),
(25, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/fa%20fa-bars/add-save', 'Add New Data Assembleia at Gestão de menus', '', 1, '2022-09-23 18:20:44', NULL),
(26, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/fa%20fa-bars/add-save', 'Add New Data Rua at Gestão de menus', '', 1, '2022-09-23 18:21:13', NULL),
(27, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/fa%20fa-bars/add-save', 'Add New Data Condomínio at Gestão de menus', '', 1, '2022-09-23 18:21:34', NULL),
(28, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/fa%20fa-bars/add-save', 'Add New Data Morador at Gestão de menus', '', 1, '2022-09-23 18:22:03', NULL),
(29, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/fa%20fa-bars/add-save', 'Add New Data Unidade at Gestão de menus', '', 1, '2022-09-23 18:22:25', NULL),
(30, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/fa%20fa-bars/add-save', 'Add New Data Livro Ocorrência at Gestão de menus', '', 1, '2022-09-23 18:22:58', NULL),
(31, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/fa%20fa-bars/edit-save/22', 'Update data Users at Gestão de menus', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>18</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2022-09-23 18:25:01', NULL),
(32, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/fa%20fa-bars/edit-save/32', 'Update data Condomínio at Gestão de menus', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td>AdminCondominioControllerGetIndex</td><td>AdminCondominio1ControllerGetIndex</td></tr><tr><td>parent_id</td><td>20</td><td></td></tr></tbody></table>', 1, '2022-09-23 18:27:51', NULL),
(33, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/fa%20fa-bars/edit-save/32', 'Update data Condomínio at Gestão de menus', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>20</td><td></td></tr></tbody></table>', 1, '2022-09-23 18:29:05', NULL),
(34, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/fa%20fa-bars/edit-save/31', 'Update data Rua at Gestão de menus', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>20</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2022-09-23 18:29:35', NULL),
(35, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/fa%20fa-bars/edit-save/34', 'Update data Unidade at Gestão de menus', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>20</td><td></td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2022-09-23 18:30:11', NULL),
(36, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/fa%20fa-bars/edit-save/33', 'Update data Morador at Gestão de menus', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>20</td><td></td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2022-09-23 18:30:19', NULL),
(37, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/fa%20fa-bars/edit-save/30', 'Update data Assembleia at Gestão de menus', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>20</td><td></td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2022-09-23 18:30:27', NULL),
(38, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/fa%20fa-bars/edit-save/29', 'Update data Áreas Comum at Gestão de menus', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>20</td><td></td></tr><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>', 1, '2022-09-23 18:30:36', NULL),
(39, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/fa%20fa-bars/edit-save/35', 'Update data Livro Ocorrência at Gestão de menus', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>20</td><td></td></tr><tr><td>sorting</td><td>7</td><td></td></tr></tbody></table>', 1, '2022-09-23 18:30:47', NULL),
(40, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/fa%20fa-bars/edit-save/23', 'Update data Bancos at Gestão de menus', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>19</td><td></td></tr></tbody></table>', 1, '2022-09-23 18:31:12', NULL),
(41, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/fa%20fa-bars/edit-save/24', 'Update data Categoria de Contas at Gestão de menus', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>19</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2022-09-23 18:31:20', NULL),
(42, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/fa%20fa-bars/edit-save/27', 'Update data Contas Bancárias at Gestão de menus', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>19</td><td></td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2022-09-23 18:31:28', NULL),
(43, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/fa%20fa-bars/edit-save/25', 'Update data Contas a Pagar at Gestão de menus', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>19</td><td></td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2022-09-23 18:31:35', NULL),
(44, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/fa%20fa-bars/edit-save/26', 'Update data Contas a Receber at Gestão de menus', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>19</td><td></td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2022-09-23 18:31:44', NULL),
(45, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/fa%20fa-bars/edit-save/28', 'Update data Fornecedor at Gestão de menus', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>19</td><td></td></tr><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>', 1, '2022-09-23 18:31:53', NULL),
(46, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/fa%20fa-bars/edit-save/18', 'Update data Configurações at Gestão de menus', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2022-09-23 18:32:03', NULL),
(47, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/fa%20fa-bars/edit-save/21', 'Update data UFF at Gestão de menus', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>18</td><td></td></tr></tbody></table>', 1, '2022-09-23 18:32:11', NULL),
(48, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/fa%20fa-bars/edit-save/22', 'Update data Users at Gestão de menus', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>18</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2022-09-23 18:32:19', NULL),
(49, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/fa%20fa-bars/edit-save/20', 'Update data Condomínio at Gestão de menus', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2022-09-23 18:33:12', NULL),
(50, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/fa%20fa-bars/edit-save/32', 'Update data Condomínio at Gestão de menus', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>20</td><td></td></tr></tbody></table>', 1, '2022-09-23 18:33:20', NULL),
(51, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/fa%20fa-bars/edit-save/31', 'Update data Rua at Gestão de menus', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>20</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2022-09-23 18:33:27', NULL),
(52, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/fa%20fa-bars/edit-save/34', 'Update data Unidade at Gestão de menus', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>20</td><td></td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2022-09-23 18:33:34', NULL),
(53, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/fa%20fa-bars/edit-save/33', 'Update data Morador at Gestão de menus', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>20</td><td></td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2022-09-23 18:33:47', NULL),
(54, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/fa%20fa-bars/edit-save/30', 'Update data Assembleia at Gestão de menus', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>20</td><td></td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2022-09-23 18:33:54', NULL),
(55, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/fa%20fa-bars/edit-save/29', 'Update data Áreas Comum at Gestão de menus', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>20</td><td></td></tr><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>', 1, '2022-09-23 18:34:04', NULL),
(56, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/fa%20fa-bars/edit-save/35', 'Update data Livro Ocorrência at Gestão de menus', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>20</td><td></td></tr><tr><td>sorting</td><td>7</td><td></td></tr></tbody></table>', 1, '2022-09-23 18:34:12', NULL),
(57, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'sindico@gmail.com logout', '', 2, '2022-09-23 18:34:21', NULL),
(58, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'morador@gmail.com login with IP Address 127.0.0.1', '', 3, '2022-09-23 18:34:29', NULL),
(59, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/fa%20fa-bars/edit-save/29', 'Update data Áreas Comuns at Gestão de menus', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Áreas Comum</td><td>Áreas Comuns</td></tr><tr><td>parent_id</td><td>20</td><td></td></tr><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>', 1, '2022-09-23 18:39:59', NULL),
(60, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'morador@gmail.com logout', '', 3, '2022-09-23 18:40:29', NULL),
(61, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'sindico@gmail.com login with IP Address 127.0.0.1', '', 2, '2022-09-23 18:40:39', NULL),
(62, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/areacomum', 'Try view the data :name at Áreas Comuns', '', 2, '2022-09-23 18:40:44', NULL),
(63, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/areacomum', 'Try view the data :name at Áreas Comuns', '', 2, '2022-09-23 18:41:35', NULL),
(64, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/condominio', 'Try view the data :name at Condomínio', '', 2, '2022-09-23 18:41:41', NULL),
(65, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'sindico@gmail.com logout', '', 2, '2022-09-23 18:42:24', NULL),
(66, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'sindico@gmail.com login with IP Address 127.0.0.1', '', 2, '2022-09-23 18:42:33', NULL),
(67, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/fa%20fa-bars/edit-save/33', 'Update data Morador at Gestão de menus', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>20</td><td></td></tr><tr><td>is_dashboard</td><td>0</td><td>1</td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2022-09-23 19:55:16', NULL),
(68, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/fa%20fa-bars/edit-save/33', 'Update data Morador at Gestão de menus', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>20</td><td></td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2022-09-23 19:55:38', NULL),
(69, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/statistic_builder/add-save', 'Add New Data Morador at Statistic Builder', '', 1, '2022-09-23 19:58:30', NULL),
(70, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/statistic_builder/add-save', 'Add New Data Unidades at Statistic Builder', '', 1, '2022-09-23 20:05:27', NULL),
(71, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/fa%20fa-bars/edit-save/33', 'Update data Morador at Gestão de menus', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>20</td><td></td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2022-09-23 20:07:32', NULL),
(72, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/fa%20fa-bars/add-save', 'Add New Data Painel de Controle at Gestão de menus', '', 1, '2022-09-23 20:08:58', NULL),
(73, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/fa%20fa-bars/edit-save/36', 'Update data Painel de Controle at Gestão de menus', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-users</td><td>fa fa-dashboard</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2022-09-23 20:09:15', NULL),
(74, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/fa%20fa-bars/edit-save/30', 'Update data Assembleias at Gestão de menus', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Assembleia</td><td>Assembleias</td></tr><tr><td>parent_id</td><td>20</td><td></td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2022-09-23 20:29:45', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cms_menus`
--

CREATE TABLE `cms_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_dashboard` tinyint(1) NOT NULL DEFAULT 0,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `cms_menus`
--

INSERT INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `id_cms_privileges`, `sorting`, `created_at`, `updated_at`) VALUES
(3, 'Rua', 'Route', 'AdminBlocoControllerGetIndex', 'normal', 'fa fa-cog', 0, 1, 0, 2, 4, NULL, NULL),
(4, 'UF', 'Route', 'AdminUfControllerGetIndex', NULL, 'fa fa-map-pin', 0, 1, 0, 1, 5, '2022-09-23 16:52:34', NULL),
(5, 'Condomínio', 'Route', 'AdminCondominio1ControllerGetIndex', NULL, 'fa fa-home', 0, 1, 0, 1, 6, '2022-09-23 16:54:53', NULL),
(6, 'Rua', 'Route', 'AdminBlocoControllerGetIndex', NULL, 'fa fa-glass', 0, 1, 0, 1, 7, '2022-09-23 16:56:05', NULL),
(7, 'Unidade', 'Route', 'AdminUnidadeControllerGetIndex', NULL, 'fa fa-outdent', 0, 1, 0, 1, 8, '2022-09-23 16:57:00', NULL),
(8, 'Morador', 'Route', 'AdminMoradorControllerGetIndex', NULL, 'fa fa-user', 0, 1, 0, 1, 9, '2022-09-23 16:57:29', NULL),
(9, 'Fornecedor', 'Route', 'AdminFornecedorControllerGetIndex', NULL, 'fa fa-glass', 0, 1, 0, 1, 10, '2022-09-23 16:57:50', NULL),
(10, 'Assembleia', 'Route', 'AdminAssembleiassControllerGetIndex', NULL, 'fa fa-book', 0, 1, 0, 1, 11, '2022-09-23 16:58:32', NULL),
(11, 'Áreas Comum', 'Route', 'AdminAreacomumControllerGetIndex', NULL, 'fa fa-renren', 0, 1, 0, 1, 12, '2022-09-23 16:59:28', NULL),
(12, 'Bancos', 'Route', 'AdminBancoControllerGetIndex', NULL, 'fa fa-money', 0, 1, 0, 1, 13, '2022-09-23 16:59:51', NULL),
(13, 'Contas Bancárias', 'Route', 'AdminContabancariaControllerGetIndex', NULL, 'fa fa-money', 0, 1, 0, 1, 14, '2022-09-23 17:00:32', NULL),
(14, 'Contas a Pagar', 'Route', 'AdminContasapagarControllerGetIndex', NULL, 'fa fa-btc', 0, 1, 0, 1, 15, '2022-09-23 17:00:59', NULL),
(15, 'Categoria de Contas', 'Route', 'AdminCategoriacontasControllerGetIndex', NULL, 'fa fa-th-list', 0, 1, 0, 1, 16, '2022-09-23 17:01:31', NULL),
(16, 'Contas a Receber', 'Route', 'AdminContasareceberControllerGetIndex', NULL, 'fa fa-viacoin', 0, 1, 0, 1, 17, '2022-09-23 17:01:56', NULL),
(17, 'Gestão de usuários', 'Route', 'AdminCmsUsers1ControllerGetIndex', NULL, 'fa fa-users', 0, 1, 0, 1, 18, '2022-09-23 17:04:30', NULL),
(18, 'Configurações', 'Module', 'pais', 'green', 'fa fa-list', 0, 1, 0, 1, 3, NULL, '2022-09-23 18:32:03'),
(19, 'Financeiro', 'Module', NULL, 'red', 'fa fa-cog', 0, 1, 0, 1, 2, '2022-09-23 18:01:08', '2022-09-23 18:02:56'),
(20, 'Condomínio', 'Module', 'condominio', 'aqua', 'fa fa-renren', 0, 1, 0, 1, 1, '2022-09-23 18:06:43', '2022-09-23 18:33:12'),
(21, 'UFF', 'Route', 'AdminUfControllerGetIndex', 'normal', 'fa fa-map-pin', 18, 1, 0, 1, 1, NULL, '2022-09-23 18:32:11'),
(22, 'Users', 'Route', 'AdminCmsUsersControllerGetIndex', 'normal', 'fa fa-users', 18, 1, 0, 1, 2, NULL, '2022-09-23 18:32:18'),
(23, 'Bancos', 'Route', 'AdminBancoControllerGetIndex', 'normal', 'fa fa-money', 19, 1, 0, 1, 1, '2022-09-23 18:16:55', '2022-09-23 18:31:12'),
(24, 'Categoria de Contas', 'Route', 'AdminCategoriacontasControllerGetIndex', 'normal', 'fa fa-list', 19, 1, 0, 1, 2, '2022-09-23 18:17:46', '2022-09-23 18:31:19'),
(25, 'Contas a Pagar', 'Route', 'AdminContasapagarControllerGetIndex', 'normal', 'fa fa-btc', 19, 1, 0, 1, 4, '2022-09-23 18:18:21', '2022-09-23 18:31:34'),
(26, 'Contas a Receber', 'Route', 'AdminContasareceberControllerGetIndex', 'normal', 'fa fa-viacoin', 19, 1, 0, 1, 5, '2022-09-23 18:18:48', '2022-09-23 18:31:44'),
(27, 'Contas Bancárias', 'Route', 'AdminContabancariaControllerGetIndex', 'normal', 'fa fa-money', 19, 1, 0, 1, 3, '2022-09-23 18:19:13', '2022-09-23 18:31:27'),
(28, 'Fornecedor', 'Route', 'AdminFornecedorControllerGetIndex', 'normal', 'fa fa-glass', 19, 1, 0, 1, 6, '2022-09-23 18:19:34', '2022-09-23 18:31:52'),
(29, 'Áreas Comuns', 'Route', 'AdminAreacomumControllerGetIndex', 'normal', 'fa fa-renren', 20, 1, 0, 1, 6, '2022-09-23 18:20:09', '2022-09-23 18:39:59'),
(30, 'Assembleias', 'Route', 'AdminAssembleiassControllerGetIndex', 'normal', 'fa fa-book', 20, 1, 0, 1, 5, '2022-09-23 18:20:44', '2022-09-23 20:29:44'),
(31, 'Rua', 'Route', 'AdminBlocoControllerGetIndex', 'normal', 'fa fa-cog', 20, 1, 0, 1, 2, '2022-09-23 18:21:13', '2022-09-23 18:33:26'),
(32, 'Condomínio', 'Route', 'AdminCondominio1ControllerGetIndex', 'normal', 'fa fa-home', 20, 1, 0, 1, 1, '2022-09-23 18:21:33', '2022-09-23 18:33:19'),
(33, 'Morador', 'Route', 'AdminMoradorControllerGetIndex', 'normal', 'fa fa-user', 20, 1, 0, 1, 4, '2022-09-23 18:22:03', '2022-09-23 20:07:31'),
(34, 'Unidade', 'Route', 'AdminUnidadeControllerGetIndex', 'normal', 'fa fa-glass', 20, 1, 0, 1, 3, '2022-09-23 18:22:25', '2022-09-23 18:33:34'),
(35, 'Livro Ocorrência', 'Route', 'AdminLivroocorrenciaControllerGetIndex', 'normal', 'fa fa-check', 20, 1, 0, 1, 7, '2022-09-23 18:22:58', '2022-09-23 18:34:12'),
(36, 'Painel de Controle', 'Statistic', 'statistic_builder/show/morador', 'normal', 'fa fa-dashboard', 0, 1, 0, 1, NULL, '2022-09-23 20:08:58', '2022-09-23 20:09:15');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cms_menus_privileges`
--

CREATE TABLE `cms_menus_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `cms_menus_privileges`
--

INSERT INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 4, 1),
(4, 5, 1),
(5, 6, 1),
(6, 7, 1),
(7, 8, 1),
(8, 9, 1),
(9, 10, 1),
(10, 11, 1),
(11, 12, 1),
(12, 13, 1),
(13, 14, 1),
(14, 15, 1),
(15, 16, 1),
(16, 17, 1),
(19, 19, 2),
(20, 19, 1),
(54, 23, 2),
(55, 23, 1),
(56, 24, 2),
(57, 24, 1),
(58, 27, 2),
(59, 27, 1),
(60, 25, 2),
(61, 25, 1),
(62, 26, 2),
(63, 26, 1),
(64, 28, 2),
(65, 28, 1),
(66, 18, 2),
(67, 18, 1),
(68, 21, 2),
(69, 21, 1),
(70, 22, 2),
(71, 22, 1),
(72, 20, 3),
(73, 20, 2),
(74, 20, 1),
(75, 32, 3),
(76, 32, 2),
(77, 32, 1),
(78, 31, 3),
(79, 31, 2),
(80, 31, 1),
(81, 34, 3),
(82, 34, 2),
(83, 34, 1),
(93, 35, 3),
(94, 35, 2),
(95, 35, 1),
(96, 29, 3),
(97, 29, 2),
(98, 29, 1),
(105, 33, 3),
(106, 33, 2),
(107, 33, 1),
(110, 36, 2),
(111, 36, 1),
(112, 30, 3),
(113, 30, 2),
(114, 30, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cms_moduls`
--

CREATE TABLE `cms_moduls` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `cms_moduls`
--

INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', 1, 1, '2022-09-21 18:10:25', NULL, NULL),
(2, 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', 1, 1, '2022-09-21 18:10:25', NULL, NULL),
(3, 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1, '2022-09-21 18:10:25', NULL, NULL),
(4, 'Users Management', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', 0, 1, '2022-09-21 18:10:25', NULL, NULL),
(5, 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 1, 1, '2022-09-21 18:10:25', NULL, NULL),
(6, 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1, '2022-09-21 18:10:25', NULL, NULL),
(7, 'Menu Management', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', 1, 1, '2022-09-21 18:10:25', NULL, NULL),
(8, 'Email Templates', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1, '2022-09-21 18:10:25', NULL, NULL),
(9, 'Statistic Builder', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1, '2022-09-21 18:10:25', NULL, NULL),
(10, 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', 1, 1, '2022-09-21 18:10:25', NULL, NULL),
(11, 'Log User Access', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1, '2022-09-21 18:10:25', NULL, NULL),
(15, 'UF', 'fa fa-map-pin', 'uf', 'uf', 'AdminUfController', 0, 0, '2022-09-23 16:52:34', NULL, NULL),
(16, 'Condomínio', 'fa fa-home', 'condominio', 'condominio', 'AdminCondominio1Controller', 0, 0, '2022-09-23 16:54:53', NULL, NULL),
(17, 'Rua', 'fa fa-glass', 'bloco', 'bloco', 'AdminBlocoController', 0, 0, '2022-09-23 16:56:04', NULL, NULL),
(18, 'Unidade', 'fa fa-outdent', 'unidade', 'unidade', 'AdminUnidadeController', 0, 0, '2022-09-23 16:56:59', NULL, NULL),
(19, 'Morador', 'fa fa-user', 'morador', 'morador', 'AdminMoradorController', 0, 0, '2022-09-23 16:57:29', NULL, NULL),
(20, 'Fornecedor', 'fa fa-glass', 'fornecedor', 'fornecedor', 'AdminFornecedorController', 0, 0, '2022-09-23 16:57:50', NULL, NULL),
(21, 'Assembleia', 'fa fa-book', 'assembleiass', 'assembleiass', 'AdminAssembleiassController', 0, 0, '2022-09-23 16:58:32', NULL, NULL),
(22, 'Áreas Comuns', 'fa fa-renren', 'areacomum', 'areacomum', 'AdminAreacomumController', 0, 0, '2022-09-23 16:59:28', NULL, NULL),
(23, 'Bancos', 'fa fa-money', 'banco', 'banco', 'AdminBancoController', 0, 0, '2022-09-23 16:59:50', NULL, NULL),
(24, 'Contas Bancárias', 'fa fa-money', 'contabancaria', 'contabancaria', 'AdminContabancariaController', 0, 0, '2022-09-23 17:00:32', NULL, NULL),
(25, 'Contas a Pagar', 'fa fa-btc', 'contasapagar', 'contasapagar', 'AdminContasapagarController', 0, 0, '2022-09-23 17:00:58', NULL, NULL),
(26, 'Categoria de Contas', 'fa fa-th-list', 'categoriacontas', 'categoriacontas', 'AdminCategoriacontasController', 0, 0, '2022-09-23 17:01:31', NULL, NULL),
(27, 'Contas a Receber', 'fa fa-viacoin', 'contasareceber', 'contasareceber', 'AdminContasareceberController', 0, 0, '2022-09-23 17:01:56', NULL, NULL),
(28, 'Gestão de usuários', 'fa fa-users', 'cms_users', 'cms_users', 'AdminCmsUsers1Controller', 0, 1, '2022-09-23 17:04:30', NULL, NULL),
(29, 'Privilégios', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1, NULL, NULL, NULL),
(30, 'Configurações', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 1, 1, NULL, NULL, NULL),
(31, 'Módulo Gerador', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1, NULL, NULL, NULL),
(32, 'Gestão de menus', 'fa fa-bars', 'fa fa-bars', 'cms_menus', 'MenusController', 1, 1, NULL, NULL, NULL),
(33, 'Modelos de e-mail', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1, NULL, NULL, NULL),
(34, 'Construtor de Estatisticas', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1, NULL, NULL, NULL),
(35, 'Gerador de API', 'fa fa-cloud-download', 'api_generator', NULL, 'ApiCustomController', 1, 1, NULL, NULL, NULL),
(36, 'Histórico de acesso', 'fa fa-flag-o', 'logs', 'cms_logs', 'cms_logs', 1, 1, NULL, NULL, NULL),
(37, 'Livro de Ocorrência', 'fa fa-check', 'livroocorrencia', 'livroocorrencia', 'AdminLivroocorrenciaController', 0, 0, NULL, NULL, NULL),
(38, 'Pais', 'fa fa-map-marker', 'pais', 'pais', 'AdminPaisController', 0, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cms_notifications`
--

CREATE TABLE `cms_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cms_privileges`
--

CREATE TABLE `cms_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `cms_privileges`
--

INSERT INTO `cms_privileges` (`id`, `name`, `is_superadmin`, `theme_color`, `created_at`, `updated_at`) VALUES
(1, 'Super Administrator', 1, 'skin-red', '2022-09-21 18:10:26', NULL),
(2, 'Síndico', 0, 'skin-green-light', NULL, NULL),
(3, 'Morador', 0, 'skin-purple', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cms_privileges_roles`
--

CREATE TABLE `cms_privileges_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `cms_privileges_roles`
--

INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, 0, 0, 1, 1, '2022-09-21 18:10:26', NULL),
(2, 1, 1, 1, 1, 1, 1, 2, '2022-09-21 18:10:26', NULL),
(3, 0, 1, 1, 1, 1, 1, 3, '2022-09-21 18:10:26', NULL),
(4, 1, 1, 1, 1, 1, 1, 4, '2022-09-21 18:10:26', NULL),
(5, 1, 1, 1, 1, 1, 1, 5, '2022-09-21 18:10:26', NULL),
(6, 1, 1, 1, 1, 1, 1, 6, '2022-09-21 18:10:26', NULL),
(7, 1, 1, 1, 1, 1, 1, 7, '2022-09-21 18:10:26', NULL),
(8, 1, 1, 1, 1, 1, 1, 8, '2022-09-21 18:10:26', NULL),
(9, 1, 1, 1, 1, 1, 1, 9, '2022-09-21 18:10:26', NULL),
(10, 1, 1, 1, 1, 1, 1, 10, '2022-09-21 18:10:26', NULL),
(11, 1, 0, 1, 0, 1, 1, 11, '2022-09-21 18:10:26', NULL),
(12, 1, 1, 1, 1, 1, 1, 12, NULL, NULL),
(13, 1, 1, 1, 1, 1, 1, 13, NULL, NULL),
(16, 1, 1, 1, 1, 1, 1, 15, NULL, NULL),
(17, 1, 1, 1, 1, 1, 1, 16, NULL, NULL),
(18, 1, 1, 1, 1, 1, 1, 17, NULL, NULL),
(19, 1, 1, 1, 1, 1, 1, 18, NULL, NULL),
(20, 1, 1, 1, 1, 1, 1, 19, NULL, NULL),
(21, 1, 1, 1, 1, 1, 1, 20, NULL, NULL),
(22, 1, 1, 1, 1, 1, 1, 21, NULL, NULL),
(23, 1, 1, 1, 1, 1, 1, 22, NULL, NULL),
(24, 1, 1, 1, 1, 1, 1, 23, NULL, NULL),
(25, 1, 1, 1, 1, 1, 1, 24, NULL, NULL),
(26, 1, 1, 1, 1, 1, 1, 25, NULL, NULL),
(27, 1, 1, 1, 1, 1, 1, 26, NULL, NULL),
(28, 1, 1, 1, 1, 1, 1, 27, NULL, NULL),
(29, 1, 1, 1, 1, 1, 1, 28, NULL, NULL),
(38, 1, 0, 1, 0, 0, 3, 26, NULL, NULL),
(39, 1, 0, 1, 0, 0, 3, 16, NULL, NULL),
(40, 1, 0, 1, 0, 0, 3, 25, NULL, NULL),
(41, 1, 0, 1, 0, 0, 3, 27, NULL, NULL),
(42, 1, 0, 1, 0, 0, 3, 24, NULL, NULL),
(43, 1, 0, 1, 0, 0, 3, 20, NULL, NULL),
(44, 1, 1, 1, 1, 0, 3, 19, NULL, NULL),
(45, 1, 0, 1, 0, 0, 3, 38, NULL, NULL),
(46, 1, 0, 1, 0, 0, 3, 15, NULL, NULL),
(47, 1, 1, 1, 1, 0, 3, 18, NULL, NULL),
(48, 0, 1, 0, 1, 0, 3, 4, NULL, NULL),
(66, 1, 1, 1, 1, 1, 2, 22, NULL, NULL),
(67, 1, 1, 1, 1, 1, 2, 21, NULL, NULL),
(68, 1, 1, 1, 1, 1, 2, 23, NULL, NULL),
(69, 1, 1, 1, 1, 1, 2, 26, NULL, NULL),
(70, 1, 1, 1, 1, 1, 2, 16, NULL, NULL),
(71, 1, 1, 1, 1, 1, 2, 25, NULL, NULL),
(72, 1, 1, 1, 1, 1, 2, 27, NULL, NULL),
(73, 1, 1, 1, 1, 1, 2, 24, NULL, NULL),
(74, 1, 1, 1, 1, 1, 2, 20, NULL, NULL),
(75, 1, 1, 1, 1, 1, 2, 28, NULL, NULL),
(76, 1, 1, 1, 1, 1, 2, 37, NULL, NULL),
(77, 1, 1, 1, 1, 1, 2, 19, NULL, NULL),
(78, 1, 1, 1, 1, 1, 2, 38, NULL, NULL),
(79, 1, 1, 1, 1, 1, 2, 17, NULL, NULL),
(80, 1, 1, 1, 1, 1, 2, 15, NULL, NULL),
(81, 1, 1, 1, 1, 1, 2, 18, NULL, NULL),
(82, 1, 1, 1, 1, 1, 2, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cms_settings`
--

CREATE TABLE `cms_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_input_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `cms_settings`
--

INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES
(1, 'login_background_color', NULL, 'text', NULL, 'Input hexacode', '2022-09-21 18:10:25', NULL, 'Login Register Style', 'Login Background Color'),
(2, 'login_font_color', NULL, 'text', NULL, 'Input hexacode', '2022-09-21 18:10:25', NULL, 'Login Register Style', 'Login Font Color'),
(3, 'login_background_image', NULL, 'upload_image', NULL, NULL, '2022-09-21 18:10:25', NULL, 'Login Register Style', 'Login Background Image'),
(4, 'email_sender', 'support@crudbooster.com', 'text', NULL, NULL, '2022-09-21 18:10:25', NULL, 'Email Setting', 'Email Sender'),
(5, 'smtp_driver', 'mail', 'select', 'smtp,mail,sendmail', NULL, '2022-09-21 18:10:25', NULL, 'Email Setting', 'Mail Driver'),
(6, 'smtp_host', '', 'text', NULL, NULL, '2022-09-21 18:10:25', NULL, 'Email Setting', 'SMTP Host'),
(7, 'smtp_port', '25', 'text', NULL, 'default 25', '2022-09-21 18:10:25', NULL, 'Email Setting', 'SMTP Port'),
(8, 'smtp_username', '', 'text', NULL, NULL, '2022-09-21 18:10:25', NULL, 'Email Setting', 'SMTP Username'),
(9, 'smtp_password', '', 'text', NULL, NULL, '2022-09-21 18:10:25', NULL, 'Email Setting', 'SMTP Password'),
(10, 'appname', 'Condomínio', 'text', NULL, NULL, '2022-09-21 18:10:25', NULL, 'Application Setting', 'Application Name'),
(11, 'default_paper_size', 'Legal', 'text', NULL, 'Paper size, ex : A4, Legal, etc', '2022-09-21 18:10:25', NULL, 'Application Setting', 'Default Paper Print Size'),
(12, 'logo', 'uploads/2022-09/fd6a5dcc572c33ce535d064d2b8de642.png', 'upload_image', NULL, NULL, '2022-09-21 18:10:25', NULL, 'Application Setting', 'Logo'),
(13, 'favicon', NULL, 'upload_image', NULL, NULL, '2022-09-21 18:10:25', NULL, 'Application Setting', 'Favicon'),
(14, 'api_debug_mode', 'true', 'select', 'true,false', NULL, '2022-09-21 18:10:25', NULL, 'Application Setting', 'API Debug Mode'),
(15, 'google_api_key', NULL, 'text', NULL, NULL, '2022-09-21 18:10:25', NULL, 'Application Setting', 'Google API Key'),
(16, 'google_fcm_key', NULL, 'text', NULL, NULL, '2022-09-21 18:10:25', NULL, 'Application Setting', 'Google FCM Key');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cms_statistics`
--

CREATE TABLE `cms_statistics` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `cms_statistics`
--

INSERT INTO `cms_statistics` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Morador', 'morador', '2022-09-23 19:58:30', NULL),
(2, 'Unidades', 'unidades', '2022-09-23 20:05:26', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cms_statistic_components`
--

CREATE TABLE `cms_statistic_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `cms_statistic_components`
--

INSERT INTO `cms_statistic_components` (`id`, `id_cms_statistics`, `componentID`, `component_name`, `area_name`, `sorting`, `name`, `config`, `created_at`, `updated_at`) VALUES
(1, 1, '98620f599efde77932076b3d5b55d78b', 'smallbox', 'area1', 0, NULL, '{\"name\":\"Moradores\",\"icon\":\"users\",\"color\":\"bg-green\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/morador\",\"sql\":\"SELECT COUNT(nome) from morador;\"}', '2022-09-23 19:58:49', NULL),
(2, 2, 'e5814cd3cc7b11e75563d253f8dab463', 'smallbox', 'area1', 0, NULL, '{\"name\":\"Unidades\",\"icon\":\"home\",\"color\":\"bg-red\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/morador\",\"sql\":\"SELECT COUNT(nome) from unidade;\"}', '2022-09-23 20:05:44', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cms_users`
--

CREATE TABLE `cms_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `cms_users`
--

INSERT INTO `cms_users` (`id`, `name`, `photo`, `email`, `password`, `id_cms_privileges`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Super Admin', NULL, 'admin@crudbooster.com', '$2y$10$UjP83n9C3gJJa2STEOc20OOLhJcWwJjnxtcjlMNs3cAX0kXkPemlu', 1, '2022-09-21 18:10:25', NULL, 'Active'),
(2, 'Síndico', 'uploads/1/2022-09/sindico.jpg', 'sindico@gmail.com', '$2y$10$2ZBDUuL9a.r6b2CwoZeK/uxo2d6B6t8VWFcYk5kDGRmTm9p.vPAG.', 2, '2022-09-21 20:28:16', NULL, NULL),
(3, 'Morador', 'uploads/1/2022-09/morador.jpg', 'morador@gmail.com', '$2y$10$bB11htJypt.7vm02mU/PJeOSQ9/SnbXNOIW4pDE.1Z1SeBPV5bmA.', 3, '2022-09-21 20:29:14', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `condominio`
--

CREATE TABLE `condominio` (
  `id` int(11) NOT NULL,
  `nome` varchar(250) NOT NULL,
  `cnpj` varchar(14) NOT NULL,
  `email` varchar(100) NOT NULL,
  `endereco` varchar(100) NOT NULL,
  `numero` int(3) NOT NULL,
  `complemento` varchar(50) NOT NULL,
  `bairro` varchar(50) NOT NULL,
  `cep` int(8) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `uf_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `condominio`
--

INSERT INTO `condominio` (`id`, `nome`, `cnpj`, `email`, `endereco`, `numero`, `complemento`, `bairro`, `cep`, `cidade`, `uf_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Jardim Ipitanga Life', '12365448000188', 'condominio@gmail.com', 'rua djanira maria bastos', 2181, '', 'vida nova', 42700000, 'Lauro de Freitas', 1, '2017-04-13 03:00:00', '2017-04-13 03:00:00', NULL),
(2, 'teste', '23232323232323', 'ntem@gmail.com', 'rua', 0, '', 'centro', 40000000, 'cidade', 3, '2017-10-22 20:20:42', '2017-10-22 20:20:42', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `contabancaria`
--

CREATE TABLE `contabancaria` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `banco_id` int(11) NOT NULL,
  `tipoconta_id` int(11) NOT NULL,
  `agencia` varchar(50) NOT NULL,
  `numero` varchar(50) NOT NULL,
  `saldoinicial` double(12,2) NOT NULL,
  `datasaldo` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `contabancaria`
--

INSERT INTO `contabancaria` (`id`, `nome`, `banco_id`, `tipoconta_id`, `agencia`, `numero`, `saldoinicial`, `datasaldo`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Caixa', 999, 1, '9999', '8', 90500.00, '2017-04-01', '2017-04-23 20:43:50', '2017-04-23 20:55:21', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `contasapagar`
--

CREATE TABLE `contasapagar` (
  `id` int(11) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `datavencimento` date NOT NULL,
  `categoriacontas_id` int(11) NOT NULL DEFAULT 1,
  `contabancaria_id` int(11) NOT NULL,
  `valor` double(12,2) NOT NULL,
  `simnao_id` int(11) NOT NULL,
  `fornecedor_id` int(11) NOT NULL,
  `obs` varchar(500) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `contasapagar`
--

INSERT INTO `contasapagar` (`id`, `nome`, `datavencimento`, `categoriacontas_id`, `contabancaria_id`, `valor`, `simnao_id`, `fornecedor_id`, `obs`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'conta X', '2017-04-12', 13, 1, 25574.00, 2, 1, '', '2017-04-26 04:58:21', '2017-08-12 06:25:17', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `contasareceber`
--

CREATE TABLE `contasareceber` (
  `id` int(11) NOT NULL DEFAULT 0,
  `nome` varchar(150) NOT NULL,
  `categoriacontas_id` int(11) NOT NULL DEFAULT 1,
  `datavencimento` date NOT NULL,
  `contabancaria_id` int(11) NOT NULL,
  `valor` double(12,2) NOT NULL,
  `simnao_id` int(11) NOT NULL,
  `bloco_id` int(11) NOT NULL,
  `unidade_id` int(11) NOT NULL,
  `obs` varchar(500) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `contasareceber`
--

INSERT INTO `contasareceber` (`id`, `nome`, `categoriacontas_id`, `datavencimento`, `contabancaria_id`, `valor`, `simnao_id`, `bloco_id`, `unidade_id`, `obs`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'COTA DE CONDOMINIO', 2, '2017-05-10', 1, 18097.00, 2, 10, 13, '', '2017-04-30 03:52:09', '2017-08-12 06:39:20', NULL),
(2, 'boleto mes 09', 2, '2017-09-30', 1, 100000.00, 2, 1, 1, 'paga em dia', '2017-09-23 14:58:05', '2017-09-23 14:58:05', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `departamento`
--

CREATE TABLE `departamento` (
  `id` int(11) NOT NULL DEFAULT 0,
  `nome` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `departamento`
--

INSERT INTO `departamento` (`id`, `nome`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'RECEPCAO', '2017-04-13 03:00:00', '2017-10-09 22:43:57', NULL),
(3, 'CONTABILIDADE', '2017-10-09 22:43:47', '2017-10-09 22:43:47', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedor`
--

CREATE TABLE `fornecedor` (
  `id` int(11) NOT NULL,
  `cnpjcpf` varchar(14) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `email` varchar(50) NOT NULL,
  `www` varchar(150) DEFAULT NULL,
  `endereco` varchar(150) DEFAULT NULL,
  `numero` int(3) DEFAULT NULL,
  `bairro` varchar(50) DEFAULT '40000000',
  `cidade` varchar(50) NOT NULL,
  `uf_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `fornecedor`
--

INSERT INTO `fornecedor` (`id`, `cnpjcpf`, `nome`, `email`, `www`, `endereco`, `numero`, `bairro`, `cidade`, `uf_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '69331779982', 'NA LIMA', 'naotem@email.com', 'www', 'endereco', 99, 'bairro', 'cidade', 1, '2017-10-22 20:59:50', '2017-08-22 05:20:12', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `livroocorrencia`
--

CREATE TABLE `livroocorrencia` (
  `id` int(11) NOT NULL,
  `descricao` text NOT NULL,
  `data` date DEFAULT NULL,
  `morador_id` int(11) NOT NULL,
  `contato` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated-at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2016_08_07_145904_add_table_cms_apicustom', 2),
(6, '2016_08_07_150834_add_table_cms_dashboard', 2),
(7, '2016_08_07_151210_add_table_cms_logs', 2),
(8, '2016_08_07_151211_add_details_cms_logs', 2),
(9, '2016_08_07_152014_add_table_cms_privileges', 2),
(10, '2016_08_07_152214_add_table_cms_privileges_roles', 2),
(11, '2016_08_07_152320_add_table_cms_settings', 2),
(12, '2016_08_07_152421_add_table_cms_users', 2),
(13, '2016_08_07_154624_add_table_cms_menus_privileges', 2),
(14, '2016_08_07_154624_add_table_cms_moduls', 2),
(15, '2016_08_17_225409_add_status_cms_users', 2),
(16, '2016_08_20_125418_add_table_cms_notifications', 2),
(17, '2016_09_04_033706_add_table_cms_email_queues', 2),
(18, '2016_09_16_035347_add_group_setting', 2),
(19, '2016_09_16_045425_add_label_setting', 2),
(20, '2016_09_17_104728_create_nullable_cms_apicustom', 2),
(21, '2016_10_01_141740_add_method_type_apicustom', 2),
(22, '2016_10_01_141846_add_parameters_apicustom', 2),
(23, '2016_10_01_141934_add_responses_apicustom', 2),
(24, '2016_10_01_144826_add_table_apikey', 2),
(25, '2016_11_14_141657_create_cms_menus', 2),
(26, '2016_11_15_132350_create_cms_email_templates', 2),
(27, '2016_11_15_190410_create_cms_statistics', 2),
(28, '2016_11_17_102740_create_cms_statistic_components', 2),
(29, '2017_06_06_164501_add_deleted_at_cms_moduls', 2),
(30, '2022_09_13_053810_create_nullablecmsapicustoms_table', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `morador`
--

CREATE TABLE `morador` (
  `id` int(11) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `apelido` varchar(50) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `tipodocumento` int(11) DEFAULT 1,
  `numerodocumento` varchar(14) NOT NULL DEFAULT '99',
  `datanascimento` date DEFAULT NULL,
  `bloco_id` int(11) NOT NULL,
  `unidade_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  `tipomorador` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `morador`
--

INSERT INTO `morador` (`id`, `nome`, `apelido`, `email`, `tipodocumento`, `numerodocumento`, `datanascimento`, `bloco_id`, `unidade_id`, `created_at`, `updated_at`, `deleted_at`, `tipomorador`) VALUES
(1, 'Paulo Vinicio', 'vinny', 'naote@emaico.com', 1, '01606569589', '2017-04-25', 10, 13, '2017-04-14 02:07:47', '2017-04-14 02:10:53', NULL, 1),
(2, 'pinheiro', 'pinheiro', 'naotem@email.com', 1, '65478963215', '2017-04-01', 1, 1, '2017-04-25 19:28:31', '2017-04-25 19:28:47', NULL, 1),
(3, 'juliete', 'juli', 'juliettethamy@gmail.com', 1, '12365478952', '2017-03-29', 4, 13, '2017-04-26 04:45:04', '2017-08-20 02:13:05', NULL, 1),
(4, 'juliana', 'ju', 'juliana@link.com.br', 2, '0256556545', '1989-03-23', 1, 13, '2017-05-27 18:59:04', '2017-05-27 15:59:04', NULL, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `nullablecmsapicustoms`
--

CREATE TABLE `nullablecmsapicustoms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pais`
--

CREATE TABLE `pais` (
  `id` int(11) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `sigla` varchar(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pais`
--

INSERT INTO `pais` (`id`, `nome`, `sigla`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'Brasil', 'BR', '2017-04-13 03:00:00', '2017-04-13 03:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `sexo`
--

CREATE TABLE `sexo` (
  `id` int(11) NOT NULL,
  `nome` varchar(15) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `sexo`
--

INSERT INTO `sexo` (`id`, `nome`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'NAO INFORMADO', '2017-04-20 02:10:13', '2017-04-20 02:10:13', NULL),
(2, 'MASCULINO', '2017-04-20 02:10:13', '2017-04-20 02:10:13', NULL),
(3, 'FEMININO', '2017-04-20 02:10:31', '2017-04-20 02:10:31', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `simnao`
--

CREATE TABLE `simnao` (
  `id` int(11) NOT NULL,
  `nome` varchar(3) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `simnao`
--

INSERT INTO `simnao` (`id`, `nome`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'SIM', '2017-04-26 01:55:36', '2017-04-26 01:55:36', NULL),
(2, 'NAO', '2017-04-26 01:55:36', '2017-04-26 01:55:36', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipoconta`
--

CREATE TABLE `tipoconta` (
  `id` int(11) NOT NULL,
  `nome` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tipoconta`
--

INSERT INTO `tipoconta` (`id`, `nome`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'CONTA CORRENTE', NULL, NULL, NULL),
(2, 'POUPANÇA', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipodocumento`
--

CREATE TABLE `tipodocumento` (
  `id` int(11) NOT NULL,
  `descricao` varchar(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tipodocumento`
--

INSERT INTO `tipodocumento` (`id`, `descricao`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'CPF', NULL, NULL, NULL),
(2, 'RG', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipomorador`
--

CREATE TABLE `tipomorador` (
  `id` int(11) NOT NULL,
  `descricao` varchar(15) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tipomorador`
--

INSERT INTO `tipomorador` (`id`, `descricao`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Proprietario', NULL, NULL, NULL),
(2, 'Inquilino', NULL, NULL, NULL),
(3, 'Morador', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `uf`
--

CREATE TABLE `uf` (
  `id` int(11) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `sigla` varchar(4) NOT NULL,
  `pais_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `uf`
--

INSERT INTO `uf` (`id`, `nome`, `sigla`, `pais_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Acre', 'AC', 2, '2017-04-13 03:00:00', '2017-04-13 03:00:00', NULL),
(2, 'Alagoas', 'AL', 2, '2017-04-15 18:32:15', '2017-04-15 15:32:15', NULL),
(3, 'Amapa', 'AP', 2, '2017-04-15 18:32:26', '2017-04-15 15:32:26', NULL),
(4, 'Amazonas', 'AM', 2, '2017-04-15 18:32:41', '2017-04-15 15:32:41', NULL),
(5, 'Bahia', 'BA', 2, '2017-04-15 18:32:53', '2017-04-15 15:32:53', NULL),
(6, 'Ceará', 'CE', 2, '2017-04-15 18:33:27', '2017-04-15 15:33:27', NULL),
(7, 'Distrito Federal', 'DF', 2, '2017-04-15 18:33:39', '2017-04-15 15:33:39', NULL),
(8, 'Espirito Santo', 'ES', 2, '2017-04-15 18:33:58', '2017-04-15 15:33:58', NULL),
(9, 'Goiás', 'GO', 2, '2017-04-15 18:34:07', '2017-04-15 15:34:07', NULL),
(10, 'Maranhão', 'MA', 2, '2017-04-15 18:34:29', '2017-04-15 15:34:29', NULL),
(11, 'Mato Grosso', 'MT', 2, '2017-04-15 18:34:43', '2017-04-15 15:34:43', NULL),
(12, 'Mato Grosso do Sul', 'MS', 2, '2017-04-15 18:34:53', '2017-04-15 15:34:53', NULL),
(13, 'Minas Gerais', 'MG', 2, '2017-04-15 18:35:07', '2017-04-15 15:35:07', NULL),
(14, 'Pará', 'PA', 2, '2017-04-15 18:35:17', '2017-04-15 15:35:17', NULL),
(15, 'Paraíba', 'PB', 2, '2017-04-15 18:35:31', '2017-04-15 15:35:31', NULL),
(16, 'Paraná', 'PR', 2, '2017-04-15 18:35:43', '2017-04-15 15:35:43', NULL),
(17, 'Pernambuco', 'PE', 2, '2017-04-15 18:35:54', '2017-04-15 15:35:54', NULL),
(18, 'Piauí', 'PI', 2, '2017-04-15 18:36:07', '2017-04-15 15:36:07', NULL),
(19, 'Rio de Janeiro', 'RJ', 2, '2017-04-15 18:36:41', '2017-04-15 15:36:41', NULL),
(20, 'Rio Grande do Norte', 'RN', 2, '2017-04-15 18:36:56', '2017-04-15 15:36:56', NULL),
(21, 'Rio Grande do Sul', 'RS', 2, '2017-04-15 18:37:08', '2017-04-15 15:37:08', NULL),
(22, 'Rondômia', 'RO', 2, '2017-04-15 18:37:22', '2017-04-15 15:37:22', NULL),
(23, 'Roraima', 'RR', 2, '2017-04-15 18:37:30', '2017-04-15 15:37:30', NULL),
(24, 'Santa Catarina', 'SC', 2, '2017-04-15 18:37:59', '2017-04-15 15:37:59', NULL),
(25, 'São Paulo', 'SP', 2, '2017-04-15 18:38:12', '2017-04-15 15:38:12', NULL),
(26, 'Sergipe', 'SE', 2, '2017-04-15 18:38:21', '2017-04-15 15:38:21', NULL),
(27, 'Tocantins', 'TO', 2, '2017-04-15 18:38:31', '2017-04-15 15:38:31', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `unidade`
--

CREATE TABLE `unidade` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `unidade`
--

INSERT INTO `unidade` (`id`, `nome`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '001', '2017-04-13 23:48:50', '2017-04-13 23:49:52', NULL),
(2, '002', '2017-04-14 02:09:18', '2017-04-13 23:09:18', NULL),
(3, '003', '2017-04-14 02:09:21', '2017-04-13 23:09:21', NULL),
(4, '004', '2017-04-14 02:09:24', '2017-04-13 23:09:24', NULL),
(5, '101', '2017-04-14 02:09:26', '2017-04-13 23:09:26', NULL),
(6, '102', '2017-04-14 02:09:29', '2017-04-13 23:09:29', NULL),
(7, '103', '2017-04-14 02:09:31', '2017-04-13 23:09:31', NULL),
(8, '104', '2017-04-14 02:09:34', '2017-04-13 23:09:34', NULL),
(9, '201', '2017-04-14 02:09:37', '2017-04-13 23:09:37', NULL),
(10, '202', '2017-04-14 02:09:39', '2017-04-13 23:09:39', NULL),
(11, '203', '2017-04-14 02:09:41', '2017-04-13 23:09:41', NULL),
(12, '204', '2017-04-14 02:09:44', '2017-04-13 23:09:44', NULL),
(13, '301', '2017-04-14 02:09:48', '2017-04-13 23:09:48', NULL),
(14, '302', '2017-04-14 02:09:51', '2017-04-13 23:09:51', NULL),
(15, '303', '2017-04-14 02:09:54', '2017-04-13 23:09:54', NULL),
(16, '304', '2017-04-14 02:09:58', '2017-04-13 23:09:58', NULL),
(17, '401', '2017-04-14 02:10:26', '2017-04-13 23:10:26', NULL),
(18, '402', '2017-04-14 02:10:28', '2017-04-13 23:10:28', NULL),
(19, '403', '2017-04-14 02:10:30', '2017-04-13 23:10:30', NULL),
(20, '404', '2017-04-14 02:10:32', '2017-04-13 23:10:32', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `areacomum`
--
ALTER TABLE `areacomum`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `assembleiass`
--
ALTER TABLE `assembleiass`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assembleias_areacomum_id` (`areacomum_id`),
  ADD KEY `assembleiass_data_IDX` (`data`,`hora`,`created_at`,`updated_at`);

--
-- Índices para tabela `banco`
--
ALTER TABLE `banco`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `bloco`
--
ALTER TABLE `bloco`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bloco_condominio_id` (`condominio_id`);

--
-- Índices para tabela `categoriacontas`
--
ALTER TABLE `categoriacontas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `nome` (`nome`);

--
-- Índices para tabela `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `cms_apikey`
--
ALTER TABLE `cms_apikey`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `cms_logs`
--
ALTER TABLE `cms_logs`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `cms_menus`
--
ALTER TABLE `cms_menus`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `cms_moduls`
--
ALTER TABLE `cms_moduls`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `cms_notifications`
--
ALTER TABLE `cms_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `cms_privileges`
--
ALTER TABLE `cms_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `cms_settings`
--
ALTER TABLE `cms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `cms_statistics`
--
ALTER TABLE `cms_statistics`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `cms_users`
--
ALTER TABLE `cms_users`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `condominio`
--
ALTER TABLE `condominio`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `cnpj` (`cnpj`),
  ADD KEY `condominio_uf_id` (`uf_id`);

--
-- Índices para tabela `contabancaria`
--
ALTER TABLE `contabancaria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contabancaria_banco_fk` (`banco_id`),
  ADD KEY `contabancaria_tipocontabancaria_fk` (`tipoconta_id`);

--
-- Índices para tabela `contasapagar`
--
ALTER TABLE `contasapagar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contasapagar_contabancaria_fk` (`contabancaria_id`),
  ADD KEY `contasapagar_simnao_fk` (`simnao_id`),
  ADD KEY `contasapagar_categoriacontas_id_fk` (`categoriacontas_id`),
  ADD KEY `contasapagar_datavencimento_IDX` (`datavencimento`,`categoriacontas_id`,`created_at`,`updated_at`);

--
-- Índices para tabela `contasareceber`
--
ALTER TABLE `contasareceber`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `contasareceber_contabancaria_id` (`contabancaria_id`),
  ADD KEY `contasareceber_simnao_id` (`simnao_id`),
  ADD KEY `contasareceber_bloco_id` (`bloco_id`);

--
-- Índices para tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Índices para tabela `fornecedor`
--
ALTER TABLE `fornecedor`
  ADD UNIQUE KEY `id_2` (`id`),
  ADD KEY `fornecedor_uf_fk` (`uf_id`),
  ADD KEY `id` (`id`),
  ADD KEY `updated_at` (`updated_at`),
  ADD KEY `created_at` (`created_at`);

--
-- Índices para tabela `livroocorrencia`
--
ALTER TABLE `livroocorrencia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `livroocorrenciadataindx` (`data`),
  ADD KEY `livroocorrenciamoradorfk` (`morador_id`);

--
-- Índices para tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `morador`
--
ALTER TABLE `morador`
  ADD PRIMARY KEY (`id`),
  ADD KEY `morador_bloco_fk` (`bloco_id`),
  ADD KEY `morador_unidade_fk` (`unidade_id`);

--
-- Índices para tabela `nullablecmsapicustoms`
--
ALTER TABLE `nullablecmsapicustoms`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Índices para tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Índices para tabela `sexo`
--
ALTER TABLE `sexo`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `simnao`
--
ALTER TABLE `simnao`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tipoconta`
--
ALTER TABLE `tipoconta`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tipodocumento`
--
ALTER TABLE `tipodocumento`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tipomorador`
--
ALTER TABLE `tipomorador`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `uf`
--
ALTER TABLE `uf`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pais_id` (`pais_id`),
  ADD KEY `id` (`id`);

--
-- Índices para tabela `unidade`
--
ALTER TABLE `unidade`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `areacomum`
--
ALTER TABLE `areacomum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `assembleiass`
--
ALTER TABLE `assembleiass`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `banco`
--
ALTER TABLE `banco`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000;

--
-- AUTO_INCREMENT de tabela `bloco`
--
ALTER TABLE `bloco`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `categoriacontas`
--
ALTER TABLE `categoriacontas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cms_apikey`
--
ALTER TABLE `cms_apikey`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `cms_logs`
--
ALTER TABLE `cms_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT de tabela `cms_menus`
--
ALTER TABLE `cms_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de tabela `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT de tabela `cms_moduls`
--
ALTER TABLE `cms_moduls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de tabela `cms_notifications`
--
ALTER TABLE `cms_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cms_privileges`
--
ALTER TABLE `cms_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT de tabela `cms_settings`
--
ALTER TABLE `cms_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `cms_statistics`
--
ALTER TABLE `cms_statistics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `condominio`
--
ALTER TABLE `condominio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `contabancaria`
--
ALTER TABLE `contabancaria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `contasapagar`
--
ALTER TABLE `contasapagar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `livroocorrencia`
--
ALTER TABLE `livroocorrencia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de tabela `morador`
--
ALTER TABLE `morador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `nullablecmsapicustoms`
--
ALTER TABLE `nullablecmsapicustoms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pais`
--
ALTER TABLE `pais`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `sexo`
--
ALTER TABLE `sexo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `simnao`
--
ALTER TABLE `simnao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tipoconta`
--
ALTER TABLE `tipoconta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tipodocumento`
--
ALTER TABLE `tipodocumento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tipomorador`
--
ALTER TABLE `tipomorador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `uf`
--
ALTER TABLE `uf`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de tabela `unidade`
--
ALTER TABLE `unidade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `assembleiass`
--
ALTER TABLE `assembleiass`
  ADD CONSTRAINT `assembleias_areacomum_id` FOREIGN KEY (`areacomum_id`) REFERENCES `areacomum` (`id`) ON UPDATE CASCADE;

--
-- Limitadores para a tabela `bloco`
--
ALTER TABLE `bloco`
  ADD CONSTRAINT `bloco_condominio_id` FOREIGN KEY (`condominio_id`) REFERENCES `condominio` (`id`) ON UPDATE CASCADE;

--
-- Limitadores para a tabela `condominio`
--
ALTER TABLE `condominio`
  ADD CONSTRAINT `condominio_uf_id` FOREIGN KEY (`uf_id`) REFERENCES `uf` (`id`) ON UPDATE CASCADE;

--
-- Limitadores para a tabela `contabancaria`
--
ALTER TABLE `contabancaria`
  ADD CONSTRAINT `contabancaria_banco_fk` FOREIGN KEY (`banco_id`) REFERENCES `banco` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `contabancaria_tipocontabancaria_fk` FOREIGN KEY (`tipoconta_id`) REFERENCES `tipoconta` (`id`) ON UPDATE CASCADE;

--
-- Limitadores para a tabela `contasapagar`
--
ALTER TABLE `contasapagar`
  ADD CONSTRAINT `contasapagar_categoriacontas_id_fk` FOREIGN KEY (`categoriacontas_id`) REFERENCES `categoriacontas` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `contasapagar_contabancaria_fk` FOREIGN KEY (`contabancaria_id`) REFERENCES `contabancaria` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `contasapagar_simnao_fk` FOREIGN KEY (`simnao_id`) REFERENCES `simnao` (`id`) ON UPDATE CASCADE;

--
-- Limitadores para a tabela `contasareceber`
--
ALTER TABLE `contasareceber`
  ADD CONSTRAINT `contasareceber_bloco_id` FOREIGN KEY (`bloco_id`) REFERENCES `bloco` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `contasareceber_contabancaria_id` FOREIGN KEY (`contabancaria_id`) REFERENCES `contabancaria` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `contasareceber_simnao_id` FOREIGN KEY (`simnao_id`) REFERENCES `simnao` (`id`);

--
-- Limitadores para a tabela `fornecedor`
--
ALTER TABLE `fornecedor`
  ADD CONSTRAINT `fornecedor_uf_fk` FOREIGN KEY (`uf_id`) REFERENCES `uf` (`id`) ON UPDATE CASCADE;

--
-- Limitadores para a tabela `livroocorrencia`
--
ALTER TABLE `livroocorrencia`
  ADD CONSTRAINT `livroocorrenciamoradorfk` FOREIGN KEY (`morador_id`) REFERENCES `morador` (`id`) ON UPDATE CASCADE;

--
-- Limitadores para a tabela `morador`
--
ALTER TABLE `morador`
  ADD CONSTRAINT `morador_bloco_fk` FOREIGN KEY (`bloco_id`) REFERENCES `bloco` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `morador_unidade_fk` FOREIGN KEY (`unidade_id`) REFERENCES `unidade` (`id`) ON UPDATE CASCADE;

--
-- Limitadores para a tabela `uf`
--
ALTER TABLE `uf`
  ADD CONSTRAINT `uf_pais_fk` FOREIGN KEY (`pais_id`) REFERENCES `pais` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
