-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.ElementaryNumberTheory.ArithmeticFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.Architect.Variant64618db094651f4c3cda5045b649ff49d7ff26877cb177378c07459e03354886","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"64618db094651f4c3cda5045b649ff49d7ff26877cb177378c07459e03354886","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.ArithmeticFunctions.SourceCorpus.Architect.Variant64618db094651f4c3cda5045b649ff49d7ff26877cb177378c07459e03354886","mathematical_subject":"NumberTheory.ArithmeticFunctions","original_sha256":"64618db094651f4c3cda5045b649ff49d7ff26877cb177378c07459e03354886","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/06/16/PrimeNumberTheoremAnd-main 2/PrimeNumberTheoremAnd/HoffsteinLockhart.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Architect
import Mathlib.Analysis.Complex.CauchyIntegral
import Mathlib.NumberTheory.ArithmeticFunction.Defs
import Mathlib.NumberTheory.ArithmeticFunction.Misc
import Mathlib.NumberTheory.ArithmeticFunction.Moebius
import Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt
import Mathlib.NumberTheory.ArithmeticFunction.Zeta
import Mathlib.NumberTheory.LSeries.RiemannZeta
import Mathlib.Analysis.Meromorphic.Basic


namespace GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.Architect.Variant64618db094651f4c3cda5045b649ff49d7ff26877cb177378c07459e03354886

open Complex BigOperators Finset Nat Classical

open scoped ArithmeticFunction Interval

blueprint_comment /--

In this file, we use the Hoffstein-Lockhart construction to prove a zero-free region for zeta.

Hoffstein-Lockhart + Goldfeld-Hoffstein-Liemann

Instead of the ``slick'' identity $3+4\cos\theta+\cos2\theta=2(\cos\theta+1)^2\ge0$, we use the
following more robust identity.
\begin{theorem}\label{thm:HLineq}
For any $p>0$ and $t\in\mathbb{R}$,
$$
3+p^{2it}+p^{-2it}+2p^{it}+2p^{-it} \ge 0.
$$
\end{theorem}
\begin{proof}
This follows immediately from the identity
$$
|1+p^{it}+p^{-it}|^2=1+p^{2it}+p^{-2it}+2p^{it}+2p^{-it}+2.
$$
\end{proof}
[Note: identities of this type will work in much greater generality, especially for
higher degree $L$-functions.]

This means that, for fixed $t$, we define the following alternate function.
\begin{definition}\label{FsigmaDef} For $\sigma>1$ and $t\in\mathbb{R}$, define
$$
F(\sigma) := \zeta^3(\sigma)\zeta^2(\sigma+it)\zeta^2(\sigma-it)\zeta(\sigma+2it)\zeta(\sigma-2it).
$$
\end{definition}
\begin{theorem}\label{FsigmaThm}
Then $F$ is real-valued, and
whence $F(\sigma)\ge1$ there.
\end{theorem}
\begin{proof}
\uses{thm:HLineq, FsigmaDef}
That
$\log F(\sigma)\ge0$ for $\sigma>1$ follows from
Theorem \ref{thm:HLineq}.
\end{proof}
[Note: I often prefer to avoid taking logs of functions that, even if real-valued, have to be
justified as being such. Instead, I like to start with ``logF'' as a convergent
Dirichlet series, show that it is real-valued and non-negative, and then exponentiate...]

From this and Hadamard factorization, we deduce the following.
\begin{theorem}\label{thm:StrongZeroFree}
There is a constant $c>0$, so that $\zeta(s)$ does not vanish in
the region $\sigma>1-\frac{c}{\log t}$, and moreover,
$$
-\frac{\zeta'}{\zeta}(\sigma+it) \ll (\log t)^2
$$
there.
\end{theorem}
\begin{proof}
\uses{FsigmaThm}
Use Theorem \ref{FsigmaThm} and Hadamard factorization.
\end{proof}

This allows us to quantify precisely the relationship between $T$ and $\delta$ in
Theorem \ref{ZetaNoZerosInBox}....

-/
