% Author: Walter Tiberti
% Contact: walter.tiberti@univaq.it
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{univaqslides}[UNIVAQ slides]

\LoadClass[aspectratio=169]{beamer}

\RequirePackage[utf8]{inputenc}
\RequirePackage{textpos}
\RequirePackage{hyperref}
\RequirePackage{xcolor}
\RequirePackage[default,oldstyle]{opensans}

% Definizione Colori %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Grigio chiaro
\definecolor{univaqgray}{rgb}{0.9, 0.9, 0.9}
% Verde
\definecolor{univaqgreen}{rgb}{0.0, 0.5, 0.0}
% Giallo Univaq: #f2c451
\definecolor{univaqyellow}{RGB}{242, 196, 81}
% Rosso Magenta Univaq #e51f61
\definecolor{univaqred}{RGB}{229, 31, 97}
% Blu Navy Univaq #2c4556
\definecolor{univaqblue}{RGB}{44, 69, 86}

% Colori per gli elementi %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Struttura
\setbeamercolor{structure}{fg=univaqblue}
% Titolo/Autore/Data
\setbeamercolor{title}{fg=white}
\setbeamercolor{author}{fg=white}
\setbeamercolor{date}{fg=white}
% ..Blocchi
\setbeamercolor{block title}{fg=white, bg=univaqblue}
\setbeamercolor{block body}{bg=univaqblue!10}
\setbeamercolor{block title example}{fg=white,bg=univaqgreen}
\setbeamercolor{block body example}{bg=univaqgreen!10}
\setbeamercolor{block title alerted}{fg=white,bg=univaqred}
\setbeamercolor{block body alerted}{bg=univaqred!10}


% Fonts %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Open Sans - Condensed
\DeclareRobustCommand\bcseries{\fontseries{bc}\selectfont}
\DeclareRobustCommand\clseries{\fontseries{cl}\selectfont}
\setbeamerfont{frametitle}{series=\bcseries}

% Sottotitolo %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Comando per l'immissione di un sottotitolo.
% Verrà mostrato nella prima slide e sotto i loghi in basso a destra
% OBBLIGATORIO
\newcommand\univaqsetsubtitle[1]{%
	\def \univaqsubtitle {#1}
}

% Bullets %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\defbeamertemplate{itemize item}{image}{\small\includegraphics[height=1.6ex]{imgs/bulletblue}}
\defbeamertemplate{itemize subitem}{image}{\scriptsize\includegraphics[height=1.6ex]{imgs/bulletgreen}}
\defbeamertemplate{itemize subsubitem}{image}{\tiny\includegraphics[height=1.6ex]{imgs/bulletyellow}}
\setbeamertemplate{itemize item}[image]
\setbeamertemplate{itemize subitem}[image]
\setbeamertemplate{itemize subsubitem}[image]

% Logo UNIVAQ e DISIM a piè pagina %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\addtobeamertemplate{frametitle}{}{%
	\begin{textblock*}{0.2\paperwidth}(12cm,7cm)
		\centering\tiny
		\includegraphics[height=0.75cm,width=10cm,keepaspectratio]{imgs/logonobg}
		\\\univaqsubtitle
	\end{textblock*}
}

% Sfondo del numero di pagine %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\addtobeamertemplate{frametitle}{}{%
	\begin{textblock*}{1cm}(13.85cm,-0.5cm)
		\raggedleft\footnotesize
		\includegraphics[width=1cm]{imgs/bullet}
	\end{textblock*}
}

% Numero pagine %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\addtobeamertemplate{frametitle}{}{%
	\begin{textblock*}{0.2\paperwidth}(11.2cm,-0.25cm)
		\raggedleft\small\color{white}
		\insertframenumber%/\inserttotalframenumber
	\end{textblock*}
}

% Background titolo della slide %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\addtobeamertemplate{frametitle}{
	\begin{textblock*}{\paperwidth}(-1cm,0cm)
		\includegraphics[width=\paperwidth,height=1cm]{imgs/frametitlebg}
	\end{textblock*}
}

% Comando per inserire la Slide Iniziale %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\univaqtitlepage}{%
	\setbeamertemplate{background}{\includegraphics[height=9cm,width=16cm]{imgs/titlebg}}
	\begin{frame}{}
		\begin{textblock*}{4cm}(10cm,0cm)
			\includegraphics[width=4cm]{imgs/univaq.png}
		\end{textblock*}
		\clseries \color{white}
		\large\univaqsubtitle\\
		\vspace{1em}
		\bcseries
		\Huge\inserttitle\\
		\Large\vspace{1em}
		\insertauthor\\
		\vspace{2em}\insertdate
		\vfill
	\end{frame}
	\setbeamertemplate{background}{}
}

% Comando per inserire la Slide di inizio sezione %%%%%%%%%%%%%%%%%%%%%
\newcommand{\univaqsectionpage}[1]{%
	\setbeamertemplate{background}{\includegraphics[height=9cm,width=16cm]{imgs/sectionbg}}
	\section{#1}
	\begin{frame}{}
		\vfill \color{white} \Huge 
		\vspace{4em}
		\bcseries #1
	\end{frame}
	\setbeamertemplate{background}{}
}
