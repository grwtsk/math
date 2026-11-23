/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiStripGreenKernel
import Mathlib.Analysis.SpecialFunctions.Trigonometric.ArctanDeriv
import Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus

/-! A primitive of the horizontal derivative of the midpoint Green kernel. -/

namespace GRWTSK.XiStripGreenFlux
open Real MeasureTheory GRWTSK.XiStripGreenKernel
noncomputable section

def potential (k d x : ℝ) := (log (cosh (k*x)+sin (k*d))-log (cosh (k*x)-sin (k*d)))/2

def flux (k d x : ℝ) := k*cos (k*d)*cosh (k*x)/(sinh (k*x)^2+cos (k*d)^2)

def primitive (k d x : ℝ) := arctan (sinh (k*x)/cos (k*d))

theorem potential_eq_green {k d x : ℝ} (hl : 0 ≤ ratio k d x) (hu : ratio k d x < 1) :
    potential k d x = green k d x := by
  have hh := cosh_pos (k*x)
  have h1 : sin (k*d) < cosh (k*x) := by simpa [ratio,div_lt_iff₀ hh] using hu
  have h0 : 0 ≤ sin (k*d) := by
    have h := (le_div_iff₀ hh).mp (show 0 ≤ sin (k*d)/cosh (k*x) from hl)
    simpa using h
  rw [half_log_green hl hu,log_div (by linarith) (by linarith)]
  unfold potential
  ring

private theorem denominator {k d : ℝ} (hc : 0 < cos (k*d)) (x : ℝ) :
    0 < sinh (k*x)^2+cos (k*d)^2 := by positivity

theorem potential_derivative {k d : ℝ} (hc : 0 < cos (k*d)) (x : ℝ) :
    HasDerivAt (fun v => potential k v x) (flux k d x) d := by
  have he : (cosh (k*x)+sin (k*d))*(cosh (k*x)-sin (k*d)) =
      sinh (k*x)^2+cos (k*d)^2 := by
    nlinarith [cosh_sq_sub_sinh_sq (k*x),sin_sq_add_cos_sq (k*d)]
  have hp : (cosh (k*x)+sin (k*d))*(cosh (k*x)-sin (k*d)) ≠ 0 := he ▸ (denominator hc x).ne'
  have h1 := left_ne_zero_of_mul hp
  have h2 := right_ne_zero_of_mul hp
  have hsin := ((hasDerivAt_id d).const_mul k).sin
  have h := (((hsin.const_add (cosh (k*x))).log h1).sub ((hsin.const_sub (cosh (k*x))).log h2)).div_const 2
  convert h using 1
  · rfl
  · simp [flux, ← he]
    field_simp
    ring

theorem primitive_derivative {k d : ℝ} (hc : 0 < cos (k*d)) (x : ℝ) :
    HasDerivAt (primitive k d) (flux k d x) x := by
  have hd := ((((hasDerivAt_id x).const_mul k).sinh).div_const (cos (k*d))).arctan
  convert hd using 1
  · rfl
  · simp [flux]
    field_simp
    ring

theorem finite_flux {k d : ℝ} (hc : 0 < cos (k*d)) (a b : ℝ) :
    (∫ x in a..b, flux k d x) = primitive k d b - primitive k d a := by
  apply intervalIntegral.integral_eq_sub_of_hasDerivAt (fun x _ => primitive_derivative hc x)
  apply Continuous.intervalIntegrable
  unfold flux
  exact Continuous.div (by fun_prop) (by fun_prop) (fun x => (denominator hc x).ne')

theorem symmetric_flux {k d : ℝ} (hc : 0 < cos (k*d)) (R : ℝ) :
    (∫ x in -R..R, flux k d x) = 2*arctan (sinh (k*R)/cos (k*d)) := by
  rw [finite_flux hc]
  simp only [primitive, mul_neg, sinh_neg, neg_div, arctan_neg]
  ring

end
end GRWTSK.XiStripGreenFlux
