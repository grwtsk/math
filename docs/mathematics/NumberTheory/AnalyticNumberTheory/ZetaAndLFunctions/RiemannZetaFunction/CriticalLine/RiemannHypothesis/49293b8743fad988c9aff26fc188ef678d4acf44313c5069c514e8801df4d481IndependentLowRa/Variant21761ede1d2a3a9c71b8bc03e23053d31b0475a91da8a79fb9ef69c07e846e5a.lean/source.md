# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.49293b8743fad988c9aff26fc188ef678d4acf44313c5069c514e8801df4d481IndependentLowRa.Variant21761ede1d2a3a9c71b8bc03e23053d31b0475a91da8a79fb9ef69c07e846e5a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f4130ce0fe021a0d80d8d491f7308a50e2e26737` · SHA-256 `b72887ed13c8edde59ad240ccb8285163f6715548a7c9ad95f8952cadff288d8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaTailSignRegularLowRank.Variant49293b8743fad988c9aff26fc188ef678d4acf44313c5069c514e8801df4d481","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"49293b8743fad988c9aff26fc188ef678d4acf44313c5069c514e8801df4d481","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ThetaTailSignRegularLowRank.Variant49293b8743fad988c9aff26fc188ef678d4acf44313c5069c514e8801df4d481","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"49293b8743fad988c9aff26fc188ef678d4acf44313c5069c514e8801df4d481","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/49/49293b8743fad988c9aff26fc188ef678d4acf44313c5069c514e8801df4d481--independent-low-rank-review.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ThetaTailSignRegularLowRank


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaTailSignRegularLowRank.Variant49293b8743fad988c9aff26fc188ef678d4acf44313c5069c514e8801df4d481

#check FormalResearch.RiemannHypothesis.ThetaPositiveLift.hasDerivAt_thetaTail_succ
#print axioms FormalResearch.RiemannHypothesis.ThetaPositiveLift.hasDerivAt_thetaTail_succ
#check FormalResearch.RiemannHypothesis.ThetaPositiveLift.deriv_thetaTail_succ
#print axioms FormalResearch.RiemannHypothesis.ThetaPositiveLift.deriv_thetaTail_succ
#check FormalResearch.RiemannHypothesis.ThetaPositiveLift.iteratedDeriv_thetaTail_add
#print axioms FormalResearch.RiemannHypothesis.ThetaPositiveLift.iteratedDeriv_thetaTail_add
#check FormalResearch.RiemannHypothesis.ThetaPositiveLift.iteratedDeriv_thetaTail
#print axioms FormalResearch.RiemannHypothesis.ThetaPositiveLift.iteratedDeriv_thetaTail
#check FormalResearch.RiemannHypothesis.ThetaPositiveLift.continuous_thetaTail
#print axioms FormalResearch.RiemannHypothesis.ThetaPositiveLift.continuous_thetaTail
#check FormalResearch.RiemannHypothesis.ThetaPositiveLift.contDiff_thetaTail_order
#print axioms FormalResearch.RiemannHypothesis.ThetaPositiveLift.contDiff_thetaTail_order
#check FormalResearch.RiemannHypothesis.ThetaPositiveLift.thetaTailSignRegular_orientation_initial_seven
#print axioms FormalResearch.RiemannHypothesis.ThetaPositiveLift.thetaTailSignRegular_orientation_initial_seven
#check FormalResearch.RiemannHypothesis.ThetaPositiveLift.thetaTailSignRegular_two_iff_ratio
#print axioms FormalResearch.RiemannHypothesis.ThetaPositiveLift.thetaTailSignRegular_two_iff_ratio
#check FormalResearch.RiemannHypothesis.ThetaPositiveLift.hasDerivAt_thetaTail_ratio
#print axioms FormalResearch.RiemannHypothesis.ThetaPositiveLift.hasDerivAt_thetaTail_ratio
```
