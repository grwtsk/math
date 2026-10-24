import FormalResearch.RiemannHypothesis.TargetStatement
import FormalResearch.RiemannHypothesis.Defect

/-!
# Comparison of the proved reformulation with the independent exact statement

This composes an equivalence only; neither side of the equivalence is proved.
-/

namespace FormalResearch.RiemannHypothesis.Target

/-- The defect theorem terminates in the independently fixed Mathlib proposition. -/
theorem statement_iff_defect_zero :
    Statement ↔ ∀ s, NontrivialZetaZero s → rhDefect s = 0 := by
  rw [statement_eq_mathlib]
  exact riemann_hypothesis_iff_defect_zero

end FormalResearch.RiemannHypothesis.Target
