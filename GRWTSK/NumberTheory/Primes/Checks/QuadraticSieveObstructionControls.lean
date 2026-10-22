/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Primes.QuadraticSieveObstruction
import GRWTSK.NumberTheory.Primes.QuadraticValuePowerExclusion
import GRWTSK.NumberTheory.Primes.QuadraticMangoldtBoundary

set_option autoImplicit false

/-! Exact source controls. No Lean control has been executed. -/

namespace GRWTSK.NumberTheory.Primes.Checks.QuadraticSieveObstructionControls

open GRWTSK.NumberTheory.Primes.QuadraticSieveObstruction
open GRWTSK.NumberTheory.Primes.QuadraticValuePowerExclusion
open GRWTSK.NumberTheory.Primes.QuadraticMangoldtBoundary
open GRWTSK.NumberTheory.Primes.ConfigurationCounts

/-- A composite value survives sieving by the primes 2,3,5,7. -/
theorem composite_small_sieve_survivor :
    (30 ^ 2 + 1 : ℕ) = 17 * 53 ∧ ¬ Nat.Prime (30 ^ 2 + 1) ∧
      ¬ 2 ∣ (30 ^ 2 + 1 : ℕ) ∧ ¬ 3 ∣ (30 ^ 2 + 1 : ℕ) ∧
      ¬ 5 ∣ (30 ^ 2 + 1 : ℕ) ∧ ¬ 7 ∣ (30 ^ 2 + 1 : ℕ) := by norm_num

/-- There are fresh composite survivors, not one repeatedly reused example. -/
theorem fixed_sieve_unbounded_control :
    ∀ B : ℕ, ∃ n : ℕ, B < n ∧ ¬ Nat.Prime (n ^ 2 + 1) ∧
      ∀ d : ℕ, d ∣ 210 → 1 < d → ¬ d ∣ n ^ 2 + 1 :=
  unbounded_composite_quadratic_survivors 210 (by decide)

theorem small_constructed_survivor :
    quadraticCompositeSurvivor 2 3 = 42 ∧ (42 ^ 2 + 1 : ℕ) = 5 * 353 := by decide

theorem even_power_exclusion_control :
    ∀ j : ℕ, (30 ^ 2 + 1 : ℕ) ≠ 3 ^ (2 * j) :=
  fun j => quadraticValue_ne_even_power 30 (by decide) 3 j

/-- The positive-index hypothesis is indispensable for square exclusion. -/
theorem zero_index_square_control : (0 ^ 2 + 1 : ℕ) = 1 ^ 2 := by decide

/-- Actual index count differs from counting all primes through X^2+1. -/
theorem index_value_count_control :
    quadraticCount 10 = 5 ∧
      ((Finset.range (10 ^ 2 + 2)).filter Nat.Prime).card = 26 := by decide

/-- At X=0 there is no source mass and no correction. -/
theorem empty_mangoldt_control :
    quadraticMangoldtMass 0 = 0 ∧ quadraticPrimePowerCorrection 0 = 0 := by
  simp [quadraticMangoldtMass, quadraticPrimePowerCorrection]

/-- Equality at a proposed fresh-index margin cannot certify a new prime. -/
theorem reject_nonstrict_fresh_margin (oldMass error : ℝ) :
    ¬ oldMass + error < oldMass + error := lt_irrefl _

end GRWTSK.NumberTheory.Primes.Checks.QuadraticSieveObstructionControls
