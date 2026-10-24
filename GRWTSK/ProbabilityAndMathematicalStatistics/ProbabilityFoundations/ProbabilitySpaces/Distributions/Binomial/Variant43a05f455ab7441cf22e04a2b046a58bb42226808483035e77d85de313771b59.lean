-- corpus-organization-transform:v1
-- Mathematical subject: ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Distributions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Distributions.Binomial.Variant7bc1779a6354bbb4e371849bb5c1e7824de2b56aa46eeab1e93d671a8466062f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7bc1779a6354bbb4e371849bb5c1e7824de2b56aa46eeab1e93d671a8466062f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Probability.Distributions.SourceCorpus.Binomial.Variant7bc1779a6354bbb4e371849bb5c1e7824de2b56aa46eeab1e93d671a8466062f","mathematical_subject":"Probability.Distributions","original_sha256":"7bc1779a6354bbb4e371849bb5c1e7824de2b56aa46eeab1e93d671a8466062f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Probability/ProbabilityMassFunction/Binomial.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Joachim Breitner. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joachim Breitner
-/
import Mathlib.Probability.ProbabilityMassFunction.Constructions
import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.Tactic.FinCases

/-!
# The binomial distribution

This file defines the probability mass function of the binomial distribution.

## Main results

* `binomial_one_eq_bernoulli`: For `n = 1`, it is equal to `Pmf.bernoulli`.
-/


namespace GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Distributions.Binomial.Variant7bc1779a6354bbb4e371849bb5c1e7824de2b56aa46eeab1e93d671a8466062f

namespace Pmf

open ENNReal

/-- The binomial `Pmf`: the probability of observing exactly `i` “heads” in a sequence of `n`
independent coin tosses, each having probability `p` of coming up “heads”. -/
noncomputable
def binomial (p : ℝ≥0∞) (h : p ≤ 1) (n : ℕ) : Pmf (Fin (n + 1)) :=
  .ofFintype (fun i => p^(i : ℕ) * (1-p)^((Fin.last n - i) : ℕ) * (n.choose i : ℕ)) (by
    convert (add_pow p (1-p) n).symm
    · rw [Finset.sum_fin_eq_sum_range]
      apply Finset.sum_congr rfl
      intro i hi
      rw [Finset.mem_range] at hi
      rw [dif_pos hi, Fin.last]
    · simp [h])

theorem binomial_apply (p : ℝ≥0∞) (h : p ≤ 1) (n : ℕ) (i : Fin (n + 1)) :
    binomial p h n i = p^(i : ℕ) * (1-p)^((Fin.last n - i) : ℕ) * (n.choose i : ℕ) := rfl

@[simp]
theorem binomial_apply_zero (p : ℝ≥0∞) (h : p ≤ 1) (n : ℕ) :
    binomial p h n 0 = (1-p)^n := by
  simp [binomial_apply]

@[simp]
theorem binomial_apply_self (p : ℝ≥0∞) (h : p ≤ 1) (n : ℕ) :
    binomial p h n n = p^n := by
  simp [binomial_apply, Nat.mod_eq_of_lt]

/-- The binomial distribution on one coin is the bernoully distribution. -/
theorem binomial_one_eq_bernoulli (p : ℝ≥0∞) (h : p ≤ 1) :
    binomial p h 1 = (bernoulli p h).map (cond · 1 0) := by
  ext i; fin_cases i <;> simp [tsum_bool, binomial_apply]

end Pmf
