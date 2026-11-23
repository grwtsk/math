/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Basic.Real.Basic
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Algebra.BigOperators.Ring.Finset

/-! Algebraic and order estimates for measuring transverse displacement by a positive
exterior Blaschke deficit. -/
namespace GRWTSK.XiBlaschkeDisplacementBudget

/-- Common denominator of the two reflected pole costs. -/
theorem reflected_product (σ x : ℝ) :
    ((1-σ)^2+x)*((1+σ)^2+x) = (1+σ^2+x)^2-4*σ^2 := by ring

/-- Factored comparison of the height weight at two squared displacements. -/
theorem height_weight_cross (σ x y : ℝ) :
    (1+x)*(1+σ^2+y)^2-(1+y)*(1+σ^2+x)^2 =
      (y-x)*((1+x)*(1+y)-σ^4) := by ring

/-- Positivity of the derivative numerator of the inverse-hyperbolic-tangent ratio. -/
theorem radial_slope {z a : ℝ} (hz : 0 < z) (ha : z ≤ a) :
    0 < (1+z^2)*a-z := by
  nlinarith [mul_nonneg (sq_nonneg z) (sub_nonneg.mpr ha),
    mul_pos (sq_pos_of_pos hz) hz]

/-- A linear charge for each member of a finite window controls its total loss. -/
theorem local_displacement {ι : Type*} (w : Finset ι) (δ loss : ι → ℝ)
    {C target : ℝ} (hC : 0 < C) (h : ∀ i ∈ w, loss i ≤ C*δ i)
    (hfail : target < ∑ i ∈ w, loss i) : target / C < ∑ i ∈ w, δ i := by
  apply (div_lt_iff₀ hC).2
  have hs := Finset.sum_le_sum h
  rw [← Finset.mul_sum] at hs
  linarith

/-- An exterior probe covering a window pays most per displacement when its radius
equals the quadratic horizontal/vertical scale. -/
theorem centered_scale_optimal {r R : ℝ} (hr : 0 < r) (hR : 0 < R) :
    2*r/(r^2+R^2) ≤ 1/R := by
  have hp : 0 < r^2+R^2 := by positivity
  apply (div_le_div_iff₀ hp hR).2
  nlinarith [sq_nonneg (r-R)]

end GRWTSK.XiBlaschkeDisplacementBudget
