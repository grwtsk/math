-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.SourceActualRieszCenteredReconstruction.Variantca26a15015749f8ab0834f071e8ab6c89241198821cb6a22e1e30e1f1bf80358","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ca26a15015749f8ab0834f071e8ab6c89241198821cb6a22e1e30e1f1bf80358","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.SourceActualRieszCenteredReconstruction.Variantca26a15015749f8ab0834f071e8ab6c89241198821cb6a22e1e30e1f1bf80358","mathematical_subject":"Analysis.Integration","original_sha256":"ca26a15015749f8ab0834f071e8ab6c89241198821cb6a22e1e30e1f1bf80358","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-signed-next/actual-riesz-initial-laplace/SourceActualRieszInitialLaplace-nativeprobe01.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualRieszCenteredReconstruction
import Mathlib.NumberTheory.LSeries.Dirichlet
import Mathlib.MeasureTheory.Integral.DominatedConvergence
import Mathlib.MeasureTheory.Integral.IntegralEqImproper
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals


namespace GRWTSK.Analysis.RealAnalysis.Integration.SourceActualRieszCenteredReconstruction.Variantca26a15015749f8ab0834f071e8ab6c89241198821cb6a22e1e30e1f1bf80358

set_option linter.hashCommand false
set_option linter.style.setOption false
#check integrableOn_Ioi_deriv_of_nonneg
#check integral_Ioi_of_hasDerivAt_of_tendsto'
#check MeasureTheory.integral_Ioi_eq_integral_Ioc_add_integral_Ioi
#check intervalIntegral.integral_interval_add_Ioi
#check MeasureTheory.IntegrableOn.union
#check MeasureTheory.IntegrableOn.congr_fun
#check MeasureTheory.IntegrableOn.mono'
#check MeasureTheory.integrableOn_Ioi_iff_integrableOn_Ici
#check MeasureTheory.Integrable.mono'
#check MeasureTheory.integral_tsum_of_summable_integral_norm
#check MeasureTheory.lintegral_tsum
#check MeasureTheory.lintegral_coe_eq_integral
#check ArithmeticFunction.LSeriesSummable_vonMangoldt
#check LSeries.term_def₀
#check Complex.norm_cpow_eq_rpow_re_of_pos
#check Finset.sum_eq_tsum
#check tsum_eq_sum
#check hasSum_fintype
