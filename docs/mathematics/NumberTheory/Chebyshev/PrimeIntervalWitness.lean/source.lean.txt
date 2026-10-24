/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Primes.ConfigurationCounts
import Mathlib.NumberTheory.Chebyshev
import Mathlib.Algebra.BigOperators.Intervals
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum
import Mathlib.Tactic
import Lean.Elab.Tactic.Omega

set_option autoImplicit false

/-!
# Prime-only logarithmic interval witnesses

Reuse Mathlib's `Chebyshev.theta` and #258's actual `Nat.Prime` counts.
No second Chebyshev function or conjectural distribution estimate is defined.
The cumulative source is closed-right. Passing to an open interval requires
an explicit nonprime upper endpoint. Every natural square is nonprime.
Source draft for #261; exact-source elaboration and trust audit are pending.
-/

namespace GRWTSK.NumberTheory.Chebyshev.PrimeIntervalWitness

open scoped BigOperators
open GRWTSK.NumberTheory.Primes.ConfigurationCounts

noncomputable section

/-- Positive prime-only logarithmic mass is exactly a prime witness in the finite set. -/
theorem prime_log_sum_pos_iff (s : Finset ℕ) :
    0 < (∑ p ∈ s with Nat.Prime p, Real.log (p : ℝ)) ↔
      ∃ p ∈ s, Nat.Prime p := by
  classical
  have hlog : ∀ p ∈ s.filter Nat.Prime, 0 < Real.log (p : ℝ) := by
    intro p hp
    apply Real.log_pos
    exact_mod_cast (Finset.mem_filter.mp hp).2.one_lt
  rw [Finset.sum_pos_iff_of_nonneg (fun p hp => (hlog p hp).le)]
  constructor
  · rintro ⟨p, hp, _⟩
    exact ⟨p, (Finset.mem_filter.mp hp).1, (Finset.mem_filter.mp hp).2⟩
  · rintro ⟨p, hp, hprime⟩
    have hmem : p ∈ s.filter Nat.Prime := Finset.mem_filter.mpr ⟨hp, hprime⟩
    exact ⟨p, hmem, hlog p hmem⟩

/-- Exact closed-right differencing of the existing cumulative theta function. -/
theorem theta_sub_nat_eq_prime_sum (a b : ℕ) (hab : a ≤ b) :
    Chebyshev.theta (b : ℝ) - Chebyshev.theta (a : ℝ) =
      ∑ p ∈ Finset.Ioc a b with Nat.Prime p, Real.log (p : ℝ) := by
  classical
  simp only [Chebyshev.theta, Nat.floor_natCast, Finset.sum_filter]
  have h := Finset.sum_Ioc_consecutive
    (fun p : ℕ => if Nat.Prime p then Real.log (p : ℝ) else 0)
    (Nat.zero_le a) hab
  linarith

/-- A nonprime right endpoint permits the exact open-interval count consumer. -/
theorem theta_sub_pos_iff_intervalCount (a b : ℕ) (hab : a ≤ b)
    (hb : ¬ Nat.Prime b) :
    0 < Chebyshev.theta (b : ℝ) - Chebyshev.theta (a : ℝ) ↔
      0 < intervalCount a b := by
  rw [theta_sub_nat_eq_prime_sum a b hab, prime_log_sum_pos_iff,
    intervalCount_pos_iff]
  constructor
  · rintro ⟨p, hp, hprime⟩
    obtain ⟨hap, hpb⟩ := Finset.mem_Ioc.mp hp
    refine ⟨p, hprime, hap, ?_⟩
    by_contra hnot
    have heq : p = b := by omega
    exact hb (heq ▸ hprime)
  · rintro ⟨p, hprime, hap, hpb⟩
    exact ⟨p, Finset.mem_Ioc.mpr ⟨hap, hpb.le⟩, hprime⟩

/-- This includes zero and one; no square is a natural prime. -/
theorem square_not_prime (n : ℕ) : ¬ Nat.Prime (n ^ 2) := by
  by_cases hn : n = 1
  · simpa [hn] using Nat.not_prime_one
  · simpa only [pow_two] using Nat.not_prime_mul hn hn

/-- The exact weighted/count equivalence for consecutive squares, including the zero stage. -/
theorem theta_square_sub_pos_iff (n : ℕ) :
    0 < Chebyshev.theta (((n + 1) ^ 2 : ℕ) : ℝ) -
      Chebyshev.theta ((n ^ 2 : ℕ) : ℝ) ↔ 0 < squareCount n := by
  exact theta_sub_pos_iff_intervalCount (n ^ 2) ((n + 1) ^ 2)
    (pow_le_pow_left₀ (Nat.zero_le n) (by omega : n ≤ n + 1) 2) (square_not_prime (n + 1))

end

end GRWTSK.NumberTheory.Chebyshev.PrimeIntervalWitness
