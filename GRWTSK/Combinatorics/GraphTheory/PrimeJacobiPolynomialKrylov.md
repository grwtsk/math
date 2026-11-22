# Prime-Jacobi polynomial-to-Krylov coupling: exact source interface

**Mathematical consumer:** [grwtsk/math#1850](https://github.com/grwtsk/math/issues/1850), specifically the all-size inverse-Hankel coefficient bound from genuine prime-Jacobi moments.  
**Source environment:** grwtsk/math at the 2026-11-22 pre-change head \`d509d7a0e9789d7e6e066518a555b544781ab6e7\`; Lean v4.34.1 and Mathlib \`d13f23b723b8a846827a245b89c10fc7d3f11612\`.  
**Original source modules and Git blobs:** \`PrimeKnotJacobiArithmetic.lean\` (\`2759dc76c224e3214e8a1c8d9abd054f37edacab\`); \`PrimeJacobiMomentGram.lean\` (\`9e9138c09b110d6ce4f5808d87a3e06873ede037\`); \`PrimeJacobiKrylovFrontier.lean\` (\`05aafe27b87dae744c49533a8906b6ab6b08cecb\`); \`PrimeJacobiHankelInverse.lean\` (\`6c1f9be478b9cbd9d83b71381bf2b7224fc489aa\`); \`PrimeJacobiCoefficientEnvelope.lean\` (\`c0f1ada66ad27f2dc50104039abfd7050b2fb5a3\`).  
**New source:** [PrimeJacobiPolynomialKrylov.lean](PrimeJacobiPolynomialKrylov.lean). Source candidates are **NOT_RUN** for Lean elaboration, kernel replay or transitive axiom audit. No imported Alpöge final result, no RH axiom or zeta-zero input.

## 1. Exact completed mathematics

For the original prime-only Jacobi section \(J_N\) on \(e_0,\ldots,e_{N-1}\), set \(p_n=\operatorname{nthPrime}(n)\). The root Krylov matrix and original Hankel matrix are

\[
V_N=(J_N^je_0)_{j<N},\qquad
H_N=V_N^{\mathsf T}V_N.
\]

The existing unique-outward-path argument yields the exact triangular diagonal
\( (V_N)_{jj}=\prod_{r<j}p_r>0\). Thus \(V_N\) is invertible; define
\[
R_N=(V_N^{-1})^{\mathsf T}.
\]
The new lemma \`inverse_coefficients_act_as_basis\` targets the **actual source** identity
\[
\boxed{\sum_{j<N}(R_N)_{nj}J_N^je_0=e_n.}\tag{1}
\]
It is an instance of \(V_NV_N^{-1}=I\), not an arbitrary or fitted polynomial. The second lemma \`coefficient_matrix_unique_of_basis_action\` proves that *any* coefficient matrix whose rows satisfy (1) must equal \(R_N\). It follows from \(V_NQ^{\mathsf T}=I\) and uniqueness of the inverse.

Now define the **independent prime-Jacobi recurrence polynomials**
\[
P_0(t)=1,\quad P_1(t)=t/p_0,\qquad
P_{n+2}(t)=\frac{tP_{n+1}(t)-p_nP_n(t)}{p_{n+1}}.
\tag{2}
\]
The new source constructs their natural-number coefficient function
\`recurrencePolynomialCoefficient\` without any reference to \(V_N\),
its inverse, zeros, RH or Alpöge. Its matrix of coefficients is
\`recurrencePolynomialMatrix N\`. The identification lemma
\`recurrence_polynomial_eq_inverse_krylov_of_basis\` is a **Lean candidate
conditional on the exact polynomial-to-basis evaluation**:

\[
\boxed{
\left(\forall n<N,\ P_n(J_N)e_0=e_n\right)
\implies
\operatorname{Coeff}(P_0,\ldots,P_{N-1})=R_N.
}\tag{3}
\]

### The elementary analytic proof of the still-open Lean supplier

The premise of (3) is mathematically an unconditional theorem of the **actual prime-only source**:

- \(P_0(J_N)e_0=e_0\).
- If \(N\ge2\), then \(P_1(J_N)e_0=J_Ne_0/p_0=e_1\).
- For \(n+2<N\), \(J_Ne_{n+1}=p_ne_n+p_{n+1}e_{n+2}\). Assume \(P_n(J_N)e_0=e_n\) and \(P_{n+1}(J_N)e_0=e_{n+1}\). Applying (2) gives
\[
P_{n+2}(J_N)e_0
=\frac{J_Ne_{n+1}-p_ne_n}{p_{n+1}}=e_{n+2}.
\]
The last step uses **positive original prime bonds** \(p_{n+1}>0\). No boundary term is omitted because \(n+2<N\). This proves the premise of (3) for all \(N\) by two-step induction.

The missing formalization is therefore *not* a new spectral assumption. It is a concrete finite-dimensional Jacobi basis-action lemma and its coefficient-array shifting/reindexing in Lean. It must be discharged and kernel checked before removing the hypothesis from \`recurrence_polynomial_eq_inverse_krylov_of_basis\`.

## 2. The coefficient-to-inverse-Hankel bound

Let \(c_{nj}=[t^j]P_n(t)\) and \(T_n=\sum_j|c_{nj}|\). Equation (2) gives

\[
T_0=1,\quad T_1=1/p_0,\qquad
T_{n+2}\le\frac{T_{n+1}}{p_{n+1}}+
              \frac{p_n}{p_{n+1}}T_n.
\]

\`PrimeJacobiCoefficientEnvelope.coeffEnvelope\` is the source-prime scalar recursion on the right-hand side, and its existing source candidate proves \(0\le \mathrm{coeffEnvelope}(n)\le(n+2)/2\), using \(p_n\ge n+2\) and \(p_n\le p_{n+1}\). Since \(c_{nj}=0\) for \(j>n\) and (3) identifies the first \(N\) rows with \(R_N\), it follows mathematically that every actual coefficient row of \(R_N\) has absolute sum at most \((N+1)/2\).

The exact source \`PrimeJacobiHankelInverse.hankel_inverse_eq_coeff_gram\` gives
\(H_N^{-1}=R_N^{\mathsf T}R_N\). Consequently every inverse row satisfies

\[
\boxed{
\sum_{j<N}|(H_N^{-1})_{ij}|
\le\sum_{\ell<N}|R_{\ell i}|\sum_{j<N}|R_{\ell j}|
\le\frac{N(N+1)^2}{4}.
}\tag{4}
\]

This completes the *mathematical* polynomial-to-Krylov-to-Hankel proof using actual prime bonds.

### Lean status, without suppressing premises

Eight new Lean candidate theorems expose the exact finite polynomial action, its uniqueness, independently defined coefficients, an envelope bound assuming the original rows are dominated, and a two-step induction from the **actual row-norm recurrence**. In particular, the final
\`source_hankel_inverse_row_le_of_actual_row_recurrence\`
still has three visibly explicit premises (base cases, and the all-index row-norm recurrence). They are **not** yet proved in Lean from (2), so its result must not be labeled an unconditional Lean theorem. Kernel verification is **NOT_RUN**, as this environment contains no Lean/Lake executable and no compatible checked build output.

The next bounded Lean construction must prove \`P_n(J_N)e_0=e_n\` and the coefficient support/reindex lemma for (2). Once those are supplied, the above fully quantified matrix uniqueness and two-step row-norm bound eliminate every coefficient premise from (4). Root import changes or an RH proof are unnecessary.

## 3. Reproducible independent finite controls

An exact-rational checker (no floating-point zeros, no true RH, no spectral fitting) constructed both (2) and the actual Jacobi iterates \(J_N^je_0\), compared their products row by row, checked their coefficient-envelope recursion, and computed the inverse-Hankel coefficient Gram \(R_N^{\mathsf T}R_N\).

Dimensions \(N=2,3,4,8,12,20,30,41,61\): **181/181 polynomial-to-source basis rows PASS**; all inverse-Hankel row bounds PASS. The 61-dimensional source uses 60 authentic prime bonds, ending in \(p_{59}=281\). A separately rerun existing exact moment decoder checks **72/72** perturbation trials through 8 bonds. These are finite computations and do not verify the universal Lean statement.

## 4. Global novelty and independence

These are classical finite Jacobi/orthogonal-polynomial mechanisms applied to a **source-specific certified prime encoder**. Their mathematical and numerical consequences are valuable engineering/mathematical suppliers in \`grwtsk/math\`, but no claim of previously unknown global mathematical novelty is made. Nothing here implies zeta-zero spectrum, all-test signed Weil positivity or RH. The original prime-only Jacobi root spectral measure is known to differ from a normalized zeta-zero measure. The companion native typed Alpöge \`Gm\` adapter is separately isolated and **does not import Alpöge's final result**.
