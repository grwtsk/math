import GRWTSK.Analysis.Polarization
open GRWTSK.Analysis.Polarization
open scoped InnerProductSpace
example {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℝ E] (x y : E) : ⟪x, y⟫_ℝ = (‖x + y‖ ^ 2 - ‖x - y‖ ^ 2) / 4 := real_inner_eq_signed_norm_square x y
example : 0 ≤ ‖(1 : ℝ) + (-1)‖ ^ 2 ∧ 0 ≤ ‖(1 : ℝ) - (-1)‖ ^ 2 ∧ (‖(1 : ℝ) + (-1)‖ ^ 2 - ‖(1 : ℝ) - (-1)‖ ^ 2) / 4 < 0 := nonnegative_sectors_negative_difference
example : ¬ ∃ C : ℝ, ∀ x y : ℝ, -C ≤ (‖x + y‖ ^ 2 - ‖x - y‖ ^ 2) / 4 := signed_difference_has_no_universal_lower_bound
