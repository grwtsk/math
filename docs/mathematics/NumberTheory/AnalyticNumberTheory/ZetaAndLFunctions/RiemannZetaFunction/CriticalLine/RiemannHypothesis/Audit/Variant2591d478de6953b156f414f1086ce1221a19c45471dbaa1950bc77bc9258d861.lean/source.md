# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Audit.Variant2591d478de6953b156f414f1086ce1221a19c45471dbaa1950bc77bc9258d861

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `13cd611a6cab932ddd60cc96c4f8aaa8e3f6755e` · SHA-256 `cf10dbb18f169607ef1b9f50a751030c5a15db347d4859a411563623fd2d91fb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceFirstPrimeAbel.Variant0a5a564bfff3078e4ecc3b2d8a597e33f7c5d0add59bc2be4e7f88ef91eca062","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0a5a564bfff3078e4ecc3b2d8a597e33f7c5d0add59bc2be4e7f88ef91eca062","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SourceFirstPrimeAbel.Variant0a5a564bfff3078e4ecc3b2d8a597e33f7c5d0add59bc2be4e7f88ef91eca062","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"0a5a564bfff3078e4ecc3b2d8a597e33f7c5d0add59bc2be4e7f88ef91eca062","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle4/first-prime-abel/Audit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceFirstPrimeAbel

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceFirstPrimeAbel.Variant0a5a564bfff3078e4ecc3b2d8a597e33f7c5d0add59bc2be4e7f88ef91eca062

set_option linter.hashCommand false
open FormalResearch.RiemannHypothesis.SourceFirstPrimeAbel
#check criticalPrimeTest
#print axioms criticalPrimeTest
#check criticalContinuousMoment
#print axioms criticalContinuousMoment
#check criticalSignedWork
#print axioms criticalSignedWork
#check CriticalAbelTailLowerBound
#print axioms CriticalAbelTailLowerBound
#check criticalPrimeTest_contDiff
#print axioms criticalPrimeTest_contDiff
#check criticalPrimeTest_deriv
#print axioms criticalPrimeTest_deriv
#check prime_source_coefficient_eq_critical_test
#print axioms prime_source_coefficient_eq_critical_test
#check firstPrimeMoment_eq_criticalPrimeSum
#print axioms firstPrimeMoment_eq_criticalPrimeSum
#check criticalSignedWork_intervalIntegrable
#print axioms criticalSignedWork_intervalIntegrable
#check criticalPrimeTest_at_upper
#print axioms criticalPrimeTest_at_upper
#check criticalPrimeTest_at_zero
#print axioms criticalPrimeTest_at_zero
#check criticalContinuousMoment_eq_neg_negative
#print axioms criticalContinuousMoment_eq_neg_negative
#check criticalContinuousMoment_eq_smooth_add_initial
#print axioms criticalContinuousMoment_eq_smooth_add_initial
#check criticalContinuousMoment_abs_le_two
#print axioms criticalContinuousMoment_abs_le_two
#check criticalPrimeWindow_eq_sum
#print axioms criticalPrimeWindow_eq_sum
#check primeLogError_below_first_prime
#print axioms primeLogError_below_first_prime
#check criticalPrimeSum_eq_continuous_sub_work
#print axioms criticalPrimeSum_eq_continuous_sub_work
#check criticalPrimeTailUpper_iff_signed_lower
#print axioms criticalPrimeTailUpper_iff_signed_lower
#check firstPrimeMoment_eq_continuous_sub_work
#print axioms firstPrimeMoment_eq_continuous_sub_work
#check firstPrime_tail_iff_criticalAbel_tail
#print axioms firstPrime_tail_iff_criticalAbel_tail
#check mertens_residual_tail_iff_criticalAbel_tail
#print axioms mertens_residual_tail_iff_criticalAbel_tail
```
