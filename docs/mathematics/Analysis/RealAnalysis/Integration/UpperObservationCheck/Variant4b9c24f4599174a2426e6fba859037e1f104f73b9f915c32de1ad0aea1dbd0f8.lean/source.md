# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.UpperObservationCheck.Variant4b9c24f4599174a2426e6fba859037e1f104f73b9f915c32de1ad0aea1dbd0f8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `07b297d0f3bad5921c9f72c1ee4abbb2475d3ff8` · SHA-256 `2237141b05d6c8a3a19f7c80b5bc1fffd43472466221bf8d2760819aa650d09e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.CorrelationSecondMoment.Variant280b7f79c444deea6006a6c24c95eacf610890c3c0ef9e488d712e7a03d4de1e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"280b7f79c444deea6006a6c24c95eacf610890c3c0ef9e488d712e7a03d4de1e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.CorrelationSecondMoment.Variant280b7f79c444deea6006a6c24c95eacf610890c3c0ef9e488d712e7a03d4de1e","mathematical_subject":"Analysis.Integration","original_sha256":"280b7f79c444deea6006a6c24c95eacf610890c3c0ef9e488d712e7a03d4de1e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/mertens/UpperObservationCheck.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.CorrelationSecondMoment

namespace GRWTSK.Analysis.RealAnalysis.Integration.CorrelationSecondMoment.Variant280b7f79c444deea6006a6c24c95eacf610890c3c0ef9e488d712e7a03d4de1e

open MeasureTheory
#check hasCompactSupport_sum
#check HasCompactSupport.finset_sum
#check Finset.hasCompactSupport_sum
#check MeasureTheory.integral_finset_sum
#check MeasureTheory.Integrable.finset_sum
#check Continuous.integrable_of_hasCompactSupport
#check continuous_finset_sum
#check HasCompactSupport.mul_left
#check MeasureTheory.integral_integrableOn_Icc
#check MeasureTheory.integral_eq_integral_Icc_of_support_subset
#check MeasureTheory.setIntegral_eq_integral_of_forall_compl_eq_zero
#check MeasureTheory.integral_indicator
#check MeasureTheory.IntegrableOn
```
