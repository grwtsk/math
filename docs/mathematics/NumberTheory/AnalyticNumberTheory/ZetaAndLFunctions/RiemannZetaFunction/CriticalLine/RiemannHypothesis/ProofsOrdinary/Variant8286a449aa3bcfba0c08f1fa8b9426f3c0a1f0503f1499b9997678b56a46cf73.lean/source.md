# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ProofsOrdinary.Variant8286a449aa3bcfba0c08f1fa8b9426f3c0a1f0503f1499b9997678b56a46cf73

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `279634ab03311363ddac35b41c9dc3849e36b328` · SHA-256 `da27df9c75b1f97ff7f6d9d48845e51e7f42314199df0b3507fe231eb98137a7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualXiEarlyReturnedWork.Varianta71c0dc78d4fddf291f498b32940c4d9d6004fe0f2907da666fb1ec20c5b3221","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a71c0dc78d4fddf291f498b32940c4d9d6004fe0f2907da666fb1ec20c5b3221","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SourceActualXiEarlyReturnedWork.Varianta71c0dc78d4fddf291f498b32940c4d9d6004fe0f2907da666fb1ec20c5b3221","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"a71c0dc78d4fddf291f498b32940c4d9d6004fe0f2907da666fb1ec20c5b3221","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-signed-next/actual-xi-early-returned-work/ProofsOrdinary.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualXiEarlyReturnedWork

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualXiEarlyReturnedWork.Varianta71c0dc78d4fddf291f498b32940c4d9d6004fe0f2907da666fb1ec20c5b3221

set_option linter.hashCommand false
set_option linter.style.setOption false
set_option linter.style.longLine false
set_option pp.maxSteps 1000000
set_option pp.proofs true
set_option pp.all true
set_option pp.fullNames false
#print FormalResearch.RiemannHypothesis.SourceActualXiEarlyReturnedWork.actualXiEarlyReturnedWork
#print FormalResearch.RiemannHypothesis.SourceActualXiEarlyReturnedWork.actualXiLateReturnedWork
#print FormalResearch.RiemannHypothesis.SourceActualXiEarlyReturnedWork.actualXiEarlyReturnedBudget
#print FormalResearch.RiemannHypothesis.SourceActualXiEarlyReturnedWork.actualXiEarlyReturned_split_orders
#print FormalResearch.RiemannHypothesis.SourceActualXiEarlyReturnedWork.actualXiReturnedWork_intervalIntegrable
#print FormalResearch.RiemannHypothesis.SourceActualXiEarlyReturnedWork.actualXiReturnDensity_origin_abs_le
#print FormalResearch.RiemannHypothesis.SourceActualXiEarlyReturnedWork.actualXiEarlyReturnedWork_abs_le
#print FormalResearch.RiemannHypothesis.SourceActualXiEarlyReturnedWork.completeXiTail_eq_early_add_late
#print FormalResearch.RiemannHypothesis.SourceActualXiEarlyReturnedWork.actualXiEarlyReturnedBudget_tendsto_zero
#print FormalResearch.RiemannHypothesis.SourceActualXiEarlyReturnedWork.actualXiEarlyReturnedWork_tendsto_zero
#print FormalResearch.RiemannHypothesis.SourceActualXiEarlyReturnedWork.completeXiTail_sub_late_tendsto_zero
```
