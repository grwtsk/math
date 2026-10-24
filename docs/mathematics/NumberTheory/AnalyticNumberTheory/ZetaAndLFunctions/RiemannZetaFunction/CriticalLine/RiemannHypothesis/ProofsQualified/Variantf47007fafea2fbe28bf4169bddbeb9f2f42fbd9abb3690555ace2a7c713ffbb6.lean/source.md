# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ProofsQualified.Variantf47007fafea2fbe28bf4169bddbeb9f2f42fbd9abb3690555ace2a7c713ffbb6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `876eadbd2f5faf5f00c72b5b97de4d4752116fcb` · SHA-256 `21455188d22180fe4a41689fae4001c265f94ab26d86ce68aaa69c8eebe8abed`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualPeriodicHalfExponentialFar.Variant288f675cc8ddab2331bffd188461cc464104aec021115454bdf694a8c31284b5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"288f675cc8ddab2331bffd188461cc464104aec021115454bdf694a8c31284b5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualPeriodicHalfExponentialFar.Variant288f675cc8ddab2331bffd188461cc464104aec021115454bdf694a8c31284b5","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"288f675cc8ddab2331bffd188461cc464104aec021115454bdf694a8c31284b5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-signed-next/actual-periodic-edge-far-independent/ProofsQualified.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualPeriodicHalfExponentialFar

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualPeriodicHalfExponentialFar.Variant288f675cc8ddab2331bffd188461cc464104aec021115454bdf694a8c31284b5

set_option pp.maxSteps 1000000
set_option pp.proofs true
set_option pp.all true
set_option pp.fullNames true
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
