# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.CorrectionAudit.Variant8fa78c5c33bec8e3bd38d47d01d47c6de8164e551aa7a27b9788679c84a2d43f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bab3fa5713841130ceb2140fb670c27ebcae6ebe` · SHA-256 `081a6973d70f1ae1001ee508e43f0f04d0af7e51efd507f966e3bc7698ee24d8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.SourceMultiplierLower.Varianta23d01a809f9c5f5963a2c9c787aeefdb1b6eba39690c898b5c8d8c8105060c9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a23d01a809f9c5f5963a2c9c787aeefdb1b6eba39690c898b5c8d8c8105060c9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.SourceMultiplierLower.Varianta23d01a809f9c5f5963a2c9c787aeefdb1b6eba39690c898b5c8d8c8105060c9","mathematical_subject":"Analysis.Integration","original_sha256":"a23d01a809f9c5f5963a2c9c787aeefdb1b6eba39690c898b5c8d8c8105060c9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/correction-audit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateCorrelation


namespace GRWTSK.Analysis.RealAnalysis.Integration.SourceMultiplierLower.Varianta23d01a809f9c5f5963a2c9c787aeefdb1b6eba39690c898b5c8d8c8105060c9

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceCorrectionEstimate
open MeasureTheory
open FormalResearch.RiemannHypothesis.SourcePairing
open Realization CorrelationRegularity BridgeFourier BridgeAdmissibility
open FormalResearch.Analysis.ReciprocalKernel
noncomputable section

lemma source_multiplier_lower (ξ : ℝ) : archimedeanMultiplier 0 ≤ archimedeanMultiplier ξ := by
  have hs := (AdmissionSource.quarter_series ξ).tsum_eq
  have hn : 0 ≤ ∑' n : ℕ, kernel (ξ / 2) (n + 1 / 4) := tsum_nonneg (fun n : ℕ ↦ kernel_nonneg (ξ / 2) (n + 1 / 4) (by positivity))
  rw [hs] at hn
  have hzero : archimedeanMultiplier 0 = -archimedeanConstant := by
    simp [archimedeanMultiplier, archimedeanConstant]
  linarith

lemma archimedeanValue_lower_of_mass (A : ℝ) (hA : 1 ≤ A)
    (hmass : (∫ ξ, Complex.normSq
      (sourceFourier (normalizedTest explicitSecondDerivative A) ξ)) = 2 * Real.pi) :
    archimedeanMultiplier 0 ≤ archimedeanValue explicitSecondDerivative A := by
  have h := integral_mono
    ((actual_fourier_square_integrable A hA).const_mul (archimedeanMultiplier 0))
    (AdmissionSource.archimedean_integrability A hA)
    (fun ξ ↦ mul_le_mul_of_nonneg_right (source_multiplier_lower ξ) (Complex.normSq_nonneg _))
  rw [integral_const_mul, hmass] at h
  unfold archimedeanValue
  exact (le_div_iff₀ (by positivity)).mpr h

lemma first_correction_lower (A : ℝ) (hA : 1 ≤ A) :
    -4 ≤ 2 * ∫ t in 0..2 * A, Real.exp (-t / 2) *
      sourceCorrelation explicitSecondDerivative A t := by
  have hc := (sourceCorrelation_contDiff A (by linarith)).continuous
  have he : Continuous (fun t : ℝ ↦ Real.exp (-t / 2)) := by fun_prop
  have h := intervalIntegral.integral_mono_on (μ := volume) (by linarith : (0 : ℝ) ≤ 2 * A)
    (he.neg.intervalIntegrable _ _) ((he.mul hc).intervalIntegrable _ _)
    (fun t _ ↦ show -Real.exp (-t / 2) ≤ Real.exp (-t / 2) *
      sourceCorrelation explicitSecondDerivative A t by
      have ht := (abs_le.mp (EstimateCorrelation.actual_correlation_abs_le_one A t hA)).1
      nlinarith [Real.exp_pos (-t / 2)])
  have hp : (∫ t in 0..2 * A, -Real.exp (-t / 2)) = 2 * Real.exp (-A) - 2 := by
    have hd (t : ℝ) : HasDerivAt (fun x : ℝ ↦ 2 * Real.exp (-x / 2))
        (-Real.exp (-t / 2)) t := by
      apply ((((hasDerivAt_id t).neg.div_const 2).exp).const_mul 2).congr_deriv
      simp only [Pi.neg_apply, id_eq]
      ring
    rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ ↦ hd t) (he.neg.intervalIntegrable _ _)]
    simp only [neg_zero, zero_div, Real.exp_zero, mul_one]
    congr 2
    ring
  simp only [Pi.neg_apply, Pi.mul_apply] at h
  rw [hp] at h
  linarith [Real.exp_pos (-A)]

lemma second_correction_lower (A : ℝ) (hA : 1 ≤ A) :
    -4 * (Real.sqrt 2 - 1) ≤ 2 * ∫ t in 0..lowerEndpoint, Real.exp (t / 2) *
      sourceCorrelation explicitSecondDerivative A t := by
  have hc := (sourceCorrelation_contDiff A (by linarith)).continuous
  have he : Continuous (fun t : ℝ ↦ Real.exp (t / 2)) := by fun_prop
  have h := intervalIntegral.integral_mono_on (μ := volume)
    (by exact (Real.log_nonneg (by norm_num) : 0 ≤ Real.log 2) : 0 ≤ lowerEndpoint)
    (he.neg.intervalIntegrable _ _) ((he.mul hc).intervalIntegrable _ _)
    (fun t _ ↦ show -Real.exp (t / 2) ≤ Real.exp (t / 2) *
      sourceCorrelation explicitSecondDerivative A t by
      have ht := (abs_le.mp (EstimateCorrelation.actual_correlation_abs_le_one A t hA)).1
      nlinarith [Real.exp_pos (t / 2)])
  have hp : (∫ t in 0..lowerEndpoint, -Real.exp (t / 2)) = -2 * (Real.sqrt 2 - 1) := by
    have hd (t : ℝ) : HasDerivAt (fun x : ℝ ↦ -2 * Real.exp (x / 2))
        (-Real.exp (t / 2)) t := by
      apply ((((hasDerivAt_id t).div_const 2).exp).const_mul (-2)).congr_deriv
      simp only [Pi.neg_apply, id_eq]
      ring
    rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ ↦ hd t) (he.neg.intervalIntegrable _ _)]
    simp only [zero_div, Real.exp_zero, mul_one, lowerEndpoint, Real.exp_half,
      Real.exp_log (by norm_num : (0 : ℝ) < 2)]
    ring
  simp only [Pi.neg_apply, Pi.mul_apply] at h
  rw [hp] at h
  linarith

lemma correction_lower_of_mass (A : ℝ) (hA : 1 ≤ A)
    (hmass : (∫ ξ, Complex.normSq
      (sourceFourier (normalizedTest explicitSecondDerivative A) ξ)) = 2 * Real.pi) :
    archimedeanMultiplier 0 - 6 * Real.sqrt 2 ≤ analyticCorrection explicitSecondDerivative A := by
  have harch := archimedeanValue_lower_of_mass A hA hmass
  have hfirst := first_correction_lower A hA
  have hsecond := second_correction_lower A hA
  have hprime := (abs_le.mp (EstimateCorrelation.actual_prime_two_boundary_abs_le A hA)).1
  unfold analyticCorrection
  linarith

end
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceCorrectionEstimate
```
