-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.ThetaKernel.Variantd18190c390bb978fce0bc772af050a5d21fad0106feddff02e611dea91d616a9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d18190c390bb978fce0bc772af050a5d21fad0106feddff02e611dea91d616a9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.ThetaKernel.Variantd18190c390bb978fce0bc772af050a5d21fad0106feddff02e611dea91d616a9","mathematical_subject":"Analysis.Integration","original_sha256":"d18190c390bb978fce0bc772af050a5d21fad0106feddff02e611dea91d616a9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/d1/d18190c390bb978fce0bc772af050a5d21fad0106feddff02e611dea91d616a9--Checks.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ThetaKernel
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals
import Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus

namespace GRWTSK.Analysis.RealAnalysis.Integration.ThetaKernel.Variantd18190c390bb978fce0bc772af050a5d21fad0106feddff02e611dea91d616a9

open MeasureTheory Set
#check integrableOn_Ici_iff_integrableOn_Ioi
#check Real.pow_div_factorial_le_exp
#check Continuous.stronglyMeasurableAtFilter
#check Continuous.aestronglyMeasurable
#check IntegrableOn.union
#check ContinuousOn.integrableOn_Icc
#check HasDerivAt.congr_of_eventuallyEq
#check hasDerivAt_congr_of_eventuallyEq
