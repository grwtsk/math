# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Distributions.Binomial.Variantf7191e83027667507cec2f6ad929e964ca87b4c3c553e85ea418afa201e33c54

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5ae46216406960fc0a2091057411ec54d3569c49` · SHA-256 `a923f57596f1a140765fc524b78a956fa0297dc64bec8812efff6274f096dae0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Distributions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Distributions.Binomial.Variant19bd6ff76f9f5f12f85642843cebacf87be8577c2ad340f754cf0f53b83c5239","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"19bd6ff76f9f5f12f85642843cebacf87be8577c2ad340f754cf0f53b83c5239","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Probability.Distributions.SourceCorpus.Binomial.Variant19bd6ff76f9f5f12f85642843cebacf87be8577c2ad340f754cf0f53b83c5239","mathematical_subject":"Probability.Distributions","original_sha256":"19bd6ff76f9f5f12f85642843cebacf87be8577c2ad340f754cf0f53b83c5239","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Probability/ProbabilityMassFunction/Binomial.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Joachim Breitner. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joachim Breitner
-/
import Mathlib.Data.Nat.Choose.Sum
import Mathlib.Probability.ProbabilityMassFunction.Constructions
import Mathlib.Tactic.FinCases

/-!
# The binomial distribution

This file defines the probability mass function of the binomial distribution.

## Main results

* `binomial_one_eq_bernoulli`: For `n = 1`, it is equal to `PMF.bernoulli`.
-/


namespace GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Distributions.Binomial.Variant19bd6ff76f9f5f12f85642843cebacf87be8577c2ad340f754cf0f53b83c5239

namespace PMF

open ENNReal NNReal
/-- The binomial `PMF`: the probability of observing exactly `i` “heads” in a sequence of `n`
independent coin tosses, each having probability `p` of coming up “heads”. -/
def binomial (p : ℝ≥0∞) (h : p ≤ 1) (n : ℕ) : PMF (Fin (n + 1)) :=
  .ofFintype (fun i =>
      -- Using `toNNReal` here makes this computable
      ↑(p.toNNReal^(i : ℕ) * (1-p.toNNReal)^((Fin.last n - i) : ℕ) * (n.choose i : ℕ))) (by
    lift p to ℝ≥0 using ne_top_of_lt <| h.trans_lt one_lt_top
    dsimp only
    norm_cast
    convert (add_pow p (1-p) n).symm
    · rw [Finset.sum_fin_eq_sum_range]
      apply Finset.sum_congr rfl
      intro i hi
      rw [Finset.mem_range] at hi
      rw [dif_pos hi, Fin.last]
    · rw [add_tsub_cancel_of_le (mod_cast h), one_pow])

theorem binomial_apply (p : ℝ≥0∞) (h : p ≤ 1) (n : ℕ) (i : Fin (n + 1)) :
    binomial p h n i = p^(i : ℕ) * (1-p)^((Fin.last n - i) : ℕ) * (n.choose i : ℕ) := by
  lift p to ℝ≥0 using ne_top_of_lt <| h.trans_lt one_lt_top
  simp [binomial]

@[simp]
theorem binomial_apply_zero (p : ℝ≥0∞) (h : p ≤ 1) (n : ℕ) :
    binomial p h n 0 = (1-p)^n := by
  simp [binomial_apply]

@[simp]
theorem binomial_apply_last (p : ℝ≥0∞) (h : p ≤ 1) (n : ℕ) :
    binomial p h n (.last n) = p^n := by
  simp [binomial_apply]

theorem binomial_apply_self (p : ℝ≥0∞) (h : p ≤ 1) (n : ℕ) :
    binomial p h n n = p^n := by simp

/-- The binomial distribution on one coin is the Bernoulli distribution. -/
theorem binomial_one_eq_bernoulli (p : ℝ≥0∞) (h : p ≤ 1) :
    binomial p h 1 = (bernoulli p h).map (cond · 1 0) := by
  ext i; fin_cases i <;> simp [tsum_bool, binomial_apply]

end PMF
```
