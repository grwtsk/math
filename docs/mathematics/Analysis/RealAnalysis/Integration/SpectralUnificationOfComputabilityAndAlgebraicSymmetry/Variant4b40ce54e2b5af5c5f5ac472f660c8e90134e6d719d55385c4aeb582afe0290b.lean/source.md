# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Variant4b40ce54e2b5af5c5f5ac472f660c8e90134e6d719d55385c4aeb582afe0290b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `37630dd6baae29069c920d08faec335c6477916d` · SHA-256 `ae6dbe2e874bc51adbf0d7faf32db6335c947fc96aac50a9cc6d70cfec450846`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.LogarithmicWeight.Variant3627dc41b23daf11b5ac21be988aa0a74672181e56359eec5d2d276942ed40b9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3627dc41b23daf11b5ac21be988aa0a74672181e56359eec5d2d276942ed40b9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.LogarithmicWeight.Variant3627dc41b23daf11b5ac21be988aa0a74672181e56359eec5d2d276942ed40b9","mathematical_subject":"Analysis.Integration","original_sha256":"3627dc41b23daf11b5ac21be988aa0a74672181e56359eec5d2d276942ed40b9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/3627dc41b23daf11b5ac21be988aa0a74672181e56359eec5d2d276942ed40b9.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeFourier
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSmoothingL2
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroFourierL2

/-!
# The exact logarithmic Fourier norm

The weight and normalization are those of the source positive-angular Fourier
convention. Membership hypotheses accompany every use of the integral as a
norm, so a totalized integral does not supply analytic membership.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.LogarithmicWeight.Variant3627dc41b23daf11b5ac21be988aa0a74672181e56359eec5d2d276942ed40b9

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace ZeroLogarithmicCore

open MeasureTheory Set Filter
open scoped Topology
open FormalResearch.RiemannHypothesis.SourcePairing
open BridgeFourier

noncomputable section

/-- The source logarithmic Fourier weight, including the ordinary L² term. -/
def logarithmicWeight (ξ : ℝ) : ℝ := 1 + Real.log (1 + 4 * ξ ^ 2) / 2

/-- The squared logarithmic norm in the exact positive-angular convention. -/
def logarithmicEnergy (f : ℝ → ℝ) : ℝ :=
  (∫ ξ, logarithmicWeight ξ * Complex.normSq (sourceFourier f ξ)) / (2 * Real.pi)

/-- The source logarithmic norm; analytic membership is supplied separately. -/
def logarithmicNorm (f : ℝ → ℝ) : ℝ := Real.sqrt (logarithmicEnergy f)

/-- A real weighted Fourier magnitude whose genuine L² norm is the logarithmic norm. -/
def weightedFourierNorm (f : ℝ → ℝ) (ξ : ℝ) : ℝ :=
  Real.sqrt (logarithmicWeight ξ / (2 * Real.pi)) * ‖sourceFourier f ξ‖

/-- The logarithmic weight dominates the constant L² weight. -/
theorem one_le_logarithmicWeight (ξ : ℝ) : 1 ≤ logarithmicWeight ξ := by
  have hlog : 0 ≤ Real.log (1 + 4 * ξ ^ 2) :=
    Real.log_nonneg (by nlinarith [sq_nonneg ξ])
  unfold logarithmicWeight
  linarith

/-- The logarithmic weight is nonnegative at every real frequency. -/
theorem logarithmicWeight_nonneg (ξ : ℝ) : 0 ≤ logarithmicWeight ξ :=
  le_trans (by norm_num) (one_le_logarithmicWeight ξ)

/-- The elementary estimate that bounds logarithmic energy by H¹ energy. -/
theorem logarithmicWeight_le_quadratic (ξ : ℝ) :
    logarithmicWeight ξ ≤ 1 + 2 * ξ ^ 2 := by
  have h := Real.log_le_sub_one_of_pos (show 0 < 1 + 4 * ξ ^ 2 by positivity)
  unfold logarithmicWeight
  linarith

/-- The exact logarithmic weight is continuous on the real line. -/
theorem logarithmicWeight_continuous : Continuous logarithmicWeight := by
  have hc : Continuous (fun ξ : ℝ ↦ 1 + 4 * ξ ^ 2) := by fun_prop
  exact continuous_const.add
    ((hc.log (fun ξ ↦ ne_of_gt (by positivity))).div_const 2)

/-- Nonnegativity does not require using a totalized integral as membership evidence. -/
theorem logarithmicEnergy_nonneg (f : ℝ → ℝ) : 0 ≤ logarithmicEnergy f := by
  apply div_nonneg (integral_nonneg fun ξ ↦
    mul_nonneg (logarithmicWeight_nonneg ξ) (Complex.normSq_nonneg _))
  positivity

/-- The logarithmic norm is nonnegative. -/
theorem logarithmicNorm_nonneg (f : ℝ → ℝ) : 0 ≤ logarithmicNorm f :=
  Real.sqrt_nonneg _

/-- Squaring the logarithmic norm recovers the exact source energy. -/
theorem logarithmicNorm_sq (f : ℝ → ℝ) :
    logarithmicNorm f ^ 2 = logarithmicEnergy f :=
  Real.sq_sqrt (logarithmicEnergy_nonneg f)

/-- A genuinely integrable differentiable function with integrable derivative has finite weight. -/
theorem logarithmic_integrable (f : ℝ → ℝ) (hf : Integrable f)
    (hd : Differentiable ℝ f) (hdi : Integrable (deriv f)) :
    Integrable (fun ξ ↦ logarithmicWeight ξ * Complex.normSq (sourceFourier f ξ)) := by
  have heq : (fun ξ ↦ logarithmicWeight ξ * Complex.normSq (sourceFourier f ξ)) =
      (fun ξ ↦ Complex.normSq (sourceFourier f ξ) +
        (Real.log (1 + 4 * ξ ^ 2) * Complex.normSq (sourceFourier f ξ)) / 2) := by
    funext ξ
    unfold logarithmicWeight
    ring
  rw [heq]
  exact (fourier_normSq_integrable f hf hd hdi).add
    ((logarithmic_fourier_integrable f hf hd hdi).div_const 2)

/-- The weighted Fourier magnitude is continuous for a genuinely L¹ source function. -/
theorem weightedFourierNorm_continuous {f : ℝ → ℝ} (hf : Integrable f) :
    Continuous (weightedFourierNorm f) :=
  ((logarithmicWeight_continuous.div_const _).sqrt).mul
    (sourceFourier_continuous hf).norm

/-- The square of the weighted magnitude includes exactly the source normalization. -/
theorem weightedFourierNorm_sq (f : ℝ → ℝ) (ξ : ℝ) :
    weightedFourierNorm f ξ ^ 2 =
      (logarithmicWeight ξ * Complex.normSq (sourceFourier f ξ)) / (2 * Real.pi) := by
  unfold weightedFourierNorm
  rw [mul_pow, Real.sq_sqrt (div_nonneg (logarithmicWeight_nonneg ξ) (by positivity)),
    Complex.normSq_eq_norm_sq]
  ring

/-- The weighted Fourier magnitude is nonnegative. -/
theorem weightedFourierNorm_nonneg (f : ℝ → ℝ) (ξ : ℝ) :
    0 ≤ weightedFourierNorm f ξ :=
  mul_nonneg (Real.sqrt_nonneg _) (norm_nonneg _)

/-- Finite logarithmic energy gives genuine L² membership of the weighted magnitude. -/
theorem weightedFourierNorm_memLp_two {f : ℝ → ℝ} (hf : Integrable f)
    (hw : Integrable (fun ξ ↦ logarithmicWeight ξ * Complex.normSq (sourceFourier f ξ))) :
    MemLp (weightedFourierNorm f) 2 volume := by
  apply (memLp_two_iff_integrable_sq
    (weightedFourierNorm_continuous hf).aestronglyMeasurable).2
  simpa only [weightedFourierNorm_sq] using hw.div_const (2 * Real.pi)

/-- The full-line integral of the weighted square equals the source energy. -/
theorem integral_weightedFourierNorm_sq (f : ℝ → ℝ) :
    (∫ ξ, weightedFourierNorm f ξ ^ 2) = logarithmicEnergy f := by
  simp only [weightedFourierNorm_sq, logarithmicEnergy, integral_div]

/-- The logarithmic norm is the norm of a genuine weighted L² function. -/
theorem lpNorm_weightedFourierNorm {f : ℝ → ℝ} (hf : Integrable f)
    (hw : Integrable (fun ξ ↦ logarithmicWeight ξ * Complex.normSq (sourceFourier f ξ))) :
    lpNorm (weightedFourierNorm f) 2 volume = logarithmicNorm f := by
  rw [ZeroSmoothingL2.lpNorm_two_eq_sqrt_integral_sq
    (weightedFourierNorm_memLp_two hf hw), integral_weightedFourierNorm_sq]
  rfl

/-- Genuine L¹ membership gives a genuine integral at every source Fourier frequency. -/
theorem sourceFourier_integrand_integrable {f : ℝ → ℝ} (hf : Integrable f) (ξ : ℝ) :
    Integrable (fun x : ℝ ↦ (f x : ℂ) *
      Complex.exp (Complex.I * (ξ : ℂ) * (x : ℂ))) := by
  apply (Complex.ofRealCLM.integrable_comp hf).mul_bdd
    (show Continuous (fun x : ℝ ↦
      Complex.exp (Complex.I * (ξ : ℂ) * (x : ℂ))) by fun_prop).aestronglyMeasurable
    (c := 1)
  filter_upwards [] with x
  simp [Complex.norm_exp]

/-- Subtraction commutes with the actual positive-angular integral Fourier transform. -/
theorem sourceFourier_sub {f g : ℝ → ℝ} (hf : Integrable f) (hg : Integrable g) (ξ : ℝ) :
    sourceFourier (fun x ↦ f x - g x) ξ = sourceFourier f ξ - sourceFourier g ξ := by
  simp only [sourceFourier, Complex.ofReal_sub, sub_mul]
  exact integral_sub (sourceFourier_integrand_integrable hf ξ)
    (sourceFourier_integrand_integrable hg ξ)

/-- Weighted Fourier magnitudes satisfy the pointwise difference triangle estimate. -/
theorem weightedFourierNorm_le_sub_add {f g : ℝ → ℝ}
    (hf : Integrable f) (hg : Integrable g) (ξ : ℝ) :
    weightedFourierNorm f ξ ≤ weightedFourierNorm (fun x ↦ f x - g x) ξ +
      weightedFourierNorm g ξ := by
  have h : ‖sourceFourier f ξ‖ ≤
      ‖sourceFourier (fun x ↦ f x - g x) ξ‖ + ‖sourceFourier g ξ‖ := by
    rw [sourceFourier_sub hf hg]
    simpa using norm_add_le (sourceFourier f ξ - sourceFourier g ξ) (sourceFourier g ξ)
  simpa only [weightedFourierNorm, mul_add] using
    mul_le_mul_of_nonneg_left h (Real.sqrt_nonneg (logarithmicWeight ξ / (2 * Real.pi)))

/-- Genuine weighted L² membership gives the logarithmic difference triangle inequality. -/
theorem logarithmicNorm_le_sub_add {f g : ℝ → ℝ}
    (hf : Integrable f) (hg : Integrable g)
    (hwf : Integrable (fun ξ ↦ logarithmicWeight ξ * Complex.normSq (sourceFourier f ξ)))
    (hwg : Integrable (fun ξ ↦ logarithmicWeight ξ * Complex.normSq (sourceFourier g ξ)))
    (hwe : Integrable (fun ξ ↦ logarithmicWeight ξ *
      Complex.normSq (sourceFourier (fun x ↦ f x - g x) ξ))) :
    logarithmicNorm f ≤ logarithmicNorm (fun x ↦ f x - g x) + logarithmicNorm g := by
  have he := weightedFourierNorm_memLp_two (hf.sub hg) hwe
  have hg' := weightedFourierNorm_memLp_two hg hwg
  change logarithmicNorm f ≤ logarithmicNorm (f - g) + logarithmicNorm g
  rw [← lpNorm_weightedFourierNorm hf hwf,
    ← lpNorm_weightedFourierNorm (hf.sub hg) hwe, ← lpNorm_weightedFourierNorm hg hwg]
  refine (lpNorm_mono_real (he.add hg') (fun ξ ↦ ?_)).trans
    (lpNorm_add_le he (by norm_num))
  rw [Real.norm_eq_abs, abs_of_nonneg (weightedFourierNorm_nonneg f ξ)]
  exact weightedFourierNorm_le_sub_add hf hg ξ

/-- Source Plancherel and the weight lower bound control the genuine full-line L² norm. -/
theorem lpNorm_le_logarithmicNorm {f : ℝ → ℝ} (hf : Integrable f)
    (hf2 : MemLp f 2 volume)
    (hw : Integrable (fun ξ ↦ logarithmicWeight ξ * Complex.normSq (sourceFourier f ξ))) :
    lpNorm f 2 volume ≤ logarithmicNorm f := by
  have hi : (∫ ξ, Complex.normSq (sourceFourier f ξ)) ≤
      ∫ ξ, logarithmicWeight ξ * Complex.normSq (sourceFourier f ξ) := by
    apply integral_mono (ZeroFourierL2.sourceFourier_normSq_integrable f hf hf2) hw
    intro ξ
    exact le_mul_of_one_le_left (Complex.normSq_nonneg _) (one_le_logarithmicWeight ξ)
  rw [ZeroSmoothingL2.lpNorm_two_eq_sqrt_integral_sq hf2]
  apply Real.sqrt_le_sqrt
  rw [← ZeroFourierL2.sourceFourier_plancherel f hf hf2]
  exact div_le_div_of_nonneg_right hi (by positivity)

end

end ZeroLogarithmicCore
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```
