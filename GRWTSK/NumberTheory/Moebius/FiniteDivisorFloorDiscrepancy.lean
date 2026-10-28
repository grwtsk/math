/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib imports retain their upstream authorship and licenses. -/
import Mathlib.NumberTheory.ArithmeticFunction.Moebius
import Mathlib.Algebra.Order.Floor.Semiring
import Mathlib.Algebra.Order.Archimedean.Real.Basic
import Mathlib.Tactic

/-!
# A uniform signed divisor-floor discrepancy estimate

The complete double divisor sum below differs from its square reciprocal mean
by at most the square of the divisor count, uniformly for every nonnegative
real cutoff. This is an unconditional finite arithmetic estimate, including
the empty divisor set at Q=0. No squarefree or positive-divisor hypothesis is
silently introduced, and natural floors are retained exactly.

This file does not yet identify this double sum with the prefix of a changing
prime-filter coefficient or transport it to the actual signed pickup energy.
Those source-identification and quantitative cancellation bridges remain open.
In particular, this floor-error allowance is not an all-positive-rate Mobius
estimate or a Riemann Hypothesis witness.

SOURCE_PROOF_CANDIDATE. Compilation, fresh kernel replay and transitive axiom
auditing are NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.FiniteDivisorFloorDiscrepancy

/-- The actual integer Mobius coefficient, cast into the real field. -/
def moebiusValue (n : ℕ) : ℝ := (ArithmeticFunction.moebius n : ℝ)

theorem abs_moebiusValue_le_one (n : ℕ) : |moebiusValue n| ≤ 1 := by
  unfold moebiusValue
  exact_mod_cast (ArithmeticFunction.abs_moebius_le_one (n := n))

/-- Both divisor indices and all Mobius signs are retained before the floor. -/
def signedDivisorFloor (Q : ℕ) (x : ℝ) : ℝ :=
  ∑ d ∈ Q.divisors, ∑ e ∈ Q.divisors,
    moebiusValue d * moebiusValue e * (⌊x / ((d : ℝ) * (e : ℝ))⌋₊ : ℝ)

/-- The exact main coefficient obtained by replacing only each floor by its argument. -/
def squareReciprocalMean (Q : ℕ) : ℝ :=
  (∑ d ∈ Q.divisors, moebiusValue d / (d : ℝ)) ^ 2

theorem mean_expansion (Q : ℕ) (x : ℝ) :
    x * squareReciprocalMean Q =
      ∑ d ∈ Q.divisors, ∑ e ∈ Q.divisors,
        moebiusValue d * moebiusValue e * (x / ((d : ℝ) * (e : ℝ))) := by
  simp only [squareReciprocalMean, pow_two, Finset.sum_mul_sum, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro d _
  apply Finset.sum_congr rfl
  intro e _
  simp only [div_eq_mul_inv, mul_inv_rev]
  ring

/-- Exact signed rounding remainder; no arithmetic sign is discarded in the identity. -/
theorem discrepancy_expansion (Q : ℕ) (x : ℝ) :
    signedDivisorFloor Q x - x * squareReciprocalMean Q =
      ∑ d ∈ Q.divisors, ∑ e ∈ Q.divisors,
        moebiusValue d * moebiusValue e *
          ((⌊x / ((d : ℝ) * (e : ℝ))⌋₊ : ℝ) -
            x / ((d : ℝ) * (e : ℝ))) := by
  rw [signedDivisorFloor, mean_expansion, ← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro d _
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro e _
  ring

theorem weighted_floor_error_le_one (d e : ℕ) {x : ℝ} (hx : 0 ≤ x) :
    |moebiusValue d * moebiusValue e *
      ((⌊x / ((d : ℝ) * (e : ℝ))⌋₊ : ℝ) -
        x / ((d : ℝ) * (e : ℝ)))| ≤ 1 := by
  have hcoeff : |moebiusValue d * moebiusValue e| ≤ 1 := by
    rw [abs_mul]
    have h := mul_le_mul (abs_moebiusValue_le_one d) (abs_moebiusValue_le_one e)
      (abs_nonneg (moebiusValue e)) (by norm_num : (0 : ℝ) ≤ 1)
    simpa using h
  have harg : 0 ≤ x / ((d : ℝ) * (e : ℝ)) :=
    div_nonneg hx (mul_nonneg (Nat.cast_nonneg d) (Nat.cast_nonneg e))
  rw [abs_mul]
  have h := mul_le_mul hcoeff (Nat.abs_floor_sub_le harg) (abs_nonneg _)
    (by norm_num : (0 : ℝ) ≤ 1)
  simpa using h

/-- An explicit allowance uniform in the cutoff and the complete divisor inventory.
The signs are removed only when estimating the exact rounding remainder. -/
theorem signedDivisorFloor_error_le (Q : ℕ) {x : ℝ} (hx : 0 ≤ x) :
    |signedDivisorFloor Q x - x * squareReciprocalMean Q| ≤
      (Q.divisors.card : ℝ) ^ 2 := by
  rw [discrepancy_expansion]
  calc
    _ ≤ ∑ d ∈ Q.divisors, |∑ e ∈ Q.divisors,
        moebiusValue d * moebiusValue e *
          ((⌊x / ((d : ℝ) * (e : ℝ))⌋₊ : ℝ) -
            x / ((d : ℝ) * (e : ℝ)))| := Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ d ∈ Q.divisors, ∑ e ∈ Q.divisors,
        |moebiusValue d * moebiusValue e *
          ((⌊x / ((d : ℝ) * (e : ℝ))⌋₊ : ℝ) -
            x / ((d : ℝ) * (e : ℝ)))| := by
      apply Finset.sum_le_sum
      intro d _
      exact Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ _d ∈ Q.divisors, ∑ _e ∈ Q.divisors, (1 : ℝ) := by
      apply Finset.sum_le_sum
      intro d _
      apply Finset.sum_le_sum
      intro e _
      exact weighted_floor_error_le_one d e hx
    _ = (Q.divisors.card : ℝ) ^ 2 := by simp [pow_two]

@[simp] theorem signedDivisorFloor_zero (x : ℝ) : signedDivisorFloor 0 x = 0 := by
  simp [signedDivisorFloor]

@[simp] theorem squareReciprocalMean_zero : squareReciprocalMean 0 = 0 := by
  simp [squareReciprocalMean]

end GRWTSK.NumberTheory.Moebius.FiniteDivisorFloorDiscrepancy
