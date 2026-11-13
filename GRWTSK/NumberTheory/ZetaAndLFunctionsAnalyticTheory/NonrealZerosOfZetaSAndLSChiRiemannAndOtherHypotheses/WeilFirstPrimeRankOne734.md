# Nonprincipal primitive Weil positivity through length 367/500, with the actual first prime

Local mathematical attribution: grwtsk contributors. Edition 1, 2026-11-12 (America/Los_Angeles).
MSC2020: 11M06 (Dirichlet L-functions), 11M26 (zeta zeros), 11N05 (primes), 47A63 (operator inequalities).

**Evidence:** COMPLETE_WRITTEN_ANALYTICAL_ARGUMENT; LOCAL_EXACT_RATIONAL_FINITE_CERTIFICATE_RUN (Python 3.13.5, exit 0); LEAN_ELABORATION_NOT_RUN; FRESH_KERNEL_REPLAY_NOT_RUN; TRANSITIVE_AXIOM_AUDIT_NOT_RUN; INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN; ORIGINALITY_UNASSESSED. The exact rational checker establishes its finite scalar inequalities, not the full source-to-Weil identification or the analytic rank-one inequality. There is no proof of RH, primitive Dirichlet GRH, finite off-critical-line zeros or universal all-window positivity.

**Source return, consumer, and predecessor comparison:** Reuse the original native physical Weil form and gamma/first-prime rank-one source argument WFP-v1-1--4 in WeilFirstPrimeRankOne.md (Git blob a86b176f396d7d4974fe826469d73957d2d14813). That source proves nonprincipal primitive full-test positivity on length <=log2+1/1000, with a certified 16-cell reciprocal-potential estimate. The new theorem controls the SAME original source at two larger rational endpoints, using a sharper nonasymptotic lower bound on the EXACT gamma tail and signed n=2 edge cost. Independently, the already maintained WZAP075-v1-1 in WeilZetaAlignedFirstPrime075.md (Git blob dcff107f040f0e610a7e70c4236053f6a96e8a3e) proves the ORIGINAL conductor-one two-pole zeta form Q>=||f||^2/6000 for ALL native tests with support length <=3/4. Combining them closes the ALL-primitive-character quantifier at a longer common window. This is a LOCAL arithmetic advance, not a replacement global criterion or novel spectral model.

**Inspected canonical source and pins:** grwtsk/math/main after live f190ba914e7dee0e2f1b17b275df4d2a88ce0f9a and scoped policy checks; root AGENTS.md, CONTRIBUTING.md, Lean leanprover/lean4:v4.34.1 and mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. Owning layer 05/07 arithmetic analysis. Coordinate issue grwtsk/math#1801, scope comment 6845118001. No Lean declaration, import, new research axiom, sorry, admit, dependency pin, workflow or branch protection change.

## 1. Exact original source and two main endpoint statements (WFP734-1)

Let chi be a PRIMITIVE Dirichlet character of its ACTUAL conductor q>1, parity a in {0,1}, b=a+1/2, and put I_L=(0,L). For f in the ORIGINAL complex logarithmic gamma-energy form domain
\[
V_{L,b}=\{f\in L^2(I_L;\mathbb C):
\Gamma_b(f)<\infty\},\quad
\Gamma_b(f)=\int_0^\infty k_b(u)\|f(\cdot+u)-f\|_{L^2(\mathbb R)}^2du,
\quad k_b(u)=\frac{e^{-bu}}{1-e^{-2u}},
\tag{1}
\]
extend f by zero to the entire real line. The untouched TRUE primitive Weil form is
\[
\boxed{
Q_{\chi,L}(f)=
c_{q,a}\|f\|_2^2+\Gamma_b(f)
-2\sum_{\substack{n\ge2\\\log n<L}}
\frac{\Lambda(n)}{\sqrt n}
\Re\left(\chi(n)\int_{\mathbb R}\overline{f(x)}f(x+\log n)\,dx\right),
\quad
c_{q,a}=\log(q/\pi)+\psi\big(\tfrac14+\tfrac a2\big).
}
\tag{2}
\]
Every prime power and actual complex phase is in the formula, including values zero on ramified n. The gamma/parity/conductor terms are the ORIGINAL ones for the analytically continued primitive L-function; the q=1 zeta source is treated SEPARATELY because it has TWO signed pole orientations. A change in the phase-conjugation convention is not licensed: the magnitude estimate below is invariant under using the exact equivalent adjoint convention.

Put
\[
L_1=\frac{733}{1000},\qquad
L_2=\frac{367}{500}=\frac{734}{1000}.
\]
Both satisfy the STRICT arithmetic activation bounds \(\log2<L_1<L_2<\log3\).

**Theorem WFP734-1 (unconditional, full complex original form domain).**
For EVERY nonprincipal primitive chi, of EVERY conductor q>1 and BOTH parities:
\[
\boxed{\begin{aligned}
0<L\le L_1,\ f\in V_{L,b}
&\Longrightarrow Q_{\chi,L}(f)\ge\frac1{1000}\|f\|_2^2,\\
0<L\le L_2,\ f\in V_{L,b}
&\Longrightarrow Q_{\chi,L}(f)\ge\frac1{10000}\|f\|_2^2.
\end{aligned}}
\tag{3}
\]
Both inequalities are STRICT for nonzero f in their endpoint proof. At f=0 use equality. The constants are independent of q, parity, character phases, window location and the particular original complex test. The statement covers ALL admitted native gamma-energy tests, not a finite set of functions or a truncated operator.

## 2. Source-exact conductor/parity reduction and the first active prime (WFP734-2)

Write \(s=\log2\), \(w=s/\sqrt2\) and \(d=L-s>0\). Since \(\log2<L\le L_2<\log3\), the ORIGINAL prime-power inventory contains exactly n=2, with coefficient chi(2) (possibly zero for even conductor). The exact signed first-prime term is
\[
S_{\chi,L}(f)=2w\Re\left(\chi(2)
\int_0^d\overline{f(x)}f(x+s)dx\right).
\tag{4}
\]
The two edge regions \(E_d=(0,d)\cup(s,L)\) are disjoint, and \(|\chi(2)|\le1\). Thus true Cauchy--Schwarz, without asserting vanishing prime-operator norm, gives
\[
\boxed{S_{\chi,L}(f)\le w\int_{E_d}|f(x)|^2dx.}
\tag{5}
\]
Every n>=3 is absent ONLY because its log exceeds the support length; there is no deletion of a nonzero prime power.

Let \(A_{q,a}(f)=c_{q,a}\|f\|_2^2+\Gamma_{a+1/2}(f)\) be the genuine nonprime archimedean source. The exact kernel identity from WFP-v1-2 is
\[
k_{1/2}(u)-k_{3/2}(u)=\frac1{2\cosh(u/2)},\qquad
c_{q,1}-c_{q,0}=\pi,
\tag{6}
\]
and its integrated Hilbert-space consequence is
\[
A_{q,1}(f)-A_{q,0}(f)
=\frac12\int_0^L\int_0^L
\operatorname{sech}\!\big((x-y)/2\big)\overline{f(x)}f(y)\,dy\,dx.
\tag{7}
\]
This bounded difference also identifies the two original gamma-energy domains, without assuming an unproved unbounded form-domain inclusion. By elementary Schur/Young, the modulus of (7) is <=L||f||_2^2/2.

An ODD primitive q>1 has q>=3, hence \(A_{q,1}\ge A_{3,1}\) by its true log(q) scalar. An EVEN nonprincipal primitive character has q>=5. Since
\(\log(5/3)=2\operatorname{atanh}(1/4)>1/2>L_2/2\), the difference (7) implies
\(A_{q,0}\ge A_{3,1}\).
Consequently both actual parity/conductor sectors satisfy
\[
\boxed{
Q_{\chi,L}(f)\ge
A_{3,1}(f)-w\int_{E_d}|f(x)|^2dx .
}
\tag{8}
\]
This is a CONSERVATIVE lower estimate from the original character-weighted form, not a claim that the characters' complex phases or L-functions agree with conductor three.

## 3. Complete gamma boundary/integral return and the unproved-sign trap (WFP734-3)

For the true worst-case gamma parity put
\[
k(u)=k_{3/2}(u)=\frac{e^{-3u/2}}{1-e^{-2u}},\qquad
K(t)=\int_t^\infty k(u)du
=\operatorname{atanh}(e^{-t/2})-\arctan(e^{-t/2}).
\tag{9}
\]
Here k is positive and strictly decreasing, and the entire infinite gamma tail K is kept. On the complete original form domain, exact zero-extension and Tonelli give
\[
\Gamma_{3/2}(f)=
\int_{0<x<y<L} k(y-x)|f(y)-f(x)|^2dx\,dy
+\int_0^L [K(x)+K(L-x)]|f(x)|^2dx .
\tag{10}
\]
As k(y-x)>=k(L), the exact all-pairs identity
\[
\int_{0<x<y<L}|f(y)-f(x)|^2dx\,dy
=L\|f\|_2^2-\left|\int_0^Lf(x)dx\right|^2
\]
leads to the TRUE negative rank-one correction
\[
\Gamma_{3/2}(f)\ge
\int_0^L[K(x)+K(L-x)+Lk(L)]|f(x)|^2dx
-k(L)\left|\int_0^L f(x)dx\right|^2.
\tag{11}
\]
The negative rank-one term is NOT discarded or replaced by an unwarranted positive quadratic energy. Put
\[
c_{3,1}=\log(3/\pi)-\gamma_E+\pi/2-3\log2,\quad
V_L(x)=c_{3,1}+K(x)+K(L-x)+Lk(L),
\quad G_L(x)=V_L(x)-w\,\mathbf1_{E_d}(x).
\tag{12}
\]
Combining the literal true first-prime bound (8) and full gamma (11) yields
\[
\boxed{
Q_{\chi,L}(f)\ge
\int_0^LG_L(x)|f(x)|^2dx
-k(L)\left|\int_0^Lf(x)dx\right|^2.
}
\tag{13}
\]

For ANY strictly positive pointwise lower G_L, weighted Cauchy gives
\[
\left|\int_0^L f\right|^2
\le
\left(\int_0^LG_L|f|^2\right)
\left(\int_0^L G_L^{-1}\right).
\]
Therefore, writing \(\rho_L=k(L)\int_0^L1/G_L(x)dx\),
\[
\boxed{
\inf_{x\in(0,L)}G_L(x)\ge v_L>0,\quad \rho_L<1
\Longrightarrow
Q_{\chi,L}(f)\ge v_L(1-\rho_L)\|f\|_2^2.
}
\tag{14}
\]
This is an exact continuous-integral sufficient inequality on the ORIGINAL complex source, not an assumed positivity condition or a finite-grid substitute. The sole remaining issue is an honest rigorous numerical bound for the ACTUAL potential at the fixed endpoints L_1 and L_2.

## 4. A sharper exact analytic potential minorant and rational continuum budget (WFP734-4)

For t>0, the exact identity
\[
\operatorname{atanh}(e^{-t/2})=\tfrac12\log\coth(t/4)
\]
and \(\tanh(t/4)\le t/4\) give its rigorous lower bound
\(\operatorname{atanh}(e^{-t/2})\ge\tfrac12\log(4/t)\).
Also
\[
\arctan(e^{-t/2})
=\pi/4-\frac14\int_0^t\operatorname{sech}(u/2)\,du.
\]
The elementary coefficientwise inequality
\(\cosh v\le e^{v^2/2}\) implies
\(\operatorname{sech}(u/2)\ge e^{-u^2/8}\ge1-u^2/8\).
Consequently for EVERY t>0
\[
\boxed{
K(t)\ge \tfrac12\log(4/t)-\frac\pi4+\frac t4-\frac{t^3}{96}.
}
\tag{15}
\]
No local series is asserted to equal the full infinite gamma integral; (15) is a rigorous lower bound derived from the exact K.

At fixed L, put y=2x/L-1. Adding (15) at t=x and t=L-x, and using the EXACT psi(3/4) and log2 scalar cancellations in c_{3,1}, gives
\[
\boxed{
V_L(x)\ge
B_L-\frac12\log(1-y^2)
-\frac{x^3+(L-x)^3}{96},
\quad
B_L=\log\!\frac3{\pi L}-\gamma_E+\frac L4+Lk(L).
}
\tag{16}
\]
Unlike the previous WFP-v1-3 proof, (16) retains the true left/right edge singular logarithm and a cubic correction, rather than replacing the WHOLE edge with a constant or suppressing the n=2 overlap.

The function V_L is symmetric about L/2 and strictly decreasing on (0,L/2), since
\(V_L'(x)=-k(x)+k(L-x)<0\) there. Let s_lo be any rigorously certified rational lower bound on log2, and set \(d_{\max}=L-s_{\rm lo}>d=L-\log2\). On the half interval [0,L/2], bound G_L from below by V_L-w on [0,dmax] (which may overpay the true edge), and by V_L on [dmax,L/2]. Each piece decreases toward its right endpoint, so reciprocal integrals admit RIGOROUS RIGHT-ENDPOINT Darboux upper sums. Reflection gives the complete [0,L] budget, with no sampling assumption on f.

**Exact-rational executed source certificate:** The adjacent standalone WeilPrimitiveFirstPrime734Audit.py employs fractions.Fraction, 24-term positive atanh logarithm series with complete geometric remainders, Machin arctangent brackets for pi, a convex-trapezoidal EulerGamma upper bound at H_200, odd/even signed exp Taylor brackets, an exact lower bound on sqrt2, and outward rational quantization at 10^-12 and 10^-10 grids. All trigonometric/logarithmic lower estimates in (15)--(16) are proved analytically ABOVE, not inferred from the script. The endpoint Darboux sums evaluate only rational LOWER potential bounds and take reciprocal UPPER bounds. There is no floating-point comparison in any mathematical assertion.

The exact certificate reports:

| endpoint L | right cells per half edge and middle | certified inf G lower | certified rho upper | strict coefficient lower |
|---|---:|---:|---:|---:|
| 733/1000 | 512 each | 1868832581/10^10 | 4966939237/(5*10^9) | 6178503/(5*10^9) |
| 367/500 | 1024 each | 18553217/10^8 | 2495155859/(25*10^8) | 143799/(4*10^8) |

Thus at L_1, \(\inf G_L>0.1868832581\), \(\rho_L<0.9933878474\) and \(Q/\|f\|_2^2>0.0012357006>1/1000\) for nonzero f. At L_2, \(\inf G_L>0.18553217\), \(\rho_L<0.9980623436\), and \(Q/\|f\|_2^2>0.0003594975>1/10000\). All inequalities are RIGOROUS exact rational checks, conditional only on the explicitly proved analytic lower bounds (15)--(16) and original physical source identity (13). The gamma rank-one is paid, not discarded.

**Reproducibility of ACTUALLY executed finite checks:** Local Python 3.13.5:
- python3 -m py_compile /mnt/data/weil_new/WeilPrimitiveFirstPrime734Audit.py : exit 0;
- python3 /mnt/data/weil_new/WeilPrimitiveFirstPrime734Audit.py : exit 0, WEIL_PRIMITIVE_FIRST_PRIME_EXTENDED: PASS, with both endpoint rows above;
- python3 -O /mnt/data/weil_new/WeilPrimitiveFirstPrime734Audit.py : INTENTIONALLY REJECTED with exit 1, because optimized mode disables assertions.

Local exact source SHA-256 cbf0a4e35a70717ca3ae14dbbae8de24fbd363a24fcb5b462f5a2234c0d9878b; local git hash-object 62279217485fbff249a4319fd3c6df82866896f3. These hash/check outputs identify the script actually executed, not a certificate for RH, GRH, the infinite Weil explicit formula or Lean elaboration. Local environment and commands and final Git readback are part of the issue #1801 publication receipt.

## 5. All smaller windows, conductor-one return and all-rank corollary (WFP734-5)

For any 0<L<=L_i, extend the original f on (0,L) by zero to (0,L_i). Its WHOLE-LINE squared gamma translation energy, literal n=2 prime overlap (if active), true conductor/parity scalar, L2 norm and form-domain membership remain unchanged. New n>=3 prime terms in the L_i inventory have zero source autocorrelation because their shifts exceed the TRUE physical support. Thus the original Q_chi,L(f) equals Q_chi,L_i(f_extended) EXACTLY, and the fixed-endpoint inequalities from section 4 prove BOTH complete L-quantifiers in (3), with no fictitious monotonicity of the rank-one scalar or sign assumption.

For conductor-one q=1 zeta, do NOT instantiate the nonprincipal formula (2), which lacks the two signed poles. Instead use the ALREADY established WZAP075-v1-1, WeilZetaAlignedFirstPrime075.md, source edition on math/main f190ba914e7dee0e2f1b17b275df4d2a88ce0f9a, whose complete written physical-source proof and separately executed 8192-cell rational/integer certificate give
\[
\boxed{
0<L\le3/4,\quad f\in V_{L,1/2}
\Longrightarrow
Q_{\zeta,L}(f)\ge\frac1{6000}\|f\|_2^2
}
\tag{17}
\]
with both ACTUAL pole orientations, n=2 prime and complete gamma term. This is an inherited result, not a new zeta certificate.

Taking the minimum of the separate actual source conclusions yields, for EVERY primitive chi of exact conductor q>=1, including conductor-one zeta,
\[
\boxed{\begin{aligned}
0<L\le733/1000 &: Q_{\chi,L}(f)\ge\frac1{6000}\|f\|_2^2,\\
0<L\le367/500 &: Q_{\chi,L}(f)\ge\frac1{10000}\|f\|_2^2.
\end{aligned}}
\tag{18}
\]
These are unconditional all-CHARACTER, all-complex-TEST local theorems; no character is discarded and the q=1 source remains separate until this valid final minimum.

**Any finite rank, original source:** If f_1,...,f_m are ANY original compact smooth complex tests with their JOINT supports in a common interval length <=367/500 and H_ij their physical L2 Gram, G^chi_ij the true original Weil Hermitian Gram, then by polarization of (18),
\[
\boxed{
G^\chi\succeq\frac1{10000}H
\qquad\text{for EVERY primitive chi, every m>=1.}
}
\tag{19}
\]
No dimension-dependent factor or unproved sample density is introduced. At length <=733/1000, replace 1/10000 by 1/6000. For distinct shifts t_j of the L2-normalized SCALE-a dyadic bump phi_a(x)=a^-1/2 phi(x/a), its physical support width is a, and its bilateral transform sqrt(a)Phi(az) is nonzero near z=0. Exponential Vandermonde independence of DISTINCT shifts proves the L2 Gram is strictly positive. Consequently for any 0<a<367/500 and ANY finite number m of distinct real shifts of diameter D with D+a<=367/500, the TRUE all-primitive Weil Gram is STRICTLY positive. At a=1/10, this permits D<=317/500=0.634 for all primitive characters; conductor-one zeta separately permits D<=13/20=0.65 using (17). This is an explicit consumer of the original arithmetic Weil source, not a new zero-spectrum model.

## 6. Falsification, prior art, and first unsupplied premise

- **Active prime retained:** n=2 is genuinely active for every length in (log2,367/500]. Its true complex character value may be zero or have any allowed phase; the ONLY absolute value is the honest edge error (5), not the original prime term. All n>=3 are absent because log3 exceeds the stated physical support. At larger windows additional prime-power terms activate, and this proof cannot be continued without paying them.
- **Real analytic gap not a finite matrix surrogate:** The original infinite-dimensional gamma form is split and estimated by (10)--(13). The script certifies a finite right-endpoint Riemann-sum upper bound on the **continuous reciprocal-potential integral**, not positivity for merely 1024 sampled test functions. The rank-one correction is always included.
- **Actual q=1 pole:** The nonprincipal WFP equations cannot handle conductor-one zeta. Equation (17) uses the separately source-exact WZAP075-v1-1, with indefinite two-orientation pole and n=2 prime, rather than silently setting the pole to zero or making it positive.
- **No exact-support globalization:** Zero extension is legitimate only to the stated finite L_i. Passing L to infinity changes the prime inventory and the signed gamma and pole couplings; none of (3),(18),(19) is an all-window Weil criterion, bounded negative-index theorem, RH or primitive GRH proof.
- **Prior art:** Bombieri, *Remarks on Weil's quadratic functional in the theory of prime numbers, I*, Rend. Lincei 11 (2000), pp.183--233, particularly §12 and its discussion of Yoshida 1992, establishes classical small-support local Weil positivity. There is no novelty claim about localized positivity. This is a source-bound quantitative first-prime interval improvement over the maintained WFP-v1-1 endpoint and a consolidation with the independently maintained WZAP075-v1-1.
- **Evidence boundary:** The original source and rank-one inequalities are written analytic deductions using standard gamma/Plancherel/Tonelli facts; the exact scalar arithmetic is RUN, but there is no fresh Lean elaboration, kernel replay, transitive axiom audit, independently certified physical-source identification, independent mathematical review or comprehensive novelty search. All those remain NOT_RUN or UNASSESSED.

**First unresolved arithmetic premise:** Establish the original full Weil form's sign (or uniform finite negative index) over UNBOUNDED support lengths and all primitive characters, including conductor-one zeta and dual-character gamma/parity behavior. The first active prime is now controlled for lengths through 367/500, but further prime powers and long-distance signed correlations are still uncontrolled by this argument. Nothing in this local theorem proves RH, primitive GRH, or finitely many off-line zeta zeros.

No Noe-dependent proof automation, messaging, scheduler or browser-chat execution occurred: the applicable canonical noe-proof-automation SKILL.md was inaccessible on grwtsk/noeaaeue/main at the inspected revision. Ordinary mathematical source authoring and publication do not imply that unavailable workflow ran.
