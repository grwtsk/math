/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human research direction: R.A. Jacob Martone. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Fourier.UnitIntervalCharacters
import GRWTSK.NumberTheory.Primes.GoldbachWeighted
import Mathlib.Tactic

set_option autoImplicit false

/-!
# The continuous Goldbach circle coefficient

The square of the finite prime-log exponential sum, multiplied by the negative
target character, has unit-interval integral equal to the existing weighted
Goldbach mass. Every sum is finite and every frequency, endpoint and sign is
explicit.

This identity supplies no singular series, major/minor-arc decomposition, or
error bound.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Primes.GoldbachCircleIntegral

open scoped BigOperators Real
open MeasureTheory
open GRWTSK.Analysis.Fourier.UnitIntervalCharacters
open GRWTSK.NumberTheory.Primes.GoldbachWeighted

noncomputable section

/-- The finite prime-log exponential sum through the inclusive cutoff `N`. -/
def goldbachExponentialSum (N : ℕ) (x : ℝ) : ℂ :=
  ∑ n ∈ Finset.range (N + 1),
    (primeLogWeight n : ℂ) * unitCharacter (n : ℤ) x

/-- The coefficient-extraction integrand. The target phase has the negative
sign required to select the equation `p + q = N`. -/
def goldbachCircleIntegrand (N : ℕ) (x : ℝ) : ℂ :=
  goldbachExponentialSum N x * goldbachExponentialSum N x *
    unitCharacter (-(N : ℤ)) x

/-- One pair contribution before integration. -/
def goldbachFrequencyTerm (N p q : ℕ) (x : ℝ) : ℂ :=
  (primeLogWeight p : ℂ) * (primeLogWeight q : ℂ) *
    unitCharacter ((p : ℤ) + (q : ℤ) + -(N : ℤ)) x

/-- The complete ordered pair expansion of the circle integrand. -/
def goldbachFrequencySum (N : ℕ) (x : ℝ) : ℂ :=
  ∑ p ∈ Finset.range (N + 1), ∑ q ∈ Finset.range (N + 1),
    goldbachFrequencyTerm N p q x

@[continuity, fun_prop]
theorem continuous_goldbachFrequencyTerm (N p q : ℕ) :
    Continuous (goldbachFrequencyTerm N p q) := by
  unfold goldbachFrequencyTerm
  fun_prop

@[continuity, fun_prop]
theorem continuous_goldbachFrequencySum (N : ℕ) :
    Continuous (goldbachFrequencySum N) := by
  unfold goldbachFrequencySum
  fun_prop

/-- Finite distributivity and character addition turn the square into the
complete ordered pair-frequency sum. -/
theorem goldbachCircleIntegrand_eq_frequencySum (N : ℕ) (x : ℝ) :
    goldbachCircleIntegrand N x = goldbachFrequencySum N x := by
  unfold goldbachCircleIntegrand goldbachExponentialSum goldbachFrequencySum
    goldbachFrequencyTerm
  simp_rw [Finset.sum_mul, Finset.mul_sum, Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro p hp
  apply Finset.sum_congr rfl
  intro q hq
  rw [unitCharacter_add, unitCharacter_add]
  ring

/-- Integrating one pair term applies exact integer-character orthogonality. -/
theorem integral_goldbachFrequencyTerm (N p q : ℕ) :
    (∫ x : ℝ in 0..1, goldbachFrequencyTerm N p q x) =
      (primeLogWeight p : ℂ) * (primeLogWeight q : ℂ) *
        (if p + q = N then 1 else 0) := by
  unfold goldbachFrequencyTerm
  rw [intervalIntegral.integral_const_mul]
  · rw [integral_unitCharacter]
    by_cases hsum : p + q = N
    · have hfreq :
          (p : ℤ) + (q : ℤ) + -(N : ℤ) = 0 :=
        (pairFrequency_zero_iff p q N).2 hsum
      simp [hsum, hfreq]
    · have hfreq :
          (p : ℤ) + (q : ℤ) + -(N : ℤ) ≠ 0 := by
        intro hzero
        exact hsum ((pairFrequency_zero_iff p q N).1 hzero)
      simp [hsum, hfreq]

/-- The continuous integral reduces to the finite equality indicator, with no
limit exchange or infinite series. -/
theorem goldbachCircleIntegral_eq_indicatorSum (N : ℕ) :
    (∫ x : ℝ in 0..1, goldbachCircleIntegrand N x) =
      ∑ p ∈ Finset.range (N + 1), ∑ q ∈ Finset.range (N + 1),
        (primeLogWeight p : ℂ) * (primeLogWeight q : ℂ) *
          (if p + q = N then 1 else 0) := by
  calc
    (∫ x : ℝ in 0..1, goldbachCircleIntegrand N x) =
        ∫ x : ℝ in 0..1, goldbachFrequencySum N x := by
      apply intervalIntegral.integral_congr
      intro x hx
      exact goldbachCircleIntegrand_eq_frequencySum N x
    _ = ∑ p ∈ Finset.range (N + 1), ∑ q ∈ Finset.range (N + 1),
          ∫ x : ℝ in 0..1, goldbachFrequencyTerm N p q x := by
      unfold goldbachFrequencySum
      rw [intervalIntegral.integral_finsetSum]
      · apply Finset.sum_congr rfl
        intro p hp
        rw [intervalIntegral.integral_finsetSum]
        intro q hq
        exact (continuous_goldbachFrequencyTerm N p q).intervalIntegrable 0 1
      · intro p hp
        have hcont : Continuous (fun x : ℝ =>
            ∑ q ∈ Finset.range (N + 1), goldbachFrequencyTerm N p q x) := by
          fun_prop
        exact hcont.intervalIntegrable 0 1
    _ = ∑ p ∈ Finset.range (N + 1), ∑ q ∈ Finset.range (N + 1),
          (primeLogWeight p : ℂ) * (primeLogWeight q : ℂ) *
            (if p + q = N then 1 else 0) := by
      apply Finset.sum_congr rfl
      intro p hp
      apply Finset.sum_congr rfl
      intro q hq
      exact integral_goldbachFrequencyTerm N p q

/-- The finite indicator sum is the existing real Goldbach logarithmic mass,
embedded in the complex numbers. -/
theorem goldbachIndicatorSum_eq_logMass (N : ℕ) :
    (∑ p ∈ Finset.range (N + 1), ∑ q ∈ Finset.range (N + 1),
        (primeLogWeight p : ℂ) * (primeLogWeight q : ℂ) *
          (if p + q = N then 1 else 0)) =
      (goldbachLogMass N : ℂ) := by
  unfold goldbachLogMass goldbachBox
  push_cast
  rw [Finset.product_eq_sprod, Finset.sum_product]
  apply Finset.sum_congr rfl
  intro p hp
  apply Finset.sum_congr rfl
  intro q hq
  by_cases hsum : p + q = N
  · simp [goldbachLogTerm, hsum]
  · simp [goldbachLogTerm, hsum]

/-- The exact continuous unit-interval Fourier coefficient identity for the
prime-log Goldbach mass. -/
theorem goldbachCircleIntegral_eq_logMass (N : ℕ) :
    (∫ x : ℝ in 0..1,
      goldbachExponentialSum N x * goldbachExponentialSum N x *
        unitCharacter (-(N : ℤ)) x) =
      (goldbachLogMass N : ℂ) := by
  change (∫ x : ℝ in 0..1, goldbachCircleIntegrand N x) =
    (goldbachLogMass N : ℂ)
  rw [goldbachCircleIntegral_eq_indicatorSum,
    goldbachIndicatorSum_eq_logMass]

end
end GRWTSK.NumberTheory.Primes.GoldbachCircleIntegral
