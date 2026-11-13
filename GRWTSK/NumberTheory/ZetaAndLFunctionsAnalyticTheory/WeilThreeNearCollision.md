# Arbitrary near-collision triple positivity of the original pole-inclusive zeta Weil form

Local mathematical attribution: grwtsk contributors. Edition 1 (2026-11-12).
MSC2020: 11M26 (zeta and zero distribution), 42A82 (positive definite forms), 41A05 (interpolation/divided differences), 65G30 (rigorous error inequalities).

**STATUS / EVIDENCE BOUNDARY:** WRITTEN_ANALYTICAL_ARGUMENT, LOCAL_EXACT_RATIONAL_CONSTANT_AUDIT_RUN (Python 3.13.5, exit 0); LEAN_ELABORATION_NOT_RUN, FRESH_KERNEL_REPLAY_NOT_RUN, TRANSITIVE_AXIOM_AUDIT_NOT_RUN, LOCAL_RIGOROUS_ZETA_ZERO_ISOLATION_NOT_RUN, INDEPENDENT_MATHEMATICAL_REVIEW_NOT_RUN, ORIGINALITY_UNASSESSED. The critical-line zero verification is an EXTERNALLY published finite-height theorem. An executed rational comparison script and a source publication are NOT Lean or independently reviewed analytic proofs. No RH, GRH, global finite negative index, or full-test/all-scale Weil positivity is claimed.

**Canonical mathematical source / consumer:** Use the ORIGINAL full conductor-one Weil distribution W in WeilFixedBumpNegativeDepth.md (WFDG-1/2), the original dyadic compact smooth probability bump phi and its entire transform Phi, the complete absolute unknown-zero tail bound of WeilDyadicZeroTailFiniteHorizon.md (WDT-1/2), the first-two ACTUAL certified critical zero weights in WeilTwoTranslateStrictPositivity.md (W2TP-1/2), and the equispaced rank-three finite-spacing result in WeilThreeTranslateArithmeticProgression.md (W3AP-1). New mathematical consumer: strict source-exact rank-THREE positivity for ANY three DISTINCT real translates whose total diameter is at most 10^-5, even when the smaller separation tends to zero. This fills a near-collision region absent from W3AP-1 (which assumed equispaced shifts with spacing at least 1). The source remains the actual zeta Weil form, NOT a positive surrogate.

**Inspected live canonical source:** grwtsk/math/main at d5dad2d0185d829bfbff60d9b1f5f4b4ece569e8; root AGENTS.md, CONTRIBUTING.md, absence of scoped AGENTS, toolchain leanprover/lean4:v4.34.1, mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. Concurrent main movement before publication is handled by independent create-only file operations, not force updates. Coordination: issue #1801, scope comment 6844279540. No imports, Lean declarations, research axioms, sorry, admit, CI or dependency pins modified.

## 1. The actual Weil form and the exact rank-three claim

For integers j>=1 put a_j=2^(-j-1). Let phi be the real even, nonnegative, mass-one C-infinity density of the infinite convolution of uniform probability measures on [-a_j,a_j]. It is supported on [-1/2,1/2] and has the entire bilateral Laplace transform
\[
\Phi(z)=\int_{\mathbb R}\phi(x)e^{zx}\,dx
=\prod_{j\ge1}\frac{\sinh(a_jz)}{a_jz}.
\tag{1}
\]
Set h=phi*phi, supported on [-1,1]. The ORIGINAL complete Weil distribution W includes both zeta pole orientations, all von Mangoldt prime powers, the origin regularization and the entire gamma integral. For the exact original smooth COMPLEX test domain define
\[
Q(f,g)=W(f*\widetilde g),\quad
\widetilde g(x)=\overline{g(-x)},\quad
Q(f)=Q(f,f).
\tag{2}
\]
The genuine analytically continued zeta-zero source identity (WFDG-1/2) is
\[
\boxed{Q(f,g)=\sum_{\rho\in Z_{\rm distinct}}
m_\rho F_f(\rho)\overline{F_g(\tau\rho)},
\quad
F_f(\rho)=\int_{\mathbb R}f(x)e^{z_\rho x}dx,\quad
z_\rho=\rho-\tfrac12,\quad \tau\rho=1-\overline\rho .}
\tag{3}
\]
Multiplicity m_rho>0 is counted once per distinct nontrivial zero; the actual full complex position z_rho is retained. Off the critical line, the pairing in (3) is a signed complex CROSS pairing and is NOT replaced by an absolute square. On the line tau rho=rho and each term is a positive square. The sum converges absolutely for every fixed compact-smooth source f.

Let t0<t1<t2 be any three DISTINCT REAL translations, with
\[
\boxed{0<t_2-t_0\le d_0:=10^{-5}.}
\tag{4}
\]
Write \(\phi_t(x)=\phi(x-t)\). On the actual finite-dimensional original test span, define its Newton divided-difference basis
\[
\begin{aligned}
g_0&=\phi_{t_0},\\
g_1&=\frac{\phi_{t_1}-\phi_{t_0}}{t_1-t_0},\\
g_2&=\frac{
  (\phi_{t_2}-\phi_{t_1})/(t_2-t_1)
 -(\phi_{t_1}-\phi_{t_0})/(t_1-t_0)
}{t_2-t_0}.
\end{aligned}
\tag{5}
\]
All denominators are nonzero by STRICT ordering. The triangular change-of-basis matrix in terms of \(\phi_{t_0},\phi_{t_1},\phi_{t_2}\) has nonzero diagonal entries, so the spans coincide. The three translates themselves are linearly independent: if their linear combination vanished, taking the bilateral transform gives Phi(z) times a finite exponential polynomial, which must be identically zero near z=0 (Phi(0)=1); the Vandermonde derivatives at zero force every original coefficient to vanish.

**Theorem W3NC-1 (UNCONDITIONAL written analytic sign result).** For EVERY triple as in (4), EVERY \((a,b,c)\in\mathbb C^3\), one has
\[
\boxed{
Q(ag_0+bg_1+cg_2)>
\frac1{200000}(|a|^2+|b|^2+|c|^2)
\qquad\text{if }(a,b,c)\ne0.
}
\tag{6}
\]
Consequently the ORIGINAL actual Weil Gram on \(\{\phi_{t_0},\phi_{t_1},\phi_{t_2}\}\) is strictly POSITIVE DEFINITE:
\[
\boxed{
Q\left(\sum_{j=0}^2u_j\phi_{t_j}\right)>0
\quad\text{for every }u\in\mathbb C^3\setminus\{0\}.
}
\tag{7}
\]
The uniform numerical margin (6) applies in the DIVIDED-DIFFERENCE coordinate metric, not in the raw Euclidean translate coefficients, which become ill-conditioned as nodes collide. It does not claim a uniform positive raw Gram eigenvalue as t1-t0 or t2-t1 tends to zero.

A common translation of all nodes leaves f*tilde f, and thus the original Q, unchanged. We may therefore set t0=0 and write 0<t1<t2<=d0 in the proof. This translation is performed on the WHOLE original source; no false invariance of an individual off-axis zero evaluation is assumed.

## 2. Exact Hermite--Genocchi divided-difference zero evaluations

For any complex z let E_j(z) denote the divided difference of the exponential \(\exp(zt)\) at the first j+1 ordered nodes, with
\[
E_0(z)=1,\quad
E_1(z)=\frac{e^{zt_1}-1}{t_1},\quad
E_2(z)=\frac{
  (e^{zt_2}-e^{zt_1})/(t_2-t_1)
 -(e^{zt_1}-1)/t_1
}{t_2}.
\tag{8}
\]
Using (1) and the EXACT translations of the original test, one has
\[
\boxed{
F_{ag_0+bg_1+cg_2}(\rho)
=\Phi(z_\rho)\big(aE_0(z_\rho)+bE_1(z_\rho)+cE_2(z_\rho)\big).
}
\tag{9}
\]

**Hermite--Genocchi integral input (classical).** For j=0,1,2, E_j(z) has the simplex formula
\[
E_j(z)=z^j\int_{\Sigma_j}
\exp\!\left(z\sum_{\ell=0}^{j}\lambda_\ell t_\ell\right)\,d\lambda,
\qquad
\operatorname{vol}(\Sigma_j)=1/j!.
\tag{10}
\]
Here \(\Sigma_j=\{\lambda_\ell\ge0,\sum\lambda_\ell=1\}\) carries its usual j-dimensional simplex Lebesgue measure. In particular, for every |Re z|<1/2,
\[
|E_j(z)|\le e^{d_0/2}\frac{|z|^j}{j!}.
\tag{11}
\]
For purely imaginary z=i gamma, using \(|e^{iy}-1|\le|y|\), the SAME integral yields the TRUE node-uniform errors
\[
\boxed{
|E_1(i\gamma)-i\gamma|\le|\gamma|^2d_0,\qquad
|E_2(i\gamma)-(i\gamma)^2/2|
\le|\gamma|^3d_0/2.
}
\tag{12}
\]
These inequalities hold even when the two smaller node separations are arbitrarily different or approach zero. The original Newton basis is stable in these coordinates; ordinary raw translate coefficients are not.

Source comparison: Carl de Boor, *Divided Differences*, Surveys in Approximation Theory 1 (2005), pp. 46--69, §9 ("Genocchi--Hermite"), for the classical simplex formula. It is a standard interpolation identity, not a claimed new theorem. The specific application to the original zeta Weil source is a source-local analytic combination, with novelty UNASSESSED.

## 3. First two true certified zeta zero pairs give a UNIFORM strict low Gram gap

**External independently certified input:** The actual first two positive zeta zeros are at \(1/2+i\gamma_1\) and \(1/2+i\gamma_2\), with \(\gamma_1\in(14,15)\) and \(\gamma_2\in(21,22)\). Their TRUE negative-ordinate conjugates are also actual zeta zeros, with the same positive multiplicities. Rigorous FLINT ball-enclosures and Platt--Trudgian (2021) finite-height verification establish these facts; they do NOT prove RH for the remaining infinite divisor.

Let
\[
w_j=m_{\rho_j}|\Phi(i\gamma_j)|^2>0,\quad j=1,2.
\]
The separately published exact dyadic-product analysis WPSO-2 / W2TP-1 gives
\[
\boxed{w_1>1/1000,\quad w_2>1/20000.}
\tag{13}
\]
Only these two TRUE zeta pairs are needed for the new positive gap; all other verified low zeros contribute additional nonnegative terms.

At the fully coalesced limit, the divided evaluations are \(E_0=1,E_1=z,E_2=z^2/2\). Fix v=(a,b,c), and put x_j=gamma_j^2/2. For either positive j, the elementary complex identity is
\[
\boxed{
|a+i\gamma_j b-x_j c|^2
+|a-i\gamma_j b-x_j c|^2
=2\big(|a-x_j c|^2+\gamma_j^2|b|^2\big).
}
\tag{14}
\]
The source is complex and all coefficient cross terms are accounted for by this identity; no restriction to real a,b,c is made.

The certified broad ordinate intervals give
\(98<x_1<113\), \(220.5<x_2<242\), and \(x_2-x_1>108\).
The 2-by-2 complex Vandermonde matrix with rows (1,-x_1),(1,-x_2) has squared Frobenius norm
\[
2+x_1^2+x_2^2<2+113^2+242^2=71335
\]
and determinant modulus x_2-x_1>108. Its smallest singular value squared is at least
\[
\boxed{\frac{108^2}{71335}>\frac17.}
\tag{15}
\]
The b-direction is even stronger:
\(\gamma_1^2+\gamma_2^2>14^2+21^2=637>1/7\).
Therefore, defining the FOUR-ROW unweighted evaluation map
\[
\mathcal V_0(a,b,c)=
\bigl(a+bz+cz^2/2\bigr)_{z=\pm i\gamma_1,\;\pm i\gamma_2},
\]
we get
\[
\boxed{
\|\mathcal V_0v\|_{\mathbb C^4}^2>
\frac27\|v\|_{\mathbb C^3}^2,\qquad
\|\mathcal V_0v\|>\frac12\|v\|.
}
\tag{16}
\]

For the actual NONCOINCIDENT nodes let \(\mathcal V_t\) use E0,E1,E2 instead of 1,z,z²/2 in the same four rows. By (12), for |\gamma|<22 each row error is bounded by
\[
|\big(\mathcal V_t-\mathcal V_0\big)_zv|
\le d_0\big(22^2|b|+(22^3/2)|c|\big)
\le5808\,d_0\|v\|.
\]
There are FOUR rows, so the Euclidean operator deviation obeys
\[
\boxed{
\|(\mathcal V_t-\mathcal V_0)v\|
\le2(5808)d_0\|v\|
=\frac{11616}{100000}\|v\|
<\frac18\|v\|.
}
\tag{17}
\]
Using (16)--(17),
\[
\boxed{
\|\mathcal V_t v\|>
\left(\frac12-\frac18\right)\|v\|
=\frac38\|v\|.
}
\tag{18}
\]

**Actual low-zero contribution.** Every zero with |\gamma|<H=2^41 is on the critical line by the EXTERNALLY certified finite verification, and hence contributes a nonnegative \(|F_f(\rho)|^2\) term to the ORIGINAL Q. Retaining just the first two positive/negative ordinate pairs, multiplying each row by its TRUE \(w_j>1/20000\), and using (18) shows
\[
\boxed{
Q_{\rm low}(ag_0+bg_1+cg_2)
>\frac1{20000}\cdot\frac9{64}\|v\|^2
=\frac9{1280000}\|v\|^2.
}
\tag{19}
\]
This is a positive gap for the actual infinite-source restriction. It is not a numerically manufactured positive matrix.

## 4. Every unverified high zero: exact signed complex pairing and explicit derivative tail

Let H=2^41=2,199,023,255,552<3*10^12. The original complete Weil form splits at this real zeta-zero height:
\[
Q=Q_{\rm low}+Q_{\rm high},
\]
where low zeros are the genuinely externally VERIFIED critical-line zeros, and high zeros are ALL remaining actual nontrivial zeros (including any hypothetical off-line ones).

For high z=z_rho with |Re z|<1/2, the true partner is \(z_{\tau\rho}=-\overline z\). By (9),(11) and Cauchy--Schwarz in the Newton coefficients,
\[
|F_f(\rho)|
\le|\Phi(z)|e^{d_0/2}
\left(1+|z|^2+\frac{|z|^4}{4}\right)^{1/2}\|v\|.
\]
Since the fixed dyadic Phi is even and has real coefficients,
\(|\Phi(z_{\tau\rho})|=|\Phi(z)|\), and \(|z_{\tau\rho}|=|z|\). Thus the ACTUAL signed high-zero term obeys
\[
\boxed{
|Q_{\rm high}(f)|
\le e^{d_0}\,\|v\|^2
\sum_{|\gamma_\rho|\ge H}
m_\rho|\Phi(z_\rho)|^2
\left(1+|z_\rho|^2+\frac{|z_\rho|^4}{4}\right).
}
\tag{20}
\]
The upper bound is taken only AFTER retaining the actual signed tau-pairing; no replacement of the original W form or projection of complex off-axis zeros occurs.

WDT-2 proves, from the unconditional explicit Riemann--von Mangoldt zero count and the actual Phi product, that for EVERY n>=6 the ENTIRE dyadic block satisfies
\[
\boxed{
\sum_{2^n\le|\gamma_\rho|<2^{n+1}}
m_\rho|\Phi(z_\rho)|^2
<2^{-n^2+5n+3}.
}
\tag{21}
\]
In the nth block, \(|z_\rho|^2<2^{2n+3}\), and for n>=6
\[
1+|z_\rho|^2+\frac{|z_\rho|^4}{4}<2^{4n+5}.
\]
Since \(d_0=10^{-5}<1/2\), \(e^{d_0}<2\). The nth block of (20) is therefore bounded by
\[
2^{-n^2+5n+3}\cdot2^{4n+5}\cdot2
=2^{-n^2+9n+9}\|v\|^2.
\tag{22}
\]
At n=41 its exponent is -1303, and ratios of consecutive terms are \(2^{8-2n}\le2^{-74}\). Summing the COMPLETE infinite tail gives
\[
\boxed{
|Q_{\rm high}(ag_0+bg_1+cg_2)|
<2^{-1302}(|a|^2+|b|^2+|c|^2).
}
\tag{23}
\]
This retains all unverified zeros to infinite height and their actual positive multiplicities, whether RH is true or not. No local numerical enumeration, formal zero axiom, or finite-tail truncation was used.

## 5. Strict positivity, exact rational audit and limits of the source return

Combining (19) with (23),
\[
\boxed{
Q(ag_0+bg_1+cg_2)>
\left(\frac9{1280000}-2^{-1302}\right)\|v\|^2
>\frac1{200000}\|v\|^2
\quad(v\ne0).
}
\tag{24}
\]
The latter numerical comparison is an exact rational inequality. The two bases in (5) span the same original three-translate test space for every t0<t1<t2, hence (24) proves W3NC-1 for ALL original complex coefficient vectors, not just real ones or equally spaced nodes. All derived test functions are genuinely smooth and compactly supported, so the ORIGINAL Q and its exact zero/prime-power formula are valid.

**EXACT_RATIONAL_CHECK executed:** The adjacent source-local WeilThreeNearCollisionConstants.py (pure Python fractions.Fraction, integer arithmetic) tests (15), (17), (19), (22)--(24) and H=2^41<3*10^12. Local command
\[
\texttt{python /mnt/data/near_collision_w3/WeilThreeNearCollisionConstants.py}
\]
ran with Python 3.13.5, exit 0, printing WEIL_3_NEAR_COLLISION_RATIONAL: PASS, perturbation upper 363/3125, low margin 9/1280000, high error 2^-1302, full Newton-coordinate margin 1/200000. Source SHA-256 3043130d0a2ea142b03741a1e28c854a8594c6f07429ca8f1c38561e4994bb43; corresponding Git blob SHA established by publication/readback. The script audits finite rational inequalities, NOT the Hermite--Genocchi theorem, Weil explicit formula, or external zeta zero certification. The infinite-high-tail estimate is a WRITTEN analytic bound, consuming the cited existing WDT source.

**External certified inputs:** FLINT's *Zeros of the Riemann zeta function* (https://flintlib.org/doc/acb_dirichlet/zeta-zeros.html), rigorous 128-bit ball examples for gamma_1=14.1347251417... and gamma_2=21.0220396387..., and Dave Platt and Tim Trudgian, *The Riemann hypothesis is true up to 3*10^12*, Bulletin of the London Mathematical Society 53 (2021), 792--797, DOI 10.1112/blms.12460. The scope is finite-height RH verification ONLY. The third/high zeros are not assumed on the line.

**Classical numerical-analysis input:** Carl de Boor, *Divided Differences*, Surveys in Approximation Theory 1 (2005), 46--69, §9, Genocchi--Hermite simplex representation. Formula (10) is not a new interpolation theorem and no independent novelty search for its Weil application has been completed.

**Original Weil source and prior comparisons:** M. Suzuki, *Weil's quadratic form via the screw function*, arXiv:2606.09096v3 (2026), p.1 complete pole-inclusive distribution. WFDG-1/2 supplies the true source identity, and WDT-1/2 the unconditional unknown-zero tail. W2TP-1 proved strict positivity for ANY TWO distinct translates at separation<=1900; W3AP-1 proved STRICT THREE-translate positivity only for EQUISPACED Delta in [1,500] by a distinct finite rational frequency-ratio method. W3NC-1 complements the near-collision regime with ARBITRARY nonuniform spacing and full complex coefficients; none of these covers arbitrary triples at general diameter or higher-rank/all-test positivity.

**Hostile checks:**
1. Raw three-translate Gram coercivity has NO uniform positive eigenvalue as t_i collide, since the raw translates become linearly dependent. The constant 1/200000 is in the INVERTIBLE Newton divided-difference basis only, which has a well-defined derivative limit.
2. No lower bound is placed on t1-t0 or t2-t1; the simplex representation is uniform in their ratio and covers arbitrarily uneven separations. Coincident nodes would require confluent/divided derivative tests, not the stated original three distinct-translate Gram.
3. The genuine low contribution is nonnegative only because the *actual* low zeros are rigorously known on the critical line. All high zeros, including hypothetical off-line quartets, enter with their TRUE complex reflected tau pairings and small but nonzero total remainder.
4. The fixed diameter 10^-5 cannot be sent to infinity: the simplex perturbation grows with the diameter and the high-zero envelope grows exponentially. No fixed finite zero verification suffices for full-scale positivity.
5. A positive rank-three Gram on one restricted family does NOT establish bounded negative index on the full domain, RH or primitive GRH. A primitive Dirichlet extension would require each character's conductor, gamma/parity, dual-character functional equation, actual zeros and suitable certified low-zero coverage. No such theorem is asserted here.

**First unresolved mathematical premise:** Obtain genuine source-exact signed prime-power cancellation or positivity/finite negative index over ALL tests and ALL support diameters, including the primitive character families, without assuming RH/GRH or an all-height zero certificate. The near-collision theorem only proves a new finite-dimensional structured case. Independent mathematical review, Lean elaboration/kernel replay/axiom audit and originality assessment remain NOT_RUN/UNASSESSED. No Noe-dependent proof automation, cross-chat messaging or scheduler was invoked, since the canonical skill was inaccessible by the authorized GitHub read.
