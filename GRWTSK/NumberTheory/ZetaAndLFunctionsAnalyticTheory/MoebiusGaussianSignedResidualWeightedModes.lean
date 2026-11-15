/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusGaussianSignedResidualPoleMoments
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusGaussianSignedResidualPole

/-!
# Uniform weighted square bound for rescaled residual modes

The phase has modulus one. Changing variables from the rescaled time to
the original physical time gives the exact weighted square normalization.
The polynomial energy envelope then bounds the normalized modes uniformly.
-/

set_option autoImplicit false

noncomputable section

open MeasureTheory Set

namespace GRWTSK.NumberTheory.Moebius.GaussianSignedResidualWeightedModes

open GRWTSK.MeasureAndIntegration.LaplaceCumulativeSquareBound
open GRWTSK.NumberTheory.Moebius.GaussianSignedResidualLaplace
open GRWTSK.NumberTheory.Moebius.GaussianSignedResidualPole
open GRWTSK.NumberTheory.Moebius.GaussianSignedResidualPoleMoments

private theorem norm_rescaledResidualMode_sq (s γ : ℝ) (n : ℕ)
    {T : ℝ} (hT : 0 < T) (v : ℝ) :
    ‖rescaledResidualMode s γ (n + 1) T v‖ ^ 2 =
      T⁻¹ ^ (2 * n) * residualWave s (T * v) ^ 2 := by
  have hphase : ‖Complex.exp (-((γ : ℂ) * Complex.I) * ((T * v : ℝ) : ℂ))‖ = 1 := by
    simp [Complex.norm_exp, Complex.mul_re]
  have hscale : T * T⁻¹ ^ (n + 1) = T⁻¹ ^ n := by
    rw [pow_succ, mul_left_comm, mul_inv_cancel₀ hT.ne', mul_one]
  rw [rescaledResidualMode, norm_mul, norm_mul, hphase, mul_one, hscale,
    Complex.norm_real, Complex.norm_real, Real.norm_eq_abs, Real.norm_eq_abs,
    mul_pow, sq_abs, sq_abs, ← pow_mul, mul_comm n 2]

private theorem weightedMode_eq_dilated (s γ : ℝ) (n : ℕ) {T : ℝ} (hT : 0 < T) :
    (fun v : ℝ => Real.exp (-v) * ‖rescaledResidualMode s γ (n + 1) T v‖ ^ 2) =
      fun v => T⁻¹ ^ (2 * n) *
        (Real.exp (-(1 / T) * (T * v)) * residualWave s (T * v) ^ 2) := by
  funext v
  have harg : -(1 / T) * (T * v) = -v := by
    field_simp [hT.ne']
  rw [harg, norm_rescaledResidualMode_sq s γ n hT]
  ring

/-- The weighted norm of the full signed rescaled mode in the original
physical-time energy normalization. -/
theorem weightedSquare_rescaledResidualMode_eq (s γ : ℝ) (n : ℕ)
    {T : ℝ} (hT : 0 < T) :
    (∫ v : ℝ in Ioi 0, Real.exp (-v) * ‖rescaledResidualMode s γ (n + 1) T v‖ ^ 2) =
      T⁻¹ ^ (2 * n + 1) * weightedSquare (residualWave s) (1 / T) := by
  let g := fun u : ℝ => Real.exp (-(1 / T) * u) * residualWave s u ^ 2
  rw [weightedMode_eq_dilated s γ n hT, integral_const_mul]
  change T⁻¹ ^ (2 * n) * (∫ v : ℝ in Ioi 0, g (T * v)) = _
  rw [integral_comp_mul_left_Ioi g 0 hT, mul_zero, smul_eq_mul, ← mul_assoc, ← pow_succ]
  rfl

theorem integrableOn_weightedSquare_rescaledResidualMode (s γ : ℝ) (n : ℕ)
    {T C : ℝ} (hT : 0 < T)
    (hE : ∀ u : ℝ, 0 ≤ u → residualEnergy s u ≤ C * u ^ (2 * n + 1) + C) :
    IntegrableOn (fun v : ℝ =>
      Real.exp (-v) * ‖rescaledResidualMode s γ (n + 1) T v‖ ^ 2) (Ioi 0) := by
  let g := fun u : ℝ => Real.exp (-(1 / T) * u) * residualWave s u ^ 2
  have hg : IntegrableOn g (Ioi 0) :=
    weightedSquare_integrable (residualWave_continuous s) (one_div_pos.mpr hT) hE
  have hcomp : IntegrableOn (fun v : ℝ => g (T * v)) (Ioi 0) :=
    (integrableOn_Ioi_comp_mul_left_iff g 0 hT).2 (by simpa only [mul_zero] using hg)
  rw [weightedMode_eq_dilated s γ n hT]
  exact hcomp.const_mul _

/-- A single polynomial energy envelope bounds the weighted modes at every
rescaled horizon at least one, uniformly in the demodulation frequency. -/
theorem weightedSquare_rescaledResidualMode_le (s γ : ℝ) (n : ℕ)
    {T C : ℝ} (hT₁ : 1 ≤ T) (hC : 0 ≤ C)
    (hE : ∀ u : ℝ, 0 ≤ u → residualEnergy s u ≤ C * u ^ (2 * n + 1) + C) :
    (∫ v : ℝ in Ioi 0, Real.exp (-v) * ‖rescaledResidualMode s γ (n + 1) T v‖ ^ 2) ≤
      C * (((2 * n + 1).factorial : ℝ) + 1) := by
  let p := 2 * n + 1
  have hT := zero_lt_one.trans_le hT₁
  have hp : 0 ≤ T⁻¹ ^ p := pow_nonneg (inv_nonneg.mpr hT.le) _
  have hdecay : T⁻¹ ^ p ≤ 1 :=
    pow_le_one₀ (inv_nonneg.mpr hT.le) (inv_le_one_of_one_le₀ hT₁)
  rw [weightedSquare_rescaledResidualMode_eq s γ n hT]
  change T⁻¹ ^ p * weightedSquare (residualWave s) (1 / T) ≤ C * ((p.factorial : ℝ) + 1)
  calc
    _ ≤ T⁻¹ ^ p * (C * (p.factorial : ℝ) / (1 / T) ^ p + C) :=
      mul_le_mul_of_nonneg_left
        (residual_weightedSquare_le_factorial s (one_div_pos.mpr hT) hE) hp
    _ = C * (p.factorial : ℝ) + C * T⁻¹ ^ p := by
      rw [one_div, mul_add, ← mul_div_assoc, mul_div_cancel_left₀ _ (pow_ne_zero _ (inv_ne_zero hT.ne'))]
      ring
    _ ≤ _ := by
      rw [mul_add, mul_one]
      exact add_le_add le_rfl (mul_le_of_le_one_right hC hdecay)

end GRWTSK.NumberTheory.Moebius.GaussianSignedResidualWeightedModes
