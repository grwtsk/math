/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Chebyshev.TentPoleSubtraction

set_option autoImplicit false

/-!
# Controls for finite pole subtraction

Synthetic rational functions below are not zeta data. The final two controls
specialize actual source coefficient declarations, not a zero file or a prime
certificate. All declarations remain unelaborated source drafts.
-/

namespace GRWTSK.NumberTheory.Chebyshev.Checks.TentPoleSubtractionControls

open GRWTSK.Analysis.Complex.OrientedRectangle
open GRWTSK.NumberTheory.Chebyshev.TentPoleSubtraction
open GRWTSK.RiemannHypothesis.TrivialZeroResidues

/-- The divided difference's center is a derivative, not division by zero. -/
theorem dividedDifference_center (a : ℂ) : dslope (fun z : ℂ => z) a a = 1 := by
  simp

/-- Freezing the multiplier in the pole term leaves a nonzero analytic remainder. -/
theorem nonconstant_multiplier_remainder (z : ℂ) (hz : z ≠ 1) :
    (-2 / (z - 1)) * z = -2 / (z - 1) - 2 := by
  field_simp [sub_ne_zero.mpr hz]
  <;> ring

/-- A zero multiplier can cancel a pole without making the product zero. -/
theorem zero_multiplier_cancels_pole (z : ℂ) (hz : z ≠ 0) :
    (-2 / z) * z = -2 := by field_simp [hz]

/-- The unchanged totalized center value differs from the analytic extension. -/
theorem raw_center_not_extension :
    ((-2 : ℂ) / 0) * 0 = 0 ∧ ((-2 : ℂ) / 0) * 0 ≠ -2 := by norm_num

/-- Subtracting one actual coefficient leaves the other principal part present. -/
theorem omitted_pole_remains (z : ℂ) :
    (-2 / (z - 1) - 3 / (z - 2)) - (-2 / (z - 1)) = -3 / (z - 2) := by ring

/-- Repeating an analytic multiplicity doubles its contribution rather than refining it. -/
theorem duplicate_coefficient_changes_sum :
    ((-2 : ℂ) / (3 - 1)) + (-2 / (3 - 1)) ≠ -2 / (3 - 1) := by norm_num

/-- Zero closed integral does not mean the analytic remainder is the zero function. -/
theorem nonzero_entire_remainder (l r T : ℝ) :
    boundaryIntegral (fun _ : ℂ => 3) l r T = 0 ∧ (3 : ℂ) ≠ 0 := by
  exact ⟨boundaryIntegral_eq_zero_of_differentiable _ (by fun_prop) l r T, by norm_num⟩

/-- The actual first trivial zero has logarithmic coefficient minus one. -/
theorem first_trivial_coefficient : logCoefficient (-2) = -1 := by
  simpa [trivialPoint] using logCoefficient_trivial 0

/-- The actual pole keeps the radius normalization for the square interval (4,9). -/
theorem actual_tent_pole_radius : tentCoefficient (13 / 2) (5 / 2) 1 = (5 / 2 : ℂ) := by
  exact tentCoefficient_one (13 / 2) (5 / 2) (by norm_num) (by norm_num)

end GRWTSK.NumberTheory.Chebyshev.Checks.TentPoleSubtractionControls
