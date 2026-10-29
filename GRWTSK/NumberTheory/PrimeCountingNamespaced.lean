-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.PrimeCountingPrime.Variantae4645d32c49daae45018f25c3a3bdd91cf2e9371b6e9be89b625db7fbcc43b9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ae4645d32c49daae45018f25c3a3bdd91cf2e9371b6e9be89b625db7fbcc43b9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AnalyticNumberTheory.SourceCorpus.PrimeCountingPrime.Variantae4645d32c49daae45018f25c3a3bdd91cf2e9371b6e9be89b625db7fbcc43b9","mathematical_subject":"NumberTheory.AnalyticNumberTheory","original_sha256":"ae4645d32c49daae45018f25c3a3bdd91cf2e9371b6e9be89b625db7fbcc43b9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/NumberTheory/PrimeCounting.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Bolton Bailey. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Bolton Bailey
-/
import Mathlib.Data.Nat.PrimeFin
import Mathlib.Data.Nat.Totient
import Mathlib.Data.Finset.LocallyFinite
import Mathlib.Data.Nat.Count
import Mathlib.Data.Nat.Nth


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.PrimeCountingPrime.Variantae4645d32c49daae45018f25c3a3bdd91cf2e9371b6e9be89b625db7fbcc43b9

#align_import number_theory.prime_counting from "leanprover-community/mathlib"@"7fdd4f3746cb059edfdb5d52cba98f66fce418c0"

/-!
# The Prime Counting Function

In this file we define the prime counting function: the function on natural numbers that returns
the number of primes less than or equal to its input.

## Main Results

The main definitions for this file are

- `Nat.primeCounting`: The prime counting function π
- `Nat.primeCounting'`: π(n - 1)

We then prove that these are monotone in `Nat.monotone_primeCounting` and
`Nat.monotone_primeCounting'`. The last main theorem `Nat.primeCounting'_add_le` is an upper
bound on `π'` which arises by observing that all numbers greater than `k` and not coprime to `k`
are not prime, and so only at most `φ(k)/k` fraction of the numbers from `k` to `n` are prime.

## Notation

We use the standard notation `π` to represent the prime counting function (and `π'` to represent
the reindexed version).

-/


namespace Nat

open Finset

/-- A variant of the traditional prime counting function which gives the number of primes
*strictly* less than the input. More convenient for avoiding off-by-one errors.
-/
def primeCounting' : ℕ → ℕ :=
  Nat.count Prime
#align nat.prime_counting' Nat.primeCounting'

/-- The prime counting function: Returns the number of primes less than or equal to the input. -/
def primeCounting (n : ℕ) : ℕ :=
  primeCounting' (n + 1)
#align nat.prime_counting Nat.primeCounting

scoped notation "π" => Nat.primeCounting

scoped notation "π'" => Nat.primeCounting'

theorem monotone_primeCounting' : Monotone primeCounting' :=
  count_monotone Prime
#align nat.monotone_prime_counting' Nat.monotone_primeCounting'

theorem monotone_primeCounting : Monotone primeCounting :=
  monotone_primeCounting'.comp (monotone_id.add_const _)
#align nat.monotone_prime_counting Nat.monotone_primeCounting

@[simp]
theorem primeCounting'_nth_eq (n : ℕ) : π' (nth Prime n) = n :=
  count_nth_of_infinite infinite_setOf_prime _
#align nat.prime_counting'_nth_eq Nat.primeCounting'_nth_eq

@[simp]
theorem prime_nth_prime (n : ℕ) : Prime (nth Prime n) :=
  nth_mem_of_infinite infinite_setOf_prime _
#align nat.prime_nth_prime Nat.prime_nth_prime

/-- A linear upper bound on the size of the `primeCounting'` function -/
theorem primeCounting'_add_le {a k : ℕ} (h0 : 0 < a) (h1 : a < k) (n : ℕ) :
    π' (k + n) ≤ π' k + Nat.totient a * (n / a + 1) :=
  calc
    π' (k + n) ≤ ((range k).filter Prime).card + ((Ico k (k + n)).filter Prime).card := by
      rw [primeCounting', count_eq_card_filter_range, range_eq_Ico, ←
        Ico_union_Ico_eq_Ico (zero_le k) le_self_add, filter_union]
      apply card_union_le
    _ ≤ π' k + ((Ico k (k + n)).filter Prime).card := by
      rw [primeCounting', count_eq_card_filter_range]
    _ ≤ π' k + ((Ico k (k + n)).filter (coprime a)).card := by
      refine' add_le_add_left (card_le_of_subset _) k.primeCounting'
      simp only [subset_iff, and_imp, mem_filter, mem_Ico]
      intro p succ_k_le_p p_lt_n p_prime
      constructor
      · exact ⟨succ_k_le_p, p_lt_n⟩
      · rw [coprime_comm]
        exact coprime_of_lt_prime h0 (gt_of_ge_of_gt succ_k_le_p h1) p_prime
    _ ≤ π' k + totient a * (n / a + 1) := by
      rw [add_le_add_iff_left]
      exact Ico_filter_coprime_le k n h0
#align nat.prime_counting'_add_le Nat.primeCounting'_add_le

end Nat
