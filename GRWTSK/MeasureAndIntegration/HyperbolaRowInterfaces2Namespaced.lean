-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.UpperBoundaryHyperbola.Variant4a20fe9a5096e90b4d11c9c9300fbb8d303eafb03496a66f5cbd2ff369b2ae79","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4a20fe9a5096e90b4d11c9c9300fbb8d303eafb03496a66f5cbd2ff369b2ae79","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.UpperBoundaryHyperbola.Variant4a20fe9a5096e90b4d11c9c9300fbb8d303eafb03496a66f5cbd2ff369b2ae79","mathematical_subject":"Analysis.Integration","original_sha256":"4a20fe9a5096e90b4d11c9c9300fbb8d303eafb03496a66f5cbd2ff369b2ae79","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/arithmetic-routes/HyperbolaRowInterfaces2.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryHyperbola

namespace GRWTSK.Analysis.RealAnalysis.Integration.UpperBoundaryHyperbola.Variant4a20fe9a5096e90b4d11c9c9300fbb8d303eafb03496a66f5cbd2ff369b2ae79

open MeasureTheory
#check Ici_ae_eq_Ioi
#check Icc_ae_eq_Ioc
#check Set.indicator_congr_ae
#check MeasureTheory.integral_finset_sum
#check intervalIntegral.integral_finset_sum
#check intervalIntegral.integral_add_adjacent_intervals
#check IntervalIntegrable.mono_set
#check Set.Ioi_inter_Ioc
#check Set.Ioc_inter_Ioi
#check Set.inter_Ioc_eq_Ioc
#check Nat.cast_max
#check integral_indicator
#check Finset.sum_neg_distrib
