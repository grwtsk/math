# Strict original Weil positivity for six arbitrary near-coincident translates

Local mathematical attribution: grwtsk contributors. Edition 1, 2026-11-12.
MSC2020: 11M26 (zeta-function zeros), 42A82 (positive-definite functions), 41A05 (divided differences), 65G30 (rigorous error bounds).

**Evidence:** COMPLETE_WRITTEN_ANALYTICAL_ARGUMENT; LOCAL_EXACT_RATIONAL_CONSTANT_AUDIT_RUN (Python 3.13.5, exit 0); LEAN_ELABORATION_NOT_RUN; FRESH_KERNEL_REPLAY_NOT_RUN; TRANSITIVE_AXIOM_AUDIT_NOT_RUN; LOCAL_ZETA_ZERO_CERTIFICATION_NOT_RUN; INDEPENDENT_MATHEMATICAL_REVIEW_NOT_RUN; NOVELTY_UNASSESSED. The finite-height zero verification is a published EXTERNAL mathematical result, not a proof that all zeros are on the line. Neither this source nor its exact rational checker proves RH, GRH, finite global negative index, or universal Weil positivity.

**Source, consumer and genuine return:** Reuse the COMPLETE original pole-inclusive zeta Weil distribution, the existing compact smooth dyadic test phi and its exact complex divisor return in WeilFixedBumpNegativeDepth.md (WFDG-1/2). Reuse the rigorous infinite unknown-zero dyadic tail in WeilDyadicZeroTailFiniteHorizon.md (WDT-1/2), and the first-three TRUE critical-line zero weights in WeilPrimeOscillationResidues.md (WPSO-2), WeilTwoTranslateStrictPositivity.md (W2TP-1), and WeilThreeTranslateArithmeticProgression.md (W3AP-4). The preceding WeilFourNearCollision.md handles rank four at diameter <=10^-9; this source handles ALL six DISTINCT translates at a smaller diameter 10^-19 and, by restriction, all ranks at most six in that range. Every source term corresponds to the original arithmetic W, not a free positive matrix model.

**Inspected main/pins and coordination:** grwtsk/math/main at a52ea6a5900ae1dea34eb312f25a82e6d67f2169, root AGENTS.md, CONTRIBUTING.md and scoped-policy lookups; Lean leanprover/lean4:v4.34.1, mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. Coordination issue #1801, scope comment 6844716476. Source publication is via the non-force GitHub create-file action; no existing Lean declarations, root imports, toolchain pins, new axioms, sorry/admit, CI, or repository protections changed.

## 1. Exact original arithmetic test and theorem W6NC-1

Let a_j=2^(-j-1) for j>=1. Let phi denote the REAL EVEN nonnegative mass-one smooth probability density of the infinite convolution of uniform measures on [-a_j,a_j]. It is supported in [-1/2,1/2], and its entire bilateral Laplace transform is
\[
\Phi(z)=\int_{\mathbb R}\phi(x)e^{zx}\,dx
=\prod_{j\ge1}\frac{\sinh(a_jz)}{a_jz},\qquad \Phi(0)=1.
\tag{1}
\]
Write \(\phi_t(x)=\phi(x-t)\). The complete original zeta Weil distribution W of Suzuki (2026, p.1) includes BOTH applicable pole orientations, every von Mangoldt prime power, the full gamma term and the origin subtraction. Its Hermitian form on the ACTUAL compact smooth COMPLEX test domain is
\[
Q(f,g)=W(f*\widetilde g),\qquad
\widetilde g(x)=\overline{g(-x)},\qquad Q(f)=Q(f,f).
\tag{2}
\]
The exact original zeta explicit formula, with the real zero locations and signed reflected pairings preserved, is
\[
\boxed{
Q(f,g)=\sum_{\rho\in Z_{\mathrm{distinct}}}
m_\rho F_f(\rho)\overline{F_g(\tau\rho)},\qquad
F_f(\rho)=\int_{\mathbb R}f(x)e^{(\rho-\frac12)x}\,dx,\quad
\tau\rho=1-\overline\rho.
}
\tag{3}
\]
Every actual nontrivial zeta zero is included at its complex position, counted once with its positive integer multiplicity m_rho. For off-line zeros the term is a SIGNED complex cross pairing; it is not replaced by \(|F_f(\rho)|^2\). Smooth compact support and unconditional zero counting give absolute convergence of the original source sum. When rho lies on the critical line, tau rho=rho and the term is genuinely nonnegative.

Let t_0<...<t_5 be SIX distinct real shifts with
\[
\boxed{0<t_5-t_0\le d_0:=10^{-19}.}
\tag{4}
\]
For j=0,...,5 define the true Newton divided-difference source functions
\[
g_j=[t_0,\ldots,t_j]_{t\mapsto\phi_t}.
\tag{5}
\]
Each is a finite linear combination of original translated C-infinity compact tests. In particular g_0=phi_t0 and g_1=(phi_t1-phi_t0)/(t_1-t_0); the higher differences follow the usual recursive formula with actual NONZERO denominators. The change-of-basis between (g_0,...,g_5) and (phi_t0,...,phi_t5) is triangular with NONZERO diagonal, hence invertible for every distinct sextuple. The original translates are themselves independent: if sum c_j phi_tj=0, the bilateral transform gives Phi(z)sum c_j e^{zt_j}=0, and Phi(0)=1 plus the Vandermonde derivatives at zero force c_j=0.

**Theorem W6NC-1 (unconditional written mathematical result).**
For EVERY sextuple (4) and EVERY complex a=(a_0,...,a_5) not identically zero,
\[
\boxed{
Q\left(\sum_{j=0}^{5}a_jg_j\right)>
\frac{1}{2\cdot10^{33}}\sum_{j=0}^{5}|a_j|^2.
}
\tag{6}
\]
Consequently, for EVERY such sextuple and EVERY nonzero c in C^6,
\[
\boxed{
Q\left(\sum_{j=0}^{5}c_j\phi_{t_j}\right)>0.
}
\tag{7}
\]
All principal subfamilies of at most six distinct translates in the same diameter range are also strictly positive: extend a shorter family to six distinct nodes in the interval and set extra coefficients zero. No minimum pairwise separation is required.

The constant in (6) is in the NEWTON DIVIDED-DIFFERENCE coordinate norm, NOT the raw translate coefficient norm. The latter becomes ill-conditioned as the nodes collide, and no uniform raw Gram smallest eigenvalue is claimed. The theorem is strictly rank six and finite diameter; there is no rank-uniform or all-scale positivity conclusion.

A common translation of all six source tests leaves f*tilde f unchanged and thus preserves the ORIGINAL Q. We may set t_0=0 without assuming that any individual off-line zero evaluation is translation invariant. Then 0<t_1<...<t_5<=d_0.

## 2. Hermite--Genocchi true zero evaluations W6NC-2

Let E_j(z) be the j-th divided difference of the exponential \(u\mapsto e^{zu}\) at nodes (t_0,...,t_j). Directly from (1) and linearity of divided differences,
\[
\boxed{
F_{\sum a_jg_j}(\rho)=\Phi(z_\rho)\sum_{j=0}^{5}a_jE_j(z_\rho),
\qquad z_\rho=\rho-\tfrac12 .
}
\tag{8}
\]
For j=0,...,5 the classical Hermite--Genocchi formula is the LITERAL simplex integral
\[
E_j(z)=z^j\int_{\Sigma_j}
\exp\left(z\sum_{\ell=0}^j\lambda_\ell t_\ell\right)d\lambda,
\quad
\Sigma_j=\{\lambda_\ell\ge0:\sum\lambda_\ell=1\},
\quad \operatorname{vol}(\Sigma_j)=1/j!.
\tag{9}
\]
This is valid for arbitrarily uneven distinct nodes and has the correct confluent limit \(E_j(z)\to z^j/j!\) as all t_j approach zero. It is a classical interpolation identity (Carl de Boor, *Divided Differences*, Surveys in Approximation Theory 1 (2005), §9, printed p.63), not a newly assumed spectral return.

Uniformly for |Re z|<1/2 and nodes in [0,d_0], the simplex formula gives
\[
\boxed{|E_j(z)|\le e^{d_0/2}\frac{|z|^j}{j!}.}
\tag{10}
\]
For a REAL gamma and j>=1, using |e^{iy}-1|<=|y| in the SAME integral gives
\[
\boxed{
|E_j(i\gamma)-(i\gamma)^j/j!|
\le d_0\,\frac{|\gamma|^{j+1}}{j!}.
}
\tag{11}
\]
The j=0 value is exactly E_0=1 after t_0=0. These inequalities do NOT divide by any small adjacent node gap: their constants are uniform as gaps tend to zero.

## 3. True first three certified zero pairs give a six-direction gap W6NC-3

**Finite certified external facts:** The first THREE positive nontrivial zeta zeros are critical-line zeros at \(1/2+i\gamma_j\), with genuine conjugate negative ordinates and
\[
14<\gamma_1<15,\qquad
21<\gamma_2<22,\qquad
25<\gamma_3<26.
\tag{12}
\]
The FLINT zeta-zero documentation publishes rigorous ball enclosures with centers
14.1347251417346937904572519836, 21.0220396387715549926284795939, and 25.0108575801456887632137909926, and explicit small radii. Independently, Platt--Trudgian (2021) rigorously verified via interval arithmetic that EVERY zeta zero with |\Im rho|<=3*10^12 lies on the critical line. Only those FINITE claims are used. No simplicity or other zero-location conclusion is assumed outside the verified interval.

Let
\[
w_j=m_{\rho_j}|\Phi(i\gamma_j)|^2,\quad j=1,2,3.
\]
The existing actual dyadic-bump sine-product bounds WPSO-2, W2TP-1 and W3AP-4 prove, respectively,
\[
w_1>1/1000,\qquad w_2>1/20000,\qquad
w_3>(3/390625)^2>10^{-11}.
\tag{13}
\]
Thus each of the SIX actual first-three conjugate-zero rows has genuine weight greater than 10^-11. Their multiplicities are included and do not have to equal one.

At full coalescence define the 6-by-6 COMPLEX matrix V_0 with rows indexed by
\(z=\pm i\gamma_1,\pm i\gamma_2,\pm i\gamma_3\)
and columns \(z^j/j!\), j=0,...,5. It is a scaled ordinary Vandermonde matrix. Taking the product of the actual six pairwise root differences and dividing by \(\prod_{j=0}^{5}j!=34560\), one obtains the EXACT magnitude
\[
\boxed{
|\det V_0|=
\frac{\gamma_1\gamma_2\gamma_3}{4320}
\prod_{1\le a<b\le3}(\gamma_b^2-\gamma_a^2)^2.
}
\tag{14}
\]
The strict intervals (12) imply
\[
\begin{aligned}
|\det V_0|&>
\frac{14\cdot21\cdot25
 (21^2-15^2)^2(25^2-15^2)^2(25^2-22^2)^2}{4320}\\
&=\boxed{252504604800000}.
\end{aligned}
\tag{15}
\]
Likewise the Frobenius squared norm has the conservative upper bound
\[
\boxed{
\|V_0\|_F^2
<6\sum_{j=0}^5\frac{26^{2j}}{(j!)^2}
=\frac{1526177015006}{25}
<61100000000.
}
\tag{16}
\]
Writing the six singular values in decreasing order, the arithmetic--geometric mean bound on the first five squared values gives
\[
\sigma_{\min}(V_0)^2
\ge\frac{5^5|\det V_0|^2}{\|V_0\|_F^{10}}
>
\frac{5^5(252504604800000)^2}{(61100000000)^5}
>10^{-22}.
\tag{17}
\]
Every inequality in the last comparison is exact rational arithmetic. Consequently
\[
\boxed{\sigma_{\min}(V_0)>10^{-11}.}
\tag{18}
\]

For the actual DISTINCT nodes, let V_t have rows (E_0(z),...,E_5(z)) at the SAME SIX true low zero coordinates. From (11) and |\gamma_j|<26 the Frobenius perturbation satisfies
\[
\begin{aligned}
\|V_t-V_0\|_{\rm op}^2
&\le\|V_t-V_0\|_F^2\\
&\le6d_0^2\sum_{j=1}^5\frac{26^{2j+2}}{(j!)^2}
<10^{-24},
\end{aligned}
\tag{19}
\]
where the exact finite coefficient
\[
6\sum_{j=1}^5\frac{26^{2j+2}}{(j!)^2}
=\frac{1031695662042656}{25}<10^{14}.
\]
Thus \(\|V_t-V_0\|_{\rm op}<10^{-12}\), and the singular-value perturbation inequality yields
\[
\boxed{
\|V_t a\|_2>
(10^{-11}-10^{-12})\|a\|_2
=9\cdot10^{-12}\|a\|_2
\quad(a\ne0).
}
\tag{20}
\]

Every zero with |\Im rho|<H=2^41 is ON THE CRITICAL LINE by the published finite verification, so the corresponding TRUE original Weil contribution is nonnegative. Keeping only the first three actual ± pairs, their weights (13) and the six-row estimate (20) give
\[
\boxed{
Q_{\rm low}\left(\sum a_jg_j\right)
>10^{-11}(9\cdot10^{-12})^2\|a\|_2^2
=\frac{81}{10^{35}}\|a\|_2^2.
}
\tag{21}
\]
The remaining verified-low zeros contribute additional nonnegative terms. This is a positive lower bound from the ACTUAL analytic zeta divisor, not an auxiliary positive matrix postulated as the original arithmetic source.

## 4. Complete unknown-height signed source tail W6NC-4

Let H=2^41=2199023255552<3*10^12. Write \(Q=Q_{\rm low}+Q_{\rm high}\) using the EXACT full spectral identity (3). The high sum contains EVERY actual zeta zero with |\Im rho|>=H, including any hypothetical off-line complex zero, with its TRUE positive multiplicity and reflected partner tau rho. No high zero is assumed on the critical line.

Since phi is real and even, \(|\Phi(-\overline z)|=|\Phi(z)|\). The true shifted tau-partner satisfies \(z_{\tau\rho}=-\overline{z_\rho}\), so it has the SAME absolute modulus. By (8),(10) and finite Cauchy--Schwarz,
\[
\begin{aligned}
|Q_{\rm high}(\sum a_jg_j)|
&\le e^{d_0}\|a\|_2^2
\sum_{|\Im\rho|\ge H}m_\rho|\Phi(z_\rho)|^2
\sum_{j=0}^5\frac{|z_\rho|^{2j}}{(j!)^2}.
\end{aligned}
\tag{22}
\]
The absolute value was taken ONLY AFTER retaining the true complex signed source pairing. This is not the false identity \(Q_{\rm high}=\sum|F_f(\rho)|^2\).

WDT-1/2 establishes from the unconditional Riemann--von Mangoldt zero-count bound and the explicit dyadic Phi product that for each dyadic block n>=6,
\[
\boxed{
\sum_{2^n\le|\Im\rho|<2^{n+1}}
m_\rho|\Phi(z_\rho)|^2<2^{-n^2+5n+3}.
}
\tag{23}
\]
This counts EVERY distinct actual zero with its multiplicity, whether on or off line. For n>=41, \(|z_\rho|^2<2^{2n+3}\) and \(|z_\rho|\ge2^n\ge1\), so
\[
\sum_{j=0}^5\frac{|z_\rho|^{2j}}{(j!)^2}
\le6|z_\rho|^{10}<2^{10n+18}.
\]
Also \(e^{d_0}<2\). Consequently the ENTIRE nth high-zero block of (22) is bounded by
\[
2^{-n^2+5n+3}2^{10n+19}
=2^{-n^2+15n+22}\|a\|_2^2.
\tag{24}
\]
At n=41 the exponent is -1044, and the ratio of consecutive terms is \(2^{14-2n}\le2^{-68}\). Summing all infinitely many higher blocks gives the COMPLETE error budget
\[
\boxed{
|Q_{\rm high}(\sum a_jg_j)|
<
\frac{2^{-1044}}{1-2^{-68}}\|a\|_2^2
<2^{-1043}\|a\|_2^2.
}
\tag{25}
\]
There is no finite truncation of the unknown higher divisor, no assumption of RH outside H, and no omission of actual signed character phases (this source is conductor-one zeta).

## 5. Final strict sign, reproducibility and falsification W6NC-5

Combining the true low-zero positive margin (21) and the entire signed unknown-high-zero error (25),
\[
\boxed{
\begin{aligned}
Q\left(\sum_{j=0}^5a_jg_j\right)
&>\left(\frac{81}{10^{35}}-2^{-1043}\right)\|a\|_2^2\\
&>\frac{1}{2\cdot10^{33}}\|a\|_2^2
\qquad(a\ne0).
\end{aligned}
}
\tag{26}
\]
The final strict numerical comparison is exact rational arithmetic, verified in the adjacent script. This proves W6NC-1, including arbitrary complex coefficients, every distinct sextuple of diameter<=10^-19, and by principal-subspace restriction every smaller number of distinct translates in that diameter range.

**ACTUALLY RUN finite arithmetic audit:** The adjacent source file WeilSixNearCollisionConstants.py is 2770 bytes, uses only Python standard-library fractions.Fraction and factorial in its mathematical assertions, and is the EXACT source executed in the local container:
\[
\texttt{python /mnt/data/WeilSixNearCollisionConstants.py}
\]
Environment: Python 3.13.5, EXIT STATUS 0. Output includes:
- WEIL_6_NEAR_COLLISION_RATIONAL: PASS
- determinant lower: 252504604800000
- Frobenius-squared upper: 61100000000
- sigma_min(V0)>1e-11; perturbation<1e-12 at diameter<=1e-19
- minimum certified low weight>1e-11; low Gram>81/10^35
- all unverified high zeros, signed: <2^-1043
- original Weil Q in Newton coordinates >1/(2*10^33).

Exact local script SHA-256: 00a9fc498b039df4486d73f911381ba607b76de84bab860aab32637abc13535f; local Git blob 7229a34fd0b7e9471121dfb213bb222253026f30, matching its GitHub readback. This script proves the specified FINITE rational inequalities only. It does NOT independently certify zeta zeros, derive the WDT infinite zero-count tail, formally prove Hermite--Genocchi, elaborate Lean, or kernel-check the full Weil formula.

**Primary source and paper-to-claim provenance:**
- Platt and Trudgian, *The Riemann hypothesis is true up to \(3\cdot10^{12}\)*, Bulletin of the London Mathematical Society 53 (2021), pp. 792--797, DOI 10.1112/blms.12460: rigorous FINITE-height verification of actual zeta zeros only.
- FLINT project, *Zeros of the Riemann zeta function*, https://flintlib.org/doc/acb_dirichlet/zeta-zeros.html: explicit rigorously isolated ball enclosures of the first three critical-line ordinates. Bounds (12) are strictly weaker than its published enclosures.
- Carl de Boor, *Divided Differences*, Surveys in Approximation Theory 1 (2005), pp. 46--69, §9 (printed p. 63), https://pages.cs.wisc.edu/~deboor/sat/papers/2/2.pdf: Hermite--Genocchi representation (9), with no new interpolation theorem claimed.
- Masatoshi Suzuki, *Weil's quadratic form via the screw function*, arXiv:2606.09096v3 (2026), printed p. 1: ORIGINAL complete zeta Weil explicit formula. WFDG-1/2 is the exact source-local return to real arithmetic poles/gamma/primes, WDT-1/2 the original dyadic uniform infinite high-zero error, and WPSO/W2TP/W3AP the certified first-three dyadic weight lower bounds. This is a written source-specific consequence; mathematical novelty remains UNASSESSED and no independent analytic proof review occurred.

**Hostile checks and exact limitations:**
1. Rank six and diameter <=10^-19 are genuine finite restrictions. The result does NOT supply all-rank positivity, any positive bound for all support diameters, or an A-independent negative-index bound. An arbitrary seventh translated bump is not controlled by six evaluation rows.
2. The original translate basis is nearly singular as shifts collide. The only uniform coercivity constant is in the Newton DIVIDED-DIFFERENCE norm. Raw Gram eigenvalues tend to zero under near-collision, consistent with strict positivity at every DISTINCT configuration.
3. The external verified-zero computation has FINITE height 3*10^12, whereas WDT-2 bounds the COMPLETE infinite remainder at all larger ordinates. Without the WDT error budget, finite zero verification would not imply even this restricted exact sign theorem.
4. Off-critical-line zeros (if any) enter (3) and (22) at their ACTUAL complex horizontal displacements and true tau partners. No unwarranted modulus-square substitution, ordinate projection or artificial "all zeros on line" premise is used. Multiplicity remains m_rho, not an unproved simplicity assertion.
5. The statement is for conductor-one zeta explicitly. It is not a primitive Dirichlet GRH transfer; complex character phases, conductor q, parity gamma terms and dual-character functional equations require their own source-exact arguments.
6. The original W(f*tilde f) includes both pole orientations, all von Mangoldt prime powers, full gamma and origin regularization BEFORE the exact zero-divisor return (3). No Euler product is summed outside its convergence domain.
7. The finite checker is independent of floating-point rounding in its rational assertions but NOT an independent verification of the analytic proof or published zero isolation. Novelty and mathematical review remain UNASSESSED/NOT_RUN; formal checks NOT_RUN.

**First unresolved substantive premise:** Control the ORIGINAL arithmetic Weil form on ALL smooth compact tests, ALL support widths and ALL ranks (or prove a uniform negative index) with every primitive Dirichlet character and conductor-one zeta retained, without RH/GRH as hypothesis. This near-collision rank-six theorem is a finite-domain, source-exact positive result but does not discharge the universal source arithmetic cancellation obligation. No Noe proof-automation, cross-chat messaging, scheduler or browser automation was dispatched; the canonical noe-proof-automation skill was inaccessible at grwtsk/noeaaeue/main revision 600d299a6bc842cb09c823d5271fb4c622714972.
