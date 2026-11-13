# Source-exact primitive Dirichlet Weil positivity through support 23/30 via 20 actual gamma bands

Local attribution: grwtsk contributors. Edition 1 (2026-11-13).
MSC2020: 11M06 (Dirichlet L-functions), 11M26 (zeta zero distribution), 11N05 (prime powers), 47A63 (operator inequalities).

**Evidence boundary:** COMPLETE_WRITTEN_ANALYTICAL_ARGUMENT and LOCALLY_EXECUTED_EXACT_RATIONAL_FINITE_AUDIT (Python 3.13.5, exit 0). This manuscript is NOT a formal Lean kernel proof or independently reviewed analytic result. Lean elaboration, fresh kernel replay, transitive axiom audit, independent mathematical review and original source-to-completed-L formalization: NOT_RUN. Novelty: UNASSESSED; original short-support Weil positivity has classical Yoshida/Bombieri antecedents. It does NOT prove RH, primitive Dirichlet GRH, finite global negative index, or an all-window Weil sign theorem.

**True arithmetic source, exact consumer, live pin:** Reuse unchanged native primitive full Weil form and parity/conductor comparison WFP-v1-1--4 in sibling WeilFirstPrimeRankOne.md, the full original gamma zero-extension identity in WPHG075-1--5 (WeilPrimitiveHalfGamma075.md; Git blob 6828d5f17964556608bb87acdb97728f2480ccae), and the actual source-return terms from canonical CharacterWeilWindowBounds / WeilGammaPhysicalReturn / WeilFullFrequencyTail. WPHG075 proves full nonprincipal primitive positivity at support L<=3/4 with constant 1/250, using TWO physical gamma halves. This manuscript retains a 20-band genuine gamma contribution and reaches L<=23/30 with conservative constant 1/500. No augmented source or positive surrogate is introduced. The conductor-one zeta case retains its separate existing all-test signed-two-pole source WZAP075-v1-1, WeilZetaAlignedFirstPrime075.md (Git blob dcff107f040f0e610a7e70c4236053f6a96e8a3e), whose known support is L<=3/4. **This manuscript does NOT improve the shared all-primitive window beyond 3/4; its strict extension concerns nonprincipal primitive q>1.**

Repository main inspected at 9801d7075102fa88310f84d2b0b4388c4f2a0932, with later main movement reconciled by create-only publication; root/scoped AGENTS, CONTRIBUTING and relevant source tree inspected. Lean leanprover/lean4:v4.34.1; mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. Coordination issue grwtsk/math#1801, scope comment 6859458384. No Lean declarations/imports, research axioms, sorry/admit, dependency pins or CI/protection changes.

## 1. Original full primitive Weil form and WPMB-1

Fix real L>0 and an ACTUAL primitive nonprincipal Dirichlet character chi of exact conductor q>1, with parity a_chi in {0,1}, chi(-1)=(-1)^a. Let b=a+1/2. The native original COMPLEX domain consists of zero-extended functions
\[
V_{L,b}=\left\{ f\in L^2((0,L);\mathbb C):
 \Gamma_b(f)<\infty\right\},\qquad
\Gamma_b(f)=\int_0^\infty
\frac{e^{-bu}}{1-e^{-2u}}\|f(\cdot+u)-f\|_{L^2(\mathbb R)}^2\,du.
\tag{1}
\]
The COMPLETED original primitive Weil quadratic form is
\[
\boxed{
Q_{\chi,L}(f)=
\left[\log(q/\pi)+\psi\!\left(\frac14+\frac a2\right)\right]\|f\|_2^2
+\Gamma_b(f)
-2\sum_{\substack{n\ge2\\\log n<L}}
\frac{\Lambda(n)}{\sqrt n}\Re\left(
\chi(n)\int_{\mathbb R}\overline{f(x)}f(x+\log n)\,dx\right).
}
\tag{2}
\]
The original source includes EVERY von Mangoldt prime power, true character phase and zero on ramified n, conductor and parity gamma data, without a divergent totalized Euler series. The conductor-one zeta source is NOT (2): its additional two signed pole orientations require the separate genuine q=1 theorem cited above. The exact character phase orientation is the canonical WFP source convention; an equivalent conjugate convention can be used if the correlation orientation is conjugated consistently. No RH/GRH assumption occurs.

Fix the rational endpoint
\[
\boxed{L_0=\frac{23}{30}=0.76666\ldots,\qquad
h=\frac{L_0}{20}=\frac{23}{600}.}
\tag{3}
\]

**Theorem WPMB-1 (UNCONDITIONAL written source-exact local positivity).** For EVERY primitive nonprincipal chi of EVERY q>1, both parity sectors, EVERY real 0<L<=23/30, and EVERY admissible complex f in V_{L,a+1/2},
\[
\boxed{Q_{\chi,L}(f)\ge\frac1{500}\|f\|_2^2.}
\tag{4}
\]
For nonzero f at the endpoint the proof supplies the stricter rational coefficient
\[
\boxed{Q_{\chi,L_0}(f)>
\frac{51166026753}{20000000000000}\|f\|_2^2
>\frac1{500}\|f\|_2^2.}
\tag{5}
\]
For f=0 use equality. This theorem is full-test, conductor-uniform within q>1 and arbitrary COMPLEX f; no numerical sampling of f, finite-dimensional assumption on its Fourier transform, zero-free strip or character reality hypothesis is used.

## 2. WPMB-2: true phase-sensitive first prime and worst gamma parity

The exact rational source supports satisfy
\(\log2<L_0<\log3\). Thus the ORIGINAL prime inventory in (2) at this support contains exactly n=2. Set s=log2, d=L_0-s, w=s/sqrt2. The genuine signed prime term is
\[
S_{\chi,L_0}(f)=2w\,\Re\left(
\chi(2)\int_0^d\overline{f(x)}f(x+s)dx\right).
\tag{6}
\]
The disjoint actual edge strips are E_d=(0,d) union (s,L_0), since d<s. From |\chi(2)|<=1 and \(2|uv|\le|u|^2+|v|^2\) we obtain the rigorous (not identity) upper sign bound
\[
\boxed{S_{\chi,L_0}(f)\le
w\int_{E_d}|f(x)|^2dx.}
\tag{7}
\]
Complex phases and possible chi(2)=0 are retained in (6) before this estimate. Every n>=3 has literally zero test autocorrelation by support, not because any prime power was deleted from the actual source.

Define \(A_{q,a}(f)=[\log(q/\pi)+\psi(1/4+a/2)]\|f\|^2+\Gamma_{a+1/2}(f)\). The exact original kernel identity (WFP-v1-2) is
\[
A_{q,1}(f)-A_{q,0}(f)
=\frac12\int_0^{L_0}\int_0^{L_0}
\operatorname{sech}((x-y)/2)\overline{f(x)}f(y)\,dy\,dx.
\tag{8}
\]
Its absolute value is <=(L_0/2)||f||² and its boundedness ensures equality of the native parity gamma domains. For primitive odd q>1, q>=3, so A_{q,1}>=A_{3,1}; for primitive even q>1, q>=5, and
\[
\log(5/3)=2\operatorname{atanh}(1/4)>1/2>L_0/2
\]
ensures A_{q,0}>=A_{3,1}. Thus with actual c_{3,1}=log(3/pi)-gamma_E+pi/2-3log2,
\[
\boxed{
Q_{\chi,L_0}(f)\ge
c_{3,1}\|f\|_2^2+\Gamma_{3/2}(f)
-w\int_{E_d}|f|^2.
}
\tag{9}
\]
This is a one-sided TRUE source estimate, NOT a claim that different primitive chi L-functions are identical.

## 3. WPMB-3: a 20-band positive gamma source return with a genuine signed moment matrix

Write
\[
k(u)=k_{3/2}(u)=\frac{e^{-3u/2}}{1-e^{-2u}},\qquad
K(t)=\int_t^\infty k(u)\,du
=\operatorname{atanh}(e^{-t/2})-\arctan(e^{-t/2}).
\tag{10}
\]
This is the COMPLETE positive gamma kernel and its INFINITE tail, not a finite truncation. The original native gamma identity is, by Tonelli and zero extension,
\[
\boxed{
\Gamma_{3/2}(f)=
\int_{0<x<y<L_0}
k(y-x)|f(y)-f(x)|^2\,dxdy
+\int_0^{L_0}[K(x)+K(L_0-x)]|f(x)|^2dx .
}
\tag{11}
\]

Partition (0,L_0) into the twenty EQUAL genuine physical cells
\(I_i=(ih,(i+1)h)\) for i=0,...,19. Define, with the TRUE unmodified k,
\[
\boxed{
\beta_{ij}=k\big((|i-j|+1)h\big)>0,\quad
m_i=\int_{I_i}f(x)dx,\quad
s_i=h\sum_{j=0}^{19}\beta_{ij}.
}
\tag{12}
\]
Since k decreases, for every x in I_i, y in I_j the true distance obeys
\(|x-y|\le(|i-j|+1)h\), and therefore
\[
k(|x-y|)\ge\beta_{ij},
\]
including the case i=j, where the limit at zero is harmless because the positive difference integrand cancels the singularity. For ANY complex f, exact Fubini and the complex mean/variance identities yield
\[
\sum_i\beta_{ii}\int_{x<y\in I_i}|f(y)-f(x)|^2dxdy
+\sum_{i<j}\beta_{ij}\int_{I_i\times I_j}|f(y)-f(x)|^2dxdy
=\sum_i s_i\int_{I_i}|f(x)|^2dx
-\sum_{i,j}\beta_{ij}\overline{m_i}m_j.
\tag{13}
\]
There is NO fictitious H^1 boundary term, no missing within-cell variance, and no assumption of real coefficients. This identity is valid on the original gamma-energy form domain because each finite-cell L² moment and integral is finite; Tonelli applies to the original positive difference integrand BEFORE subtraction.

It follows from the ORIGINAL form (9)--(13) that
\[
\boxed{
Q_{\chi,L_0}(f)\ge
\sum_{i=0}^{19}\int_{I_i}
G_i(x)|f(x)|^2dx
-\sum_{i,j=0}^{19}\beta_{ij}\overline{m_i}m_j,
}
\tag{14}
\]
where
\[
\boxed{
G_i(x)=c_{3,1}+K(x)+K(L_0-x)
+s_i-w\,\mathbf1_{E_d}(x).
}
\tag{15}
\]
This is a signed matrix lower bound DERIVED FROM the actual full physical gamma and prime source, not an auxiliary positive model asserted equivalent to Q. The moment matrix has all 400 signed cross pairings in its quadratic value; its coefficient entries beta_ij are positive but its quadratic effect is SUBTRACTED. None of these terms may be discarded.

## 4. WPMB-4: finite *source-consumer* Perron/Schur matrix test, valid for all complex f

Suppose G_i(x)>0 on each cell. Define its ACTUAL reciprocal-potential weight and positive energy
\[
J_i=\int_{I_i}\frac{dx}{G_i(x)},\qquad
E_i=\int_{I_i}G_i(x)|f(x)|^2dx .
\tag{16}
\]
Weighted Cauchy gives \(|m_i|^2\le J_i E_i\). The matrix \(\beta=(\beta_{ij})\) is real symmetric with all entries STRICTLY positive. We need NOT assume it is positive semidefinite.

**Elementary all-complex Schur/Perron lemma.** If there exist a real r<1 and strictly positive numbers v_i such that
\[
\boxed{\forall i,\quad\sum_{j=0}^{19}\beta_{ij}J_jv_j\le rv_i,}
\tag{17}
\]
then
\[
\boxed{
\sum_{i,j}\beta_{ij}\overline{m_i}m_j
\le r\sum_i E_i,
\qquad
Q_{\chi,L_0}(f)\ge(1-r)\sum_i E_i.
}
\tag{18}
\]

**Proof, with all complex phases:** Let t_i=sqrt(E_i)>=0 and u_i=sqrt(J_i)v_i>0. Because beta_ij>=0,
\[
\sum_{i,j}\beta_{ij}\overline{m_i}m_j
\le\sum_{i,j}\beta_{ij}|m_i||m_j|
\le\sum_{i,j}\beta_{ij}\sqrt{J_iJ_j}\,t_it_j.
\]
The last symmetric matrix has nonnegative entries \(A_{ij}=\beta_{ij}\sqrt{J_iJ_j}\). By the two-term Young inequality
\(2t_it_j\le t_i^2(u_j/u_i)+t_j^2(u_i/u_j)\), we obtain
\[
\sum_{i,j}A_{ij}t_it_j
\le\sum_i\frac{t_i^2}{u_i}\sum_jA_{ij}u_j
=\sum_i t_i^2\frac1{v_i}\sum_j\beta_{ij}J_jv_j
\le r\sum_i t_i^2.
\]
All terms are genuine finite nonnegative quantities, and (17) closes the missing sign without a floating-point eigenvalue or a positivity assumption for beta. Insert in (14) to get (18). QED.

**Explicit arithmetic bound from certified rational finite inequalities:** The adjacent script produces rational LOWER/UPPER enclosures \(\beta_{ij}^{\rm lo}\le\beta_{ij}\le\beta_{ij}^{\rm hi}\), a rigorous positive lower bound on the WHOLE potential, and rational bounds \(J_i\le J_i^{\rm hi}\). Choose the positive, symmetric, INTEGER witness
\[
\begin{aligned}
v_0,\ldots,v_9={}&
(1000000,\ 1198160,\ 1304730,\ 1412210,\ 1506970,\\
&1506970+799? ,\ 1651070,\ 1699470,\ 1731840,\ 1748050).
\end{aligned}
\]
For avoidance of transcription ambiguities, the authoritative exact integer list is the adjacent checker:
\[
\boxed{
(v_0,\ldots,v_9)=
(1000000,1198160,1304730,1412210,1506970,
1586800,1651070,1699470,1731840,1748050),\quad
v_{19-i}=v_i .
}
\tag{19}
\]
The nonauthoritative mnemonic expression immediately above (19) is NOT used in any certificate or proof; only the explicit ten integers in (19) are.

The locally RUN exact Fraction checker proves the stronger finite rational inequalities
\[
\boxed{
\inf_{0<x<L_0}G_{i(x)}(x)>
\frac{17055342251}{10000000000}>\frac{17}{10},
}
\tag{20}
\]
and for ALL twenty rows
\[
\boxed{
\frac{\sum_j\beta_{ij}^{\rm hi}J_j^{\rm hi}v_j}{v_i}
<
\frac{9982903937}{10000000000}
<\frac{1997}{2000}=:r.
}
\tag{21}
\]
Note that (21) uses UPPER arithmetic enclosures in the negative moment matrix and its reciprocal potential, and (20) uses LOWER arithmetic enclosures of the positive source potential. There is no entrywise-to-PSD inference or use of rounded diagnostic floats. The inequalities (20)--(21) supply the exact hypotheses of the all-complex continuum Schur lemma (18). Hence
\[
\boxed{
Q_{\chi,L_0}(f)>
\left(1-\frac{1997}{2000}\right)
\frac{17055342251}{10000000000}\|f\|_2^2
=\frac{51166026753}{20000000000000}\|f\|_2^2
>\frac1{500}\|f\|_2^2
}
\tag{22}
\]
for nonzero f. This completes the genuine 20-band source return.

## 5. WPMB-5: infinite gamma, monotonic continuum error and the exact rational fixture

The checker NEVER replaces the true K(t) in (10) with a truncated tail. It uses the following independently proved, rigorous analytic lower bound for EVERY t>0:
\[
\boxed{
K(t)\ge\frac12\log(4/t)-\frac\pi4+\frac t4
+\frac{t^2}{96}-\frac{t^3}{96}-\frac{t^4}{4608}.
}
\tag{23}
\]
**Proof.** The exact identity
\(\operatorname{atanh}(e^{-t/2})=\frac12\log\coth(t/4)\)
and the strict sinh bound \(\sinh u\ge u+u^3/6\) give for
\(R(t)=\frac12\log\coth(t/4)-\frac12\log(4/t)\),
\[
R'(t)=\frac1{2t}-\frac1{4\sinh(t/2)}
\ge\frac{t}{2(24+t^2)}.
\]
Since R(0+)=0, integration gives
\(R(t)\ge\frac14\log(1+t^2/24)\ge t^2/96-t^4/4608\),
using \(\log(1+u)\ge u-u^2/2\) for u>=0. Also
\[
\arctan(e^{-t/2})=\pi/4-\frac14\int_0^t\sech(u/2)du,
\]
and \(\sech(u/2)\ge e^{-u^2/8}\ge1-u^2/8\) gives its contribution \(+t/4-t^3/96\). Combining proves (23), with the COMPLETE original gamma tail represented on the left. QED.

At L=L0, y=2x/L-1, the two K lower bounds (23), the true gamma scalar \(c_{3,1}\), and the exact digamma identities cancel all \(\pi/2\) and \(3\log2\) constants, yielding for every i
\[
\begin{aligned}
G_i(x)\ge{}&
\log\frac{3}{\pi L_0}-\gamma_E+\frac{L_0}{4}+s_i
-\frac12\log(1-y^2)\\
&+\frac{x^2+(L_0-x)^2-x^3-(L_0-x)^3}{96}
-\frac{x^4+(L_0-x)^4}{4608}
-w\mathbf1_{E_d}(x).
\end{aligned}
\tag{24}
\]
Every expression is continuous away from the true source edge jumps. The TRUE \(K(x)+K(L-x)\) is strictly decreasing for 0<x<L/2, since \(K'=-k\), k decreases and \(-k(x)+k(L-x)<0\). The exact positive s_i is CONSTANT within each physical cell. The true G_i therefore decreases within each left-half cell wherever its prime-edge charge is fixed. This proven TRUE-SOURCE monotonicity, not monotonicity of a numerical approximation, validates the right-endpoint integral scheme.

The script chooses an outward rational \(s_{\rm lo}<\log2\), overcharges the edge on \(0<x<d_{\max}:=L_0-s_{\rm lo}\) (even for points between the true d and d_max), and divides each of the ten left-half cells at d_max if necessary. Each resulting subsegment is divided into 128 equal cells. For the true decreasing G_i the reciprocal 1/G_i is increasing, so the **RIGHT-ENDPOINT** upper sum of the rigorously enclosed reciprocal values bounds the actual CONTINUOUS integral \(J_i\) for every supported complex f. Reflect each source cell to supply the right-half J_i estimates. No sampling of f, matrix-size restriction or approximate integration with an unaccounted remainder enters.

**Executed scalar/finite certificate:** The adjacent WeilPrimitiveMultiband7667Audit.py uses only Python3 standard-library Fraction for mathematical assertions. Its exact 4641 UTF-8-byte locally executed source has Git blob 0a868133195a22bbb9b40b61bed300329b180ba5 and SHA-256 4225f32f7fa752079fa1b066e868d0dc7b3bbe4136370cbb88e4d80b52c481cf. Commands actually run in local container, Python 3.13.5:
\[
\begin{array}{ll}
\texttt{python /mnt/data/multi20_audit.py}:&
\mathrm{EXIT}\ 0,\quad\mathrm{WEIL\_PRIMITIVE\_MULTIBAND\_7667:\ PASS};\\
\texttt{python -m py_compile /mnt/data/multi20_audit.py}:&
\mathrm{EXIT}\ 0;\\
\texttt{python -O /mnt/data/multi20_audit.py}:&
\mathrm{EXIT}\ 1\text{ (INTENTIONAL refusal of disabled assertions).}
\end{array}
\]
The exact checker uses 20 physical bands, 128 right-Darboux cells per affected half-segment, Machin arctangent brackets for pi, 24-term positive atanh logarithms with geometric remainder, H_200 EulerGamma bound with trapezoid remainder, 27/28-term alternating exponential Taylor brackets (arguments <=2), a rational sqrt2 lower bracket, and explicit OUTWARD rational floors/ceilings at denominators 10^12 and 10^10. The checker does NOT formally verify the original Weil explicit formula, prove (11)/(13) in Lean or certify all primitive L-functions; it verifies the finite rational inequalities (20)--(22) used by the WRITTEN mathematical proof. The publication readback must match the exact locally executed source Git blob before treating this receipt as reproducible.

## 6. All smaller windows, all finite ranks and the remaining unbounded-source obligation

For any real \(0<L<L_0\), zero-extend f from (0,L) to (0,L0). Its WHOLE-LINE squared shift energy and complete gamma integral are unchanged; the true character-dependent prime-power autocorrelations at all shifts, native conductor/parity scalar and physical L² norm are unchanged. New n>=3 prime terms are still ZERO by support because L0<log3. Therefore \(Q_{\chi,L}(f)=Q_{\chi,L_0}(f_{\rm extended})\) EXACTLY, giving WPMB-1 on the full displayed support quantifier.

For ANY finite m and ANY original compact-smooth complex source tests f_1,...,f_m jointly supported in an interval of length <=23/30, polarization of (4) gives, for EVERY nonprincipal primitive character chi,
\[
\boxed{
[G_{ij}^\chi]_{i,j}
\succeq\frac1{500}[\langle f_i,f_j\rangle_{L²}]_{i,j},
\quad
G_{ij}^\chi=Q_\chi(f_i,f_j),
\qquad m\ge1.
}
\tag{25}
\]
This is an all-rank statement with NO m factor and no restriction to dyadic bump translates; it does not improve the conductor-one zeta window. For conductor-one q=1, the separately proved WZAP075 retains Q_zeta>=||f||²/6000 on support length<=3/4, hence the COMMON all-primitive window stays at 3/4. A source that conflates these two support bounds would make a FALSE all-primitive claim beyond 3/4.

**Hostile checks:**
1. The 20-band matrix beta is NOT assumed positive semidefinite; positivity of its entries and exact weighted Schur (17)--(18) control every complex moment coupling. Row inequalities use beta_UPPER and J_UPPER; potential lower bounds use beta_LOWER and true K LOWER. Unjustified elementwise-PSD implications are excluded.
2. Gamma k diverges at zero, but the ORIGINAL positive difference integrand is integrable on its native form domain; all beta_ij are finite because their defining distances are at least h>0. The singular gamma tail K(x) is never evaluated at x=0 as a finite number.
3. The edge interval is overcharged beyond the true \(d=L-\log2\) using d_max. This is SAFE because it decreases the source lower potential and increases its inverse-integral bound. It is not silently assumed that the edge ends at a rational position.
4. For complex characters the literal phase chi(2) remains in the original source (2),(6). Taking its absolute value for the conservative boundary charge is a valid one-sided estimate, not a substitute Weil source.
5. Fixed support length L0<log3 is ESSENTIAL. At larger intervals n=3 activates, requiring new signed arithmetic control; no transfer of (20)--(22) to arbitrary supports, q=1 zeta or broad automorphic families is made.
6. No evidence is claimed beyond a WRITTEN proof and locally RUN Fraction constants. Lean elaboration/kernel/axiom audits/independent analytical review NOT_RUN; novelty UNASSESSED.
7. Prior art: Bombieri, *Remarks on Weil's quadratic functional in the theory of prime numbers, I*, Rend. Lincei 11 (2000), 183--233, §12 and Yoshida (1992) give classical localized Weil positivity. The new arithmetic-source calculation is a conservative longer-window quantitative refinement of WPHG075; no mathematical novelty priority is claimed.

**First unresolved substantive premise:** Prove unconditional full original Weil positivity or negative index uniform across UNBOUNDED support lengths and all primitive Dirichlet sources, explicitly including conductor-one zeta with two signed pole orientations, actual character phases and ALL activated prime powers. The present \(L\le23/30\) source proof closes no all-window RH/GRH quantifier; RH and primitive Dirichlet GRH remain unproved. It is not a conditional implication misrepresented as an established premise.

No Noe-dependent proof automation, cross-chat message, scheduler or browser automation was attempted: the required canonical noe-proof-automation SKILL.md at grwtsk/noeaaeue/main 7a904d11fb4d9495afd8bec89f108eeb1d686f10 returned 404. Manual authorized source authoring and ordinary nonforce publication remain separate.
