/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Research direction: grwtsk contributors. Formalization assistance: ChatGPT.
Status: candidate proof source; not elaborated in the pinned environment.
-/
import Mathlib

/-! # Unequal-cell means with exact signed reconstruction

The cell lengths, center, and final constant component remain explicit.
No arithmetic source estimate follows from these finite identities alone.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Analysis.FiniteSums.WeightedCellRefinement

/-- The mean of two cells is weighted by their physical lengths. -/
def mean (u v a b : ℝ) : ℝ := (u*a+v*b)/(u+v)

theorem mean_preserves_mass (u v a b : ℝ) (h : u+v ≠ 0) :
    (u+v)*mean u v a b=u*a+v*b := by
  unfold mean
  field_simp [h]

/-- The whole quadratic reading is reconstructed, including its center. -/
theorem split_identity (u v a b c : ℝ) (h : u+v ≠ 0) :
    u*(a-c)^2+v*(b-c)^2 =
      (u+v)*(mean u v a b-c)^2+(u*v/(u+v))*(a-b)^2 := by
  unfold mean
  field_simp [h]
  <;> ring

theorem detail_nonneg (u v a b : ℝ) (hu : 0≤u) (hv : 0≤v) :
    0≤(u*v/(u+v))*(a-b)^2 := by positivity

theorem coarse_le_full (u v a b c : ℝ) (hu : 0<u) (hv : 0<v) :
    (u+v)*(mean u v a b-c)^2≤u*(a-c)^2+v*(b-c)^2 := by
  rw [split_identity u v a b c (ne_of_gt (add_pos hu hv))]
  exact le_add_of_nonneg_right (detail_nonneg u v a b hu.le hv.le)

/-- A constant component is not lost when the local center changes. -/
theorem center_change (u v a b c : ℝ) :
    u*a^2+v*b^2 =
      u*(a-c)^2+v*(b-c)^2+2*c*(u*a+v*b)-(u+v)*c^2 := by ring

/-- Elementary range-to-variance inequality, with the mean retained. -/
theorem range_variance (a b m q : ℝ)
    (hq : q≤(a+b)*m-a*b) :
    q-m^2≤(b-a)^2/4 := by
  nlinarith [sq_nonneg (2*m-a-b)]

/-- The coordinate norm uses the same cell lengths on both sides. -/
theorem weighted_square_return (w e d : ℝ) (hw : 0≤w) :
    w*(e+d)^2≤2*w*e^2+2*w*d^2 := by
  nlinarith [mul_nonneg hw (sq_nonneg (e-d))]

end GRWTSK.Analysis.FiniteSums.WeightedCellRefinement
