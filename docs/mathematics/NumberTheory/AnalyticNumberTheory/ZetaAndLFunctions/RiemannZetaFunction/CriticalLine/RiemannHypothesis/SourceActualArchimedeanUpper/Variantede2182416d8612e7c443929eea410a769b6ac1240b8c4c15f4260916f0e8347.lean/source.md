# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualArchimedeanUpper.Variantede2182416d8612e7c443929eea410a769b6ac1240b8c4c15f4260916f0e8347

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9c278a56afe71e941514ae9be2da89841b25eb6b` · SHA-256 `ede2182416d8612e7c443929eea410a769b6ac1240b8c4c15f4260916f0e8347`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualSecondFourierMoment
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceCorrectionEstimate

/-!
The actual quarter-digamma series has a quadratic frequency upper bound. Genuine
Fourier second-moment normalization transports it to the unchanged archimedean
value, with its original multiplier, normalized source and full-line integral.
No signed prime-power, zero-head or original Estimate witness is inferred.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/
set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualArchimedeanUpper
open MeasureTheory
open Filter
open scoped Topology
open SourcePairing SourceDerivativeEnergy SourceActualSecondFourierMoment
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity BridgeFourier SourcePlancherel BridgeAdmissibility
open FormalResearch.Analysis.ReciprocalKernel
noncomputable section

/-- At the genuine quarter endpoint, the positive series kernel is quadratic in frequency. -/
theorem kernel_quarter_quadratic (b : ℝ) : kernel b (1 / 4) ≤ 64 * b^2 := by
  unfold kernel
  apply (div_le_iff₀ (by positivity : (0 : ℝ) < 1 / 4 * ((1 / 4)^2 + b^2))).mpr
  nlinarith [sq_nonneg (b^2)]

/-- The proved actual quarter-digamma series retains its sharper quadratic budget. -/
theorem actual_multiplier_quadratic_upper (ξ : ℝ) :
    archimedeanMultiplier ξ ≤ archimedeanMultiplier 0 + 18 * ξ^2 := by
  have hsum := (kernel_sum_bounds (ξ / 2) (1 / 4) (by norm_num)).2
  have hk := kernel_quarter_quadratic (ξ / 2)
  have hl := Real.log_le_sub_one_of_pos (by positivity : (0 : ℝ) < 1 + 4 * ξ^2)
  have hs := (AdmissionSource.quarter_series ξ).tsum_eq
  have hzero : archimedeanMultiplier 0 = -archimedeanConstant := by
    simp [archimedeanMultiplier, archimedeanConstant]
  have he : 1 + (ξ / 2)^2 * ((1 / 4 : ℝ)⁻¹)^2 = 1 + 4 * ξ^2 := by norm_num; ring
  rw [he, hs] at hsum
  rw [hzero]
  nlinarith

/-- Genuine integrability and mass transport the quadratic multiplier bound to the actual value. -/
theorem actual_archimedean_upper_by_derivative_energy {A : ℝ} (hA : 1 ≤ A) :
    archimedeanValue explicitSecondDerivative A ≤ archimedeanMultiplier 0 +
      18 * (∫ x : ℝ, (deriv (normalizedTest explicitSecondDerivative A) x)^2) := by
  have hmajor := ((actual_fourier_square_integrable A hA).const_mul
      (archimedeanMultiplier 0)).add
    ((actual_source_second_moment_integrable hA).const_mul 18)
  have h := integral_mono (AdmissionSource.archimedean_integrability A hA) hmajor
    (fun ξ => show archimedeanIntegrand explicitSecondDerivative A ξ ≤
      archimedeanMultiplier 0 * Complex.normSq
        (sourceFourier (normalizedTest explicitSecondDerivative A) ξ) +
      18 * (ξ^2 * Complex.normSq
        (sourceFourier (normalizedTest explicitSecondDerivative A) ξ)) from by
      dsimp only [archimedeanIntegrand]
      have hb := mul_le_mul_of_nonneg_right (actual_multiplier_quadratic_upper ξ)
        (Complex.normSq_nonneg (sourceFourier (normalizedTest explicitSecondDerivative A) ξ))
      nlinarith)
  simp only [Pi.add_apply] at h
  rw [integral_add ((actual_fourier_square_integrable A hA).const_mul _)
      ((actual_source_second_moment_integrable hA).const_mul _),
    integral_const_mul, integral_const_mul, actual_source_fourier_mass A hA,
    actual_source_second_moment hA] at h
  unfold archimedeanValue
  apply (div_le_iff₀ (by positivity : (0 : ℝ) < 2 * Real.pi)).mpr
  nlinarith

/-- All real scales A≥1 have the explicit original archimedean upper bound. -/
theorem actual_archimedean_quadratic_upper {A : ℝ} (hA : 1 ≤ A) :
    archimedeanValue explicitSecondDerivative A ≤ archimedeanMultiplier 0 +
      (18 * (162826 / 7623 : ℝ)) / A^2 := by
  apply (actual_archimedean_upper_by_derivative_energy hA).trans
  have hpos : 0 < A^2 := by nlinarith
  have henergy := actual_derivative_energy_upper hA
  have he : (∫ x : ℝ, (deriv (normalizedTest explicitSecondDerivative A) x)^2) ≤
      (162826 / 7623 : ℝ) / A^2 := (le_div_iff₀ hpos).mpr (by nlinarith)
  rw [mul_div_assoc]
  exact add_le_add_left (mul_le_mul_of_nonneg_left he (by norm_num : (0 : ℝ) ≤ 18)) _

/-- Both sides constrain the actual analytic value; the signed target remains separate. -/
theorem actual_archimedean_two_sided {A : ℝ} (hA : 1 ≤ A) :
    0 ≤ archimedeanValue explicitSecondDerivative A - archimedeanMultiplier 0 ∧
    archimedeanValue explicitSecondDerivative A - archimedeanMultiplier 0 ≤
      (18 * (162826 / 7623 : ℝ)) / A^2 := by
  have hlo := SourceCorrectionEstimate.actual_archimedean_lower A hA
  have hhi := actual_archimedean_quadratic_upper hA
  constructor <;> linarith

/-- The actual analytic contribution alone is uniformly bounded at every permitted real scale. -/
theorem actual_archimedean_uniform_upper {A : ℝ} (hA : 1 ≤ A) :
    archimedeanValue explicitSecondDerivative A ≤ archimedeanMultiplier 0 +
      (18 * (162826 / 7623 : ℝ)) := by
  apply (actual_archimedean_quadratic_upper hA).trans
  apply add_le_add_left
  have h := div_le_div_of_nonneg_left (by positivity :
    0 ≤ 18 * (162826 / 7623 : ℝ)) (by norm_num : (0 : ℝ) < 1)
    (by nlinarith : (1 : ℝ) ≤ A^2)
  simpa only [div_one] using h

/-- The genuine original archimedean value converges to its true zero-frequency multiplier. -/
theorem actual_archimedean_tendsto_zero_frequency :
    Tendsto (fun A : ℝ => archimedeanValue explicitSecondDerivative A)
      atTop (𝓝 (archimedeanMultiplier 0)) := by
  have hbound : Tendsto (fun A : ℝ => (18 * (162826 / 7623 : ℝ)) / A^2)
      atTop (𝓝 0) := by
    simpa only [div_eq_mul_inv, inv_pow, zero_pow (by decide : 2 ≠ 0), mul_zero] using
      (tendsto_inv_atTop_zero.pow 2).const_mul (18 * (162826 / 7623 : ℝ))
  have hz : Tendsto (fun A : ℝ =>
      archimedeanValue explicitSecondDerivative A - archimedeanMultiplier 0)
      atTop (𝓝 0) := by
    apply squeeze_zero' _ _ hbound
    · filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
      exact (actual_archimedean_two_sided hA).1
    · filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
      exact (actual_archimedean_two_sided hA).2
  simpa only [sub_add_cancel, zero_add] using hz.add_const (archimedeanMultiplier 0)

end
end FormalResearch.RiemannHypothesis.SourceActualArchimedeanUpper
```
