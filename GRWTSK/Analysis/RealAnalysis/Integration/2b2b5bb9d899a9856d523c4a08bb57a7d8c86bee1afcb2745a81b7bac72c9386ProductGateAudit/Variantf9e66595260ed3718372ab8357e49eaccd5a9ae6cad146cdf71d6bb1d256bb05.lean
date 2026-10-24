-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.EstimateUnitCorrelationMass.Variant2b2b5bb9d899a9856d523c4a08bb57a7d8c86bee1afcb2745a81b7bac72c9386","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2b2b5bb9d899a9856d523c4a08bb57a7d8c86bee1afcb2745a81b7bac72c9386","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.EstimateUnitCorrelationMass.Variant2b2b5bb9d899a9856d523c4a08bb57a7d8c86bee1afcb2745a81b7bac72c9386","mathematical_subject":"Analysis.Integration","original_sha256":"2b2b5bb9d899a9856d523c4a08bb57a7d8c86bee1afcb2745a81b7bac72c9386","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/2b/2b2b5bb9d899a9856d523c4a08bb57a7d8c86bee1afcb2745a81b7bac72c9386--ProductGateAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateUnitCorrelationMass


namespace GRWTSK.Analysis.RealAnalysis.Integration.EstimateUnitCorrelationMass.Variant2b2b5bb9d899a9856d523c4a08bb57a7d8c86bee1afcb2745a81b7bac72c9386

set_option pp.fullNames true

open MeasureTheory
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry

#check EstimateUnitCorrelationMass.unitCorrelation_product_majorant_integrable
#print axioms EstimateUnitCorrelationMass.unitCorrelation_product_majorant_integrable
#check EstimateUnitCorrelationMass.unitCorrelation_product_integrable
#print axioms EstimateUnitCorrelationMass.unitCorrelation_product_integrable
#check integral_sub_left_eq_self

example (A : ℝ) (hA : 0 < A) :
    Integrable (fun z : ℝ × ℝ ↦ EstimateNormalizedSourceProfile.unitProfile A z.2 *
      EstimateNormalizedSourceProfile.unitProfile A (z.2-z.1)) (volume.prod volume) :=
  EstimateUnitCorrelationMass.unitCorrelation_product_integrable A hA
