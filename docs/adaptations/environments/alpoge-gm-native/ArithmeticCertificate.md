# Original native Gm: signed arithmetic and analytic-constant certificate

**Maintained isolated Lean source:** [ArithmeticCertificate.lean](ArithmeticCertificate.lean), mathematical consumer math #1850, using the original Level.Gm and Level.Nt/Level.wt from the pinned tamnd/riemann-lean@af705e0d9a5904326eb0693310e36d9484df7f8f, Lean 4.33.1 / Mathlib 0df444a360eaa60ab8c11dca51a86af692955474. Imports the adjacent source candidates [Normalization.lean](Normalization.lean) and [LogDerivativeCertificate.lean](LogDerivativeCertificate.lean). This is NOT part of the incompatible math root Lean 4.34.1 build.

## Theorem 1: a completely signed, source-faithful error ledger

Let Λ be an actual native Level and retain its original
\[
c_\Lambda(n)=1+\sum_{\psi\in\Lambda.Nt}\Lambda.wt(\psi)\operatorname{Re}\psi.\chi(n).
\]
For x≥1 and a supplied approximate real von Mangoldt sequence \(\lambda(n)\), define the observed **true-source-shaped** arithmetic head
\[
\widetilde S_\Lambda(x)=\sum_{n=1}^{\lfloor x\rfloor}\lambda(n)c_\Lambda(n)(x/n-1).
\]
If the true coefficient errors are certified individually by
\(|\lambda(n)-\Lambda(n)|\le e(n)\), the difference of the source heads has exact algebraic form
\[
S_\Lambda(x)-\widetilde S_\Lambda(x)
=\sum_{n=1}^{\lfloor x\rfloor}(\Lambda(n)-\lambda(n))c_\Lambda(n)(x/n-1).
\]
Consequently
\[
\boxed{|S_\Lambda(x)-\widetilde S_\Lambda(x)|
\le E_\Lambda(x):=\sum_{n=1}^{\lfloor x\rfloor}
e(n)|c_\Lambda(n)|\,|x/n-1|.}\tag{C1}
\]
All original complex character phases and conductor values are retained until the prescribed real projection. The genuine original L'/L affine corrections are not included in the *coefficient* discrepancy, since they are unchanged by its definition.

## Theorem 2: complete native Gm error from true analytic constants

The original native normalization is
\[
G_m(x)=S_\Lambda(x)-x\log x+A_\Lambda x,
\qquad
A_\Lambda=G_m(1)=1+\gamma_E+
\sum_{\psi\in\Lambda.Nt}\Lambda.wt(\psi)
\operatorname{Re}L'(1,\psi.\chi)/L(1,\psi.\chi).
\]
Let an independently sound source certificate enclose the true constant by \(|A_\Lambda-\widetilde A|\le R_A\), and define
\(\widetilde G_m(x)=\widetilde S_\Lambda(x)-x\log x+\widetilde A x\).

**Exact algebra** (x≥1):
\[
G_m(x)-\widetilde G_m(x)
=(S_\Lambda(x)-\widetilde S_\Lambda(x))+x(A_\Lambda-\widetilde A).
\]
Therefore
\[
\boxed{|G_m(x)-\widetilde G_m(x)|
\le E_\Lambda(x)+xR_A.}\tag{C2}
\]
The analytic constant is genuinely enclosed by the periodic Dirichlet L(1), L'(1) and Mathlib Euler-gamma bounds of [LogDerivativeCertificate.md](LogDerivativeCertificate.md); it is not substituted by a sampled or simulated value.

## Theorem 3: a sufficient eventually quantified integer certificate

Fix 0<theta<1 and integer N≥1. Suppose for **every** integer n≥N there exist source-certified observations with possibly n-dependent precision:
- all coefficient errors e_n(k) enclose the genuine \(\Lambda(k)\) for k≤n;
- the analytic constant interval encloses the unchanged original A_Level;
- the fully evaluated observed arithmetic expression satisfies
\[
\boxed{
\widetilde G_m(n)+E_{\Lambda,n}(n)+nR_{A,n}
\le n^\theta-\frac1{4n}.}\tag{C3}
\]
Then (C2) gives the TRUE source
\[
\boxed{\forall n\ge N:\quad
G_m(n)\le n^\theta-\frac1{4n}.}\tag{C4}
\]
This theorem is source-independent of Alpöge's final result and genuinely connects exact arithmetic observation certificates to the original Level.Gm. Its Lean candidate is eventual_integer_gm_of_certified_observations. **The universal hypothesis (C3) is not discharged.** The theorem is a sound certificate consumer, not an algorithm proven to succeed.

The adjacent [EventualIntegerReturn.md](EventualIntegerReturn.md) supplies the parallel original-typed CoreGm route under actual EAtH/CoreAtH witnesses. The discrete curvature argument in math root then sends (C4) to an all-real Gm power bound, and the original intermediate Landau.zero_free_of_Chebyshev_growth yields its source Level.ZeroFreeAbove theta. Every analytic premise remains explicit.

## Quantitative precision obstruction and practical remedy

A fixed positive analytic-constant uncertainty R_A yields the error term xR_A. For any 0<theta<1, xR_A eventually exceeds x^theta. Thus **no fixed finite-precision constant enclosure, by absolute-error propagation alone, is sufficient for all x**. The certificates must adapt their precision as n grows or must prove the desired source cancellation by a separate all-scale analytic theorem.

For fixed native Level, the per-character partial-sum certificates satisfy \(R_\chi=O(q/N_\chi)\) and \(R'_\chi=O(q\log N_\chi/N_\chi)\). For any prescribed n and positive target radius r_n, increasing the finite Dirichlet cutoffs N_χ (multiples of the exact conductors), the rational logarithm bits, and Euler-gamma sample length yields a mathematical certificate for \(R_{A,n}<r_n\), independent of RH. This is a *pointwise effective approximation* result, not a uniform proof of (C3).

**Evidence and provenance:** the original source in Normalization.md; actual nonprincipal ratio and gamma bounds in LogDerivativeCertificate.md; original intermediate typed EAtH/CoreAtH and Landau source in EventualIntegerReturn.md. **Lean elaboration, kernel checking, transitive axiom audit and the periodic Abel-tail formalization: NOT_RUN.** No new independent RH/GRH theorem is claimed. Generic finite arithmetic error propagation is classical; source-specific application and novelty are unassessed.
