# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Distributions.Binomial.Varianteb4d7e563b66caed3a80166cc09295ad2dff205559cee9dc91f77dbc5e356618

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bc3b0e5c98b17958c5a63359cdbed7810774ca8c` · SHA-256 `aa8cd38e5871b758dc73867415c1f629b9c62136ba500a8147a0500652a78a96`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Distributions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Distributions.Binomial.Variant16b7432368305604667ce84b6f005d8da2d1f08cb8cf8c5282431cb88884762a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"16b7432368305604667ce84b6f005d8da2d1f08cb8cf8c5282431cb88884762a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Probability.Distributions.SourceCorpus.Binomial.Variant16b7432368305604667ce84b6f005d8da2d1f08cb8cf8c5282431cb88884762a","mathematical_subject":"Probability.Distributions","original_sha256":"16b7432368305604667ce84b6f005d8da2d1f08cb8cf8c5282431cb88884762a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Probability/ProbabilityMassFunction/Binomial.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Joachim Breitner. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joachim Breitner
-/
module

public import Mathlib.Data.Nat.Choose.Sum
public import Mathlib.Probability.Distributions.Binomial
public import Mathlib.Probability.ProbabilityMassFunction.Constructions
public import Mathlib.Tactic.FinCases

/-!
# The binomial distribution

This file defines the probability mass function of the binomial distribution.

## Main results

* `binomial_one_eq_bernoulli`: For `n = 1`, it is equal to `PMF.bernoulli`.
-/


namespace GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Distributions.Binomial.Variant16b7432368305604667ce84b6f005d8da2d1f08cb8cf8c5282431cb88884762a

@[expose] public section

namespace PMF

open ENNReal NNReal
/-- The binomial `PMF`: the probability of observing exactly `i` “heads” in a sequence of `n`
independent coin tosses, each having probability `p` of coming up “heads”. -/
@[deprecated ProbabilityTheory.binomial (since := "2026-04-07")]
def binomial (p : ℝ≥0) (h : p ≤ 1) (n : ℕ) : PMF (Fin (n + 1)) :=
  .ofFintype (fun i =>
      ↑(p ^ (i : ℕ) * (1 - p) ^ ((Fin.last n - i) : ℕ) * (n.choose i : ℕ))) (by
    norm_cast
    convert! (add_pow p (1 - p) n).symm
    · rw [Finset.sum_fin_eq_sum_range]
      apply Finset.sum_congr rfl
      intro i hi
      rw [Finset.mem_range] at hi
      rw [dite_eq_left hi]
    · rw [add_tsub_cancel_of_le (mod_cast h), one_pow])

@[deprecated ProbabilityTheory.binomial_real_singleton (since := "2026-04-07")]
theorem binomial_apply (p : ℝ≥0) (h : p ≤ 1) (n : ℕ) (i : Fin (n + 1)) :
    binomial p h n i = p ^ (i : ℕ) * (1 - p) ^ ((Fin.last n - i) : ℕ) * (n.choose i : ℕ) := by
  simp [binomial]

@[deprecated ProbabilityTheory.binomial_real_zero (since := "2026-04-07")]
theorem binomial_apply_zero (p : ℝ≥0) (h : p ≤ 1) (n : ℕ) :
    binomial p h n 0 = (1 - p) ^ n := by
  simp [binomial_apply]

@[deprecated ProbabilityTheory.binomial_real_self (since := "2026-04-07")]
theorem binomial_apply_last (p : ℝ≥0) (h : p ≤ 1) (n : ℕ) :
    binomial p h n (.last n) = p ^ n := by
  simp [binomial_apply]

@[deprecated ProbabilityTheory.binomial_real_self (since := "2026-04-07")]
theorem binomial_apply_self (p : ℝ≥0) (h : p ≤ 1) (n : ℕ) :
    binomial p h n (.last n) = p ^ n := by simp [binomial_apply_last]

/-- The binomial distribution on one coin is the Bernoulli distribution. -/
@[deprecated ProbabilityTheory.binomial_one_eq_bernoulliMeasure (since := "2026-05-31")]
theorem binomial_one_eq_bernoulli (p : ℝ≥0) (h : p ≤ 1) :
    binomial p h 1 = (bernoulli p h).map (cond · 1 0) := by
  ext i; fin_cases i <;> simp [binomial_apply, bernoulli_apply]

@[deprecated ProbabilityTheory.binomial_singleton (since := "2026-04-07")]
theorem binomial_apply_of_le {k b : ℕ} (hb : k ≤ b) {x : ℝ≥0} (h : x ≤ 1) :
    ENNReal.ofReal ((b.choose k) * x ^ k * (1 - x) ^ (b - k))
    = PMF.binomial x h b (Fin.ofNat (b + 1) k) := by
  have eq0 : k % (b + 1) = k := by simpa using Order.lt_add_one_iff.mpr hb
  have eq1 : 1 - (x : ℝ≥0∞) = ENNReal.ofReal (1 - x : ℝ) := by norm_cast
  have : (1 - (x : ℝ)) ≥ 0 := by simpa
  rwa [Fin.ofNat_eq_cast, PMF.binomial_apply, Fin.val_natCast, Fin.val_last, eq0, eq1,
    coe_nnreal_eq x, mul_rotate, ofReal_mul, ofReal_mul, ofReal_pow, ofReal_pow, ofReal_natCast]
  all_goals positivity

end PMF
```
