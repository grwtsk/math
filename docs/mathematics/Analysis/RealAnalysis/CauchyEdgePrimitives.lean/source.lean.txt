/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Analysis.SpecialFunctions.Trigonometric.ArctanDeriv
import Mathlib.Analysis.Calculus.Deriv.Mul
import Mathlib.Analysis.SpecialFunctions.Log.Deriv
import Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring
import Mathlib.Tactic.FunProp
import Mathlib.Tactic.Positivity

set_option autoImplicit false

/-!
# Real primitives for the two components of a Cauchy edge integral

The fixed transverse coordinate c is nonzero. This guard makes the squared
radius positive on the WHOLE real parameter line. No complex-log branch or
winding normalization is assumed. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.Real.CauchyEdgePrimitives

open MeasureTheory
open scoped Interval

/-- A fixed nonzero transverse coordinate excludes every edge singularity. -/
theorem squared_radius_pos (o c t : ℝ) (hc : c ≠ 0) :
    0 < (t - o) ^ 2 + c ^ 2 :=
  add_pos_of_nonneg_of_pos (sq_nonneg _) (sq_pos_of_ne_zero hc)

theorem continuous_radial_density (o c : ℝ) (hc : c ≠ 0) :
    Continuous (fun t : ℝ => (t - o) / ((t - o) ^ 2 + c ^ 2)) := by
  apply Continuous.div (by fun_prop) (by fun_prop)
  intro t
  exact ne_of_gt (squared_radius_pos o c t hc)

theorem continuous_angular_density (o c : ℝ) (hc : c ≠ 0) :
    Continuous (fun t : ℝ => c / ((t - o) ^ 2 + c ^ 2)) := by
  apply Continuous.div continuous_const (by fun_prop)
  intro t
  exact ne_of_gt (squared_radius_pos o c t hc)

/-- The radial primitive uses the real logarithm only at a positive argument. -/
theorem hasDerivAt_radial_primitive (o c t : ℝ) (hc : c ≠ 0) :
    HasDerivAt (fun u : ℝ => Real.log ((u - o) ^ 2 + c ^ 2) / 2)
      ((t - o) / ((t - o) ^ 2 + c ^ 2)) t := by
  have hd := ((((hasDerivAt_id t).sub_const o).pow 2).add_const (c ^ 2)).log
    (ne_of_gt (squared_radius_pos o c t hc))
  convert hd.div_const 2 using 1 <;> first | rfl | (simp only [Pi.pow_apply, id_eq]; ring)

/-- This primitive works for either sign of c, without an absolute-value substitution. -/
theorem hasDerivAt_angular_primitive (o c t : ℝ) (hc : c ≠ 0) :
    HasDerivAt (fun u : ℝ => Real.arctan ((u - o) / c))
      (c / ((t - o) ^ 2 + c ^ 2)) t := by
  have hd := (((hasDerivAt_id t).sub_const o).div_const c).arctan
  have hden := ne_of_gt (squared_radius_pos o c t hc)
  have hang : 1 + ((t - o) / c) ^ 2 ≠ 0 := by positivity
  convert hd using 1 <;> first | rfl | (field_simp [hc, hden, hang]; simp only [id_eq]; ring)

theorem integral_radial_density (a b o c : ℝ) (hc : c ≠ 0) :
    (∫ t in a..b, (t - o) / ((t - o) ^ 2 + c ^ 2)) =
      Real.log ((b - o) ^ 2 + c ^ 2) / 2 -
        Real.log ((a - o) ^ 2 + c ^ 2) / 2 := by
  exact intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun t _ => hasDerivAt_radial_primitive o c t hc)
    ((continuous_radial_density o c hc).intervalIntegrable a b)

theorem integral_angular_density (a b o c : ℝ) (hc : c ≠ 0) :
    (∫ t in a..b, c / ((t - o) ^ 2 + c ^ 2)) =
      Real.arctan ((b - o) / c) - Real.arctan ((a - o) / c) := by
  exact intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun t _ => hasDerivAt_angular_primitive o c t hc)
    ((continuous_angular_density o c hc).intervalIntegrable a b)

/-- A positive corner contributes exactly a quarter turn; positivity is essential. -/
theorem arctan_reciprocal_corner (u v : ℝ) (hu : 0 < u) (hv : 0 < v) :
    Real.arctan (u / v) + Real.arctan (v / u) = Real.pi / 2 := by
  have h := Real.arctan_inv_of_pos (div_pos hu hv)
  rw [inv_div] at h
  linarith

end GRWTSK.Analysis.Real.CauchyEdgePrimitives
