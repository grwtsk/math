-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceMixedCurvatureCross.Variant03bb0ade47b263162f1a731a1c4396680a081fbca7403b92166c8728be658ae2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"03bb0ade47b263162f1a731a1c4396680a081fbca7403b92166c8728be658ae2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SourceMixedCurvatureCross.Variant03bb0ade47b263162f1a731a1c4396680a081fbca7403b92166c8728be658ae2","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"03bb0ade47b263162f1a731a1c4396680a081fbca7403b92166c8728be658ae2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle27/regent-private38-verification-v1/independent-replay-v1/sources/IndependentSource38Audit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceMixedCurvatureCross


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceMixedCurvatureCross.Variant03bb0ade47b263162f1a731a1c4396680a081fbca7403b92166c8728be658ae2

set_option autoImplicit false

open MeasureTheory
open scoped BigOperators
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceCorrelationCurvature
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity

example
    {ι κ : Type*} (s : Finset ι) (t : Finset κ) (a x : ι → ℝ) (b y : κ → ℝ)
    {A : ℝ} (hA : 0 < A) :
    (∑ i ∈ s, ∑ j ∈ t, a i * b j *
      (deriv (deriv (sourceCorrelation explicitSecondDerivative A)) (x i - y j) -
        sourceCorrelation explicitSecondDerivative A (x i - y j) / 4)) =
      -(∫ v : ℝ,
        (∑ i ∈ s, a i * deriv (normalizedTest explicitSecondDerivative A) (v + x i)) *
          (∑ j ∈ t, b j * deriv (normalizedTest explicitSecondDerivative A) (v + y j))) -
        (1 / 4 : ℝ) * (∫ v : ℝ,
          (∑ i ∈ s, a i * normalizedTest explicitSecondDerivative A (v + x i)) *
            (∑ j ∈ t, b j * normalizedTest explicitSecondDerivative A (v + y j))) :=
  FormalResearch.RiemannHypothesis.SourceMixedCurvatureCross.actual_mixed_curvature_finite_cross_eq_neg_products s t a x b y hA

#check FormalResearch.RiemannHypothesis.SourceMixedCurvatureCross.actual_mixed_curvature_finite_cross_eq_neg_products
#print axioms FormalResearch.RiemannHypothesis.SourceMixedCurvatureCross.actual_mixed_curvature_finite_cross_eq_neg_products

set_option pp.proofs true
set_option pp.all true
set_option pp.maxSteps 1000000
set_option pp.fullNames false
#print FormalResearch.RiemannHypothesis.SourceMixedCurvatureCross.actual_mixed_curvature_finite_cross_eq_neg_products

set_option pp.fullNames true
#print FormalResearch.RiemannHypothesis.SourceMixedCurvatureCross.actual_mixed_curvature_finite_cross_eq_neg_products
