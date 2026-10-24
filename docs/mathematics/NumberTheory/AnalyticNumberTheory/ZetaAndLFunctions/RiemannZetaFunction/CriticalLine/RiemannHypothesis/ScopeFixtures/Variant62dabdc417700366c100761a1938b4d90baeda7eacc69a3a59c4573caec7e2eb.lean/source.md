# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ScopeFixtures.Variant62dabdc417700366c100761a1938b4d90baeda7eacc69a3a59c4573caec7e2eb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2b1645adec198d4334cd3b2ff2476e0e36bc300b` · SHA-256 `16942c4011e2cdcb284018404f9c74c00a1277ba79b6b3de38ef1bccf2deb8a1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.EndpointMinusOneRequired.Variant6d933d6de5625ed8b8c2a0d78d75bbd51a4604f0b6941a7ec148b97fdacaeed0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6d933d6de5625ed8b8c2a0d78d75bbd51a4604f0b6941a7ec148b97fdacaeed0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.EndpointMinusOneRequired.Variant6d933d6de5625ed8b8c2a0d78d75bbd51a4604f0b6941a7ec148b97fdacaeed0","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"6d933d6de5625ed8b8c2a0d78d75bbd51a4604f0b6941a7ec148b97fdacaeed0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle16/regent-next-critical-decay/native-replay-v1/overlay/ScopeFixtures.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceCriticalDecayWork

/-! Private semantic guards, excluded from the eight-declaration work unit. -/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.EndpointMinusOneRequired.Variant6d933d6de5625ed8b8c2a0d78d75bbd51a4604f0b6941a7ec148b97fdacaeed0

set_option autoImplicit false
set_option linter.hashCommand false
namespace FormalResearch.RiemannHypothesis.SourceCriticalDecayScopeFixtures
open SourceCriticalDecayWork SourcePrimeSquareTailWork SourceDiagonalMainTerm

/-- The actual endpoint contribution cannot be erased from the signed decay work. -/
theorem endpoint_minus_one_required {A : ℝ} (hA : 1 ≤ A) :
    criticalDecayWork A ≠ diagonalMainCoefficient A*A := by
  rw [criticalDecayWork_eq_main hA]
  linarith

/-- The actual square tail is flat below its first atom while the independent decay decreases. -/
theorem actual_square_tail_not_decay : squareTail ≠ criticalDecay := by
  have hl : 0 < Real.log 2 := Real.log_pos (by norm_num : (1 : ℝ) < 2)
  have hq : squareTail (Real.log 2) = squarePrefixBaseline :=
    squareTail_below_first_square (by linarith)
  have hh : criticalDecay (Real.log 2) < criticalDecay 0 := by
    simp only [criticalDecay, neg_zero, zero_div, Real.exp_zero]
    rw [Real.exp_lt_one_iff]
    linarith
  intro he
  have h0 := congrFun he 0
  have hlog := congrFun he (Real.log 2)
  rw [squareTail_at_zero] at h0
  rw [hq] at hlog
  linarith

#check endpoint_minus_one_required
#print axioms endpoint_minus_one_required
#check actual_square_tail_not_decay
#print axioms actual_square_tail_not_decay
end FormalResearch.RiemannHypothesis.SourceCriticalDecayScopeFixtures
```
