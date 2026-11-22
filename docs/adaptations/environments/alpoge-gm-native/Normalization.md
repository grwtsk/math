# Exact native Alpöge Level.Gm normalization — source proof

**Mathematical consumer:** grwtsk/math issue #1850 (prime-Jacobi arithmetic and original Gm); related #1819 and #1849.

**Original pinned mirror:** tamnd/riemann-lean at commit af705e0d9a5904326eb0693310e36d9484df7f8f, Lean 4.33.1, Mathlib 0df444a360eaa60ab8c11dca51a86af692955474. Exact inputs are:

- Formalism/StatementOC.lean, blob 12ab19c0176bd4135c2b23a7ee3ac22888df0122 (Formalism.Sz and Gz).
- Formalism/SharpRestriction/RamificationFrobenius/TotientGaloisClasses/Analytic.lean, blob 599699b5b35f6fb7bf2ab94f5f0c577b14f35ea1 (An.abelian₂, An.sumLamChi, An.gChi, An.logDerivativeAtOne).
- Formalism/SharpRestriction/RamificationFrobenius/TotientGaloisClasses/ExplicitFormulaErrorOfHostConditions.lean, blob ed60b4b997cd4703713660b185b9e43fd95559a1 (Level.Nt, Level.wt, Level.Gm, PChar.of_self, PChar.of_one).
- Formalism/SharpRestriction/RamificationFrobenius/TotientGaloisClasses/PrimePairSizeCondition.lean, blob aee05935e7bac6625cd4e07fef4912722d796780 (PChar primitive-character type and KSet).

**New isolated Lean source candidate:** [Normalization.lean](Normalization.lean). This file belongs only in the **original** Alpöge v4.33.1 environment and is not an import of grwtsk/math root v4.34.1. Any isolated compilation must stage the file at the matching GRWTSK module path in a disposable copy of the upstream source.

## Exact mathematical proof

For \(\Lambda:\mathrm{Level}\), the original set \(\Lambda.Nt=\Lambda.KEPT\setminus\{\mathrm{PChar.one}\}\) excludes the principal character. Indeed, if \(\psi\in\Lambda.Nt\) and \(\psi.\chi=1\), then PChar.of_self and PChar.of_one give \(\psi=\mathrm{PChar.one}\), a contradiction. Hence the *nontrivial* An.gChi branch applies to every summand.

For \(x\ge1\) and \(1\le n\le\lfloor x\rfloor\), \(\max(x/n-1,0)=x/n-1\). Expand the **actual** Gz and nontrivial gChi definitions, take complex real parts after character multiplication, and interchange only finite sums. Define
\[
c_\Lambda(n)=1+\sum_{\psi\in\Lambda.Nt}
 \Lambda.wt(\psi)\operatorname{Re}\psi.\chi(n),
\quad
A_\Lambda=1+\gamma_E+\sum_{\psi\in\Lambda.Nt}
 \Lambda.wt(\psi)\operatorname{Re}
 \frac{L'(1,\psi.\chi)}{L(1,\psi.\chi)}.
\]
The exact source normalization is
\[
\boxed{\Lambda.Gm(x)=
\sum_{1\le n\le\lfloor x\rfloor}
 \Lambda(n)c_\Lambda(n)(x/n-1)-x\log x+A_\Lambda x.}
\tag{N1}
\]
All genuine conductors, zero-at-ramified-prime character phases, weights, and analytic corrections are unchanged.

At \(x=1\), every arithmetic ramp is zero and \(\log1=0\), so
\[
\boxed{\Lambda.Gm(1)=A_\Lambda.}\tag{N2}
\]
This identifies the affine integration constant not recovered by the integer second-difference reconstruction. It does **not** compute the constant from prime-Jacobi moments. The separate RH-free Dirichlet certificates appear in [LogDerivativeCertificate.md](LogDerivativeCertificate.md).

## Proof artifacts and scope

The source candidates are: nontrivial_of_mem_Nt, source_clip_eq_unclipped, sumLamChi_real_eq_signed_head, gChi_real_eq_signed_head_add_correction, arithmetic_head_finite_rearrangement, levelGm_eq_normalized and levelGm_one_eq_analyticConstant.

The primary mathematical argument is complete by expansion of the pinned definitions. Lean elaboration, fresh kernel replay, and transitive axiom audit are **NOT_RUN**; there is no installed pinned Lean/Lake environment. No Alpöge final RH/GRH theorem, Main, FinalTheorems, everyCharacter, Weil positivity from RH, or zero-indexed spectral surrogate is used. Exact global novelty is unassessed.
