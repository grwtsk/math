# Complete source: GRWTSK.Analysis.ComplexAnalysis.Ac5a6950c4c653a65b92c8469822accc43951dedf0042daf4ba569b7ef5188c3FixedPointCheck.Variantec94b9195b387f9b15a9c4121b8e6121125dad8bac22f18cd006c3c07d1e9f13

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `92944fcc121a9c248febb1639a87a74421841361` · SHA-256 `7587b6594b18805eeabfda38423da19322194b122a2c5571eceb98b729134867`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.ComplexAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.ComplexAnalysis.ThetaXiCoefficientFormula.Variantac5a6950c4c653a65b92c8469822accc43951dedf0042daf4ba569b7ef5188c3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ac5a6950c4c653a65b92c8469822accc43951dedf0042daf4ba569b7ef5188c3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.ComplexAnalysis.SourceCorpus.ThetaXiCoefficientFormula.Variantac5a6950c4c653a65b92c8469822accc43951dedf0042daf4ba569b7ef5188c3","mathematical_subject":"Analysis.ComplexAnalysis","original_sha256":"ac5a6950c4c653a65b92c8469822accc43951dedf0042daf4ba569b7ef5188c3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/ac/ac5a6950c4c653a65b92c8469822accc43951dedf0042daf4ba569b7ef5188c3--FixedPointCheck.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ThetaXiCoefficientFormula
import Mathlib.Analysis.Complex.TaylorSeries
import Mathlib.Analysis.Analytic.OfScalars
import Mathlib.Analysis.Analytic.ChangeOrigin
import Mathlib.Topology.Algebra.InfiniteSum.TsumUniformlyOn

namespace GRWTSK.Analysis.ComplexAnalysis.ThetaXiCoefficientFormula.Variantac5a6950c4c653a65b92c8469822accc43951dedf0042daf4ba569b7ef5188c3

#check HasSum.even_add_odd
#check tsum_even_add_odd
#check Complex.sq_sqrt
#check FormalMultilinearSeries.hasFPowerSeriesOnBall
#check FormalMultilinearSeries.analyticOnNhd
#check HasFPowerSeriesOnBall.analyticAt
#check HasFPowerSeriesOnBall.analyticOnNhd
#check HasFPowerSeriesOnBall.differentiableOn
#check HasFPowerSeriesOnBall.tendstoUniformlyOn
#check HasSumUniformlyOn.tendstoUniformlyOn
#check TendstoLocallyUniformlyOn.differentiableOn
#check TendstoUniformlyOn.comp
#check tendstoUniformlyOn_tsum_nat
#check tendstoUniformlyOn_tsum
#check MeasureTheory.integral_mul_le_Lp_mul_Lq_of_nonneg
#check MeasureTheory.integral_sq_le
#check discriminant_le_zero
#check Real.quadratic_nonneg_iff
```
