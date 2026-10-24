-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.IntegralNormMulLe.Variant4453b0a91ea9a1d3f2e1d54122a31bb053046f17e1aaff7166eae47874f01b67","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4453b0a91ea9a1d3f2e1d54122a31bb053046f17e1aaff7166eae47874f01b67","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.IntegralNormMulLe.Variant4453b0a91ea9a1d3f2e1d54122a31bb053046f17e1aaff7166eae47874f01b67","mathematical_subject":"Analysis.Integration","original_sha256":"4453b0a91ea9a1d3f2e1d54122a31bb053046f17e1aaff7166eae47874f01b67","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/4453b0a91ea9a1d3f2e1d54122a31bb053046f17e1aaff7166eae47874f01b67.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroLogarithmicCore
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.AdmissionSource

/-!
# Continuity of the actual archimedean term

The proved estimate for the source digamma multiplier bounds its signed
quadratic integral by the exact logarithmic Fourier norm. The error is the
Fourier transform of the function difference, with genuine integrability and
weighted L² membership retained throughout.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.IntegralNormMulLe.Variant4453b0a91ea9a1d3f2e1d54122a31bb053046f17e1aaff7166eae47874f01b67

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace ZeroArchimedeanContinuity

open MeasureTheory
open scoped ENNReal
open FormalResearch.RiemannHypothesis.SourcePairing
open BridgeAdmissibility ZeroLogarithmicCore

noncomputable section

/-- Cauchy–Schwarz for the full-line norm pairing of genuine real L² functions. -/
theorem integral_norm_mul_le {f g : ℝ → ℝ}
    (hf : MemLp f 2 volume) (hg : MemLp g 2 volume) :
    (∫ x, ‖f x‖ * ‖g x‖) ≤ lpNorm f 2 volume * lpNorm g 2 volume := by
  have h := integral_mul_norm_le_Lp_mul_Lq
    (show (2 : ℝ).HolderConjugate 2 by norm_num [Real.holderConjugate_iff])
    (show MemLp f (ENNReal.ofReal 2) volume by simpa using hf)
    (show MemLp g (ENNReal.ofReal 2) volume by simpa using hg)
  simpa [lpNorm_eq_integral_norm_rpow_toReal (by norm_num : (2 : ℝ≥0∞) ≠ 0)
    (by simp : (2 : ℝ≥0∞) ≠ ⊤) hf.aestronglyMeasurable,
    lpNorm_eq_integral_norm_rpow_toReal (by norm_num : (2 : ℝ≥0∞) ≠ 0)
      (by simp : (2 : ℝ≥0∞) ≠ ⊤) hg.aestronglyMeasurable] using h

/-- Cauchy–Schwarz for the actual integral pairing, with membership explicit. -/
theorem integral_mul_abs_le {f g : ℝ → ℝ}
    (hf : MemLp f 2 volume) (hg : MemLp g 2 volume) :
    |∫ x, f x * g x| ≤ lpNorm f 2 volume * lpNorm g 2 volume := by
  calc
    |∫ x, f x * g x| ≤ ∫ x, ‖f x * g x‖ := by
      simpa only [Real.norm_eq_abs] using norm_integral_le_integral_norm (fun x ↦ f x * g x)
    _ = ∫ x, ‖f x‖ * ‖g x‖ := by simp only [norm_mul]
    _ ≤ _ := integral_norm_mul_le hf hg

/-- The actual signed source archimedean term retains its `1 / (2π)` normalization. -/
def archimedeanValue (f : ℝ → ℝ) : ℝ :=
  (∫ ξ, archimedeanMultiplier ξ * Complex.normSq (sourceFourier f ξ)) / (2 * Real.pi)

/-- The existing unconditional digamma estimate is bounded by the complete source weight. -/
theorem multiplier_abs_le_weight (ξ : ℝ) :
    |archimedeanMultiplier ξ| ≤ (|archimedeanConstant| + 4) * logarithmicWeight ξ := by
  have h := BridgeMultiplier.multiplier_abs_le_of_estimate AdmissionSource.multiplier_estimate ξ
  have hlog : 0 ≤ Real.log (1 + 4 * ξ ^ 2) / 2 := by
    exact div_nonneg (Real.log_nonneg (by nlinarith [sq_nonneg ξ])) (by norm_num)
  have hconstant : 0 ≤ |archimedeanConstant| + 4 - 1 := by
    linarith [abs_nonneg archimedeanConstant]
  unfold logarithmicWeight
  nlinarith [mul_nonneg hconstant hlog]

/-- Actual weighted Fourier admission supplies genuine archimedean integrability. -/
theorem archimedean_integrable {f : ℝ → ℝ} (hf : Integrable f volume)
    (hw : Integrable (fun ξ ↦ logarithmicWeight ξ * Complex.normSq (sourceFourier f ξ))) :
    Integrable (fun ξ ↦ archimedeanMultiplier ξ * Complex.normSq (sourceFourier f ξ)) := by
  have hc := BridgeFourier.sourceFourier_continuous hf
  have hm : AEStronglyMeasurable
      (fun ξ ↦ archimedeanMultiplier ξ * Complex.normSq (sourceFourier f ξ)) volume :=
    (BridgeMultiplier.archimedeanMultiplier_measurable.mul
      (Complex.continuous_normSq.comp hc).measurable).aestronglyMeasurable
  apply (hw.const_mul (|archimedeanConstant| + 4)).mono' hm
  filter_upwards [] with ξ
  rw [Real.norm_eq_abs, abs_mul, abs_of_nonneg (Complex.normSq_nonneg _)]
  simpa only [mul_assoc] using mul_le_mul_of_nonneg_right (multiplier_abs_le_weight ξ)
    (Complex.normSq_nonneg (sourceFourier f ξ))

/-- The difference of complex norm-squares is controlled by the actual difference norm. -/
theorem normSq_sub_abs_le (z w : ℂ) :
    |Complex.normSq z - Complex.normSq w| ≤ ‖z - w‖ * (‖z‖ + ‖w‖) := by
  have heq : Complex.normSq z - Complex.normSq w = (‖z‖ - ‖w‖) * (‖z‖ + ‖w‖) := by
    simp only [Complex.normSq_eq_norm_sq]
    ring
  rw [heq, abs_mul, abs_of_nonneg (add_nonneg (norm_nonneg z) (norm_nonneg w))]
  exact mul_le_mul_of_nonneg_right (abs_norm_sub_norm_le z w)
    (add_nonneg (norm_nonneg z) (norm_nonneg w))

/-- Two normalized weighted magnitudes reproduce the full weight without changing the error. -/
theorem weighted_product_eq (error f g : ℝ → ℝ) (ξ : ℝ) :
    weightedFourierNorm error ξ * (weightedFourierNorm f ξ + weightedFourierNorm g ξ) =
      (logarithmicWeight ξ / (2 * Real.pi)) * ‖sourceFourier error ξ‖ *
        (‖sourceFourier f ξ‖ + ‖sourceFourier g ξ‖) := by
  unfold weightedFourierNorm
  calc
    _ = Real.sqrt (logarithmicWeight ξ / (2 * Real.pi)) ^ 2 *
        ‖sourceFourier error ξ‖ * (‖sourceFourier f ξ‖ + ‖sourceFourier g ξ‖) := by ring
    _ = _ := by
      rw [Real.sq_sqrt (div_nonneg (logarithmicWeight_nonneg ξ) (by positivity))]

/-- The normalized pointwise archimedean difference has the exact weighted error majorant. -/
theorem archimedean_difference_pointwise {f g : ℝ → ℝ}
    (hf : Integrable f volume) (hg : Integrable g volume) (ξ : ℝ) :
    |(archimedeanMultiplier ξ * Complex.normSq (sourceFourier f ξ) -
        archimedeanMultiplier ξ * Complex.normSq (sourceFourier g ξ)) / (2 * Real.pi)| ≤
      (|archimedeanConstant| + 4) * weightedFourierNorm (fun x ↦ f x - g x) ξ *
        (weightedFourierNorm f ξ + weightedFourierNorm g ξ) := by
  have hdiff := normSq_sub_abs_le (sourceFourier f ξ) (sourceFourier g ξ)
  rw [← sourceFourier_sub hf hg ξ] at hdiff
  have hp : 0 < 2 * Real.pi := by positivity
  rw [← mul_sub, abs_div, abs_mul, abs_of_pos hp]
  calc
    _ ≤ ((|archimedeanConstant| + 4) * logarithmicWeight ξ) *
        (‖sourceFourier (fun x ↦ f x - g x) ξ‖ *
          (‖sourceFourier f ξ‖ + ‖sourceFourier g ξ‖)) / (2 * Real.pi) := by
      apply div_le_div_of_nonneg_right _ hp.le
      exact mul_le_mul (multiplier_abs_le_weight ξ) hdiff (abs_nonneg _)
        (mul_nonneg (by positivity) (logarithmicWeight_nonneg ξ))
    _ = _ := by
      rw [mul_assoc (|archimedeanConstant| + 4)
        (weightedFourierNorm (fun x ↦ f x - g x) ξ), weighted_product_eq]
      ring

/-- Weighted Cauchy–Schwarz controls the source archimedean term by the actual function error.
The three weighted admission premises establish genuine integrability of both forms and error. -/
theorem archimedeanValue_sub_le {f g : ℝ → ℝ}
    (hf : Integrable f volume) (hg : Integrable g volume)
    (hwf : Integrable (fun ξ ↦ logarithmicWeight ξ * Complex.normSq (sourceFourier f ξ)))
    (hwg : Integrable (fun ξ ↦ logarithmicWeight ξ * Complex.normSq (sourceFourier g ξ)))
    (hwe : Integrable (fun ξ ↦ logarithmicWeight ξ *
      Complex.normSq (sourceFourier (fun x ↦ f x - g x) ξ))) :
    |archimedeanValue f - archimedeanValue g| ≤
      (|archimedeanConstant| + 4) * logarithmicNorm (fun x ↦ f x - g x) *
        (logarithmicNorm f + logarithmicNorm g) := by
  have hfirst := weightedFourierNorm_memLp_two hf hwf
  have hsecond := weightedFourierNorm_memLp_two hg hwg
  have hfg : Integrable (fun x ↦ f x - g x) volume := hf.sub hg
  have herror := weightedFourierNorm_memLp_two hfg hwe
  have harchFirst := archimedean_integrable hf hwf
  have harchSecond := archimedean_integrable hg hwg
  have harchError : Integrable (fun ξ ↦
      (archimedeanMultiplier ξ * Complex.normSq (sourceFourier f ξ) -
        archimedeanMultiplier ξ * Complex.normSq (sourceFourier g ξ)) / (2 * Real.pi)) := by
    simpa only [Pi.sub_apply] using (harchFirst.sub harchSecond).div_const (2 * Real.pi)
  have hmajor : Integrable (fun ξ ↦
      (|archimedeanConstant| + 4) * weightedFourierNorm (fun x ↦ f x - g x) ξ *
        (weightedFourierNorm f ξ + weightedFourierNorm g ξ)) volume := by
    apply ((herror.integrable_mul (hfirst.add hsecond)).const_mul
      (|archimedeanConstant| + 4)).congr
    exact Filter.Eventually.of_forall fun ξ ↦ by
      simp only [Pi.mul_apply, Pi.add_apply]
      ring
  have hcs : (∫ ξ, weightedFourierNorm (fun x ↦ f x - g x) ξ *
      (weightedFourierNorm f ξ + weightedFourierNorm g ξ)) ≤
      logarithmicNorm (fun x ↦ f x - g x) * (logarithmicNorm f + logarithmicNorm g) := by
    calc
      _ = (∫ ξ, weightedFourierNorm (fun x ↦ f x - g x) ξ * weightedFourierNorm f ξ) +
          ∫ ξ, weightedFourierNorm (fun x ↦ f x - g x) ξ * weightedFourierNorm g ξ := by
        simp_rw [mul_add]
        exact integral_add (herror.integrable_mul hfirst) (herror.integrable_mul hsecond)
      _ ≤ lpNorm (weightedFourierNorm (fun x ↦ f x - g x)) 2 volume *
          lpNorm (weightedFourierNorm f) 2 volume +
          lpNorm (weightedFourierNorm (fun x ↦ f x - g x)) 2 volume *
          lpNorm (weightedFourierNorm g) 2 volume :=
        add_le_add ((le_abs_self _).trans (integral_mul_abs_le herror hfirst))
          ((le_abs_self _).trans (integral_mul_abs_le herror hsecond))
      _ = _ := by
        rw [lpNorm_weightedFourierNorm hfg hwe, lpNorm_weightedFourierNorm hf hwf,
          lpNorm_weightedFourierNorm hg hwg]
        ring
  have hidentity : archimedeanValue f - archimedeanValue g =
      ∫ ξ, (archimedeanMultiplier ξ * Complex.normSq (sourceFourier f ξ) -
        archimedeanMultiplier ξ * Complex.normSq (sourceFourier g ξ)) / (2 * Real.pi) := by
    rw [archimedeanValue, archimedeanValue, ← sub_div,
      ← integral_sub harchFirst harchSecond, integral_div]
  calc
    |archimedeanValue f - archimedeanValue g| =
        |∫ ξ, (archimedeanMultiplier ξ * Complex.normSq (sourceFourier f ξ) -
          archimedeanMultiplier ξ * Complex.normSq (sourceFourier g ξ)) / (2 * Real.pi)| :=
      congrArg abs hidentity
    _ ≤ ∫ ξ, ‖(archimedeanMultiplier ξ * Complex.normSq (sourceFourier f ξ) -
        archimedeanMultiplier ξ * Complex.normSq (sourceFourier g ξ)) / (2 * Real.pi)‖ := by
      simpa only [Real.norm_eq_abs] using norm_integral_le_integral_norm
        (fun ξ ↦ (archimedeanMultiplier ξ * Complex.normSq (sourceFourier f ξ) -
          archimedeanMultiplier ξ * Complex.normSq (sourceFourier g ξ)) / (2 * Real.pi))
    _ ≤ ∫ ξ, (|archimedeanConstant| + 4) * weightedFourierNorm (fun x ↦ f x - g x) ξ *
        (weightedFourierNorm f ξ + weightedFourierNorm g ξ) := by
      apply integral_mono harchError.norm hmajor
      intro ξ
      simpa only [Real.norm_eq_abs] using archimedean_difference_pointwise hf hg ξ
    _ = (|archimedeanConstant| + 4) * ∫ ξ, weightedFourierNorm (fun x ↦ f x - g x) ξ *
        (weightedFourierNorm f ξ + weightedFourierNorm g ξ) := by
      simp_rw [mul_assoc]
      rw [integral_const_mul]
    _ ≤ (|archimedeanConstant| + 4) *
        (logarithmicNorm (fun x ↦ f x - g x) * (logarithmicNorm f + logarithmicNorm g)) :=
      mul_le_mul_of_nonneg_left hcs (by positivity)
    _ = _ := by ring

end
end ZeroArchimedeanContinuity
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
