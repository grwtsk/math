/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ExplicitRadicalHeightAssembly

set_option autoImplicit false
noncomputable section

/-! Actual source epsilon-height branch, conditional on its precise missing
arithmetic budget. SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.ABC.ActualNonzeroDefectEpsilonHeight
open RetainedFactorization IntegerWronskianRepetitionCorrection UnpaidDefectLogBudget
open ActualDefectLogHeightConsumer ExplicitRadicalHeightAssembly

def defectBudgetHeightConstant (A ε : ℝ) : ℝ :=
  (Real.exp A*Real.exp (-1)/((ε/(2*(1+ε)))*Real.log 2))^
    ((1-ε/(2*(1+ε)))⁻¹)

theorem actual_nonzero_defect_epsilon_height (T : CoprimeAdditiveTriple)
    (hW : integerWronskian T.a T.b≠0) (hd : integerAdditiveDefect T≠0)
    (A ε : ℝ) (hε : 0<ε)
    (hbudget : actualUnpaidLogSum T≤A+(ε/2)*
      Real.log (UniqueFactorizationMonoid.radical T.product : ℝ)) :
    (T.c : ℝ)≤defectBudgetHeightConstant A ε*
      (UniqueFactorizationMonoid.radical T.product : ℝ)^(1+ε) := by
  have hR : 0<(UniqueFactorizationMonoid.radical T.product : ℝ) := by
    exact_mod_cast Nat.radical_pos T.product
  have hh := actual_log_radical_budget_height T hW hd A (ε/2) hR hbudget
  have he : (UniqueFactorizationMonoid.radical T.product : ℝ)*
      (Real.exp A*(UniqueFactorizationMonoid.radical T.product : ℝ)^(ε/2)) =
      Real.exp A*(UniqueFactorizationMonoid.radical T.product : ℝ)^(1+ε/2) := by
    rw [Real.rpow_add hR,Real.rpow_one]
    ring
  rw [he] at hh
  exact explicit_epsilon_height (T.c : ℝ)
    (UniqueFactorizationMonoid.radical T.product : ℝ) (Real.exp A) ε
    (by exact_mod_cast T.c_pos) hR (Real.exp_pos A).le hε hh

theorem uniform_actual_budget_branch (A ε : ℝ) (hε : 0<ε)
    (hbudget : ∀ T : CoprimeAdditiveTriple, integerWronskian T.a T.b≠0 →
      integerAdditiveDefect T≠0 → actualUnpaidLogSum T≤A+(ε/2)*
        Real.log (UniqueFactorizationMonoid.radical T.product : ℝ)) :
    ∀ T : CoprimeAdditiveTriple, integerWronskian T.a T.b≠0 →
      integerAdditiveDefect T≠0 → (T.c : ℝ)≤defectBudgetHeightConstant A ε*
        (UniqueFactorizationMonoid.radical T.product : ℝ)^(1+ε) := by
  intro T hW hd
  exact actual_nonzero_defect_epsilon_height T hW hd A ε hε (hbudget T hW hd)

/- A must be independent of T for the uniform conclusion. Choosing A from
an individual triple's unpaid sum does not supply the quantified premise.
This budget is UNSUPPLIED. W=0 remains a distinct missing height branch;
zero defect/W≠0 has a separate source candidate. No ABC claim is made. -/
end GRWTSK.NumberTheory.ABC.ActualNonzeroDefectEpsilonHeight
