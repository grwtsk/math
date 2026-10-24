# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.PerfectNumbers.Varianta113627aeab1ef12914330acd6ece4a6a66a1d614d40f5d547af3c60bffd7a6e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `db03f1acae0ca68be654f6e0a4a7b77198e1da5e` · SHA-256 `d65b32b8b7419c03318abe094891e487d494e989f2cd63c7ed4e118ae64600ae`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.ElementaryNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.ElementaryNumberTheory.OddMersenneSucc.Variantf2fad0fea39ea1f952df01814bf58f11bd5bfd314ee346fa6f0b3361b0649efa","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f2fad0fea39ea1f952df01814bf58f11bd5bfd314ee346fa6f0b3361b0649efa","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.PrimeArithmetic.SourceCorpus.OddMersenneSucc.Variantf2fad0fea39ea1f952df01814bf58f11bd5bfd314ee346fa6f0b3361b0649efa","mathematical_subject":"NumberTheory.PrimeArithmetic","original_sha256":"f2fad0fea39ea1f952df01814bf58f11bd5bfd314ee346fa6f0b3361b0649efa","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Archive/Wiedijk100Theorems/PerfectNumbers.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Aaron Anderson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Aaron Anderson
-/
import Mathlib.NumberTheory.ArithmeticFunction
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.Algebra.GeomSum
import Mathlib.RingTheory.Multiplicity


namespace GRWTSK.NumberTheory.ElementaryNumberTheory.OddMersenneSucc.Variantf2fad0fea39ea1f952df01814bf58f11bd5bfd314ee346fa6f0b3361b0649efa

#align_import wiedijk_100_theorems.perfect_numbers from "leanprover-community/mathlib"@"5563b1b49e86e135e8c7b556da5ad2f5ff881cad"

/-!
# Perfect Numbers

This file proves Theorem 70 from the [100 Theorems List](https://www.cs.ru.nl/~freek/100/).

The theorem characterizes even perfect numbers.

Euclid proved that if `2 ^ (k + 1) - 1` is prime (these primes are known as Mersenne primes),
  then `2 ^ k * 2 ^ (k + 1) - 1` is perfect.

Euler proved the converse, that if `n` is even and perfect, then there exists `k` such that
  `n = 2 ^ k * 2 ^ (k + 1) - 1` and `2 ^ (k + 1) - 1` is prime.

## References
https://en.wikipedia.org/wiki/Euclid%E2%80%93Euler_theorem
-/


namespace Theorems100

theorem odd_mersenne_succ (k : ℕ) : ¬2 ∣ mersenne (k + 1) := by
  simp [← even_iff_two_dvd, ← Nat.even_add_one, parity_simps]
#align theorems_100.odd_mersenne_succ Theorems100.odd_mersenne_succ

namespace Nat

open Nat.ArithmeticFunction Finset

theorem sigma_two_pow_eq_mersenne_succ (k : ℕ) : σ 1 (2 ^ k) = mersenne (k + 1) := by
  simp [sigma_one_apply, mersenne, Nat.prime_two, show 2 = 1 + 1 from rfl,
    ← geom_sum_mul_add 1 (k + 1)]
#align theorems_100.nat.sigma_two_pow_eq_mersenne_succ Theorems100.Nat.sigma_two_pow_eq_mersenne_succ

/-- Euclid's theorem that Mersenne primes induce perfect numbers -/
theorem perfect_two_pow_mul_mersenne_of_prime (k : ℕ) (pr : (mersenne (k + 1)).Prime) :
    Nat.Perfect (2 ^ k * mersenne (k + 1)) := by
  rw [Nat.perfect_iff_sum_divisors_eq_two_mul, ← mul_assoc, ← pow_succ, ← sigma_one_apply, mul_comm,
    isMultiplicative_sigma.map_mul_of_coprime
      (Nat.prime_two.coprime_pow_of_not_dvd (odd_mersenne_succ _)),
    sigma_two_pow_eq_mersenne_succ]
  · simp [pr, Nat.prime_two, sigma_one_apply]
  · apply mul_pos (pow_pos _ k) (mersenne_pos (Nat.succ_pos k))
    norm_num
#align theorems_100.nat.perfect_two_pow_mul_mersenne_of_prime Theorems100.Nat.perfect_two_pow_mul_mersenne_of_prime

theorem ne_zero_of_prime_mersenne (k : ℕ) (pr : (mersenne (k + 1)).Prime) : k ≠ 0 := by
  intro H
  simp [H, mersenne, Nat.not_prime_one] at pr
#align theorems_100.nat.ne_zero_of_prime_mersenne Theorems100.Nat.ne_zero_of_prime_mersenne

theorem even_two_pow_mul_mersenne_of_prime (k : ℕ) (pr : (mersenne (k + 1)).Prime) :
    Even (2 ^ k * mersenne (k + 1)) := by simp [ne_zero_of_prime_mersenne k pr, parity_simps]
#align theorems_100.nat.even_two_pow_mul_mersenne_of_prime Theorems100.Nat.even_two_pow_mul_mersenne_of_prime

theorem eq_two_pow_mul_odd {n : ℕ} (hpos : 0 < n) : ∃ k m : ℕ, n = 2 ^ k * m ∧ ¬Even m := by
  have h := multiplicity.finite_nat_iff.2 ⟨Nat.prime_two.ne_one, hpos⟩
  cases' multiplicity.pow_multiplicity_dvd h with m hm
  use (multiplicity 2 n).get h, m
  refine' ⟨hm, _⟩
  rw [even_iff_two_dvd]
  have hg := multiplicity.is_greatest' h (Nat.lt_succ_self _)
  contrapose! hg
  rcases hg with ⟨k, rfl⟩
  apply Dvd.intro k
  rw [pow_succ', mul_assoc, ← hm]
#align theorems_100.nat.eq_two_pow_mul_odd Theorems100.Nat.eq_two_pow_mul_odd

/-- **Perfect Number Theorem**: Euler's theorem that even perfect numbers can be factored as a
  power of two times a Mersenne prime. -/
theorem eq_two_pow_mul_prime_mersenne_of_even_perfect {n : ℕ} (ev : Even n) (perf : Nat.Perfect n) :
    ∃ k : ℕ, Nat.Prime (mersenne (k + 1)) ∧ n = 2 ^ k * mersenne (k + 1) := by
  have hpos := perf.2
  rcases eq_two_pow_mul_odd hpos with ⟨k, m, rfl, hm⟩
  use k
  rw [even_iff_two_dvd] at hm
  rw [Nat.perfect_iff_sum_divisors_eq_two_mul hpos, ← sigma_one_apply,
    isMultiplicative_sigma.map_mul_of_coprime (Nat.prime_two.coprime_pow_of_not_dvd hm).symm,
    sigma_two_pow_eq_mersenne_succ, ← mul_assoc, ← pow_succ] at perf
  rcases Nat.coprime.dvd_of_dvd_mul_left
      (Nat.prime_two.coprime_pow_of_not_dvd (odd_mersenne_succ _)) (Dvd.intro _ perf) with
    ⟨j, rfl⟩
  rw [← mul_assoc, mul_comm _ (mersenne _), mul_assoc] at perf
  have h := mul_left_cancel₀ (ne_of_gt (mersenne_pos (Nat.succ_pos _))) perf
  rw [sigma_one_apply, Nat.sum_divisors_eq_sum_properDivisors_add_self, ← succ_mersenne, add_mul,
    one_mul, add_comm] at h
  have hj := add_left_cancel h
  cases Nat.sum_properDivisors_dvd (by rw [hj]; apply Dvd.intro_left (mersenne (k + 1)) rfl) with
  | inl h_1 =>
    have j1 : j = 1 := Eq.trans hj.symm h_1
    rw [j1, mul_one, Nat.sum_properDivisors_eq_one_iff_prime] at h_1
    simp [h_1, j1]
  | inr h_1 =>
    have jcon := Eq.trans hj.symm h_1
    rw [← one_mul j, ← mul_assoc, mul_one] at jcon
    have jcon2 := mul_right_cancel₀ ?_ jcon
    · exfalso
      match k with
      | 0 =>
        apply hm
        rw [← jcon2, pow_zero, one_mul, one_mul] at ev
        rw [← jcon2, one_mul]
        exact even_iff_two_dvd.mp ev
      | .succ k =>
        apply ne_of_lt _ jcon2
        rw [mersenne, ← Nat.pred_eq_sub_one, Nat.lt_pred_iff, ← pow_one (Nat.succ 1)]
        apply pow_lt_pow (Nat.lt_succ_self 1) (Nat.succ_lt_succ (Nat.succ_pos k))
    contrapose! hm
    simp [hm]
#align theorems_100.nat.eq_two_pow_mul_prime_mersenne_of_even_perfect Theorems100.Nat.eq_two_pow_mul_prime_mersenne_of_even_perfect

/-- The Euclid-Euler theorem characterizing even perfect numbers -/
theorem even_and_perfect_iff {n : ℕ} :
    Even n ∧ Nat.Perfect n ↔ ∃ k : ℕ, Nat.Prime (mersenne (k + 1)) ∧
      n = 2 ^ k * mersenne (k + 1) := by
  constructor
  · rintro ⟨ev, perf⟩
    exact Nat.eq_two_pow_mul_prime_mersenne_of_even_perfect ev perf
  · rintro ⟨k, pr, rfl⟩
    exact ⟨even_two_pow_mul_mersenne_of_prime k pr, perfect_two_pow_mul_mersenne_of_prime k pr⟩
#align theorems_100.nat.even_and_perfect_iff Theorems100.Nat.even_and_perfect_iff

end Nat

end Theorems100
```
