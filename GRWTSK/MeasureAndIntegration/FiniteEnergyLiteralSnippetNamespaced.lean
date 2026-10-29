-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.SourceUnit.Variantd3ecdf1f5868c6868e0e9fd6cf4e58d9099bf88ecf27072dee46115d504f540b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d3ecdf1f5868c6868e0e9fd6cf4e58d9099bf88ecf27072dee46115d504f540b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.SourceUnit.Variantd3ecdf1f5868c6868e0e9fd6cf4e58d9099bf88ecf27072dee46115d504f540b","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"d3ecdf1f5868c6868e0e9fd6cf4e58d9099bf88ecf27072dee46115d504f540b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/spectral-covariance/finite-energy-literal-snippet.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}


namespace GRWTSK.Analysis.MeasureTheory.SourceUnit.Variantd3ecdf1f5868c6868e0e9fd6cf4e58d9099bf88ecf27072dee46115d504f540b

namespace FiniteControllerEnergyLiteral
open MeasureTheory Set
open scoped BigOperators
open FormalResearch.RiemannHypothesis.SourceComparison
open HalfLineExponential HalfLineOperator ExponentialCovariance FixedLaplaceContinuation
open FixedSourceKernel FiniteControllerEnergyScratch
noncomputable section
example (n : ℕ) (a : Fin n → ℝ) (ha : ∀ i, 0 < a i) (c : Fin n → ℝ) :
    finiteController n a ha c = ∑ i, (c i : ℂ) • controller (a i) (ha i) := rfl
example (a b : ℝ) : sourceGram a b =
    ∫ u : ℝ in Ioi 0, ∫ v : ℝ in Ioi 0,
      fixedKernel u * fixedKernel v * overlap a b u v := rfl
example (n : ℕ) (a : Fin n → ℝ) (ha : ∀ i, 0 < a i) (c : Fin n → ℝ) :
    (inner ℂ referenceVector (sourceOperator (finiteController n a ha c))).re =
      ∑ i, c i * (actualLaplace 1).re / (1 + a i) :=
  finiteController_reference_re n a ha c
example (n : ℕ) (a : Fin n → ℝ) (ha : ∀ i, 0 < a i) (c : Fin n → ℝ) :
    ‖finiteController n a ha c‖ ^ 2 = ∑ i, ∑ j, c i * c j / (a i + a j) :=
  finiteController_norm_sq n a ha c
example (n : ℕ) (a : Fin n → ℝ) (ha : ∀ i, 0 < a i) (c : Fin n → ℝ) :
    ‖sourceOperator (finiteController n a ha c)‖ ^ 2 =
      ∑ i, ∑ j, c i * c j * sourceGram (a i) (a j) :=
  finiteController_response_norm_sq n a ha c
example (n : ℕ) (a : Fin n → ℝ) (ha : ∀ i, 0 < a i) (c : Fin n → ℝ) (α : ℝ) :
    ‖referenceVector - sourceOperator (finiteController n a ha c)‖ ^ 2 +
      α * ‖finiteController n a ha c‖ ^ 2 =
      1 / 2 - 2 * (∑ i, c i * (actualLaplace 1).re / (1 + a i)) +
        ∑ i, ∑ j, c i * c j * (sourceGram (a i) (a j) + α / (a i + a j)) :=
  finiteController_energy n a ha c α
end
end FiniteControllerEnergyLiteral
