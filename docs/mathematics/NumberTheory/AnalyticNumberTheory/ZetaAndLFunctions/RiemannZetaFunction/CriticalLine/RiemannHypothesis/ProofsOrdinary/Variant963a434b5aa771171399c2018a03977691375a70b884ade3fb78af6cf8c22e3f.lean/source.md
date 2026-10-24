# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ProofsOrdinary.Variant963a434b5aa771171399c2018a03977691375a70b884ade3fb78af6cf8c22e3f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2768256f7800fdccd77f50585031bb311e9b935f` · SHA-256 `4797731c20434fa736bae8436b5c5493ded532600de12ed16192fda2287fefda`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualCriticalCovarianceNormalizedDecay.Variant9a2d4dbdf3d48f535e69557355da70b54e9c1f929997e1ee5477cd2f8cd1952c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9a2d4dbdf3d48f535e69557355da70b54e9c1f929997e1ee5477cd2f8cd1952c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualCriticalCovarianceNormalizedDecay.Variant9a2d4dbdf3d48f535e69557355da70b54e9c1f929997e1ee5477cd2f8cd1952c","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"9a2d4dbdf3d48f535e69557355da70b54e9c1f929997e1ee5477cd2f8cd1952c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-challenge-next/ActualCriticalCovarianceNormalizedDecay-AllAnnotationAudit01/ProofsOrdinary.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualCriticalCovarianceNormalizedDecay

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualCriticalCovarianceNormalizedDecay.Variant9a2d4dbdf3d48f535e69557355da70b54e9c1f929997e1ee5477cd2f8cd1952c

set_option pp.all true
set_option pp.maxSteps 100000000
set_option maxRecDepth 100000
set_option maxHeartbeats 10000000
set_option pp.rawOnError false
set_option pp.fullNames false
#print FormalResearch.RiemannHypothesis.ActualCriticalCovarianceNormalizedDecay.actualNormalizedCriticalCovariance
#print FormalResearch.RiemannHypothesis.ActualCriticalCovarianceNormalizedDecay.actualCriticalKernel_edge_abs_le
#print FormalResearch.RiemannHypothesis.ActualCriticalCovarianceNormalizedDecay.actualCriticalErrorCovariance_late_edge_abs_le
#print FormalResearch.RiemannHypothesis.ActualCriticalCovarianceNormalizedDecay.actualNormalizedCriticalEarlyBudget
#print FormalResearch.RiemannHypothesis.ActualCriticalCovarianceNormalizedDecay.actualNormalizedCriticalEarly_abs_le
#print FormalResearch.RiemannHypothesis.ActualCriticalCovarianceNormalizedDecay.actualNormalizedCriticalEarlyBudget_tendsto_zero
#print FormalResearch.RiemannHypothesis.ActualCriticalCovarianceNormalizedDecay.actualNormalizedCriticalCovariance_abs_le
#print FormalResearch.RiemannHypothesis.ActualCriticalCovarianceNormalizedDecay.actualNormalizedCriticalCovariance_tendsto_zero
```
