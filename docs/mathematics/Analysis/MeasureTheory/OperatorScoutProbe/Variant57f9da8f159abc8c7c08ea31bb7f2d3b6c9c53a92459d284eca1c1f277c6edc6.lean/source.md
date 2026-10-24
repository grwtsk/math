# Complete source: GRWTSK.Analysis.MeasureTheory.OperatorScoutProbe.Variant57f9da8f159abc8c7c08ea31bb7f2d3b6c9c53a92459d284eca1c1f277c6edc6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f4cd4580a2ec8623d55244cdedb155a07ab23b11` · SHA-256 `d57ec4770884cfa4e024ad43d9e55be42f31792356f48c2b372e2d240d4e4cd3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.HalfLineExponential.Variantfc55024af3d7e934ee9e215fc4f0f2cb6dc3e5b82df2cd822426c666944b9bd3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fc55024af3d7e934ee9e215fc4f0f2cb6dc3e5b82df2cd822426c666944b9bd3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.HalfLineExponential.Variantfc55024af3d7e934ee9e215fc4f0f2cb6dc3e5b82df2cd822426c666944b9bd3","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"fc55024af3d7e934ee9e215fc4f0f2cb6dc3e5b82df2cd822426c666944b9bd3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/spectral-zero-energy/OperatorScoutProbe.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential
import FormalResearch.RiemannHypothesis.SourceComparison.FixedKernelAdmission
import Mathlib.MeasureTheory.Function.LpSpace.ContinuousCompMeasurePreserving
import Mathlib.MeasureTheory.Measure.Typeclasses.Finite
import Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap

namespace GRWTSK.Analysis.MeasureTheory.HalfLineExponential.Variantfc55024af3d7e934ee9e215fc4f0f2cb6dc3e5b82df2cd822426c666944b9bd3

#check MeasureTheory.measurePreserving_sub_right
#check MeasureTheory.Lp.compMeasurePreservingₗᵢ
#check Continuous.compMeasurePreservingLp
#check ContinuousMap.continuous_of_continuous_uncurry
#check MeasureTheory.LpToLpRestrictCLM
#check MeasureTheory.memLp_indicator_iff_restrict
#check MeasureTheory.eLpNorm_indicator_eq_eLpNorm_restrict
#check MeasureTheory.Lp.memLp
#check MeasureTheory.Integrable.smul_of_top_right
#check MeasureTheory.norm_integral_le_integral_norm
#check MeasureTheory.LpToLpRestrictCLM_norm_le
```
