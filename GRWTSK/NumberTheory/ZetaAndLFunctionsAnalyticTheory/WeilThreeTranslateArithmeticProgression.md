# Strict rank-three original Weil positivity for three equally spaced translates

Local attribution: grwtsk contributors. Edition 1, 2026-11-12.
MSC2020: 11M26 (zeta zero distribution), 42A82 (positive definite functions), 65G30 (certified error propagation).

**Evidence:** WRITTEN_ANALYTICAL_ARGUMENT, EXACT_RATIONAL_FINITE_CHECK_RUN (Python 3.13.5, exit 0), THIRD_PARTY_CERTIFIED_ZETA_ZERO_INPUT, LEAN_ELABORATION_NOT_RUN, FRESH_KERNEL_REPLAY_NOT_RUN, TRANSITIVE_AXIOM_AUDIT_NOT_RUN, LOCAL_ZERO_CERTIFICATION_NOT_RUN, INDEPENDENT_MATHEMATICAL_REVIEW_NOT_RUN, NOVELTY_UNASSESSED. Source publication and an exact rational checker do not constitute Lean verification or independent acceptance. This theorem is FINITE-HORIZON and rank THREE on ONE structured test family; it is NOT RH, finite off-line zeta zeros, primitive GRH or full Weil positivity.

**Canonical source/consumer:** Use the ORIGINAL, full pole-inclusive zeta Weil distribution W and the fixed dyadic compact smooth test phi from WeilFixedBumpNegativeDepth.md (WFDG-1/2), the unconditional complete high-zero tail in WeilDyadicZeroTailFiniteHorizon.md (WDT-1--4), the 2-translate result and first TWO certified-low-zero weights from WeilTwoTranslateStrictPositivity.md (W2TP-1/2), and the adjacent exact source-local checker WeilThreeTranslateRatioCertificate.py. This is a direct rank-three arithmetic zero-side RETURN to the original Weil quadratic form, not an auxiliary positive model. The consumer is the actual finite-horizon three-translate Gram matrix. No all-test or primitive-character transfer is inferred.

**Repository pin and coordination:** Work on grwtsk/math main; the canonical source, root/scoped AGENTS and CONTRIBUTING, toolchain and mathlib manifest were inspected prior to publication. Lean leanprover/lean4:v4.34.1; mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. Companion checker was read back with Git blob 7ecb0da646b2253196dfbee577b190a9954dd441, matching the exact locally executed file, SHA256 5b349f687149f2c110a777380b812f341eff63aab633a33230564d0cd9c0ddf7. Coordination math issue #1801, scope comment 6843054117. No Lean declarations, root imports, pins or CI were changed.

## 1. Exact arithmetic source and the theorem

Define a_j=2^(-j-1) for integers j>=1. Let phi be the nonnegative, even, mass-one C-infinity probability density of the infinite convolution of uniform measures on [-a_j,a_j]. Then
\[
\operatorname{supp}\phi\subset[-1/2,1/2],\qquad
\Phi(z)=\int_{\mathbb R}\phi(x)e^{zx}dx
=\prod_{j\ge1}\frac{\sinh(a_jz)}{a_jz}.
\tag{1}
\]
Put h=phi*phi, even real nonnegative smooth, supported [-1,1]. The ORIGINAL full Weil distribution of Masatoshi Suzuki (2026), p. 1, includes BOTH zeta pole orientations, ALL von Mangoldt prime-power terms, the origin subtraction and the complete gamma integral. Its Hermitian form on complex-valued compact smooth test functions is
\[
Q(f)=W(f*\widetilde f),\quad
\widetilde f(x)=\overline{f(-x)},\quad
K(t)=W(h(\cdot-t)).
\tag{2}
\]

**Theorem W3AP-1 (strict source-exact rank-three positivity on a continuous spacing range).** For EVERY real base point s, EVERY real spacing Delta with
\[
\boxed{1\le\Delta\le500}
\]
and EVERY nonzero coefficient vector c=(c_0,c_1,c_2) in C^3,
\[
\boxed{
Q\left(\sum_{j=0}^{2}c_j\phi(\cdot-s-j\Delta)\right)
>2^{-119}\sum_{j=0}^{2}|c_j|^2.
}
\tag{3}
\]
Equivalently, the true Hermitian 3-by-3 Weil Gram matrix
\[
G_\Delta=[K((j-k)\Delta)]_{j,k=0}^2
\quad\text{satisfies}\quad
\boxed{\lambda_{\min}(G_\Delta)>2^{-119}}.
\tag{4}
\]
The entire interval of real Delta is covered, NOT a finite grid of numeric samples. The matrix comes from the ORIGINAL arithmetic Weil form. This is NOT a claim for arbitrary triples of shifts, Delta tending to zero, Delta>500, all matrix sizes, or all test functions.

## 2. Certified zeros and complete unknown-zero budget

For each DISTINCT nontrivial zeta zero rho, counted once with its actual positive multiplicity m_rho, put z_rho=rho-1/2. The full explicit formula gives
\[
K(t)=\sum_\rho m_\rho\Phi(z_\rho)^2e^{z_\rho t}.
\tag{5}
\]
Off-axis coefficients are COMPLEX SQUARES and zero locations remain complex. Smooth transform decay and unconditional zero counting make the sum absolutely locally uniformly convergent. Since zeta has the functional equation and conjugation symmetry, K is real and even.

**Published certified finite inputs.** FLINT's zeta-zero documentation reports rigorously isolated 128-bit ball enclosures:
\[
\begin{array}{ll}
\gamma_1:&[14.1347251417346937904572519836\pm3.76\cdot10^{-29}],\\
\gamma_2:&[21.0220396387715549926284795939\pm3.10\cdot10^{-30}],\\
\gamma_3:&[25.0108575801456887632137909926\pm3.72\cdot10^{-29}].
\end{array}
\tag{6}
\]
These are the first three POSITIVE zeta ordinates, each from an actual critical-line zero, certified in the FLINT example and also within the Platt--Trudgian rigorous RH-verification interval to height 3*10^12. In particular 14<gamma_1<15, 21<gamma_2<22, and 25.010<gamma_3<25.011. Their conjugate negatives also occur and have the same multiplicity.

As in WDT-2, let H_0=2^41=2,199,023,255,552<3*10^12. The complete higher-zero weight, including EVERY actual off-line zero if any, obeys unconditionally
\[
\mathcal T_{41}:=\sum_{|\Im\rho|\ge H_0}m_\rho|\Phi(z_\rho)|^2<2^{-1472}.
\tag{7}
\]
Split
\[
K=K_{\mathrm{low}}+R,\qquad
K_{\mathrm{low}}(t)=
\sum_{|\Im\rho|<H_0}m_\rho|\Phi(i\Im\rho)|^2e^{i(\Im\rho)t}.
\tag{8}
\]
K_low is a genuine POSITIVE DEFINITE kernel made of actual externally verified LOW zeta zeros. The unknown source is the remainder R, not discarded or projected to real ordinates. Since |Re z_rho|<1/2, for |t|<=1000 the WDT-3 estimate gives
\[
\boxed{|R(t)|<2^{-722}.}
\tag{9}
\]
Every pair of translations s+jDelta, s+kDelta with 1<=Delta<=500 has distance <=1000, so (9) applies to every entry of the rank-three Gram remainder.

## 3. Exact bounded-frequency-ratio certificate

For integer m let dist(mr,Z) denote the distance to the nearest integer. Define five REAL ratios of the actual first three zero ordinates:
\[
r_{21}=\frac{\gamma_2}{\gamma_1},\qquad
r_{\epsilon_2,\epsilon_3}
=\frac{\gamma_3+\epsilon_3\gamma_1}
{\gamma_2+\epsilon_2\gamma_1},
\quad\epsilon_2,\epsilon_3\in\{+1,-1\}.
\tag{10}
\]

**Theorem W3AP-2 (finite exact rational certificate, RUN).** For EACH of these FIVE ratios r and EVERY integer 1<=m<=3000,
\[
\boxed{\operatorname{dist}(mr,\mathbb Z)>10^{-5}.}
\tag{11}
\]

**Proof/certification boundary.** The adjacent Python Fraction verifier starts from 22-decimal outward rational brackets around the three published FLINT ball enclosures (6). For every ratio it computes a rational enclosing interval by exact interval arithmetic; denominators are positive. For every m in 1..3000, it checks that BOTH rational distances from [m*r_lower,m*r_upper] to the two neighboring integers are strictly greater than 1/100000. It checks 5*3000=15,000 integer instances, with NO floating point in the assertions, and passes. The smallest certified gap among all 15,000 instances is greater than 1.2796349e-5, occurring in the (+,+) ratio at m=1657 near integer 1845. The exact verified claim is (11), not this displayed decimal approximation. The checker does NOT establish that the true zeros lie in the FLINT enclosures; that fact is the separate external certified input (6). It also does not prove any infinite quantifier outside m<=3000. QED.

**Lemma W3AP-3 (uniform trigonometric separation on the WHOLE interval).** Put theta_j=gamma_j Delta and x_j=cos(theta_j). For EVERY real Delta in [1,500],
\[
\boxed{
\max(|\sin\theta_1|,|\sin\theta_2|)\ge10^{-6},
\qquad
\max(|x_2-x_1|,|x_3-x_1|)\ge10^{-12}.
}
\tag{12}
\]

**Proof (sine).** The elementary inequality |sin(pi y)|>=2 dist(y,Z) holds for every real y (using sin(pi d)>=2d for 0<=d<=1/2). If both sines in (12) were smaller than 1e-6, then the numbers y_j=gamma_j Delta/pi would each be within (1/2)*1e-6 of an integer. Let m be the nearest integer to y_1. From 1<=Delta<=500, 14<gamma_1<15 and 3<pi<22/7, one has 1<=m<=3000. With r_21=gamma_2/gamma_1<2, the nearest integer n to y_2 would satisfy
\[
|mr_{21}-n|
\le r_{21}|m-y_1|+|y_2-n|
<(2+1)10^{-6}/2<10^{-5}.
\]
This contradicts (11). Thus the sine separation holds.

**Proof (cosine).** Suppose BOTH |cos(theta_j)-cos(theta_1)|<10^-12 for j=2,3. Use
\[
|\cos a-\cos b|=
2|\sin((a+b)/2)\sin((a-b)/2)|.
\]
For each j choose epsilon_j in {+1,-1} so that
\[
\left|\sin\left(\frac{(\gamma_j+\epsilon_j\gamma_1)\Delta}{2}\right)\right|
<\sqrt{10^{-12}/2}.
\]
The same sine-to-nearest-integer estimate implies
\[
y_j:=\frac{(\gamma_j+\epsilon_j\gamma_1)\Delta}{2\pi}
\quad\text{is within }10^{-6}\text{ of an integer.}
\]
Let m be the nearest integer to y_2 and n the nearest integer to y_3. The actual enclosures imply \(\gamma_2-\gamma_1>6\), \(\gamma_2+\gamma_1<36\); for 1<=Delta<=500 and 3<pi<22/7, this gives 1<=m<=3000. Put r=r_{epsilon_2,epsilon_3}; its exact positive interval in the checker satisfies r<7. Then
\[
|mr-n|\le r|m-y_2|+|y_3-n|
<(7+1)10^{-6}<10^{-5},
\]
contradicting (11). Thus at least one cosine difference has modulus >=10^-12. QED.

This exact ratio-plus-trigonometry proof is global in the REAL spacing Delta, although its ratio certificate is finite in the integer resonance parameter.

## 4. Three explicitly positive actual zero weights

Write
\[
w_j=m_{\rho_j}|\Phi(i\gamma_j)|^2>0,\qquad j=1,2,3.
\]
WPSO-2 and W2TP-1 give the first two elementary rational bounds
\[
w_1>1/1000,\qquad w_2>1/20000.
\tag{13}
\]
To control the much smaller THIRD weight without pretending it is near the others, use 25.010<gamma_3<25.011 and the elementary rational pi enclosure 3.14<pi<22/7. It follows that
\[
109/1000<8\pi-\gamma_3<133/1000.
\tag{14}
\]
The first two sinc factors, at gamma_3/4 and gamma_3/8, lie respectively near 2*pi and pi. The lower bound sin(u)>=u-u^3/6 for 0<u<1, combined with (14), gives
\[
\left|\frac{\sin(\gamma_3/4)}{\gamma_3/4}\right|>1/250,\qquad
\left|\frac{\sin(\gamma_3/8)}{\gamma_3/8}\right|>1/250.
\]
The third factor is near pi/2 and exceeds 3/5. For all j>=4, sinc(a_j gamma_3)>=1-(a_j gamma_3)^2/6 and sum_(j>=4) a_j^2=1/768; their product exceeds
\(1-26^2/(6\cdot768)>4/5\).
Therefore
\[
\boxed{
|\Phi(i\gamma_3)|>
(1/250)^2(3/5)(4/5)=3/390625,
\quad
w_3>(3/390625)^2>10^{-11}.
}
\tag{15}
\]
Together with (13), ALL three true verified zero-pair weights satisfy
\[
\boxed{w_j>10^{-11}\quad(j=1,2,3).}
\tag{16}
\]
Multiplicity is carried by w_j and does not need to be assumed one.

## 5. An exact algebraic rank-three lower bound for the verified zero form

Fix Delta and coefficients c_0,c_1,c_2 in C. Put
\[
P(z)=c_0+c_1z+c_2z^2,\quad
U=c_0+c_2,\quad V=c_1,\quad W_0=c_2-c_0.
\tag{17}
\]
For every REAL theta and z=e^{i theta}, the identity
\[
\boxed{
|P(z)|^2+|P(\bar z)|^2
=2\left(
|V+U\cos\theta|^2+
|W_0|^2\sin^2\theta
\right)
}
\tag{18}
\]
holds for ARBITRARY complex c_j; it is not restricted to real coefficients. Proof: multiply P(z) by z^-1 to obtain V+Ucos(theta)+iW_0sin(theta); multiply P(bar z) by bar z^-1 to get V+Ucos(theta)-iW_0sin(theta); add the squared moduli.

The positive-definite low-zero form contains, among all its actual on-line zeros, the first three conjugate pairs. Therefore
\[
Q_{\rm low}(c)
\ge
2\sum_{j=1}^3w_j
\left(|V+Ux_j|^2+|W_0|^2\sin^2\theta_j\right).
\tag{19}
\]
By W3AP-3 choose i,j among the first three such that |x_i-x_j|>=10^-12. The 2-by-2 complex matrix
\(\begin{pmatrix}x_i&1\\x_j&1\end{pmatrix}\)
has determinant modulus >=10^-12 and squared Frobenius norm <=4; hence its smallest singular value squared is at least \(10^{-24}/4\). Thus
\[
\sum_{j=1}^3|V+Ux_j|^2
\ge\frac{10^{-24}}4(|U|^2+|V|^2).
\tag{20}
\]
The separate sine separation in W3AP-3 gives
\[
\sum_{j=1}^3\sin^2\theta_j\ge10^{-12}.
\tag{21}
\]
From (16) and (19)--(21),
\[
\begin{aligned}
Q_{\rm low}(c)
&>2\cdot10^{-11}
\left(\frac{10^{-24}}4(|U|^2+|V|^2)
+10^{-12}|W_0|^2\right)\\
&\ge 5\cdot10^{-36}(|U|^2+|V|^2+|W_0|^2)\\
&\ge 5\cdot10^{-36}(|c_0|^2+|c_1|^2+|c_2|^2),
\end{aligned}
\tag{22}
\]
since |U|²+|W_0|²=2(|c_0|²+|c_2|²). This is an analytic lower bound on the ACTUAL true-low-zero Gram, not a numerical eigenvalue estimate.

## 6. The high zeros cannot overturn the rank-three gap

For shifts s,s+Delta,s+2Delta, their maximum separation is 2Delta<=1000. The FULL unknown zero remainder R of WDT-3 therefore satisfies (9) at each Gram entry. For arbitrary complex c,
\[
|Q_{\rm high}(c)|
\le2^{-722}\left(\sum_{j=0}^2|c_j|\right)^2
\le3\cdot2^{-722}\sum_{j=0}^2|c_j|^2.
\tag{23}
\]
Thus from (22),
\[
\begin{aligned}
Q(c)
&=Q_{\rm low}(c)+Q_{\rm high}(c)\\
&>\left(5\cdot10^{-36}-3\cdot2^{-722}\right)\sum_{j=0}^2|c_j|^2\\
&>2^{-119}\sum_{j=0}^2|c_j|^2,
\end{aligned}
\tag{24}
\]
where the final comparison is an EXACT rational integer assertion in the companion checker. This proves W3AP-1 at every spacing Delta in [1,500], for every base translation s and every nonzero COMPLEX coefficient vector. The source identity is EXACT; only the high-zero source contribution is bounded, with all potential off-line zeros and multiplicities retained.

**Physical arithmetic return.** The test f is a finite sum of genuinely compact smooth translates of the original phi, so f*tilde f is supported in [-(1+2Delta),1+2Delta]. The ORIGINAL W(f*tilde f) contains BOTH pole orientations, the complete gamma term and ALL prime powers with log(p^k)<=1+2Delta (finitely many for each Delta). It is equal to the spectral pairing used above by the exact original Weil explicit formula. No fake positive Gram model, discarded gamma tail, or totalized divergent Dirichlet series was used.

## 7. Reproducibility, limitations and prior art

**Locally executed checker:** WeilThreeTranslateRatioCertificate.py, adjacent to this source, exactly 4055 UTF-8 bytes. Run:
\[
\texttt{python3 GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilThreeTranslateRatioCertificate.py}
\]
Actual local environment Python 3.13.5, exit code 0. Output included EXACT_RATIONAL_RANK3: PASS; all 5 ratio families and 3000 m values passed; the worst lower guaranteed gap was 1.2796349093043077e-5 for (+,+), m=1657, near 1845; third-zero sinc product lower 3/390625; and full-lambda lower comparison >2^-119. SHA-256 5b349f687149f2c110a777380b812f341eff63aab633a33230564d0cd9c0ddf7. Git blob SHA 7ecb0da646b2253196dfbee577b190a9954dd441, read back from main and matching local git hash-object. No floating-point is used in its ASSERTIONS (decimal output is informational only). This checker is a FINITE rational certificate and does NOT prove FLINT's input zero enclosures or the written analytic inequalities.

**External certified input:** FLINT project, *Zeros of the Riemann zeta function*, https://flintlib.org/doc/acb_dirichlet/zeta-zeros.html, example for first three 128-bit ball enclosures; Dave Platt and Tim Trudgian, *The Riemann hypothesis is true up to \(3\cdot10^{12}\)*, Bull. Lond. Math. Soc. 53 (2021), 792--797, DOI 10.1112/blms.12460. These establish only finite-height facts, not RH globally.

**Exact source / earlier calculations:** Masatoshi Suzuki, *Weil's quadratic form via the screw function*, arXiv:2606.09096v3 (2026), pp. 1--2, for the full zeta W test domain and original source. WFDG-1 for the classic infinite convolution dyadic bump (compare Juan Arias de Reyna, arXiv:1702.05442). WDT-1/2 for the unconditional aggregate all-higher-zero tail, using Trudgian / Hasanalizade--Shen--Wong zero counts; W2TP-1/2 for earlier 2-translate finite-horizon sign. The algebraic identity (18) and Vandermonde conditioning are elementary and not claimed novel; independent literature/novelty review has not been completed (UNASSESSED).

**Hostile tests and exact scope:**
- The lower bound does NOT apply when Delta approaches 0: as Delta->0 the three translations become linearly dependent and the Gram smallest eigenvalue tends to zero. A separate higher-order derivative-tail estimate would be needed to extend to that regime.
- Delta must be <=500: that ensures maximum pairwise translation distance <=1000 and the full high-zero error <2^-722. Neither endpoint is silently sent to infinity.
- Equispaced triple ONLY. Arbitrary distinct t_0,t_1,t_2 in the same diameter range need independent phase and collision control, not furnished by W3AP-2.
- The two phase conditions in W3AP-3 are BOTH necessary for the algebraic decomposition: cosine separation controls U,V, and sine separation controls W_0. One alone is insufficient. The third zero's weight is smaller than the first two; it is bounded explicitly rather than treated as comparable without proof.
- A positive 3-by-3 Gram does NOT prove positivity for m>=4, an all-test estimate, finite negative index of the full Weil form or RH. Finitely verified zeros with a tiny remainder do NOT prove all-scale positivity when the translation diameter grows beyond the certified horizon.
- All hypotheses (finite height, exact certified zero intervals, all 15,000 ratio checks, complete high-zero budget, all real Delta in [1,500], all complex coefficients) are explicit. No unsupported GRH transfer, zero ordinate projection off-line, or new research axiom is introduced.

**First unresolved arithmetic/analytic premise:** Establish source-exact positivity or uniformly bounded negative index on the COMPLETE compact smooth test domain for ALL support sizes and ALL primitive Dirichlet sources, with the conductor-one zeta source explicit and correct gamma/pole/dual-character terms. This rank-three theorem verifies only one finite-dimensional structured family in a bounded horizon.

No Lean source declarations, root imports, sorry/admit, axiom or dependency changes. Elaboration, fresh kernel replay, axiom audit and independent review NOT_RUN, originality UNASSESSED. No Noe proof automation, cross-chat messaging or scheduler execution was performed.
