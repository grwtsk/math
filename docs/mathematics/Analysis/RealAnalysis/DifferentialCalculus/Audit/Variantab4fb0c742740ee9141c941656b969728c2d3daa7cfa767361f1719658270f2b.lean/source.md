# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Audit.Variantab4fb0c742740ee9141c941656b969728c2d3daa7cfa767361f1719658270f2b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e76d9e627319424c8df1d976b5499e94993b6a37` · SHA-256 `bda3549721ba44472269f89cfccc4348e4f4af35f18a5402f1f235edb90f59aa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceMainTermScaleDerivative.Variant68fb16d182f95d2ec971044e2b89c1f19c8f3c7ca84173a652ee84695c3dc703","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"68fb16d182f95d2ec971044e2b89c1f19c8f3c7ca84173a652ee84695c3dc703","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.SourceMainTermScaleDerivative.Variant68fb16d182f95d2ec971044e2b89c1f19c8f3c7ca84173a652ee84695c3dc703","mathematical_subject":"Analysis.Calculus","original_sha256":"68fb16d182f95d2ec971044e2b89c1f19c8f3c7ca84173a652ee84695c3dc703","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle5/regent-mainterm/Audit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceMainTermScaleDerivative


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceMainTermScaleDerivative.Variant68fb16d182f95d2ec971044e2b89c1f19c8f3c7ca84173a652ee84695c3dc703

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option linter.hashCommand false
open FormalResearch.RiemannHypothesis.SourceMainTermScaleDerivative

#check correlationScaleDerivative
#print axioms correlationScaleDerivative
#check sourceCorrelation_hasDerivAt_scale
#print axioms sourceCorrelation_hasDerivAt_scale
#check sourceCorrelation_contDiffAt_scale
#print axioms sourceCorrelation_contDiffAt_scale
#check diagonalCoefficientDerivative
#print axioms diagonalCoefficientDerivative
#check diagonalMainCoefficient_hasDerivAt
#print axioms diagonalMainCoefficient_hasDerivAt
#check diagonalMainCoefficient_contDiffAt
#print axioms diagonalMainCoefficient_contDiffAt
#check normalizationMainDerivative
#print axioms normalizationMainDerivative
#check normalizedMain_hasDerivAt
#print axioms normalizedMain_hasDerivAt
#check normalizedMain_contDiffAt
#print axioms normalizedMain_contDiffAt
#check plainWeightScaleDerivative
#print axioms plainWeightScaleDerivative
#check sourcePlainWeight_hasDerivAt
#print axioms sourcePlainWeight_hasDerivAt
#check sourcePlainWeight_contDiffAt
#print axioms sourcePlainWeight_contDiffAt
#check sourceKernelScaleDerivative
#print axioms sourceKernelScaleDerivative
#check sourceKernel_hasDerivAt
#print axioms sourceKernel_hasDerivAt
#check sourceKernel_contDiffAt
#print axioms sourceKernel_contDiffAt
#check plainOffDerivativeAt
#print axioms plainOffDerivativeAt
#check plainOffAt_hasDerivAt
#print axioms plainOffAt_hasDerivAt
#check plainOffAt_contDiffAt
#print axioms plainOffAt_contDiffAt
#check shortMangoldtDerivativeAt
#print axioms shortMangoldtDerivativeAt
#check shortMangoldtAt_hasDerivAt
#print axioms shortMangoldtAt_hasDerivAt
#check shortMangoldtAt_contDiffAt
#print axioms shortMangoldtAt_contDiffAt
#check plainSamplingScaleDerivative
#print axioms plainSamplingScaleDerivative
#check logSamplingScaleDerivative
#print axioms logSamplingScaleDerivative
#check sourcePlainSamplingMainTerm_hasDerivAt
#print axioms sourcePlainSamplingMainTerm_hasDerivAt
#check sourceLogSamplingMainTerm_hasDerivAt
#print axioms sourceLogSamplingMainTerm_hasDerivAt
#check sourcePlainSamplingMainTerm_contDiffAt
#print axioms sourcePlainSamplingMainTerm_contDiffAt
#check sourceLogSamplingMainTerm_contDiffAt
#print axioms sourceLogSamplingMainTerm_contDiffAt
#check shortLogDerivativeAt
#print axioms shortLogDerivativeAt
#check shortPlainDerivativeAt
#print axioms shortPlainDerivativeAt
#check shortLogSamplingAt_hasDerivAt
#print axioms shortLogSamplingAt_hasDerivAt
#check shortPlainSamplingAt_hasDerivAt
#print axioms shortPlainSamplingAt_hasDerivAt
#check shortLogSamplingAt_contDiffAt
#print axioms shortLogSamplingAt_contDiffAt
#check shortPlainSamplingAt_contDiffAt
#print axioms shortPlainSamplingAt_contDiffAt
#check mainTermDerivativeAt
#print axioms mainTermDerivativeAt
#check mainTermAt_hasDerivAt
#print axioms mainTermAt_hasDerivAt
#check mainTermAt_contDiffAt
#print axioms mainTermAt_contDiffAt
#check independentMainTerm_eventually_eq_fixed
#print axioms independentMainTerm_eventually_eq_fixed
#check independentMainTermDerivative
#print axioms independentMainTermDerivative
#check independentMainTerm_hasDerivAt
#print axioms independentMainTerm_hasDerivAt
#check independentMainTerm_deriv
#print axioms independentMainTerm_deriv
#check independentMainTerm_contDiffAt
#print axioms independentMainTerm_contDiffAt
#check cutoffLog_hasDerivAt_zero
#print axioms cutoffLog_hasDerivAt_zero
#check cutoffLog_deriv_ne_two_div
#print axioms cutoffLog_deriv_ne_two_div
#check compensatedState_hasDerivAt
#print axioms compensatedState_hasDerivAt
#check compensatedState_contDiffAt
#print axioms compensatedState_contDiffAt
#check covarianceOperator_sub_mainTerm_hasDerivAt
#print axioms covarianceOperator_sub_mainTerm_hasDerivAt
#check covarianceOperator_sub_mainTerm_contDiffAt
#print axioms covarianceOperator_sub_mainTerm_contDiffAt
```
