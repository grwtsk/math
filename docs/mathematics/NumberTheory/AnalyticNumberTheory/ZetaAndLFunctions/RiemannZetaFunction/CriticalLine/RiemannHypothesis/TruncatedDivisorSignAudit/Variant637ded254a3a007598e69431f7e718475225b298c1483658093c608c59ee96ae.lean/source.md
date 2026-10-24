# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.TruncatedDivisorSignAudit.Variant637ded254a3a007598e69431f7e718475225b298c1483658093c608c59ee96ae

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d104cdf261cc59ea632356fc10bba40e904b3990` · SHA-256 `1a54281ae77f18e2142b084e13518362d6fb24bdb49ccfaae90be7d7c4cd5f9b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.TruncatedThreeSix.Variantb4d6a2ee13411985f5632da2a64ca8eeacf45ee8db1ba270ac4c8c25d8d0f6fb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b4d6a2ee13411985f5632da2a64ca8eeacf45ee8db1ba270ac4c8c25d8d0f6fb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.TruncatedThreeSix.Variantb4d6a2ee13411985f5632da2a64ca8eeacf45ee8db1ba270ac4c8c25d8d0f6fb","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"b4d6a2ee13411985f5632da2a64ca8eeacf45ee8db1ba270ac4c8c25d8d0f6fb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/damped-divisor-core/TruncatedDivisorSignAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.TruncatedDivisorResidual

/-! Exact negative truncated-divisor coefficient throughout the actual damping cap. -/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.TruncatedThreeSix.Variantb4d6a2ee13411985f5632da2a64ca8eeacf45ee8db1ba270ac4c8c25d8d0f6fb

set_option autoImplicit false
namespace TruncatedDivisorSignScratch
open FormalResearch.RiemannHypothesis.SourceComparison.TruncatedDivisorResidual
noncomputable section

/-- The original divisor cutoff retains precisely the signed factors one, two and three. -/
theorem truncated_three_six (ε : ℝ) :
    truncatedDivisorCoefficient 3 ε 6 =
      1 - Real.exp (-ε * Real.log 2) - Real.exp (-ε * Real.log 3) := by
  have hd : (Nat.divisors 6).filter (fun d => d ≤ 3) = {1, 2, 3} := by decide
  unfold truncatedDivisorCoefficient
  rw [hd]
  norm_num [Finset.sum_insert, Finset.sum_singleton,
    ArithmeticFunction.moebius_apply_prime (by norm_num : Nat.Prime 2),
    ArithmeticFunction.moebius_apply_prime (by norm_num : Nat.Prime 3)]
  ring

/-- The actual partial divisor sum is uniformly negative on the entire permitted damping range. -/
theorem truncated_three_six_le_neg_quarter (ε : ℝ) (hε : 0 ≤ ε) (hsmall : ε ≤ 1 / 4) :
    truncatedDivisorCoefficient 3 ε 6 ≤ -(1 / 4 : ℝ) := by
  rw [truncated_three_six]
  have hl2 : Real.log 2 ≤ 1 := by
    linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)]
  have hl3 : Real.log 3 ≤ 2 := by
    linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 3)]
  have h2 := Real.add_one_le_exp (-ε * Real.log 2)
  have h3 := Real.add_one_le_exp (-ε * Real.log 3)
  have hp2 := mul_le_mul_of_nonneg_left hl2 hε
  have hp3 := mul_le_mul_of_nonneg_left hl3 hε
  nlinarith

end
end TruncatedDivisorSignScratch

set_option pp.proofs true
set_option pp.universes true
set_option pp.fullNames true
set_option pp.deepTerms true
set_option pp.maxSteps 10000000
#print TruncatedDivisorSignScratch.truncated_three_six
#print axioms TruncatedDivisorSignScratch.truncated_three_six
#print TruncatedDivisorSignScratch.truncated_three_six_le_neg_quarter
#print axioms TruncatedDivisorSignScratch.truncated_three_six_le_neg_quarter
```
