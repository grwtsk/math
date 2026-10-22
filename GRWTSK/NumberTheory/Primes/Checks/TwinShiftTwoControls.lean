/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Primes.TwinPrimePowerBoundary
import Mathlib.Tactic.NormNum

set_option autoImplicit false

/-!
# Controls for the shift-two divisor and prime-power boundary

These controls preserve incompatible congruences, the distinction between
shift two and another bounded gap, proper-prime-power Mangoldt support,
composite sieve survivors, and strict terminal margins.

The controls have not been executed in Lean.
-/

namespace GRWTSK.NumberTheory.Primes.Checks.TwinShiftTwoControls

open scoped ArithmeticFunction
open GRWTSK.NumberTheory.Primes.ConfigurationCounts
open GRWTSK.NumberTheory.Primes.TwinShiftTwoCRT
open GRWTSK.NumberTheory.Primes.TwinMangoldtExpansion
open GRWTSK.NumberTheory.Primes.TwinPrimePowerBoundary
open ArithmeticFunction

noncomputable section

/-- `d=3`, `e=6` is incompatible because the common divisor three does not
divide the translation two. -/
theorem incompatible_three_six :
    ¬ TwinShiftTwoCompatible 3 6 := by
  norm_num [TwinShiftTwoCompatible]

/-- `d=4`, `e=6` is compatible and the natural witness `n=4` realizes the
literal shift two. -/
theorem compatible_four_six :
    TwinShiftTwoCompatible 4 6 ∧
      TwinShiftTwoNaturalSolution 4 6 := by
  constructor
  · norm_num [TwinShiftTwoCompatible]
  · exact ⟨4, by norm_num, by norm_num⟩

/-- The exact solutions through thirty are `4`, `16`, and `28`. -/
theorem residue_count_four_six_thirty :
    twinShiftTwoResidueCount 4 6 30 = 3 := by
  decide

/-- The incompatible pair has no solution in one hundred inspected values;
the general impossibility is supplied by the CRT equivalence, not by this
finite computation. -/
theorem incompatible_count_three_six_hundred :
    twinShiftTwoResidueCount 3 6 100 = 0 := by
  decide

/-- A shift-six prime pair is not automatically a shift-two pair. -/
theorem shift_six_not_shift_two :
    Nat.Prime 7 ∧ Nat.Prime (7 + 6) ∧
      ¬ Nat.Prime (7 + 2) := by
  norm_num

/-- Nine carries positive Mangoldt mass because it is the proper prime power
`3^2`, although nine is not prime. -/
theorem nine_has_mangoldt_mass_but_is_not_prime :
    0 < Λ 9 ∧ ¬ Nat.Prime 9 := by
  constructor
  · rw [show 9 = 3 ^ 2 by norm_num,
      vonMangoldt_apply_pow (by norm_num),
      vonMangoldt_apply_prime (by norm_num)]
    exact Real.log_pos (by norm_num)
  · norm_num

/-- The pair `(7,9)` contributes positive Mangoldt mass but zero prime-only
twin weight. -/
theorem seven_nine_mangoldt_not_twin :
    0 < Λ 7 * Λ (7 + 2) ∧
      twinPrimePairLogWeight 7 = 0 := by
  constructor
  · apply mul_pos
    · rw [vonMangoldt_apply_prime (by norm_num)]
      exact Real.log_pos (by norm_num)
    · simpa using nine_has_mangoldt_mass_but_is_not_prime.1
  · norm_num [twinPrimePairLogWeight]

/-- Odd shifted survivors can contain composites; this is not a prime-pair
certificate. -/
theorem odd_survivor_can_be_composite :
    Odd 9 ∧ Odd (9 + 2) ∧ ¬ Nat.Prime 9 := by
  norm_num

/-- Reusing the one pair `(3,5)` does not supply witnesses above every lower
cutoff. -/
theorem one_pair_cannot_fake_infinitude :
    ¬ (∀ B : ℕ, ∃ p : ℕ,
      B < p ∧ p = 3 ∧ Nat.Prime p ∧ Nat.Prime (p + 2)) := by
  intro h
  rcases h 3 with ⟨p, hp, rfl, hprime, hprime2⟩
  omega

/-- Exact finite divisor and correction identities can coexist with a zero
exact twin count at a small cutoff. -/
theorem exact_sources_not_twin_witness :
    twinCount 2 = 0 ∧
      twinShiftTwoResidueCount 4 6 30 = 3 := by
  exact ⟨by decide, residue_count_four_six_thirty⟩

/-- Equality of the complete error budget and the proposed main lower bound is
not accepted by the strict terminal criterion. -/
theorem strict_margin_equality_rejected :
    ¬ ((1 : ℝ) + 0 < 1) := by
  norm_num

end
end GRWTSK.NumberTheory.Primes.Checks.TwinShiftTwoControls
