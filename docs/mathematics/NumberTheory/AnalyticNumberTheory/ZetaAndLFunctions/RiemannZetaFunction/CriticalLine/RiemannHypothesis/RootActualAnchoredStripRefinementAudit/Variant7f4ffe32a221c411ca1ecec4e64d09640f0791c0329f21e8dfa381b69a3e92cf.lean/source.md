# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RootActualAnchoredStripRefinementAudit.Variant7f4ffe32a221c411ca1ecec4e64d09640f0791c0329f21e8dfa381b69a3e92cf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `de7305a9437315d22ef194cf9e4d06a12c974c9d` · SHA-256 `39f3b5aa41a5dccea14d3c040e9ff82d4e361af958310d94af90bb794326a7d1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RootActualAnchoredStripRefinement.Variant5db4f015e74bea10c4b9cd21f91d693a9a0ae226a5bcdaefc3a538772d192e37","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5db4f015e74bea10c4b9cd21f91d693a9a0ae226a5bcdaefc3a538772d192e37","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.RootActualAnchoredStripRefinement.Variant5db4f015e74bea10c4b9cd21f91d693a9a0ae226a5bcdaefc3a538772d192e37","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"5db4f015e74bea10c4b9cd21f91d693a9a0ae226a5bcdaefc3a538772d192e37","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/root/check-20261006T213826Z-1791322706148969000/RootActualAnchoredStripRefinementAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import RootActualAnchoredStripRefinement


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RootActualAnchoredStripRefinement.Variant5db4f015e74bea10c4b9cd21f91d693a9a0ae226a5bcdaefc3a538772d192e37

set_option linter.hashCommand false
set_option linter.style.setOption false
set_option linter.style.longLine false
set_option pp.maxSteps 1000000
set_option pp.all true
set_option pp.proofs true

#print FormalResearch.RiemannHypothesis.RootActualAnchoredStripRefinement.actualAdjointTimePrimitive_anchored_abs_le
#print axioms FormalResearch.RiemannHypothesis.RootActualAnchoredStripRefinement.actualAdjointTimePrimitive_anchored_abs_le
#print FormalResearch.RiemannHypothesis.RootActualAnchoredStripRefinement.actualAdjointTimePrimitive_strip_abs_le
#print axioms FormalResearch.RiemannHypothesis.RootActualAnchoredStripRefinement.actualAdjointTimePrimitive_strip_abs_le
#print FormalResearch.RiemannHypothesis.RootActualAnchoredStripRefinement.actualLowerStripInterior_anchored_abs_le
#print axioms FormalResearch.RiemannHypothesis.RootActualAnchoredStripRefinement.actualLowerStripInterior_anchored_abs_le
#print FormalResearch.RiemannHypothesis.RootActualAnchoredStripRefinement.actualLowerStripInterior_balanced_abs_le
#print axioms FormalResearch.RiemannHypothesis.RootActualAnchoredStripRefinement.actualLowerStripInterior_balanced_abs_le
```
