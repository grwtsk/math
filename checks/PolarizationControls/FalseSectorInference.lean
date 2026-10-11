import GRWTSK.Analysis.Polarization
open GRWTSK.Analysis.Polarization
open scoped InnerProductSpace
example (x y : ℝ) : 0 ≤ (‖x + y‖ ^ 2 - ‖x - y‖ ^ 2) / 4 := by
  have h₁ : 0 ≤ ‖x + y‖ ^ 2 := sq_nonneg _
  have h₂ : 0 ≤ ‖x - y‖ ^ 2 := sq_nonneg _
  exact add_nonneg h₁ h₂
