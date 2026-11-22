# Exact inverse Hankel matrix from actual prime-Jacobi Krylov data

**Mathematical consumer:** grwtsk/math #1850, independent prime-only moment conditioning; related source #1849.  
**Pinned input:** `grwtsk/math@a24fc18b2a55b3b78e04092307421276392fdaeb`, Lean 4.34.1 / Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Existing `PrimeKnotJacobiArithmetic.lean` (blob `2759dc76c224e3214e8a1c8d9abd054f37edacab`), `PrimeJacobiMomentGram.lean` (`9e9138c09b110d6ce4f5808d87a3e06873ede037`), `PrimeJacobiKrylovFrontier.lean` (`05aafe27b87dae744c49533a8906b6ab6b08cecb`).  
**New proof candidate:** `PrimeJacobiHankelInverse.lean`. **Lean build / axioms / fresh kernel check:** NOT_RUN. Its imported Krylov sources also remain candidates. The complete elementary mathematical derivation is given below; verified source text does not establish elaboration.

Let \(p_j=\mathrm{Nat.nth}\ \mathrm{Nat.Prime}\ j\), and fix dimension \(k\). Let \(J_k\) be exactly the source's real zero-diagonal tridiagonal matrix with offdiagonal \(p_j\) at \((j,j+1)\). Define \(e_0=(1,0,\ldots,0)\), \(v_j=J_k^j e_0\), and \(V_k=(v_0|\cdots|v_{k-1})\). The original moment Hankel matrix is

\[
H_k=(m_{i+j}),\qquad m_r=\langle e_0,J_k^r e_0\rangle,\qquad H_k=V_k^\mathsf{T}V_k.
\]

The actual source's `iterate_root_support` and `iterate_root_frontier` establish mathematical triangularity and exact diagonal \(V_{jj}=\prod_{r<j}p_r>0\). Thus \(\det V_k>0\) for every \(k\), including \(k=0\) where the empty determinant equals one. In particular

\[
\boxed{H_k^{-1}=V_k^{-1}(V_k^{-1})^\mathsf T.}\tag{A}
\]

**Proof:** multiply the right-hand side by the original moment Gram matrix:
\[
(V_k^\mathsf T V_k)(V_k^{-1}(V_k^{-1})^\mathsf T)
=V_k^\mathsf T(V_kV_k^{-1})(V_k^\mathsf T)^{-1}=I.
\]
Matrix inverse uniqueness proves (A). The Lean file's `hankel_inverse_eq_coeff_gram` targets precisely this equality via Mathlib `Matrix.inv_eq_right_inv`, `Matrix.mul_nonsing_inv`, and `Matrix.transpose_nonsing_inv`. It does not introduce a synthetic gram matrix or an RH assumption.

Let \(R_k=(V_k^{-1})^\mathsf T\). The exact entries satisfy

\[
(H_k^{-1})_{ij}=\sum_{\ell<k}R_{\ell i}R_{\ell j}.\tag{B}
\]

If \(\sum_{j<k}|R_{\ell j}|\le C\) for every \(\ell<k\), then

\[
\begin{aligned}
\sum_{j<k}|(H_k^{-1})_{ij}|
&\le\sum_{\ell<k}|R_{\ell i}|\sum_{j<k}|R_{\ell j}|\\
&\le\sum_{\ell<k}C^2=kC^2.
\end{aligned}\tag{C}
\]

The new `hankel_inverse_row_sum_le` targets (C) **with its coefficient-row premise visibly present**. `hankel_inverse_row_sum_quadratic_of_coeff_bound` specializes to \(C=(k+1)/2\), giving \(\lVert H_k^{-1}\rVert_\infty\le k(k+1)^2/4\) conditional on the coefficient bound.

**Exact remaining Lean supplier:** prove against the actual finite Jacobi action that the recursively defined orthonormal polynomials \(P_n\) satisfy \(P_n(J_k)e_0=e_n\). Its coefficient matrix must then be identified with the *same* \(R_k\); the associated scalar recurrence envelope is separately developed in `PrimeJacobiCoefficientEnvelope.lean`. The mathematical identification is standard, but **this cross-interface is not yet kernel checked and must not be silently assumed**.

**Independent verification:** exact rational Gauss–Jordan inversion of genuine prime Hankel matrices and independent orthonormal-polynomial coefficient reconstruction agree for prefixes of 1 through 8 prime bonds. The standalone root-moment checker tests 72 exact-rational perturbations. This is finite evidence, not Lean proof or RH.

**Original RH independence:** no zeta zero, any Hilbert–Pólya spectral identity, Alpöge final result, imported positivity, or zero-free assumption occurs in these matrix identities. Novelty relative to classical Jacobi/moment theory is unassessed; the source-specific prime instantiation is the research contribution being developed.
