/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals
import Mathlib.Tactic

/-!
# Fixed real projection of a complex Laplace kernel

The squared projection has a constant term and a term at twice the
frequency. The constant term gives the factor of two in the boundary
energy bound for the Laplace transform of a real waveform.
-/

set_option autoImplicit false

noncomputable section

open Filter MeasureTheory Set
open scoped Topology

namespace GRWTSK.MeasureAndIntegration.LaplaceFixedRotation

/-- Project a complex oscillation with a fixed rotation coefficient. -/
def rotationWave (d : ℂ) (γ t : ℝ) : ℝ :=
  (d * Complex.exp (-((γ : ℂ) * Complex.I) * (t : ℂ))).re

private theorem damped_rotation_sq (d : ℂ) (σ γ t : ℝ) :
    Real.exp (-σ * t) * rotationWave d γ t ^ 2 =
      (‖d‖ ^ 2 / 2) * Real.exp (-σ * t) +
        (d ^ 2 * Complex.exp (-((σ : ℂ) + 2 * (γ : ℂ) * Complex.I) * (t : ℂ))).re / 2 := by
  let v : ℂ := -((γ : ℂ) * Complex.I) * (t : ℂ)
  let z : ℂ := d * Complex.exp v
  have hnorm : ‖z‖ = ‖d‖ := by
    simp [z, v, Complex.norm_exp, Complex.mul_re]
  have hsq : 2 * z.re ^ 2 = ‖z‖ ^ 2 + (z ^ 2).re := by
    rw [← Complex.normSq_eq_norm_sq, Complex.normSq_apply,
      show (z ^ 2).re = z.re * z.re - z.im * z.im by rw [pow_two, Complex.mul_re]]
    ring
  have harg : -((σ : ℂ) + 2 * (γ : ℂ) * Complex.I) * (t : ℂ) =
      ((-σ * t : ℝ) : ℂ) + v + v := by
    dsimp [v]
    push_cast
    ring
  have hre :
      (d ^ 2 * Complex.exp (-((σ : ℂ) + 2 * (γ : ℂ) * Complex.I) * (t : ℂ))).re =
        Real.exp (-σ * t) * (z ^ 2).re := by
    rw [harg, Complex.exp_add, Complex.exp_add, ← Complex.ofReal_exp]
    rw [show d ^ 2 * ((↑(Real.exp (-σ * t)) * Complex.exp v) * Complex.exp v) =
      (↑(Real.exp (-σ * t)) : ℂ) * z ^ 2 by dsimp [z]; ring, Complex.re_ofReal_mul]
  change Real.exp (-σ * t) * z.re ^ 2 = _
  rw [hre]
  rw [hnorm] at hsq
  nlinarith only [congrArg (fun x : ℝ => Real.exp (-σ * t) * x) hsq]

/-- The damped square of the real projection is integrable on the positive ray. -/
theorem integrableOn_damped_rotation_sq (d : ℂ) {σ : ℝ} (hσ : 0 < σ) (γ : ℝ) :
    IntegrableOn (fun t : ℝ => Real.exp (-σ * t) * rotationWave d γ t ^ 2) (Ioi 0) := by
  have hreal := integrableOn_exp_mul_Ioi (neg_lt_zero.mpr hσ) 0
  have hcoeff : (-((σ : ℂ) + 2 * (γ : ℂ) * Complex.I)).re < 0 := by
    simpa [Complex.mul_re] using neg_lt_zero.mpr hσ
  have hosc := integrableOn_exp_mul_complex_Ioi hcoeff 0
  simp_rw [damped_rotation_sq]
  exact (hreal.const_mul _).add ((hosc.const_mul (d ^ 2)).re.div_const 2)

private theorem integral_complex_re {f : ℝ → ℂ} (hf : IntegrableOn f (Ioi 0)) :
    (∫ t : ℝ in Ioi 0, (f t).re) = (∫ t : ℝ in Ioi 0, f t).re := by
  simpa only [RCLike.re_to_complex] using integral_re hf

/-- Exact positive-ray integral of the damped squared projection. -/
theorem integral_damped_rotation_sq (d : ℂ) {σ : ℝ} (hσ : 0 < σ) (γ : ℝ) :
    (∫ t : ℝ in Ioi 0, Real.exp (-σ * t) * rotationWave d γ t ^ 2) =
      ‖d‖ ^ 2 / (2 * σ) + (d ^ 2 / ((σ : ℂ) + 2 * (γ : ℂ) * Complex.I)).re / 2 := by
  have hreal := integrableOn_exp_mul_Ioi (neg_lt_zero.mpr hσ) 0
  have hcoeff : (-((σ : ℂ) + 2 * (γ : ℂ) * Complex.I)).re < 0 := by
    simpa [Complex.mul_re] using neg_lt_zero.mpr hσ
  have hosc := integrableOn_exp_mul_complex_Ioi hcoeff 0
  have hoscRe : IntegrableOn (fun t : ℝ =>
      (d ^ 2 * Complex.exp (-((σ : ℂ) + 2 * (γ : ℂ) * Complex.I) * (t : ℂ))).re) (Ioi 0) :=
    (hosc.const_mul (d ^ 2)).re
  simp_rw [damped_rotation_sq]
  rw [integral_add (hreal.const_mul (‖d‖ ^ 2 / 2)) (hoscRe.div_const 2),
    integral_const_mul, integral_div, integral_complex_re (hosc.const_mul (d ^ 2)),
    integral_const_mul, integral_exp_mul_Ioi (neg_lt_zero.mpr hσ),
    integral_exp_mul_complex_Ioi hcoeff]
  simp only [Complex.ofReal_zero, mul_zero, Real.exp_zero, Complex.exp_zero, div_neg,
    neg_div, neg_neg, mul_one_div]
  ring

/-- At nonzero frequency, the doubled-frequency part vanishes after scaling by damping. -/
theorem tendsto_mul_integral_damped_rotation_sq (d : ℂ) {γ : ℝ} (hγ : γ ≠ 0) :
    Tendsto (fun σ : ℝ => σ *
      (∫ t : ℝ in Ioi 0, Real.exp (-σ * t) * rotationWave d γ t ^ 2))
      (𝓝[>] (0 : ℝ)) (𝓝 (‖d‖ ^ 2 / 2)) := by
  let q : ℝ → ℂ := fun σ => (σ : ℂ) + 2 * (γ : ℂ) * Complex.I
  have hq : Continuous q := Complex.continuous_ofReal.add continuous_const
  have hq0 : q 0 ≠ 0 := by
    intro h
    have him := congrArg Complex.im h
    simp [q, Complex.mul_im, hγ] at him
  have hterm : ContinuousAt (fun σ : ℝ => (d ^ 2 / q σ).re / 2) 0 :=
    (Complex.continuous_re.continuousAt.comp (continuousAt_const.div hq.continuousAt hq0)).div_const 2
  have hcont : ContinuousAt (fun σ : ℝ => ‖d‖ ^ 2 / 2 + σ * ((d ^ 2 / q σ).re / 2)) 0 :=
    continuousAt_const.add (continuousAt_id.mul hterm)
  have hlim : Tendsto (fun σ : ℝ => ‖d‖ ^ 2 / 2 + σ * ((d ^ 2 / q σ).re / 2))
      (𝓝[>] (0 : ℝ)) (𝓝 (‖d‖ ^ 2 / 2)) := by
    simpa only [zero_mul, add_zero] using
      (hcont.tendsto.mono_left (show 𝓝[>] (0 : ℝ) ≤ 𝓝 0 from nhdsWithin_le_nhds))
  refine hlim.congr' ?_
  filter_upwards [eventually_mem_nhdsWithin] with σ hσ
  have hσpos : 0 < σ := hσ
  rw [integral_damped_rotation_sq d hσpos γ]
  dsimp [q]
  field_simp [hσpos.ne']

/-- Project the Laplace integral of a real waveform by the same fixed coefficient. -/
theorem re_mul_integral_eq_rotation (d : ℂ) (σ γ : ℝ) {f : ℝ → ℝ}
    (hf : IntegrableOn (fun t : ℝ =>
      Complex.exp (-((σ : ℂ) + (γ : ℂ) * Complex.I) * (t : ℂ)) * (f t : ℂ))
      (Ioi 0)) :
    (d * (∫ t : ℝ in Ioi 0,
      Complex.exp (-((σ : ℂ) + (γ : ℂ) * Complex.I) * (t : ℂ)) * (f t : ℂ))).re =
      ∫ t : ℝ in Ioi 0, Real.exp (-σ * t) * f t * rotationWave d γ t := by
  rw [← integral_const_mul, ← integral_complex_re (hf.const_mul d)]
  apply integral_congr_ae
  filter_upwards with t
  have harg : -((σ : ℂ) + (γ : ℂ) * Complex.I) * (t : ℂ) =
      ((-σ * t : ℝ) : ℂ) + -((γ : ℂ) * Complex.I) * (t : ℂ) := by
    push_cast
    ring
  rw [harg, Complex.exp_add, ← Complex.ofReal_exp, rotationWave]
  rw [show d * ((↑(Real.exp (-σ * t)) * Complex.exp (-((γ : ℂ) * Complex.I) * (t : ℂ))) *
        (f t : ℂ)) =
      ((Real.exp (-σ * t) * f t : ℝ) : ℂ) *
        (d * Complex.exp (-((γ : ℂ) * Complex.I) * (t : ℂ))) by push_cast; ring]
  exact Complex.re_ofReal_mul _ _

end GRWTSK.MeasureAndIntegration.LaplaceFixedRotation
