# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.MeasureApi.Variant609d4b1f9cbf0e171323f028eb3038ff0c4b571c95b3e9dfb0c4eb04aeaf9771

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c461820305a6822fa87b97a9d8fc1c2f59a4a671` · SHA-256 `b8700c140c1412993a02c4971918abdb6845b58963abdbb440f0f1381f4940ad`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.ThetaTailCalculus.Variantffc548ff166e01d1317563b0287d00eb3a06e74b093599465bbe11a59ff4b98b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ffc548ff166e01d1317563b0287d00eb3a06e74b093599465bbe11a59ff4b98b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.ThetaTailCalculus.Variantffc548ff166e01d1317563b0287d00eb3a06e74b093599465bbe11a59ff4b98b","mathematical_subject":"Analysis.Integration","original_sha256":"ffc548ff166e01d1317563b0287d00eb3a06e74b093599465bbe11a59ff4b98b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/measure_api.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ThetaTailCalculus
import Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap

namespace GRWTSK.Analysis.RealAnalysis.Integration.ThetaTailCalculus.Variantffc548ff166e01d1317563b0287d00eb3a06e74b093599465bbe11a59ff4b98b

#check MeasureTheory.withDensity_absolutelyContinuous
#check MeasureTheory.Measure.AbsolutelyContinuous.ae_le
#check MeasureTheory.Integrable.finset_sum
#check MeasureTheory.integral_finset_sum
#check Polynomial.exists_max_root
#check Polynomial.eval_eq_sum_range
#check Set.infinite_Ioi
#check IsOpen.measure_pos
```
