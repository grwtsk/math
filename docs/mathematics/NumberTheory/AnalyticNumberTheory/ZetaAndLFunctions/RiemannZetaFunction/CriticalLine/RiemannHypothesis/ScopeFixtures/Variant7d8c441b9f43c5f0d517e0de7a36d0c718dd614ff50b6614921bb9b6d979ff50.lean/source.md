# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ScopeFixtures.Variant7d8c441b9f43c5f0d517e0de7a36d0c718dd614ff50b6614921bb9b6d979ff50

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d3e57b6614c5639effe0d9135bac0af3314f3a45` · SHA-256 `0ab7aa2dd3967b666b769042e22afc9e311f3ee5a0be59adaa5c3b8c1031eed7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.WrongPositiveFirstDerivativeTransform.Variant976c98f4554c3174e594ffe95b463888184a784ae774058816017906fc9714dd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"976c98f4554c3174e594ffe95b463888184a784ae774058816017906fc9714dd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.WrongPositiveFirstDerivativeTransform.Variant976c98f4554c3174e594ffe95b463888184a784ae774058816017906fc9714dd","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"976c98f4554c3174e594ffe95b463888184a784ae774058816017906fc9714dd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle17/regent-critical-adapters/primitive-critical-five/native-replay-v1/ScopeFixtures.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourcePrimitiveCriticalMoment

/-! Independent private sign/readout guards; not principal or maintained roots. -/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.WrongPositiveFirstDerivativeTransform.Variant976c98f4554c3174e594ffe95b463888184a784ae774058816017906fc9714dd

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
```
