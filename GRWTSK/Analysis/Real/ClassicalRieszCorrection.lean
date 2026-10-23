/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Formalization assistance: OpenAI. -/
import GRWTSK.Analysis.Real.RationalRieszPrimitive
import Mathlib.Analysis.SpecialFunctions.Log.Deriv

/-! # Classical logarithmic form of the rational Riesz correction
The independently defined integral correction is identified with a classical
logarithmic primitive, including its exact affine base normalization. This does
not determine the separate zeta/source affine coefficients. -/
set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped Interval
namespace GRWTSK.Analysis.Real.ClassicalRieszCorrection
open TentRationalCorrection RationalRieszPrimitive

def correction (x : ℝ) : ℝ :=
  x * Real.log x - ((x-1) * Real.log (x-1) + (x+1) * Real.log (x+1)) / 2

def slope (x : ℝ) : ℝ := Real.log x - (Real.log (x-1) + Real.log (x+1)) / 2

theorem hasDerivAt_correction (x : ℝ) (hx : 1 < x) :
    HasDerivAt correction (slope x) x := by
  have hx0 : x ≠ 0 := by linarith
  have hm : x-1 ≠ 0 := by linarith
  have hp : x+1 ≠ 0 := by linarith
  have hi := hasDerivAt_id x
  have hl := Real.hasDerivAt_log hx0
  have hml := (hi.sub_const 1).log hm
  have hpl := (hi.add_const 1).log hp
  have hd := (hi.mul hl).sub ((((hi.sub_const 1).mul hml).add
    ((hi.add_const 1).mul hpl)).div_const 2)
  convert hd using 1 <;> first | rfl | ((try dsimp [correction, slope]); field_simp [hx0, hm, hp]; ring)

theorem hasDerivAt_slope (x : ℝ) (hx : 1 < x) :
    HasDerivAt slope (-rationalDensity x) x := by
  have hx0 : x ≠ 0 := by linarith
  have hm : x-1 ≠ 0 := by linarith
  have hp : x+1 ≠ 0 := by linarith
  have hi := hasDerivAt_id x
  have hd := (Real.hasDerivAt_log hx0).sub
    (((hi.sub_const 1).log hm).add ((hi.add_const 1).log hp) |>.div_const 2)
  have hsq : x^2-1 ≠ 0 := by nlinarith
  convert hd using 1 <;> first | rfl | ((try dsimp [slope, rationalDensity]); field_simp [hx0, hm, hp, hsq]; ring)

/-- Exact correction identity with both affine base terms retained. -/
theorem rationalRieszPrimitive_eq (a x : ℝ) (ha : 1 < a) (hx : 1 < x) :
    rationalRieszPrimitive a x = correction x - correction a - (x-a)*slope a := by
  have hc : ContinuousOn rationalDensity (uIcc a x) :=
    rationalDensity_continuousOn (lt_min ha hx)
  have hf : IntervalIntegrable rationalDensity volume a x := hc.intervalIntegrable
  have htf : IntervalIntegrable (fun t => t*rationalDensity t) volume a x :=
    (continuous_id.continuousOn.mul hc).intervalIntegrable
  have hd (t : ℝ) (ht : t ∈ uIcc a x) : 1 < t := (lt_min ha hx).trans_le ht.1
  have h0 := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun t ht => hasDerivAt_slope t (hd t ht)) hf.neg
  have h1 := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (f := fun t => t*slope t-correction t)
    (f' := fun t => -(t*rationalDensity t)) (a := a) (b := x) (fun t ht => by
      have h := ((hasDerivAt_id t).mul (hasDerivAt_slope t (hd t ht))).sub
        (hasDerivAt_correction t (hd t ht))
      convert h using 1 <;> first | rfl | (simp only [id_eq]; ring)) htf.neg
  rw [intervalIntegral.integral_neg] at h0 h1
  have he : (∫ t in a..x, (x-t)*rationalDensity t) =
      x*(∫ t in a..x, rationalDensity t) - (∫ t in a..x, t*rationalDensity t) := by
    calc
      _ = ∫ t in a..x, (x*rationalDensity t-t*rationalDensity t) := by
        apply intervalIntegral.integral_congr
        intro t _
        ring
      _ = _ := by rw [intervalIntegral.integral_sub (hf.const_mul x) htf,
        intervalIntegral.integral_const_mul]
  unfold rationalRieszPrimitive
  rw [he]
  nlinarith only [h1, congrArg (fun t : ℝ => x*t) h0]
end GRWTSK.Analysis.Real.ClassicalRieszCorrection
