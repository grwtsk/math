# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualSqrtSieveBoundsAudit.Variant1162ac601ffc782cc68a9382186d5fe9e1a28e0c97066bae7b18e0eea6296cbf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1013723c61c3fd47e2e36ce7e2e127b5969e2829` · SHA-256 `9cd7431be345c6868758a713a034832a7afc01a7c395312d8c241395b1d9487d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualSqrtSieveBounds.Variant5d255d587018c30250b2f4204b0d97370a93be8e9089e342ad56862570c6adc2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5d255d587018c30250b2f4204b0d97370a93be8e9089e342ad56862570c6adc2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ActualSqrtSieveBounds.Variant5d255d587018c30250b2f4204b0d97370a93be8e9089e342ad56862570c6adc2","mathematical_subject":"Foundations.Unclassified","original_sha256":"5d255d587018c30250b2f4204b0d97370a93be8e9089e342ad56862570c6adc2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/root/check-20261006T190512Z-1791313512047222000/ActualSqrtSieveBoundsAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualSqrtSieveBounds


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualSqrtSieveBounds.Variant5d255d587018c30250b2f4204b0d97370a93be8e9089e342ad56862570c6adc2

set_option linter.hashCommand false
set_option linter.style.setOption false
set_option linter.style.longLine false
set_option pp.all true
set_option pp.maxSteps 1000000

#check RH16IndependentChallengeNext.reciprocalSqrt_sum_upper
#print axioms RH16IndependentChallengeNext.reciprocalSqrt_sum_upper
#check RH16IndependentChallengeNext.reciprocalSqrt_sum_upper_total
#print axioms RH16IndependentChallengeNext.reciprocalSqrt_sum_upper_total
#check RH16IndependentChallengeNext.reciprocalSqrt_sum_lower
#print axioms RH16IndependentChallengeNext.reciprocalSqrt_sum_lower
#check RH16IndependentChallengeNext.reciprocalSquare_sum_upper
#print axioms RH16IndependentChallengeNext.reciprocalSquare_sum_upper
#check RH16IndependentChallengeNext.reciprocal_small_square_divisor_bonus
#print axioms RH16IndependentChallengeNext.reciprocal_small_square_divisor_bonus
set_option pp.proofs true
#print RH16IndependentChallengeNext.reciprocalSqrt_sum_upper
#print RH16IndependentChallengeNext.reciprocalSqrt_sum_upper_total
#print RH16IndependentChallengeNext.reciprocalSqrt_sum_lower
#print RH16IndependentChallengeNext.reciprocalSquare_sum_upper
#print RH16IndependentChallengeNext.reciprocal_small_square_divisor_bonus
```
