/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.GoldbachArithmeticMargin
import Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Exact contamination of the arithmetic operator's Mangoldt channel

The actual prime-only source must be distinguished from prime powers.
The three correction sums below retain both mixed orientations and the
proper-power/proper-power term. No estimate making the Mangoldt mass
exceed this correction for every even target is supplied.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.NumberTheory.Primes.GoldbachMangoldtContamination
open GoldbachWeighted GoldbachReflectionSectors

def properPowerWeight (n : ℕ) : ℝ :=
  ArithmeticFunction.vonMangoldt n - primeLogWeight n

theorem properPowerWeight_nonneg (n : ℕ) : 0 ≤ properPowerWeight n := by
  by_cases hp : n.Prime
  · simp [properPowerWeight, primeLogWeight, hp,
      ArithmeticFunction.vonMangoldt_apply_prime hp]
  · simpa [properPowerWeight, primeLogWeight, hp] using
      (ArithmeticFunction.vonMangoldt_nonneg (n := n))

theorem properPowerWeight_at_prime (p : ℕ) (hp : p.Prime) :
    properPowerWeight p = 0 := by
  simp [properPowerWeight, primeLogWeight, hp,
    ArithmeticFunction.vonMangoldt_apply_prime hp]

def mangoldtMass (N : ℕ) : ℝ := ∑ n ∈ Finset.range (N + 1),
  ArithmeticFunction.vonMangoldt n * ArithmeticFunction.vonMangoldt (N - n)

def contamination (N : ℕ) : ℝ := ∑ n ∈ Finset.range (N + 1),
  (primeLogWeight n * properPowerWeight (N - n) +
    properPowerWeight n * primeLogWeight (N - n) +
    properPowerWeight n * properPowerWeight (N - n))

theorem contamination_nonneg (N : ℕ) : 0 ≤ contamination N := by
  apply Finset.sum_nonneg
  intro n _
  exact add_nonneg
    (add_nonneg (mul_nonneg (primeLogWeight_nonneg _) (properPowerWeight_nonneg _))
      (mul_nonneg (properPowerWeight_nonneg _) (primeLogWeight_nonneg _)))
    (mul_nonneg (properPowerWeight_nonneg _) (properPowerWeight_nonneg _))

theorem mass_decomposition (N : ℕ) :
    mangoldtMass N = goldbachLogMass N + contamination N := by
  rw [goldbachLogMass_eq_reflected_range]
  unfold mangoldtMass contamination
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n _
  unfold properPowerWeight
  ring

/-- A positive prime-power correlation alone is insufficient: this strict
source-bound subtraction is the required arithmetic margin. -/
theorem prime_pair_of_mass_exceeds_contamination (N : ℕ)
    (h : contamination N < mangoldtMass N) :
    ∃ p q : ℕ, p.Prime ∧ q.Prime ∧ p + q = N := by
  apply (goldbachLogMass_pos_iff N).mp
  rw [mass_decomposition] at h
  linarith

end GRWTSK.NumberTheory.Primes.GoldbachMangoldtContamination
