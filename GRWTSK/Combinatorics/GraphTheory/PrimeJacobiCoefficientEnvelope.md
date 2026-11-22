# All-order prime-Jacobi orthogonal-polynomial coefficient envelope

**Consumer:** `PrimeJacobiHankelInverse.lean`, prime-only conditioned moment inverse, grwtsk/math #1850.  
**Source:** pinned `PrimeKnotJacobiArithmetic.lean` (blob `2759dc76c224e3214e8a1c8d9abd054f37edacab`); Mathlib `Nat.add_two_le_nth_prime` in `NumberTheory/PrimeCounting.lean`; `Nat.nth_strictMono` on actual prime ordinals.  
**New candidate:** `PrimeJacobiCoefficientEnvelope.lean` with a four-theorem source-specific scalar recursion. **Lean compilation/axioms/kernel:** NOT_RUN.

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
