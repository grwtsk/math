# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ProofsOrdinary.Variant6217067a2d6154b25da823837df6a24161d55d55b7441494792b4a6797937395

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7192ed14774a5ca0efab6afb0bc57481ae4c3e58` · SHA-256 `c432f5de6e53fbbcabc0c284cc403b6d1b611c73f0646425280723bdef5e285c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualPeriodicHalfExponentialFar.Variant10609c346d81db12811e847a93984a4cc2c961eaffc2f5a85c9e78a89d0efc6f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"10609c346d81db12811e847a93984a4cc2c961eaffc2f5a85c9e78a89d0efc6f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualPeriodicHalfExponentialFar.Variant10609c346d81db12811e847a93984a4cc2c961eaffc2f5a85c9e78a89d0efc6f","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"10609c346d81db12811e847a93984a4cc2c961eaffc2f5a85c9e78a89d0efc6f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-signed-next/actual-periodic-edge-far-independent/ProofsOrdinary.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualPeriodicHalfExponentialFar

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualPeriodicHalfExponentialFar.Variant10609c346d81db12811e847a93984a4cc2c961eaffc2f5a85c9e78a89d0efc6f

set_option pp.maxSteps 1000000
set_option pp.proofs true
set_option pp.all true
set_option pp.fullNames false
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
