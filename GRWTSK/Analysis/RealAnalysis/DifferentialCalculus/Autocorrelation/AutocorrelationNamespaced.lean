-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SelfConvolutionHasDerivAt.Variant08b91733f51b5e7e0c8b1ed49b18cc9e57742417f63e0f8de308522dc3153043","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"08b91733f51b5e7e0c8b1ed49b18cc9e57742417f63e0f8de308522dc3153043","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.SelfConvolutionHasDerivAt.Variant08b91733f51b5e7e0c8b1ed49b18cc9e57742417f63e0f8de308522dc3153043","mathematical_subject":"Analysis.Calculus","original_sha256":"08b91733f51b5e7e0c8b1ed49b18cc9e57742417f63e0f8de308522dc3153043","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/weil-lineage-d360/FormalResearch/RiemannHypothesis/WeilSource/Autocorrelation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.Cutoff
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroTestRegularity
import Mathlib.Analysis.Calculus.ContDiff.Deriv
import Mathlib.Analysis.Calculus.ContDiff.Convolution

/-!
# C2 regularity of the original unnormalized autocorrelation

One derivative is placed on each factor. The proof needs only C1 compact
support of the actual source test, not a nonexistent global second derivative
of that test. In particular both correlation seams are included. This module
has no explicit-formula, zero-location, positivity, or lower-estimate premise.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SelfConvolutionHasDerivAt.Variant08b91733f51b5e7e0c8b1ed49b18cc9e57742417f63e0f8de308522dc3153043

namespace FormalResearch.RiemannHypothesis.WeilSource

open MeasureTheory Set
open scoped ContDiff Convolution Topology
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open ZeroSideTargets ZeroTestRegularity
open FormalResearch.RiemannHypothesis.SourcePairing

noncomputable section

/-- Differentiation on the first compact C1 factor has its genuine convolution value. -/
theorem self_convolution_hasDerivAt (f : ℝ → ℝ) (hf : ContDiff ℝ 1 f)
    (hfc : HasCompactSupport f) (t : ℝ) :
    HasDerivAt (f ⋆ f) ((deriv f ⋆ f) t) t :=
  hfc.hasDerivAt_convolution_left (ContinuousLinearMap.lsmul ℝ ℝ) hf
    (hf.continuous.integrable_of_hasCompactSupport hfc).locallyIntegrable t

/-- Each C1 factor contributes one derivative, giving global C2 convolution regularity. -/
theorem self_convolution_contDiff_two (f : ℝ → ℝ) (hf : ContDiff ℝ 1 f)
    (hfc : HasCompactSupport f) : ContDiff ℝ 2 (f ⋆ f) := by
  have hd := self_convolution_hasDerivAt f hf hfc
  have heq : deriv (f ⋆ f) = deriv f ⋆ f := funext fun t ↦ (hd t).deriv
  rw [show (2 : ℕ∞ω) = 1 + 1 by norm_num, contDiff_succ_iff_deriv]
  refine ⟨fun t ↦ (hd t).differentiableAt, by simp, ?_⟩
  rw [heq]
  exact hfc.contDiff_convolution_right (ContinuousLinearMap.lsmul ℝ ℝ)
    hf.continuous_deriv_one.locallyIntegrable hf

/-- The original unnormalized autocorrelation; no new arithmetic quantity is introduced. -/
def correlation (A t : ℝ) : ℝ := ∫ x, actualTest A x * actualTest A (x - t)

/-- Genuine integrability of each product precedes every correlation identity. -/
theorem correlation_product_integrable (A t : ℝ) (hA : 1 ≤ A) :
    Integrable (fun x ↦ actualTest A x * actualTest A (x - t)) volume :=
  SourceComparison.Admission.unnormalized_correlation_integrable A t hA

/-- The source's evenness identifies correlation with self-convolution. -/
theorem correlation_eq_convolution (A : ℝ) (hA : 1 ≤ A) :
    correlation A = actualTest A ⋆ actualTest A := by
  funext t
  unfold correlation convolution
  apply integral_congr_ae
  filter_upwards [] with x
  change actualTest A x * actualTest A (x - t) = actualTest A x * actualTest A (t - x)
  congr 1
  rw [show x - t = -(t - x) by ring, actualTest_even A hA]

/-- The unnormalized source autocorrelation is C2 across both support seams. -/
theorem correlation_contDiff_two (A : ℝ) (hA : 1 ≤ A) :
    ContDiff ℝ 2 (correlation A) := by
  rw [correlation_eq_convolution A hA]
  exact self_convolution_contDiff_two (actualTest A) (actualTest_contDiff A hA)
    (actualTest_hasCompactSupport A hA)

/-- Correlation at and beyond the original endpoint is zero, including equality. -/
theorem correlation_zero (A t : ℝ) (hA : 1 ≤ A) (ht : 2 * A ≤ |t|) :
    correlation A t = 0 :=
  SourceComparison.Cutoff.unnormalized_correlation_zero A t hA ht

/-- Compact support is obtained from the original endpoint theorem. -/
theorem correlation_hasCompactSupport (A : ℝ) (hA : 1 ≤ A) :
    HasCompactSupport (correlation A) := by
  apply HasCompactSupport.intro (K := Icc (-(2 * A)) (2 * A)) isCompact_Icc
  intro t ht
  apply correlation_zero A t hA
  by_contra h
  exact ht (abs_le.mp (le_of_lt (lt_of_not_ge h)))

/-- The C2 correlation has a genuine full-line Lebesgue integral. -/
theorem correlation_integrable (A : ℝ) (hA : 1 ≤ A) : Integrable (correlation A) volume :=
  (correlation_contDiff_two A hA).continuous.integrable_of_hasCompactSupport
    (correlation_hasCompactSupport A hA)

/-- Exact evenness retains both signed prime shifts. -/
theorem correlation_even (A : ℝ) (hA : 1 ≤ A) : Function.Even (correlation A) := by
  intro t
  unfold correlation
  rw [← integral_neg_eq_self]
  apply integral_congr_ae
  filter_upwards [] with x
  rw [actualTest_even A hA, show -x - -t = -(x - t) by ring, actualTest_even A hA]

/-- The complex representative supplied to the external additive explicit formula. -/
def complexCorrelation (A : ℝ) (t : ℝ) : ℂ := correlation A t

/-- Complexification does not change the source's C2 regularity. -/
theorem complexCorrelation_contDiff_two (A : ℝ) (hA : 1 ≤ A) :
    ContDiff ℝ 2 (complexCorrelation A) :=
  Complex.ofRealCLM.contDiff.comp (correlation_contDiff_two A hA)

/-- Complexification preserves the original compact support. -/
theorem complexCorrelation_hasCompactSupport (A : ℝ) (hA : 1 ≤ A) :
    HasCompactSupport (complexCorrelation A) :=
  (correlation_hasCompactSupport A hA).comp_left (g := fun x : ℝ ↦ (x : ℂ)) (by simp)

/-- The complex correlation is genuinely integrable before transforming it. -/
theorem complexCorrelation_integrable (A : ℝ) (hA : 1 ≤ A) :
    Integrable (complexCorrelation A) volume :=
  Complex.ofRealCLM.integrable_comp (correlation_integrable A hA)

/-- The normalization agrees with the independently defined source correlation. -/
theorem correlation_eq_source (A t : ℝ) (hA : 1 ≤ A) :
    correlation A t = sourceNormalization A *
      sourceCorrelation Realization.explicitSecondDerivative A t :=
  SourceComparison.Cutoff.unnormalized_correlation_eq A t hA

end
end FormalResearch.RiemannHypothesis.WeilSource
