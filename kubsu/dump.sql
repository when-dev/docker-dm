--
-- PostgreSQL database dump
--

-- Dumped from database version 16.8 (Ubuntu 16.8-0ubuntu0.24.04.1)
-- Dumped by pg_dump version 16.8 (Ubuntu 16.8-0ubuntu0.24.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: users; Type: TABLE; Schema: public; Owner: kubsu
--

CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.users OWNER TO kubsu;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: kubsu
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO kubsu;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kubsu
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: kubsu
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: kubsu
--

COPY public.users (id, name) FROM stdin;
18	John Doe
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kubsu
--

SELECT pg_catalog.setval('public.users_id_seq', 18, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: kubsu
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

