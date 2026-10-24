# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.SourceActualRieszInitialLaplaceNativeprobe01.Variant6b8a345390a35df7f61e69be1e5b5820e702a8807b2f53c5c4b684ae30c60a5d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9a0cd07a9dd23cd38a4f1e351c68f9b684d7fbab` · SHA-256 `cca58f3983188449938bda2e96074e9392019d26ee8a4bac0368603f37e7f984`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
