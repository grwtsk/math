# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ScopeFixturesPrint.Varianta0c74ab67f10b7732e33ea6159f4ec13b6817d81840acd04ce4d186767b2f64b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b8a7769cc783dc4c67bbb9e662a12a751a69399d` · SHA-256 `85c3eb2f0d76b935ba4b4d5ef4a4b7900faa4427d451897b35dc50f6db05fe42`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.WrongPositiveFirstDerivativeTransform.Variant4c1cbbc6359d39c7f4ae5316ab94115440a2bab35f7dcbae38f9bab0bf4b7425","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4c1cbbc6359d39c7f4ae5316ab94115440a2bab35f7dcbae38f9bab0bf4b7425","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.WrongPositiveFirstDerivativeTransform.Variant4c1cbbc6359d39c7f4ae5316ab94115440a2bab35f7dcbae38f9bab0bf4b7425","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"4c1cbbc6359d39c7f4ae5316ab94115440a2bab35f7dcbae38f9bab0bf4b7425","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle17/regent-critical-adapters/primitive-critical-five/native-replay-v1/ScopeFixturesPrint.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourcePrimitiveCriticalMoment

/-! Independent private sign/readout guards; not principal or maintained roots. -/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.WrongPositiveFirstDerivativeTransform.Variant4c1cbbc6359d39c7f4ae5316ab94115440a2bab35f7dcbae38f9bab0bf4b7425

set_option autoImplicit false
set_option linter.hashCommand false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourcePrimitiveCriticalMomentRegentFixtures

open MeasureTheory
open SourcePrimitiveCriticalMoment SourcePrimitivePrimeInteraction SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateCorrelation

/-- At sigma=1 a nonzero primitive transform forbids changing the verified R1 minus sign. -/
theorem wrong_positive_first_derivative_transform {A : ℝ} (hA : 0 < A)
    (hI : (∫ s : ℝ, Real.exp s * primitiveCorrelationZero A s) ≠ 0) :
    (∫ s : ℝ, Real.exp s * primitiveCorrelationOne A s) ≠
      ∫ s : ℝ, Real.exp s * primitiveCorrelationZero A s := by
  have h := primitiveCorrelationOne_laplace hA (1 : ℝ)
  norm_num at h
  intro he
  apply hI
  linarith

/-- Actual full-line critical cancellation coexists with the nonzero normalized point readout. -/
theorem critical_cancellation_not_pointwise_zero {A : ℝ} (hA : 1 ≤ A) :
    (∫ s : ℝ, Real.exp (s / 2) * sourceCorrelation explicitSecondDerivative A s) = 0 ∧
      sourceCorrelation explicitSecondDerivative A 0 ≠ 0 := by
  refine ⟨(sourceCorrelation_critical_filter_zero (show 0 < A by linarith)).1, ?_⟩
  rw [actual_correlation_at_zero A hA]
  norm_num

#check @wrong_positive_first_derivative_transform
#print axioms wrong_positive_first_derivative_transform
#check @critical_cancellation_not_pointwise_zero
#print axioms critical_cancellation_not_pointwise_zero

end FormalResearch.RiemannHypothesis.SourcePrimitiveCriticalMomentRegentFixtures

open FormalResearch.RiemannHypothesis.SourcePrimitiveCriticalMomentRegentFixtures
#print wrong_positive_first_derivative_transform
#print critical_cancellation_not_pointwise_zero
```
