# All-order prime-Jacobi orthogonal-polynomial coefficient envelope

**Consumer:** `PrimeJacobiHankelInverse.lean`, prime-only conditioned moment inverse, grwtsk/math #1850.  
**Source:** pinned `PrimeKnotJacobiArithmetic.lean` (blob `2759dc76c224e3214e8a1c8d9abd054f37edacab`); Mathlib `Nat.add_two_le_nth_prime` in `NumberTheory/PrimeCounting.lean`; `Nat.nth_strictMono` on actual prime ordinals.  
**New candidate:** `PrimeJacobiCoefficientEnvelope.lean` with seven source-specific scalar and prime-gap theorem candidates. **Lean compilation/axioms/kernel:** NOT_RUN.

Set \(p_n=\mathrm{Nat.nth}\ \mathrm{Nat.Prime}\ n\). The genuine prime bonds obey
\[
n+2\le p_n\le p_{n+1}.
\]

Consider the orthonormal Jacobi polynomials \(P_n(t)\), defined by
\[
P_0(t)=1,\qquad P_1(t)=\frac t{p_0},\qquad
p_{n+1}P_{n+2}(t)=tP_{n+1}(t)-p_nP_n(t).
\]

Writing \(T_n=\sum_j|[t^j]P_n(t)|\), the triangle inequality and multiplication by \(t\) give
\[
T_0=1,\quad T_1=1/p_0,\quad
T_{n+2}\le\frac{T_{n+1}}{p_{n+1}}
+\frac{p_n}{p_{n+1}}T_n.
\]

Define the *scalar envelope* \(U_0=1\), \(U_1=1/p_0\), \(U_{n+2}=U_{n+1}/p_{n+1}+(p_n/p_{n+1})U_n\). By induction \(0\le T_n\le U_n\). The recurrence is defined only from source arithmetic primes, not fitted orthogonal-polynomial data.

**All-order theorem.** For every natural \(n\),
\[
\boxed{U_n\le\frac{n+2}{2}.}\tag{D}
\]

**Proof:** \(U_0=1\); \(U_1=1/p_0=1/2\). Suppose \(U_n\le(n+2)/2\) and \(U_{n+1}\le(n+3)/2\). Since \(p_{n+1}\ge n+3\), the first recurrence term is at most \(1/2\). Since \(0<p_n/p_{n+1}\le1\), the second term is at most \((n+2)/2\). Hence \(U_{n+2}\le(n+3)/2\le(n+4)/2\), proving (D). Every term is nonnegative by induction.

Consequently, for any fixed \(k\) and \(n<k\),
\[
T_n\le U_n\le(n+2)/2\le(k+1)/2.
\]
Together with the exact inverse coefficient Gram in `PrimeJacobiHankelInverse`, this yields the *mathematical* source-specific inverse Hankel bound
\[
\boxed{\|H_k^{-1}\|_\infty\le\frac{k(k+1)^2}{4}.}
\]

**Formalization status:** the new Lean candidate proves the arithmetic prime order, scalar nonnegativity, and scalar bound. It does **not** yet prove `T_n≤U_n` for Lean's polynomial coefficients or identify the coefficient matrix with the original inverse Krylov matrix. Those two nontrivial source-interface lemmas remain proof obligations. No new RH or Weil positivity theorem is assumed.

**Finite hostile/control evidence:** in independent exact rational arithmetic, every row of the true Jacobi-polynomial coefficient matrix is bounded by the predicted scalar envelope for 60 genuine prime bonds, across dimensions 1, 2, 3, 8, 12, 20, 30 and 61. The 72 earlier perturbation cases are unaffected. These finite controls do not constitute all-index or Lean verification.


## Sharp uniform prime-gap improvement (22 November 2026)

The preceding linear-in-n bound is sound but needlessly weak.
The actual n-th prime is an **integer** and the prime sequence is
**strictly increasing**, so for every n:

\[
\boxed{p_{n+1}\ge p_n+1.}
\]

This is stronger than mere nondecreasing prime coefficients and is
already obtainable from pinned Mathlib's \`Nat.nth_strictMono\`.
The source theorem \`bond_succ_gap_one\` makes the arithmetic fact explicit.

**Theorem (uniform coefficient contraction).** The same scalar
envelope obeys \(\boxed{0\le U_n\le1}\) for every n.

**Proof.** The base cases are \(U_0=1\) and \(U_1=1/p_0=1/2\).
Assume \(U_n,U_{n+1}\le1\). Because \(p_{n+1}>0\),

\[
U_{n+2}=\frac{U_{n+1}+p_nU_n}{p_{n+1}}
\le\frac{1+p_n}{p_{n+1}}\le1.
\]
The two-step induction closes at every natural index. This uses the
actual prime gap, not any zero, RH or Weil positivity. \(\square\)

The theorem holds for arbitrary **positive, strictly increasing
integer bond sequences** (or positive real bonds separated by at
least 1). It is NOT an inference about arbitrary nondecreasing real
Jacobi bonds: for constant bonds b_n=1 the scalar envelope starts
\(1,1,2\), so the contraction can fail.

When the separately generated coefficient polynomials are identified
with the actual inverse prime Krylov coefficient rows, the polynomial
coefficient triangle inequality implies \(T_n\le U_n\le1\). Therefore

\[
\boxed{\|H_N^{-1}\|_\infty\le
\sum_{n<N}T_n^2\le N.}
\]

The pre-existing \(N(N+1)^2/4\) estimate remains valid but is
strictly weaker for \(N>1\). In a finite moment decoder with K bonds
and a relative determinant tolerance
\(0<\delta<1/(4p_{K-1}+1)\), the new uniform bound proves a
**source-only sufficient moment tolerance**

\[
\boxed{\varepsilon_{\mathrm{gap}}\le
\frac{\delta}{(2^{K+1}-1)(K+1)^2}.}
\]

The proof is the same Hadamard principal-minor expansion already
derived in [PrimeJacobiMomentErrorBudget.md](PrimeJacobiMomentErrorBudget.md),
now with \(B_k\le k\) instead of \(B_k\le k(k+1)^2/4\).

For K=8 actual prime bonds (last bond 19), the full exact-rational
checker returned the sufficient radii:
original factorial \(8.11843\cdot10^{-161}\), preceding explicit
\(6.19483\cdot10^{-9}\), improved prime-gap
\(1.54871\cdot10^{-7}\), and exact conditioned
\(6.05266\cdot10^{-7}\). All **96** source-noise pattern trials
(four certified radii, three patterns, eight lengths) PASS.
The updated checker is
[scripts/verify_prime_jacobi_moment_to_source_stability.py](../../../scripts/verify_prime_jacobi_moment_to_source_stability.py),
Git blob \`a3c38fea29321021bb9e097663a9ff4e41f8def1\`.

**Formal evidence:** the prime-gap and scalar-envelope proofs were
added to \`PrimeJacobiCoefficientEnvelope.lean\`, now containing seven
theorems, all SOURCE_PROOF_CANDIDATE / Lean NOT_RUN. The accompanying
\`PrimeJacobiPolynomialKrylov.lean\` contains the correctly qualified
conditional matrix-return theorems. The remaining nontrivial Lean
obligation is still the action of the independent recurrence
polynomials on actual Krylov vectors; no theorem here upgrades
a conditional bound to a kernel-verified unconditional one.
