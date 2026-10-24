# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.D86a8bcc5594d2909215f6bc697a5fa38304cd98d8a6e9546612331cb3b9e99dIntegralTailAudi.Variantf81d0fb9c20ffbfb6d0782561af8415e0c18b76a60b29bd7bc4c4714160c666d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `920410441d366df63d168130b254bfb1c61bb26c` · SHA-256 `d6b5f29a5d4d4f8eb29d095f1d1df302faa3900aec2057544a4c88c8f8a8beac`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaIntegralTailLogSlope.Variantd86a8bcc5594d2909215f6bc697a5fa38304cd98d8a6e9546612331cb3b9e99d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d86a8bcc5594d2909215f6bc697a5fa38304cd98d8a6e9546612331cb3b9e99d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.ThetaIntegralTailLogSlope.Variantd86a8bcc5594d2909215f6bc697a5fa38304cd98d8a6e9546612331cb3b9e99d","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"d86a8bcc5594d2909215f6bc697a5fa38304cd98d8a6e9546612331cb3b9e99d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/d8/d86a8bcc5594d2909215f6bc697a5fa38304cd98d8a6e9546612331cb3b9e99d--IntegralTailAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ThetaIntegralTailLogSlope

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaIntegralTailLogSlope.Variantd86a8bcc5594d2909215f6bc697a5fa38304cd98d8a6e9546612331cb3b9e99d

open FormalResearch.RiemannHypothesis.ThetaPositiveLift

#check integralTail
#print integralTail
#print axioms integralTail
#check integralTail_eq_sub
#print integralTail_eq_sub
#print axioms integralTail_eq_sub
#check hasDerivAt_integralTail
#print hasDerivAt_integralTail
#print axioms hasDerivAt_integralTail
#check integralTail_positive
#print integralTail_positive
#print axioms integralTail_positive
#check logSlope_cross_nonnegative
#print logSlope_cross_nonnegative
#print axioms logSlope_cross_nonnegative
#check integral_deriv_Ici_eq_neg
#print integral_deriv_Ici_eq_neg
#print axioms integral_deriv_Ici_eq_neg
#check integralTail_logSlope_identity
#print integralTail_logSlope_identity
#print axioms integralTail_logSlope_identity
#check integralTail_logSlope_nonnegative
#print integralTail_logSlope_nonnegative
#print axioms integralTail_logSlope_nonnegative
#check hasDerivAt_integralTail_ratio
#print hasDerivAt_integralTail_ratio
#print axioms hasDerivAt_integralTail_ratio
#check integralTail_ratio_antitone
#print integralTail_ratio_antitone
#print axioms integralTail_ratio_antitone
#check integralTail_logSlope_antitone
#print integralTail_logSlope_antitone
#print axioms integralTail_logSlope_antitone
```
