/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ActualNonzeroDefectEpsilonHeight
import GRWTSK.NumberTheory.ZeroDefectNonzeroWronskianEpsilonHeight

set_option autoImplicit false
noncomputable section

/-! Uniform source branch assembly. The arithmetic budget remains an
explicit premise; W=0 is excluded. SOURCE_PROOF_CANDIDATES / NOT_RUN. -/
namespace GRWTSK.NumberTheory.ABC.UniformNonzeroWronskianBranch
open RetainedFactorization IntegerWronskianRepetitionCorrection UnpaidDefectLogBudget
open ActualNonzeroDefectEpsilonHeight ZeroDefectNonzeroWronskianEpsilonHeight

theorem uniform_nonzero_wronskian_height (A ε : ℝ) (hε : 0<ε)
    (hbudget : ∀ T : CoprimeAdditiveTriple, integerWronskian T.a T.b≠0 →
      integerAdditiveDefect T≠0 → actualUnpaidLogSum T≤A+(ε/2)*
        Real.log (UniqueFactorizationMonoid.radical T.product : ℝ)) :
    ∃ C : ℝ, 0<C ∧ ∀ T : CoprimeAdditiveTriple, integerWronskian T.a T.b≠0 →
      (T.c : ℝ)≤C*(UniqueFactorizationMonoid.radical T.product : ℝ)^(1+ε) := by
  let C₀ : ℝ := (Real.exp (-1)/((ε/(1+ε))*Real.log 2))^(1+ε)
  let C₁ : ℝ := defectBudgetHeightConstant A ε
  have h₀ : 0≤C₀ := by dsimp [C₀]; positivity
  have h₁ : 0≤C₁ := by dsimp [C₁,defectBudgetHeightConstant]; positivity
  refine ⟨C₀+C₁+1,by linarith,?_⟩
  intro T hW
  have hR : 0≤(UniqueFactorizationMonoid.radical T.product : ℝ)^(1+ε) :=
    Real.rpow_nonneg (Nat.cast_nonneg _) _
  by_cases hd : integerAdditiveDefect T=0
  · have hh := actual_zero_defect_epsilon_height T hd hW ε hε
    apply hh.trans
    exact mul_le_mul_of_nonneg_right (show C₀≤C₀+C₁+1 by linarith) hR
  · have hh := actual_nonzero_defect_epsilon_height T hW hd A ε hε (hbudget T hW hd)
    apply hh.trans
    exact mul_le_mul_of_nonneg_right (show C₁≤C₀+C₁+1 by linarith) hR

/- The uniform A is fixed before the triple. No premise is supplied by
choosing A after inspecting each triple. The remaining W=0 branch needs
its own height estimate; neither zero defect nor full repetition credit
repairs the failed nonzero-divisor size argument in that branch. -/
end GRWTSK.NumberTheory.ABC.UniformNonzeroWronskianBranch
