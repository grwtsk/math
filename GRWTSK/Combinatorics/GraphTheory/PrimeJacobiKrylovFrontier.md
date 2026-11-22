# Arithmetic Krylov frontier, positive Hankel determinants and a determinate spectral measure

**Authors:** grwtsk contributors.  
**Maintained Lean candidate:** [PrimeJacobiKrylovFrontier.lean](PrimeJacobiKrylovFrontier.lean).  
**Mathematical consumer:** [grwtsk/math #1849](https://github.com/grwtsk/math/issues/1849), independent prime-Jacobi Hilbert–Pólya research.  
**Source:** actual primes \`p_n = Nat.nth Nat.Prime n\` from [PrimeKnotJacobiArithmetic.lean](PrimeKnotJacobiArithmetic.lean); [Gram identity](PrimeJacobiMomentGram.lean); [parity](PrimeJacobiParitySquare.lean).  
**Toolchain:** Lean v4.34.1, Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.  
**Status:** The Lean file contains proof candidates; local elaboration, transitive axiom audit, fresh-process kernel replay, and independent Lean checker **NOT_RUN** (Lean/Lake not installed in the available environment). Mathematical arguments below are separate from Lean verification. No zero ordinates or Alpöge RH theorem are imported.

## Prime-Krylov support and determinant inverse

Define the prime offdiagonal Jacobi operator on finitely supported sequences by
\[
(Ju)_0=p_0u_1,\qquad (Ju)_n=p_{n-1}u_{n-1}+p_nu_{n+1}\quad(n\ge1).
\]
Each \(J^je_0\) is supported at indices \(0,\ldots,j\). Its \(j\)-th coordinate is
\[
b_j=\prod_{r=0}^{j-1}p_r\quad(b_0=1).
\]

**Proof:** one application of \(J\) moves by one edge; induction proves support. To reach vertex \(j\) from vertex \(0\) in exactly \(j\) steps one must take every step outward, giving exactly the displayed product. Thus the \(N\)-by-\(N\) root Krylov matrix \(V_{ij}=(J_N^je_0)_i\) has no entries below its diagonal, and
\[
\det V_N=\prod_{j=0}^{N-1}b_j>0.
\]
The moment Gram matrix \(H_N=(m_{i+j}^{(N)})_{0\le i,j<N}\), \(m_k^{(N)}=\langle e_0,J_N^ke_0\rangle\), satisfies \(H_N=V_N^\mathsf{T}V_N\). Consequently,
\[
D_N:=\det H_N
=\left(\prod_{j=0}^{N-1}b_j\right)^2
=\prod_{r=0}^{N-2}p_r^{2(N-1-r)}>0 .
\]
Since the same initial prime bonds occur in every finite section, the separate finite-section determinants obey
\[
\boxed{D_{n+2}D_n=p_n^2D_{n+1}^2,\qquad
p_n^2=\frac{D_{n+2}D_n}{D_{n+1}^2}.}
\]
This source-derived theorem is the formal target of \`bond_sq_from_hankel_determinants\`. The equivalence of these finite-section determinants to the principal minors of **one infinite** root-moment sequence requires the explicit moment-stability lemma and is still a formalization obligation. All the equalities hold mathematically by the finite-walk construction. The general inverse Jacobi mechanism is classical; source-specific novelty is not asserted. See Gerald Teschl, *Jacobi Operators and Completely Integrable Nonlinear Lattices* (AMS, 2000), Chapters 2–3.

## New arithmetic moment-growth estimate

**Proposition (elementary).** For the infinite finite-support Jacobi action and \(n\ge1\),
\[
\boxed{0<m_{2n}=\|J^ne_0\|_2^2\le 4^np_{n-1}^{2n}.}
\]

**Proof.** Every n-step path from 0 has at most two choices at each step; every edge it traverses is among \(0,\ldots,n-1\). The primes increase strictly, so the modulus of each path weight is at most \(p_{n-1}^n\). As every path weight is positive, the \(\ell^1\) norm of its endpoint-sum vector is at most \(2^np_{n-1}^n\). Its \(\ell^2\) norm is no larger. The unique outward n-step walk has positive weight, giving the strict lower inequality. Squaring gives the claimed bound. \(\square\)

The reciprocal-root inequality is therefore
\[
m_{2n}^{-1/(2n)}\ge\frac1{2p_{n-1}}.
\]
The Euler–Erdős divergence of \(\sum_p1/p\), available at the pinned Mathlib source as \`Nat.Primes.not_summable_one_div\` and reindexed in \`PrimeKnotJacobiArithmetic.not_summable_reciprocal_primeAt\`, implies
\[
\sum_{n\ge1}m_{2n}^{-1/(2n)}=\infty.
\]

## Hamburger–Carleman consequence: a unique real root measure

For every real polynomial \(P(t)=\sum_{j=0}^{d}c_jt^j\),
\[
\sum_{i,j=0}^{d}c_ic_jm_{i+j}
=\left\|\sum_{j=0}^{d}c_jJ^je_0\right\|_2^2\ge0.
\]
The moment sequence is positive semidefinite and \(m_0=1\), so the classical Hamburger existence theorem gives a probability measure \(\mu_J\) on \(\mathbb R\) realizing all the moments. The Carleman divergence proved above makes that measure **unique** (see K. Schmüdgen, *The Moment Problem*, Theorem 4.3; A. D. Sokal, *The Euler and Springer Numbers as Moment Sequences*, Theorem 2.3).

The parity involution \(\Gamma u(n)=(-1)^nu(n)\) satisfies \(\Gamma J=-J\Gamma\) and \(\Gamma e_0=e_0\). Therefore \(m_{2r+1}=0\) for all r. The reflected measure \(\mu_J(-\,\cdot)\) has the same moments, and uniqueness implies
\[
\boxed{\mu_J(B)=\mu_J(-B)\quad\text{for all Borel }B\subseteq\mathbb R.}
\]
These are unconditional mathematical consequences of classical Hamburger and Carleman theorems plus the exact prime walk construction, not reported Lean/kernel proofs. The infinite \(\ell^2\) closure and an actual spectral-projection formalization remain open in Lean.

## Independent finite falsifiers and checks

A local Python 3 exact-integer continuation checked the moment bound and vanishing of all odd moments for **48** finite prime-Jacobi sections, with last checked bond \(223\). Results: **PASS 48/48**. The existing independent [prime-power checker](../../../scripts/verify_prime_jacobi_prime_power_readout.py) checks the first 12 inverse bonds, 14 Hankel determinant sizes, source-preserving arithmetic through \(X=37\), and bond perturbations. Finite checking does not prove the all-n statement or replace Lean compilation.

For a hostile structural control, replace any positive prime bond by a different positive value. Matrix symmetry, chiral parity, Gram positivity and the determinant-recovery mechanism persist. The recovered bond is then *not* the original prime, and a direct sum over recovered prime powers cannot be identified with the actual von Mangoldt series without checking primality and completeness. This illustrates why abstract Jacobi positivity or determinacy is not a substitute for the source-specific analytic inequality required by the Riemann hypothesis.

## Connection to Alpöge and exact remaining obligations

The 21 November 2026 Rubinstein zeta-function working exposition relates RH to a one-sided estimate for a smoothed prime-power statistic and states that its central inequality (M) is imported from Alpöge's Lean development. The [arithmetic-return theorem](PrimeJacobiArithmeticReturn.md) recovers this statistic exactly from sufficiently many finite root moments, but this reconstruction does **not** derive any bound for the statistic.

The independent prime-Jacobi Hilbert–Pólya program still needs either:

1. A genuinely source-specific, all-scale estimate on its moments implying the required signed prime-power inequality, with the exact error terms, or
2. A justified analytic determinant/trace identification with \(\xi(1/2+it)\), including gamma terms, poles, multiplicities and spectral-type hypotheses.

In particular, **a unique self-adjoint operator and unique spectral measure do not establish pure point spectrum or the right zero divisor**. The full operator-zeta spectral correspondence and the original \`RiemannHypothesis\` theorem remain open for this independent route.

**Remaining formalization steps:** execute pinned Lean on the frontier candidate, repair any elaboration errors; prove finite-section moment stability; formalize the moment growth estimate and Carleman criteria; audit transitive axioms; replay original-source analytic obligations. No new operational Noe task or automatic scheduler authorization is inferred.
