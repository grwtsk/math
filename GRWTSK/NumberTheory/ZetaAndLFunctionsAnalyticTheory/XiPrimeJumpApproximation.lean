/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Basic.Real.Basic
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring
import Mathlib.Tactic.FieldSimp

/-! Lower bounds for approximation profiles with a prescribed jump at a prime. -/
namespace GRWTSK.XiPrimeJumpApproximation

/-- Exact weighted least-squares decomposition on the two adjacent cells,
with one real component of the jump specified. -/
theorem two_cell_square (u v x j : ℝ) :
    (u+v)*(u*x^2+v*(x+j)^2)-u*v*j^2 = ((u+v)*x+v*j)^2 := by ring

/-- The harmonic weight of the jump is a lower bound for every complex profile,
in real coordinates. -/
theorem complex_jump_charge {u v : ℝ} (hu : 0 < u) (hv : 0 < v)
    (x y j k : ℝ) :
    u*v/(u+v)*(j^2+k^2) ≤ u*(x^2+y^2)+v*((x+j)^2+(y+k)^2) := by
  have hsum : 0 < u+v := by linarith
  field_simp
  nlinarith only [two_cell_square u v x j, two_cell_square u v y k,
    sq_nonneg ((u+v)*x+v*j), sq_nonneg ((u+v)*y+v*k)]

/-- The harmonic weight is at least half of the smaller input. -/
theorem lower_harmonic_weight {a u v : ℝ} (ha : 0 ≤ a) (hu : a ≤ u)
    (hv : a ≤ v) (hs : 0 < u+v) : a/2 ≤ u*v/(u+v) := by
  apply (le_div_iff₀ hs).2
  nlinarith [mul_nonneg (sub_nonneg.mpr hu) (sub_nonneg.mpr hv),
    mul_nonneg ha (sub_nonneg.mpr hu), mul_nonneg ha (sub_nonneg.mpr hv)]

/-- A normalized initial coefficient pays either at the origin or at every omitted prime. -/
theorem normalized_floor {a b : ℝ} (ha : 0 < a) (hb : 0 < b) (x y : ℝ) :
    a*b/(a+b) ≤ a*((x-1)^2+y^2)+b*(x^2+y^2) := by
  have h := complex_jump_charge ha hb (x-1) y 1 0
  simpa using h

/-- The geometric-grid coefficient constraint removes the pole exactly. -/
theorem pole_constraint (q : ℝ) (hq : q ≠ 0) (b : ℝ) : (1-q*(1/q))*b=0 := by
  field_simp
  ring

end GRWTSK.XiPrimeJumpApproximation
