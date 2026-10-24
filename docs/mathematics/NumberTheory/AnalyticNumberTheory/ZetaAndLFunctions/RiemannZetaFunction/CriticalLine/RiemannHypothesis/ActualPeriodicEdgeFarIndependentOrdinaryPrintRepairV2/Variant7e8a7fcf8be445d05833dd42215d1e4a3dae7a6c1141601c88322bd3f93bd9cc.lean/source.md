# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualPeriodicEdgeFarIndependentOrdinaryPrintRepairV2.Variant7e8a7fcf8be445d05833dd42215d1e4a3dae7a6c1141601c88322bd3f93bd9cc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `266598f01580a98c330a9a2bcc9e3c4be87adf38` · SHA-256 `c23e9cefc57f5a7e0cb3643a8afada7d600e9441e73e0711af4388cead8667bd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualPeriodicHalfExponentialFar.Variantdf8c9b5848b96c20350a9ffe11f8e6882c0732417cd74e2088378157daff9662","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"df8c9b5848b96c20350a9ffe11f8e6882c0732417cd74e2088378157daff9662","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualPeriodicHalfExponentialFar.Variantdf8c9b5848b96c20350a9ffe11f8e6882c0732417cd74e2088378157daff9662","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"df8c9b5848b96c20350a9ffe11f8e6882c0732417cd74e2088378157daff9662","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-signed-next/actual-author-print-repair-v2/actual_periodic_edge_far_independent_Ordinary_PrintRepairV2.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualPeriodicHalfExponentialFar

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualPeriodicHalfExponentialFar.Variantdf8c9b5848b96c20350a9ffe11f8e6882c0732417cd74e2088378157daff9662

set_option linter.hashCommand false
set_option linter.style.setOption false
set_option linter.style.longLine false
set_option pp.maxSteps 1000000
set_option pp.proofs true
set_option pp.all true
set_option pp.fullNames false
-- Diagnostic-only budget for a complete pretty-printed proof.
set_option maxHeartbeats 2000000
set_option maxRecDepth 100000
set_option pp.maxSteps 10000000
set_option pp.deepTerms true
#print FormalResearch.RiemannHypothesis.ActualPeriodicEdgeTimeBudget.actualPeriodicEdgeEndpointMass
#print FormalResearch.RiemannHypothesis.ActualPeriodicEdgeTimeBudget.actualPeriodicEdgeDerivativeMass
#print FormalResearch.RiemannHypothesis.ActualPeriodicEdgeTimeBudget.actualPeriodicProfile_time_norm_le
#print FormalResearch.RiemannHypothesis.ActualPeriodicEdgeTimeBudget.actualPeriodicProfile_deriv_time_norm_le
#print FormalResearch.RiemannHypothesis.ActualPeriodicEdgeTimeBudget.actualPeriodicEdgeEndpointMass_le
#print FormalResearch.RiemannHypothesis.ActualPeriodicEdgeTimeBudget.actualPeriodicEdgeDerivativeMass_le
#print FormalResearch.RiemannHypothesis.ActualPeriodicHalfExponentialFar.actualHalfExponentialPeriodicCutoff
#print FormalResearch.RiemannHypothesis.ActualPeriodicHalfExponentialFar.actualFarPeriodicWork_edge_abs_le
#print FormalResearch.RiemannHypothesis.ActualPeriodicHalfExponentialFar.actualHalfExponentialPeriodicCutoff_orders
#print FormalResearch.RiemannHypothesis.ActualPeriodicHalfExponentialFar.actualHalfExponentialFarPeriodicWork_abs_le
```
