/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Complex
import Mathlib.MeasureTheory.Measure.Lebesgue.Basic
import Mathlib.Tactic

/-!
# Continuous sine transform of a supported real odd Weil test

This is the angular Fourier parity step in §11 of
`WeilOddSupportBoundaryReflection.md` at 84eac80421379d78a17ddbf3d975e5416301f97a
(grwtsk/hs#2, comment 6887388904). The left side of
`angularFourier_eq_halfSineMoment` is the defining integral of
`SupportedFourierBessel.angularFourier` applied to the real lift. The phase is
`-I * (ξ * t)` with no rescaling of ξ. Reflect the negative half interval
using oddness, then subtract the two complex exponentials. Squaring yields
the density factor needed before applying Plancherel and folding the
frequency integral onto the positive axis.

The Plancherel and original arithmetic source identities remain separate.
Independent analytical review: NOT_RUN.
-/

set_option autoImplicit false

open MeasureTheory Set
open scoped Interval

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddContinuousSine

/-- The sine moment on the positive half of the physical test interval. -/
noncomputable def halfSineMoment (T : ℝ) (f : ℝ → ℝ) (ξ : ℝ) : ℝ :=
  ∫ t in (0 : ℝ)..T, f t * Real.sin (ξ * t)

/-- Exact pointwise angular Fourier parity for a real odd test supported in
`[-T,T]`. Continuity is enough for this step on the original admissible tests. -/
theorem angularFourier_eq_halfSineMoment {T : ℝ} (hT : 0 ≤ T) {f : ℝ → ℝ}
    (hf : Continuous f) (hodd : Function.Odd f)
    (hsupport : ∀ t, t ∉ Icc (-T) T → f t = 0) (ξ : ℝ) :
    (∫ t : ℝ, (f t : ℂ) * Complex.exp (-Complex.I * ((ξ * t : ℝ) : ℂ))) =
      (-2 * Complex.I) * (halfSineMoment T f ξ : ℂ) := by
  let g := fun t : ℝ => (f t : ℂ) * Complex.exp (-Complex.I * ((ξ * t : ℝ) : ℂ))
  change (∫ t : ℝ, g t) = _
  have hg : Continuous g := by unfold g; fun_prop
  have hsym : -T ≤ T := by linarith
  have hrestrict : (∫ t : ℝ, g t) = ∫ t in (-T)..T, g t := by
    rw [intervalIntegral.integral_of_le hsym, ← integral_Icc_eq_integral_Ioc]
    exact (setIntegral_eq_integral_of_forall_compl_eq_zero fun t ht => by
      simp [g, hsupport t ht]).symm
  have hreflect : (∫ t in (0 : ℝ)..T, g (-t)) = ∫ t in (-T)..0, g t := by
    rw [intervalIntegral.integral_comp_neg, neg_zero]
  have hphase (t : ℝ) :
      g t + g (-t) = (-2 * Complex.I) * ((f t * Real.sin (ξ * t) : ℝ) : ℂ) := by
    dsimp [g]
    rw [hodd t]
    have hpos : -Complex.I * ((ξ * t : ℝ) : ℂ) =
        -((ξ * t : ℝ) : ℂ) * Complex.I := by ring
    have hneg : -Complex.I * ((ξ * (-t) : ℝ) : ℂ) =
        ((ξ * t : ℝ) : ℂ) * Complex.I := by push_cast; ring
    have hsin : Complex.sin ((ξ : ℂ) * (t : ℂ)) =
        (Real.sin (ξ * t) : ℂ) := by rw [Complex.ofReal_sin, Complex.ofReal_mul]
    rw [hpos, hneg, Complex.exp_mul_I, Complex.exp_mul_I,
      Complex.cos_neg, Complex.sin_neg, Complex.ofReal_neg]
    simp only [Complex.ofReal_mul, hsin]
    ring
  have hnegIntegrable : IntervalIntegrable (fun t => g (-t)) volume 0 T :=
    (hg.comp continuous_neg).intervalIntegrable 0 T
  rw [hrestrict, ← intervalIntegral.integral_add_adjacent_intervals
    (hg.intervalIntegrable (-T) 0) (hg.intervalIntegrable 0 T), ← hreflect, add_comm,
    ← intervalIntegral.integral_add (hg.intervalIntegrable 0 T) hnegIntegrable]
  simp_rw [hphase, intervalIntegral.integral_const_mul, intervalIntegral.integral_ofReal,
    halfSineMoment]

/-- The whole-line angular Fourier density is four times the squared
half-interval sine moment, at every frequency including zero. -/
theorem angularFourier_norm_sq_eq {T : ℝ} (hT : 0 ≤ T) {f : ℝ → ℝ}
    (hf : Continuous f) (hodd : Function.Odd f)
    (hsupport : ∀ t, t ∉ Icc (-T) T → f t = 0) (ξ : ℝ) :
    ‖∫ t : ℝ, (f t : ℂ) * Complex.exp (-Complex.I * ((ξ * t : ℝ) : ℂ))‖ ^ 2 =
      4 * halfSineMoment T f ξ ^ 2 := by
  rw [angularFourier_eq_halfSineMoment hT hf hodd hsupport,
    norm_mul, norm_mul, Complex.norm_I, mul_one,
    Complex.norm_real, Real.norm_eq_abs, mul_pow, sq_abs]
  norm_num

end GRWTSK.NumberTheory.WeilQuadraticForm.OddContinuousSine
