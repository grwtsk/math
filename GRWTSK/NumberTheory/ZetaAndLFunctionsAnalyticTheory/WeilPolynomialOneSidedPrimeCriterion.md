# A one-sided arithmetic criterion for finitely many off-line zeta zeros

Local source attribution: grwtsk contributors. Edition 1, 2026-11-12. MSC2020: 11M26 (analytic theory of zeta and L-functions), 42A82 (positive definite functions), 30B50 (Dirichlet and other series).

**Scope and evidence:** WRITTEN_ANALYTICAL_ARGUMENT; Lean elaboration NOT_RUN; kernel replay NOT_RUN; transitive axiom audit NOT_RUN; certified computation NOT_RUN; independent analytic review NOT_RUN; novelty UNASSESSED. These are source-level proofs relying on classical explicit-formula and zero-counting inputs, not formally accepted Lean theorems. Finiteness of the actual off-critical zeros, RH, and primitive Dirichlet GRH remain open.

**Canonical dependencies and consumer:** The exact zeta Weil distribution and the single fixed bump of [WeilFixedBumpNegativeDepth.md](WeilFixedBumpNegativeDepth.md), statements WFDG-1--WFDG-5, followed by the polynomial filter and prime return of [WeilPolynomialDefinitization.md](WeilPolynomialDefinitization.md), WPD-1--WPD-2. This note gives the cheaper *one-sided* replacement for the unproved arithmetic obligation WPD-O1 / WFDG-O1 and a compactness formulation suited to mathematical falsification. It does NOT prove the required arithmetic bound.

Source inspected on grwtsk/math main at 194093839e3f2bff2f2767fcf415dc12ee4d21d4. Lean toolchain leanprover/lean4:v4.34.1, mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. No imports or pins are changed. Coordination: issue #1801, scope comment 6836025388. Canonical Noe skill unavailable at grwtsk/noeaaeue/main efd7b82d566aca9fd1953a3a42323d9eb1a0bcbc (404); dependent automation NOT_RUN.

## 1. Exact objects and pole conventions

Let W be the full zeta Weil distribution of Suzuki [S], p. 1, with the two pole orientations, every prime power, the origin term, and the complete archimedean gamma integral. All zeta zeros here refer to the analytically continued function in the open critical strip. Let phi be the real even smooth fixed bump with support in [-1/2,1/2], bilateral Laplace transform Phi, and
\[
\Phi(z)\ne0 \quad \text{whenever }\Re z\ne0.
\]
Set h=phi*phi, K(t)=W(h(.-t)). For a nonzero real polynomial P put
\[
h_P=P(\partial)P(-\partial)h,\qquad K_P(t)=W(h_P(.-t)).
\tag{1}
\]
Both h and h_P are real even smooth functions supported in [-1,1]. The exact zero expansion is
\[
K_P(t)=\sum_{\rho\in Z_{\rm distinct}}
m_\rho\,\Phi(z_\rho)^2P(z_\rho)P(-z_\rho)e^{z_\rho t},
\quad z_\rho=\rho-\tfrac12 .
\tag{2}
\]
Its coefficients, and the coefficients of every derivative, are absolutely summable (rapid uniform vertical decay times the classical zeta zero count). The coefficient is a COMPLEX square, not a modulus square, off the line. We retain each distinct zero once with multiplicity m_rho as a positive weight.

For t>1, the exact arithmetic identity from WPD-2 is
\[
K_P(t)=-D_P(t)-G_P(t), \tag{3}
\]
\[
D_P(t)=\sum_{n\ge2}\frac{\Lambda(n)}{\sqrt n}
h_P(\log n-t)-M_Pe^{t/2},\qquad
M_P=P(\tfrac12)P(-\tfrac12)\Phi(\tfrac12)^2,
\tag{4}
\]
\[
G_P(t)=\int_{-1}^1 h_P(v)
\frac{e^{-5(t+v)/2}}{1-e^{-2(t+v)}}\,dv,\qquad
|G_P(t)|\le\|h_P\|_1
\frac{e^{-5(t-1)/2}}{1-e^{-2(t-1)}}.
\tag{5}
\]
For every fixed t, only prime powers in exp(t-1)<=n<=exp(t+1) occur. Both pole terms have been retained until exact cancellation with the gamma leading term and the main term in D_P. Signed phases are not discarded: differentiation can make h_P change sign and G_P need NOT be nonnegative. The bound (5) is uniform for t>=2.

Zeta has no nontrivial REAL zero in (0,1): the alternating eta series is positive there, while (1-2^(1-s)) is negative; hence zeta(s)<0. Accordingly (2) has NO pole on the real positive w-axis after its Laplace transform; every off-line zeta zero is in a genuine four-element quartet.

## 2. WPOS-1: Landau's one-sided oscillation principle

**Lemma (classical Landau singularity principle, with proof).** Suppose g:[T,infinity)->[0,infinity) is continuous, T>=0, and of exponential order. Write sigma_c for the abscissa of convergence of its Laplace integral
\[
F(w)=\int_T^\infty g(t)e^{-wt}\,dt.
\]
If sigma_c is finite, F must be singular at the REAL point w=sigma_c.

**Proof.** Suppose F is holomorphic in a neighborhood of sigma_c. Choose sigma_0>sigma_c sufficiently close that the Taylor series about sigma_0 converges on a disk reaching some real sigma_1<sigma_c. Differentiating the convergent integral for sigma_0 gives
\[
(-1)^k F^{(k)}(\sigma_0)
=\int_T^\infty t^k g(t)e^{-\sigma_0t}\,dt\ge0.
\]
For z=sigma_0-sigma_1>0 within the Taylor radius, the Taylor expansion has nonnegative terms. Tonelli's theorem gives
\[
F(\sigma_1)
=\sum_{k=0}^\infty\frac{z^k}{k!}
\int_T^\infty t^kg(t)e^{-\sigma_0t}\,dt
=\int_T^\infty g(t)e^{-\sigma_1t}\,dt<\infty,
\]
contradicting the definition of sigma_c. An eventual-sign hypothesis is reduced to this case by discarding an initial finite interval, whose Laplace contribution is entire. QED.

**Theorem (two-sided exponential oscillation).** Define
\[
\delta_P=\sup\{\Re z_\rho:\Re z_\rho>0,\
\Phi(z_\rho)^2P(z_\rho)P(-z_\rho)\ne0\},
\tag{6}
\]
with supremum of the empty set defined as 0. For every 0<=c<delta_P,
\[
\limsup_{t\to\infty}e^{-ct}K_P(t)=+\infty,\quad
\liminf_{t\to\infty}e^{-ct}K_P(t)=-\infty;
\tag{7}
\]
the same two statements hold for D_P(t).

**Proof.** Assume, for contradiction, that K_P(t)>=-C e^{ct} eventually. Increase C to a nonnegative constant and define g(t)=K_P(t)+C e^{ct}>=0 on [T,infinity). By the absolute convergence of (2), g is of exponential order. Initially, for Re w>max(1/2,c),
\[
\int_T^\infty g(t)e^{-wt}\,dt
=\sum_\rho\frac{a_{\rho,P}}{w-z_\rho}
+\frac{C}{w-c}-E_T(w),\quad
a_{\rho,P}=m_\rho\Phi(z_\rho)^2P(z_\rho)P(-z_\rho),
\tag{8}
\]
where E_T(w) is the entire integral of K_P(t)+C e^{ct} over [0,T]. The right side is meromorphic on the plane: the sum converges normally off its isolated poles. It is analytic at every REAL w>c, since zeta has no nontrivial real critical-strip zeros and the only added real pole is at w=c.

There is an uncancelled pole z_rho with Re z_rho>c, by the definition of delta_P. If g's Laplace abscissa sigma_c(g) were <=c, its holomorphic integral in Re w>c would contradict that nonreal pole by analytic continuation. Thus sigma_c(g)>c and is finite. Landau's lemma forces a singularity at the REAL point sigma_c(g)>c, contradicting the meromorphic expression (8), which is analytic there. Therefore K_P(t) is not eventually bounded below by any C e^{ct}. Applying the identical argument to -K_P proves it is not eventually bounded above by C e^{ct}; this yields both limits in (7). Finally D_P=-K_P-G_P and e^{-ct}G_P(t)->0 by (5), so both limits also hold for D_P. QED.

No rightmost off-line zero, individual exponential dominance, numerical ordinate separation, or assumption of noncancellation of real oscillatory sums is used. The real-axis absence of zeta zeros is essential: a positive exponential term could otherwise invalidate the one-sided conclusion.

**Useful strip version.** If for some c>=0 and fixed P,
\[
D_P(t)\le C e^{ct}\qquad(t\ge2), \tag{9}
\]
then EVERY zero with Re(z_rho)>c satisfies P(z_rho)P(-z_rho)=0. For 0<=c<1/2 this follows from (7); for c>=1/2 there are no such zeros. By the functional-equation symmetry, (9) allows at most floor(deg(P)/2) distinct exceptional quartets with |Re(rho)-1/2|>c. No such estimate (9) with c<1/2 is claimed from known unconditional prime bounds.

## 3. WPOS-2: one scalar inequality is equivalent to finite exceptions

**Theorem.** Let M count distinct off-line zeta quartets (possibly infinity). The following are equivalent:
\[
M<\infty
\quad\Longleftrightarrow\quad
\exists 0\ne P\in\mathbb R[X],\ \exists C\in\mathbb R:
D_P(t)\le C\text{ for all }t\ge2.
\tag{10}
\]
For finite M, the minimum degree among all such P is 2M, the same distinct-pair negative index counted in WFDG-4. In particular, degree zero or one implies RH.

**Proof.** If M<infinity, take P(X)=prod_j (X-z_j)(X-conj(z_j)), with z_j one positive-real, positive-imaginary coordinate of each quartet. WPD-1 proves K_P is a nonnegative-weight sum of critical-line characters, hence positive definite and bounded. Equation (5) makes G_P bounded for t>=2, so D_P=-K_P-G_P is bounded above.

Conversely, (10) and (5) imply K_P(t) is bounded below for t>=2. WPOS-1 with c=0 forces delta_P=0, so at every off-line zero P(z_rho)P(-z_rho)=0. A real polynomial has conjugate roots in pairs; for each quartet it must have at least one of the two distinct conjugate pairs +/- z_j, +/- conj(z_j) as roots. Hence 2M<=deg P, proving both finiteness and the lower degree bound. The forward polynomial has degree 2M, proving minimality. QED.

**Unfiltered corollary.** Taking P=1,
\[
\mathrm{RH}\iff \exists C\ \forall t\ge2:
\sum_{n\ge2}\frac{\Lambda(n)}{\sqrt n}h(\log n-t)
\le \Phi(1/2)^2 e^{t/2}+C.
\tag{11}
\]
This is a classical Landau-type one-sided oscillation consequence in an exact fixed smoothing, not a claimed new proof of RH. Both sides of (11) concern the actual prime-power arithmetic source.

On the actual zeta divisor, WPD-1 and (10) together show that, for a FIXED real P, the following three conditions are equivalent: K_P bounded below; K_P bounded; K_P positive definite. This is highly source-specific, not true for arbitrary real even kernels.

## 4. WPOS-3: exact finite rational-grid feasibility

Fix a degree cap r>=0 and let phi_j=(-partial_x)^j phi, 0<=j<=r. Set tilde(f)(x)=f(-x) for these real functions, and
\[
h_{jk}(v)=\frac12\left((\phi_j*\widetilde{\phi_k})(v)
+(\phi_k*\widetilde{\phi_j})(v)\right).
\]
Each h_jk is REAL, EVEN, smooth and supported in [-1,1]. Define the real symmetric (r+1)x(r+1) matrix, for t>=2,
\[
A^{(r)}_{jk}(t)=
\sum_{n\ge2}\frac{\Lambda(n)}{\sqrt n}h_{jk}(\log n-t)
-e^{t/2}\int_{-1}^1 h_{jk}(v)e^{v/2}\,dv .
\tag{12}
\]
Every entry is an EXACT finite prime-power sum plus a stated pole main term. No numerical rounding or approximate quadrature is asserted.

For a real coefficient vector a=(a_0,...,a_r) let P_a(X)=sum_(j=0)^r a_j X^j. Since phi_{P_a}=sum_j a_j phi_j, polarization and (4) give the exact equality
\[
D_{P_a}(t)=a^\mathsf T A^{(r)}(t)a.
\tag{13}
\]
The entries are continuous functions of t. For fixed t only finitely many prime powers occur; local finiteness as t varies follows from the compact supports.

Enumerate the rationals in [2,infinity) as q_1,q_2,...; let
\[
S^r=\{a\in\mathbb R^{r+1}:\sum_{j=0}^r a_j^2=1\}.
\]

**Theorem (uniform finite feasibility).** For every fixed r>=0,
\[
\boxed{
M\le\lfloor r/2\rfloor
\iff
\exists C\in\mathbb R\ 
\forall N\ge1\ 
\exists a^{(N)}\in S^r\
\forall j\le N:\ 
(a^{(N)})^\mathsf T A^{(r)}(q_j)a^{(N)}\le C.
}
\tag{14}
\]

**Proof.** If M<=floor(r/2), use the degree-2M polynomial from WPOS-2, regarded as an element of R[X] of degree <=r; normalize its nonzero coefficient vector to S^r. Quadratic homogeneity preserves a finite global bound C on D. The same normalized vector works at every rational shift, hence every prefix.

Conversely fix C and suppose every finite prefix is feasible. For each N let
\[
F_N=\{a\in S^r: a^\mathsf T A^{(r)}(q_j)a\le C\text{ for }1\le j\le N\}.
\]
The F_N are nonempty nested closed subsets of the compact unit sphere S^r, so their intersection is nonempty. Choose a in that intersection. Continuity of (13) in t and the density of rational q_j give D_{P_a}(t)<=C for every real t>=2. The normalization implies P_a!=0. WPOS-2 then implies M<=deg(P_a)/2<=r/2. QED.

**Falsification form.** Conditional on M>floor(r/2), for every proposed finite C there exists a FINITE N such that F_N is empty. A certified proof of F_N emptiness would falsify that particular (r,C) claim. It would NOT establish M>r/2 without eliminating all possible C, and a finite number of successful feasible prefixes does not prove the universal N quantifier. The compactness argument establishes a logical equivalence; it does not construct the missing family of certificates.

**Nontrivial normalization:** Without the unit sphere, a=0 would satisfy every inequality with C>=0 for every finite prefix, making the condition vacuous. Without a single C shared across ALL prefixes, any fixed finite prefix could be accommodated by increasing C, giving no global conclusion. Both uniformity requirements are essential.

## 5. Unresolved arithmetic step and comparison

The first unresolved substantive premise is to prove for some fixed r and C that every finite rational-prefix quadratic feasibility system in (14) is nonempty, using the ACTUAL matrix entries (12). Neither such uniform feasibility nor the one-sided bound (10) has been proved. No epsilon-dependent r, window-dependent C, prime truncation, or spectral approximation is silently substituted.

This improves the **form** of the missing arithmetic obligation from all complex positive-semidefinite Gram inequalities (WPD-O1) to a single one-sided bound or, equivalently, uniform feasibility of finite real quadratic constraints. It does NOT reduce the mathematical truth required for a proof of finite exceptions.

**Paper comparisons and source-local provenance:**
- WPOS-1: Landau's classical singularity theorem for nonnegative Laplace transforms (e.g. I. Gyori, G. Ladas, L. Pakula, *Oscillation theorems for delay differential equations via Laplace transforms*, Canadian Mathematical Bulletin **33** (1990), Lemma 1, citing Widder; https://doi.org/10.4153/CMB-1990-053-4). Its application to off-real zeta poles is a standard oscillation mechanism, so no novelty is claimed.
- WPOS-2: directly consumes the actual, full zeta Weil distribution as printed in M. Suzuki, *Weil's quadratic form via the screw function*, arXiv:2606.09096v3 (23 September 2026), pp. 1--2, and the WFDG-1 / WPD-1--2 source-exact bump and polynomial return. This is not a new proof that P exists.
- WPOS-3: elementary compactness of a Euclidean sphere plus continuity of actual finite prime-power entries; not derived from the determinant of a Hilbert--Polya model. Consumer: explicit semialgebraic finite-feasibility formulation of WPD-O1. Finite-dimensional certification principles are discussed by S. M. Rump, *Verification methods: rigorous results using floating-point arithmetic*, Acta Numerica (2010), pp. 287--449, especially finite-dimensional interval/eigenvalue sections; a verified finite system is not an infinite universal certificate.
- E. Bombieri, *Remarks on Weil's quadratic functional in the theory of prime numbers, I*, Rendiconti Lincei 11 (2000), Theorem 8, printed p. 213, distinguishes distinct pairs in finite matrix inertia; its limiting results assume finiteness rather than supply it. https://www.bdim.eu/item?id=RLIN_2000_9_11_3_183_0.
- J. Stewart, *Functions with a finite number of negative squares*, Canadian Mathematical Bulletin 15 (1972), 399--410, DOI 10.4153/CMB-1972-073-9; conceptual finite-negative-square prior art. No originality assessment has been completed.

**Hostile checks:** (i) A synthetic single quartet yields two negative directions and exponentially unbounded one-sided oscillation for unfiltered K, while a quadratic polynomial annihilates it; no actual zeta counterexample is asserted. (ii) A positive real exponential added to an abstract kernel may remove the one-sided oscillation, so zeta's absence of real critical-strip zeros is indispensable. (iii) Coefficient vectors converging to zero would make finite feasibility trivial, hence the unit sphere. (iv) Arbitrary changing coefficients at successive windows do not imply a global polynomial WITHOUT compactness and one uniform C. (v) A fixed rational grid spacing alone may alias complex frequencies; (14) uses ALL rational shifts. (vi) Multiplicities are weights and do not change the degree.

**No unconditional completion:** RH, zeta finite exceptions, and primitive Dirichlet GRH remain UNPROVED. This edition contains no Lean declarations, axiom additions, imported change, or test results. All formal and independent checks NOT_RUN; novelty UNASSESSED.
