# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.SourceCorrectionEstimate.Variante57f1aab57843726c120681970ad2abeda7b428e31ab4e6a62203c0f4f0bdc1e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5870acb7418744ea9916a462b97c1ce479afaee6` · SHA-256 `50f64dc736a644e34bee2665a70ccc71c9396a2c39b97cd9054b3a0619a41e99`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.SourceMultiplierLower.Variant36b00afe83e493aa9ab706aa290aea5564375a0b8042ecfd70aecd689b85de7e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"36b00afe83e493aa9ab706aa290aea5564375a0b8042ecfd70aecd689b85de7e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.SourceMultiplierLower.Variant36b00afe83e493aa9ab706aa290aea5564375a0b8042ecfd70aecd689b85de7e","mathematical_subject":"Analysis.Integration","original_sha256":"36b00afe83e493aa9ab706aa290aea5564375a0b8042ecfd70aecd689b85de7e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-signed-cycle-20261006/rational/preserved-inputs/FormalResearch/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/SourceCorrectionEstimate.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourcePlancherel

/-!
# An unconditional lower bound for the actual analytic correction

The actual digamma difference series proves that its Fourier multiplier has a
minimum at zero. Genuine archimedean admission and exact source Plancherel
normalization then give the same lower bound for the archimedean value.

The two remaining interval terms are bounded using the actual norm-one
correlation, and the separate prime-two atom is retained. Their combined loss
is at most `6√2`, proving `M(A) ≥ m(0) - 6√2` for every `A ≥ 1`.
This bounds the independently defined analytic correction only; it does not
bound the signed prime-power error or establish RH.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.SourceMultiplierLower.Variant36b00afe83e493aa9ab706aa290aea5564375a0b8042ecfd70aecd689b85de7e

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace SourceCorrectionEstimate
open MeasureTheory
open FormalResearch.RiemannHypothesis.SourcePairing
open Realization CorrelationRegularity BridgeFourier BridgeAdmissibility
open FormalResearch.Analysis.ReciprocalKernel
noncomputable section

/-- Nonnegativity of the actual quarter-line difference series gives the global minimum. -/
lemma source_multiplier_lower (ξ : ℝ) : archimedeanMultiplier 0 ≤ archimedeanMultiplier ξ := by
  have hs := (AdmissionSource.quarter_series ξ).tsum_eq
  have hn : 0 ≤ ∑' n : ℕ, kernel (ξ / 2) (n + 1 / 4) :=
    tsum_nonneg (fun n : ℕ ↦ kernel_nonneg (ξ / 2) (n + 1 / 4) (by positivity))
  rw [hs] at hn
  have hzero : archimedeanMultiplier 0 = -archimedeanConstant := by
    simp [archimedeanMultiplier, archimedeanConstant]
  linarith

/-- Integrating the multiplier bound retains the exact Fourier-mass hypothesis. -/
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

/-- The decaying exponential correlation term is bounded below by `-4`. -/
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
    rw [intervalIntegral.integral_eq_sub_of_hasDerivAt
      (fun t _ ↦ hd t) (he.neg.intervalIntegrable _ _)]
    simp only [neg_zero, zero_div, Real.exp_zero, mul_one]
    rw [show -(2 * A) / 2 = -A by ring]
  simp only [Pi.neg_apply, Pi.mul_apply] at h
  rw [hp] at h
  linarith [Real.exp_pos (-A)]

/-- The fixed initial interval contributes at worst `-4(√2-1)`. -/
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
      simp only [id_eq]
      ring
    rw [intervalIntegral.integral_eq_sub_of_hasDerivAt
      (fun t _ ↦ hd t) (he.neg.intervalIntegrable _ _)]
    simp only [zero_div, Real.exp_zero, mul_one, lowerEndpoint, Real.exp_half,
      Real.exp_log (by norm_num : (0 : ℝ) < 2)]
    ring
  simp only [Pi.neg_apply, Pi.mul_apply] at h
  rw [hp] at h
  linarith

/-- Assembly retains the atomic prime-two term and the explicit Fourier normalization. -/
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

/-- Exact source Plancherel normalization discharges the Fourier-mass hypothesis. -/
lemma actual_archimedean_lower (A : ℝ) (hA : 1 ≤ A) :
    archimedeanMultiplier 0 ≤ archimedeanValue explicitSecondDerivative A :=
  archimedeanValue_lower_of_mass A hA (SourcePlancherel.actual_source_fourier_mass A hA)

/-- The full source correction has this unconditional all-scale lower bound. -/
lemma actual_correction_lower (A : ℝ) (hA : 1 ≤ A) :
    archimedeanMultiplier 0 - 6 * Real.sqrt 2 ≤ analyticCorrection explicitSecondDerivative A :=
  correction_lower_of_mass A hA (SourcePlancherel.actual_source_fourier_mass A hA)

end
end SourceCorrectionEstimate
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```
