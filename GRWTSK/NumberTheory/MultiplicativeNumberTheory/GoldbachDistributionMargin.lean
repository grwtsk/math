/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Tactic

set_option autoImplicit false
open scoped BigOperators

/-! A finite squared-deviation threshold sufficient to exclude every zero.
The actual-prime deviation estimate is not supplied. This is a conditional
consumer, not an aggregate-to-Goldbach proof. SOURCE_PROOF_CANDIDATES / NOT_RUN. -/
namespace GRWTSK.NumberTheory.Primes.GoldbachDistributionMargin

theorem no_zero_of_squared_deviation_lt {ι : Type*} [DecidableEq ι]
    (T : Finset ι) (G : ι → ℝ) (μ : ℝ)
    (hdev : (∑ j ∈ T, (G j - μ) ^ 2) < μ ^ 2) :
    ∀ i ∈ T, G i ≠ 0 := by
  intro i hi hz
  have h := Finset.single_le_sum (fun j (_ : j ∈ T) => sq_nonneg (G j - μ)) hi
  rw [hz] at h
  nlinarith

theorem positive_of_nonnegative_and_small_deviation {ι : Type*} [DecidableEq ι]
    (T : Finset ι) (G : ι → ℝ) (μ : ℝ)
    (hG : ∀ i ∈ T, 0 ≤ G i)
    (hdev : (∑ j ∈ T, (G j - μ) ^ 2) < μ ^ 2) :
    ∀ i ∈ T, 0 < G i := by
  intro i hi
  exact lt_of_le_of_ne (hG i hi)
    (Ne.symm (no_zero_of_squared_deviation_lt T G μ hdev i hi))

end GRWTSK.NumberTheory.Primes.GoldbachDistributionMargin
