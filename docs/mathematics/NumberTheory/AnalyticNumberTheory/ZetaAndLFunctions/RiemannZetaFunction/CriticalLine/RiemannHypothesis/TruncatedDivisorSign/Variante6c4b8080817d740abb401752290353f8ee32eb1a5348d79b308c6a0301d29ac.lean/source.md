# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.TruncatedDivisorSign.Variante6c4b8080817d740abb401752290353f8ee32eb1a5348d79b308c6a0301d29ac

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3fdad529068e7f08e67bb5b1551b54e1d857905c` · SHA-256 `1061fb059ab961648088ead1e9a8c4cc65998763d6c329c82457faf84401f6d6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.TruncatedThreeSix.Varianta0ade6804252a1e335537128efe67dc9749f3f5788055430fa914c0b33f7974f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a0ade6804252a1e335537128efe67dc9749f3f5788055430fa914c0b33f7974f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.TruncatedThreeSix.Varianta0ade6804252a1e335537128efe67dc9749f3f5788055430fa914c0b33f7974f","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"a0ade6804252a1e335537128efe67dc9749f3f5788055430fa914c0b33f7974f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/damped-divisor-core/TruncatedDivisorSign.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.TruncatedDivisorResidual

/-! Exact negative truncated-divisor coefficient throughout the actual damping cap. -/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.TruncatedThreeSix.Varianta0ade6804252a1e335537128efe67dc9749f3f5788055430fa914c0b33f7974f

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
```
