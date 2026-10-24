-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.AdaptiveLogSample.Variant059761835f8f11a24034e8a012e4a6e0b348c91b285eac51a7efb999e0116dc6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"059761835f8f11a24034e8a012e4a6e0b348c91b285eac51a7efb999e0116dc6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.AdaptiveLogSample.Variant059761835f8f11a24034e8a012e4a6e0b348c91b285eac51a7efb999e0116dc6","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"059761835f8f11a24034e8a012e4a6e0b348c91b285eac51a7efb999e0116dc6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-refocus/selected-source-delta/059761835f8f11a24034-SourceAdaptiveVaughanSignedMain.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceAdaptiveVaughanNoLongProducts

/-! Exact retained signed sampling main and error after adaptive finite refinement.
No uniform estimate is asserted. Direction, selection, corrections and evaluation:
grwtsk contributors. Scratch formal construction: Codex/ChatGPT assistance. -/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.AdaptiveLogSample.Variant059761835f8f11a24034e8a012e4a6e0b348c91b285eac51a7efb999e0116dc6

set_option autoImplicit false
noncomputable section
namespace RH16AdaptiveVaughan
open ArithmeticFunction
open scoped BigOperators
open RH16CompleteDivisorCancellation
open FormalResearch.RiemannHypothesis SourceSamplingPointwise
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimatePlainKernel EstimateSourceMobiusKernel EstimateMertensResidual

def adaptiveLogSample (A : ℝ) (d : ℕ) : ℝ :=
  ∑ k ∈ Finset.Icc 1 (sourceKernelCutoff A),
    Real.log k * sourcePlainWeight A ((d * k : ℕ) : ℝ)

def adaptivePlainSample (A : ℝ) (d m : ℕ) : ℝ :=
  ∑ k ∈ Finset.Icc 1 (sourceKernelCutoff A),
    sourcePlainWeight A ((d * m * k : ℕ) : ℝ)

/-- Universal signed mains J1 and J0 retain their independent source definitions. -/
def adaptiveIndependentMain (A : ℝ) : ℝ :=
  (∑ m ∈ Finset.Icc 1 (adaptiveMangoldtDepth A),
    vonMangoldt m * sourcePlainWeight A (m : ℝ)) +
  (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), (moebius d : ℝ) *
    sourceLogSamplingMainTerm A (d : ℝ)) -
  (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), (moebius d : ℝ) *
    (∑ m ∈ Finset.Icc 1 (adaptiveMangoldtDepth A), vonMangoldt m *
      sourcePlainSamplingMainTerm A ((d * m : ℕ) : ℝ)))

/-- The error is one signed joint row, including every short and long retained term. -/
def adaptiveSignedSamplingError (A : ℝ) : ℝ :=
  ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), (moebius d : ℝ) *
    ((adaptiveLogSample A d - sourceLogSamplingMainTerm A (d : ℝ)) -
      (∑ m ∈ Finset.Icc 1 (adaptiveMangoldtDepth A), vonMangoldt m *
        (adaptivePlainSample A d m - sourcePlainSamplingMainTerm A ((d * m : ℕ) : ℝ))))

/-- All signed corrections remain joint; this is the original full prime-power row. -/
theorem fullMangoldtRow_eq_adaptiveIndependentMain_add_signedError
    (A : ℝ) (hA : 1 ≤ A) :
    fullMangoldtRow A = adaptiveIndependentMain A + adaptiveSignedSamplingError A := by
  rw [fullMangoldtRow_eq_adaptiveSampledHead A hA]
  unfold adaptiveSampledHead adaptiveIndependentMain adaptiveSignedSamplingError
    adaptiveLogSample adaptivePlainSample
  simp only [mul_sub, Finset.sum_sub_distrib, Finset.mul_sum, mul_assoc]
  ring

/-- Direct source residual readout; no diagonal or endpoint debt is introduced. -/
theorem actual_residual_eq_adaptiveIndependentMain_add_signedError
    (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A = adaptiveIndependentMain A + adaptiveSignedSamplingError A := by
  rw [mertensResidual_eq_plainWeight_sum A hA]
  exact fullMangoldtRow_eq_adaptiveIndependentMain_add_signedError A hA

end RH16AdaptiveVaughan
