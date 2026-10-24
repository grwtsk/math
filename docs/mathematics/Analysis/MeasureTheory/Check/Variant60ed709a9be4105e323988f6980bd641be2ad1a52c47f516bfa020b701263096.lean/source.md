# Complete source: GRWTSK.Analysis.MeasureTheory.Check.Variant60ed709a9be4105e323988f6980bd641be2ad1a52c47f516bfa020b701263096

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `81e24b206d1c25171ccdf54ff900794128def9e3` · SHA-256 `1099d0cb7252e78eaa176b3fdf5e4c6abbc0d9634b9c147405583c1d959822b3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.DominatedConvergence.Variant772bc4f005a59601de46c3131d5342a16bf534d86c2ec4f18a05b1c39a25f218","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"772bc4f005a59601de46c3131d5342a16bf534d86c2ec4f18a05b1c39a25f218","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.DominatedConvergence.Variant772bc4f005a59601de46c3131d5342a16bf534d86c2ec4f18a05b1c39a25f218","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"772bc4f005a59601de46c3131d5342a16bf534d86c2ec4f18a05b1c39a25f218","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/spectral-zero-energy/Check.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.MeasureTheory.Integral.DominatedConvergence
import Mathlib.MeasureTheory.Integral.Bochner.Set
import Mathlib.Topology.Instances.ENNReal.Lemmas

namespace GRWTSK.Analysis.MeasureTheory.DominatedConvergence.Variant772bc4f005a59601de46c3131d5342a16bf534d86c2ec4f18a05b1c39a25f218

open MeasureTheory Set Filter
open scoped Topology NNReal
#check NNReal.continuous_coe
#check NNReal.measurable_coe
#check continuous_subtype_val
#check measurable_subtype_coe
#check self_mem_nhdsWithin
#check eventually_mem_nhdsWithin
#check nhdsWithin_le_nhds
#check Integrable.mono'
#check integral_mono
#check integral_nonneg
#check integral_const_mul
#check Measurable.div
#check Continuous.div
#check Set.indicator_of_mem
#check Set.indicator_of_notMem
#check tendsto_nhdsWithin_of_tendsto_nhds
#check Filter.Tendsto.congr'
#check integral_indicator_one
#check Measure.real_singleton
#check le_div_iff₀
#check div_le_one
```
