# Strict rank-four near-collision positivity of the original pole-inclusive zeta Weil form

Local mathematical attribution: grwtsk contributors. Edition 1, 2026-11-12.
MSC2020: 11M26 (Riemann zeta zero distribution), 42A82 (positive definite functions), 41A05 (divided differences), 65G30 (rigorous interval/constant bounds).

**Evidence:** WRITTEN_ANALYTICAL_ARGUMENT; LOCAL_EXACT_RATIONAL_CONSTANT_AUDIT_RUN (Python 3.13.5, exit status 0); LEAN_ELABORATION_NOT_RUN; FRESH_KERNEL_REPLAY_NOT_RUN; TRANSITIVE_AXIOM_AUDIT_NOT_RUN; LOCAL_ZETA_ZERO_ISOLATION_NOT_RUN; INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN; ORIGINALITY_UNASSESSED. The published finite-height zeta verification is an EXTERNAL mathematical input, not a local certified computation. This rank-four source result does not prove RH, primitive Dirichlet GRH, finite off-line zeta zeros, finite global negative index, positivity for every test or any unbounded support range.

**Canonical owning layer, source and consumer:** The complete original two-pole, all-prime-power and gamma-inclusive zeta Weil distribution, the test domain and exact nontrivial-zero spectral identity are in WeilFixedBumpNegativeDepth.md (WFDG-1/2). The unconditional bound on EVERY unverified high zero is in WeilDyadicZeroTailFiniteHorizon.md (WDT-1/2). The actual first TWO certified critical-line zero pair weights are in WeilPrimeOscillationResidues.md (WPSO-2) and WeilTwoTranslateStrictPositivity.md (W2TP-1). This note consumes the rank-three arbitrary near-collision divided-difference theorem WeilThreeNearCollision.md (W3NC-1) and proves a genuinely new RANK-FOUR source consequence on arbitrarily uneven, distinct near-coincident translations. It does not replace the original Weil form with a positive auxiliary model or project unknown complex zeros to ordinates.

**Live-repository provenance:** Inspected grwtsk/math/main at f29330b179f80fb3c89147503544ee611e0984f9, root AGENTS.md, CONTRIBUTING.md, absence of scoped AGENTS, root Lean pin leanprover/lean4:v4.34.1 and mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. Coordination math issue #1801, scope comment 6844441697. The adjacent locally executed source-only companion WeilFourNearCollisionConstants.py has SHA-256 998a16e2168610f91c03f009b1ae3c4515ed12992ddad1b91fc6e15e0ecca806 and Git blob ef9292c0154158d033b1cbf6b741e004b47a875b. No source imports, Lean modules, pins, axioms, sorry/admit or CI were changed.

## 1. Exact original test family and theorem (W4NC-1)

For j>=1 let a_j=2^(-j-1) and let phi be the real even, nonnegative, mass-one C-infinity probability density of the infinite convolution of uniform laws on [-a_j,a_j]. Thus phi is supported in [-1/2,1/2] and has ENTIRE bilateral Laplace transform
\[
\Phi(z)=\int_{\mathbb R}\phi(x)e^{zx}dx
=\prod_{j\ge1}\frac{\sinh(a_j z)}{a_j z},\qquad \Phi(0)=1 .
\tag{1}
\]
For t real write \(\phi_t(x)=\phi(x-t)\). The unchanged complete zeta Weil distribution W contains BOTH zeta pole orientations, all prime powers \(\Lambda(n)/\sqrt n\), the origin subtraction and the full gamma integral. Its original Hermitian form on complex smooth compact tests is
\[
Q(f,g)=W(f*\widetilde g),\quad \widetilde g(x)=\overline{g(-x)},\quad Q(f)=Q(f,f).
\tag{2}
\]
The source-exact explicit formula gives
\[
\boxed{
Q(f,g)=\sum_{\rho\in Z_{\mathrm{distinct}}}
m_\rho F_f(\rho)\overline{F_g(\tau\rho)},\quad
F_f(\rho)=\int_{\mathbb R} f(x)e^{(\rho-\frac12)x}\,dx,\quad
\tau\rho=1-\overline\rho .
}
\tag{3}
\]
The sum includes all actual nontrivial zeta zero LOCATIONS and positive integer multiplicities. For off-line rho the term is a genuinely complex cross-pairing, NOT a modulus square. On the critical line tau rho=rho, so it is positive. Every relevant zero series converges absolutely for the present fixed C-infinity compact test, by its rapid transform decay and unconditional zero counting.

Fix ANY four strictly ordered real nodes
\[
t_0<t_1<t_2<t_3,\qquad
0<t_3-t_0\le d_0:=10^{-9}.
\tag{4}
\]
For j=0,1,2,3 let \(g_j=[t_0,\ldots,t_j]_{t\mapsto\phi_t}\) be the usual Newton divided difference in the translation parameter, with \(g_0=\phi_{t_0}\). Thus, for example,
\[
g_1=\frac{\phi_{t_1}-\phi_{t_0}}{t_1-t_0},
\quad
g_2=\frac{[\phi_{t_1},\phi_{t_2}]-[\phi_{t_0},\phi_{t_1}]}{t_2-t_0},
\]
and \(g_3=([\phi_{t_1},\phi_{t_2},\phi_{t_3}]
-[\phi_{t_0},\phi_{t_1},\phi_{t_2}])/(t_3-t_0)\).
All denominators are NONZERO, and every g_j is again in the ORIGINAL smooth compact test domain.

**Theorem W4NC-1 (unconditional written analytic source result).** For every quadruple (4) and all complex a=(a_0,a_1,a_2,a_3),
\[
\boxed{
Q\left(\sum_{j=0}^3a_jg_j\right)
>
\frac{1}{200000000000}\sum_{j=0}^3|a_j|^2
\quad\text{whenever }a\ne0.
}
\tag{5}
\]
Consequently, for the ORIGINAL translate basis, every nonzero complex coefficient vector c satisfies
\[
\boxed{Q\left(\sum_{j=0}^3c_j\phi_{t_j}\right)>0.}
\tag{6}
\]
There is NO positive lower separation required among the four nodes. The constant (5) is in stable NEWTON COORDINATES, not in raw translate coefficient norm: near collisions the raw basis becomes nearly linearly dependent, so a uniform Euclidean raw Gram lower eigenvalue is NOT claimed.

**Span and base translation check.** Taking bilateral Laplace transforms, a linear relation among distinct phi_t becomes \(\Phi(z)\sum_jc_je^{zt_j}=0\). Since Phi(0)=1, the exponential polynomial vanishes near z=0; the Vandermonde derivatives at zero force each c_j=0. The triangular Newton change of basis has nonzero diagonal for distinct nodes, so both four-dimensional spans coincide. The exact original autocorrelation f*tilde f is invariant under a COMMON translation of f; hence Q is invariant under simultaneous node translation. We may center at t0=0 without assuming invariance of an INDIVIDUAL off-line zero evaluation.

## 2. Exact Hermite--Genocchi source evaluations (W4NC-2)

Let \(\Delta_j(z)=[t_0,\ldots,t_j]_{t\mapsto e^{zt}}\) for j=0,1,2,3. Because F_phi_t(rho)=Phi(z_rho)e^{z_rho t}, the literal original zero-side evaluation is
\[
\boxed{F_{\sum a_jg_j}(\rho)=\Phi(z_\rho)\sum_{j=0}^3a_j\Delta_j(z_\rho),}
\tag{7}
\]
after using t0=0. These are actual source transforms, not independently chosen coefficients of a surrogate polynomial.

The classical Hermite--Genocchi formula (de Boor 2005, §9) gives on the standard j-simplex \(\Sigma_j\), of volume 1/j!,
\[
\boxed{
\Delta_j(z)=z^j\int_{\Sigma_j}
e^{z\sum_{\ell=0}^j\lambda_\ell t_\ell}\,d\lambda .
}
\tag{8}
\]
For t0=0 and 0<t_j<=d0, \(|\Re z|<1/2\) gives the node-uniform evaluation bound
\[
|\Delta_j(z)|\le e^{d_0/2}\frac{|z|^j}{j!}.
\tag{9}
\]
For purely imaginary z=i gamma, the elementary inequality \(|e^{i\gamma u}-1|\le|\gamma|u\) yields
\[
\boxed{
|\Delta_j(i\gamma)-(i\gamma)^j/j!|
\le d_0\,\frac{|\gamma|^{j+1}}{j!}
\quad(j=0,1,2,3).
}
\tag{10}
\]
The j=0 error is actually zero. This proof is stable for arbitrarily UNEVEN nodes and as any individual gaps tend to zero. It uses actual real nodes, not a discretized sampling grid.

## 3. Strict lower singular value from the first two ACTUAL zero pairs (W4NC-3)

The externally certified first two nontrivial zeta zeros lie on the critical line and have ordinates
\[
14<\gamma_1<15,\qquad 21<\gamma_2<22.
\tag{11}
\]
Their reflected negative-ordinate zeros are also genuine zeros. Rigorously published finite-height zero verification (Platt--Trudgian 2021) proves ALL zeros below 3*10^12 are on the critical line. The first-two-zero weights carried by the ORIGINAL dyadic test are
\[
w_j=m_{\rho_j}|\Phi(i\gamma_j)|^2
\quad(j=1,2),
\qquad
\boxed{w_1>1/1000,\quad w_2>1/20000;}
\tag{12}
\]
the bounds follow from exact elementary sine-product estimates in WPSO-2 and W2TP-1. Multiplicities remain explicitly in w_j; simplicity is not an analytic assumption of this step.

At coalescence the four true low-zero evaluation rows in Newton coordinates have spectral points
\[
z\in\{+i\gamma_1,-i\gamma_1,+i\gamma_2,-i\gamma_2\}
\]
and columns \(1,z,z^2/2,z^3/6\). Call the complex 4-by-4 matrix V_0. Its confluent Newton/Vandermonde determinant has the EXACT magnitude
\[
\boxed{
|\det V_0|=
\frac{\gamma_1\gamma_2(\gamma_2^2-\gamma_1^2)^2}{3}
>\frac{14\cdot21\cdot(21^2-15^2)^2}{3}
=4572288.
}
\tag{13}
\]
The Frobenius norm satisfies, again with literal complex entries,
\[
\boxed{
\|V_0\|_F^2<
4\left(1+22^2+\frac{22^4}{4}+\frac{22^6}{36}\right)
=\frac{115505668}{9}
<13000000.
}
\tag{14}
\]

Let \(\sigma_1\ge\sigma_2\ge\sigma_3\ge\sigma_4>0\) be the singular values of V0. By the arithmetic--geometric mean inequality on the FIRST THREE squared singular values,
\(\sigma_1^2\sigma_2^2\sigma_3^2\le(\|V_0\|_F^2/3)^3\). Thus
\[
\boxed{
\sigma_{\min}(V_0)^2
=\frac{|\det V_0|^2}{\sigma_1^2\sigma_2^2\sigma_3^2}
>
\frac{27(4572288)^2}{(13000000)^3}
>\frac1{2000^2}.
}
\tag{15}
\]
This is an EXACT rational inequality, not a floating-point singular-value estimate.

Let V_t denote the 4-by-4 matrix of ACTUAL \(\Delta_j(z)\) at the same four TRUE zero ordinates for ANY nodes (4). By (10), each row difference has squared norm bounded by
\[
d_0^2\left(22^4+\frac{22^6}{4}+\frac{22^8}{36}\right).
\]
Four rows yield
\[
\boxed{
\|V_t-V_0\|_{\rm op}
\le\|V_t-V_0\|_F
\le2d_0\left(22^4+\frac{22^6}{4}+\frac{22^8}{36}\right)^{1/2}
<\frac1{10000}.
}
\tag{16}
\]
The final comparison is checked EXACTLY by squaring rational numbers in the adjacent audit. The singular-value perturbation inequality now gives, for every vector a in C^4,
\[
\boxed{
\|V_ta\|>
\left(\frac1{2000}-\frac1{10000}\right)\|a\|
=\frac1{2500}\|a\|
\quad(a\ne0).
}
\tag{17}
\]

The real zeta Weil kernel's verified-low-zero part consists of ACTUAL positive squared evaluations and contains at least the first two positive/negative ordinate pairs. Therefore, with weights (12),
\[
\boxed{
Q_{\rm low}\left(\sum_j a_jg_j\right)
\ge\min(w_1,w_2)\|V_ta\|^2
>\frac1{20000\cdot2500^2}\|a\|^2
=\frac1{125000000000}\|a\|^2
\quad(a\ne0).
}
\tag{18}
\]
All other externally certified low zeros add additional NONNEGATIVE contributions. The low part is not a synthetic positive comparator; it is the actual zero-side contribution from genuine proved critical-line zeros.

## 4. Every unverified zeta zero: the complete signed source error (W4NC-4)

Put \(H=2^{41}=2199023255552<3\cdot10^{12}\). Split the original Q at this external verified height:
\[
Q=Q_{\rm low}+Q_{\rm high}.
\tag{19}
\]
The high part contains EVERY ACTUAL nontrivial zeta zero with \(|\Im\rho|\ge H\), with its FULL complex location, true multiplicity and reflected \(\tau\rho\) pairing; no assertion that these unknown zeros lie on the critical line is made.

For \(z=z_\rho\), the true reflected point has shifted coordinate \(-\overline z\), with the SAME modulus |z|. The entire dyadic transform obeys
\(|\Phi(-\overline z)|=|\Phi(z)|\), because phi is REAL and EVEN. From (7)--(9) and ordinary finite-dimensional Cauchy--Schwarz,
\[
\left|F_{\sum a_jg_j}(\rho)\right|
\le|\Phi(z)|e^{d_0/2}
\left(\sum_{j=0}^3\frac{|z|^{2j}}{(j!)^2}\right)^{1/2}\|a\|.
\]
The reflected evaluation enjoys the identical bound. Taking the absolute value only AFTER preserving the original complex source pairing (3) gives
\[
\boxed{
|Q_{\rm high}(\sum a_jg_j)|
\le e^{d_0}\|a\|^2
\sum_{|\Im\rho|\ge H}m_\rho|\Phi(z_\rho)|^2
\left(1+|z_\rho|^2+\frac{|z_\rho|^4}{4}+\frac{|z_\rho|^6}{36}\right).
}
\tag{20}
\]

The already-published WDT-2 theorem bounds the TOTAL actual zero weight (including multiplicity) in EVERY dyadic block \(2^n\le|\Im\rho|<2^{n+1}\), for n>=6:
\[
\boxed{
\sum_{\substack{2^n\le|\gamma_\rho|<2^{n+1}}}
m_\rho|\Phi(z_\rho)|^2
<2^{-n^2+5n+3}.
}
\tag{21}
\]
This uses only the classical unconditional zero-count estimate and the TRUE dyadic bump's uniform complex-strip transform decay. It is a proof of an INFINITE tail bound, not a finite sampling claim.

For n>=41 we have \(|z_\rho|^2<2^{2n+3}\) and |z_rho|>=2^n>=64. Hence
\[
1+|z|^2+\frac{|z|^4}{4}+\frac{|z|^6}{36}
\le4|z|^6<2^{6n+11}.
\]
Since \(e^{d_0}<2\), (20)--(21) bound the nth block by
\[
2^{-n^2+5n+3}\cdot2^{6n+12}
=2^{-n^2+11n+15}\|a\|^2.
\tag{22}
\]
At n=41 this is 2^-1215; successive terms decrease by a ratio of at most \(2^{10-2n}\le2^{-72}\). Summing the ENTIRE unknown-height tail gives
\[
\boxed{
|Q_{\rm high}(\sum_j a_jg_j)|
<
\frac{2^{-1215}}{1-2^{-72}}\|a\|^2
<2^{-1214}\|a\|^2.
}
\tag{23}
\]
All possible unseen off-line zeros remain accounted for, and the estimate is for the ACTUAL signed reflected source, not a positive model.

## 5. Strict original Weil positivity, finite exact check and falsification (W4NC-5)

Combine (18) with the complete error (23). For every nonzero a,
\[
\boxed{
Q\left(\sum_{j=0}^3a_jg_j\right)
>
\left(\frac1{125000000000}-2^{-1214}\right)\|a\|^2
>
\frac1{200000000000}\|a\|^2.
}
\tag{24}
\]
The last comparison is EXACT rational arithmetic. Because the Newton basis is invertibly related to the four distinct original translates, (24) establishes W4NC-1 and strict rank-four Gram positivity for arbitrary nonzero COMPLEX coefficients, including arbitrarily uneven near-collisions.

**Reproducible exact-rational receipt:** Companion file WeilFourNearCollisionConstants.py in the SAME canonical mathematics directory, 2392 UTF-8 bytes, Git blob ef9292c0154158d033b1cbf6b741e004b47a875b and SHA-256 998a16e2168610f91c03f009b1ae3c4515ed12992ddad1b91fc6e15e0ecca806. ACTUAL local command:
\[
\texttt{python /mnt/data/w4nc/WeilFourNearCollisionConstants.py}
\]
Python 3.13.5, exit code 0, result WEIL_4_NEAR_COLLISION_RATIONAL: PASS. The script checks the exact determinant 4572288, Frobenius upper 115505668/9, \(\sigma_{\min}(V_0)>1/2000\), the four-row perturbation bound <1/10000, low weight/margin 1/125000000000, high block exponent -1215 with ratio<=2^-72, complete high sum <2^-1214 and the final strictly positive 1/200000000000 margin. It uses standard fractions.Fraction ONLY for mathematical assertions, and its publication was read back with exactly the local git hash-object SHA. The audit is FINITE constant verification; it does NOT independently prove the Hermite--Genocchi analytic identity, original Weil source formula, infinite dyadic zero bound, or external zeta-zero certification.

**Primary papers and source-local provenance:**
- Dave Platt and Tim Trudgian, *The Riemann hypothesis is true up to \(3\cdot10^{12}\)*, Bull. Lond. Math. Soc. **53** (2021), 792--797, DOI 10.1112/blms.12460: external certified finite-height truth that the actual first two zeros and every other zero below height H lie on the critical line. This is NOT RH at infinite height.
- Carl de Boor, *Divided Differences*, Surveys in Approximation Theory **1** (2005), 46--69, §9 ("Genocchi--Hermite"), https://pages.cs.wisc.edu/~deboor/sat/papers/2/2.pdf: classical simplex integral proof of the divided-difference interpolation identities (8)--(10). No novelty in these interpolation tools is claimed.
- M. Suzuki, *Weil's quadratic form via the screw function*, arXiv:2606.09096v3 (2026), p. 1: original full conductor-one arithmetic Weil distribution; WFDG-1/2 in the repository supplies the exact source and reflected zero identity. WDT-1/2 gives the unconditional *complete* high-zero transform tail. WPSO-2 and W2TP-1 give the first two true zero-weight lower bounds. W3NC-1 proves the earlier arbitrary near-coincident rank-three case at a wider diameter 10^-5.

**Hostile checks and scope limitations:**
1. The diameter 10^-9 is FIXED and deliberately small; no result is claimed for larger arbitrary rank-four configurations. The stable divided-difference margin is NOT a uniform Euclidean raw translate-Gram eigenvalue, which necessarily vanishes as nodes collide.
2. A FOUR-by-FOUR source Gram is not a certificate that all larger matrices, all compact tests, or arbitrary support widths have zero negative index. Many more negative directions could still appear in other tests. The WFDG global negative-index return quantifies over ALL rational grids and sizes; rank four discharges NONE of those infinite rank/window quantifiers.
3. No false inference from an external verified zero height: every higher zero remains in Q_high with its actual COMPLEX horizontal position and signed tau pairing. The error bound is small for this particular derivative/bump family, not uniformly for arbitrary smooth functions.
4. All FOUR first-two-pair evaluation rows are used: a single conjugate zero pair supplies only two complex rows and cannot control four independent complex Newton coefficients. The actual four-point Vandermonde determinant is the core new algebraic step.
5. The numerator/denominator in the Newton differences remain well-defined ONLY for distinct shifts, and their complex source evaluations have a stable limit. Coincident nodes require explicit confluent derivative tests; nothing is deduced for a raw basis with duplicated nodes.
6. No conductor, parity or character-phase extension to primitive Dirichlet GRH is asserted; the theorem is explicitly about conductor-one zeta. Its source-return to the original prime powers, gamma and BOTH zeta poles is by the full exact explicit formula (3), not by a truncated Euler product or an unsupported transfer.

**First unresolved arithmetic premise:** Establish an ALL-SUPPORT, ALL-RANK source-exact sign or finite-negative-index bound on the original zeta Weil quadratic form, and the corresponding true primitive Dirichlet conductor/parity/dual-character forms, without assuming RH/GRH or universal zero certificates. Rank-four near-collision positivity is a finite-dimensional, finite-diameter statement and gives no global negative-index bound. Lean elaboration/kernel replay/axiom audit and independent analytical review NOT_RUN; novelty UNASSESSED. No Noe proof automation, cross-chat messaging, scheduler or browser-chat orchestration was invoked; ordinary authorized mathematical source authoring is separate from that unavailable workflow.
