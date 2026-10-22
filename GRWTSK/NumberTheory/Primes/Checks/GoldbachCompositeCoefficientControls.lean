/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human research direction: R.A. Jacob Martone. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Primes.GoldbachPrimorialEulerTail
import Mathlib.Tactic.NormNum

set_option autoImplicit false

/-!
# Controls for composite Goldbach denominator coefficients

These controls retain squarefree support, composite multiplicativity, the
difference between the rational denominator cutoff and the primorial divisor
expansion, and the fact that an exact finite Euler-tail identity is not itself
a Goldbach lower bound.

The controls have not been executed in Lean.
-/

namespace GRWTSK.NumberTheory.Primes.Checks.GoldbachCompositeCoefficientControls

open scoped Real ArithmeticFunction.Moebius
open GRWTSK.NumberTheory.Primes.ConfigurationCounts
open GRWTSK.NumberTheory.Primes.GoldbachPrimeCoefficientBridge
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcs
open GRWTSK.NumberTheory.Primes.GoldbachTruncatedSeries
open GRWTSK.NumberTheory.Primes.GoldbachProgressionCoefficientBoundary
open GRWTSK.NumberTheory.Primes.GoldbachCompositeRamanujan
open GRWTSK.NumberTheory.Primes.GoldbachCompositeCoefficient
open GRWTSK.NumberTheory.Primes.GoldbachFejerCoreLowerBound
open GRWTSK.NumberTheory.Primes.GoldbachFejerBoundary
open GRWTSK.NumberTheory.Primes.GoldbachPrimorialEulerTail

noncomputable section

/-- The Ramanujan integer at modulus six and target ten is negative one. -/
theorem ramanujan_six_ten_control :
    goldbachRamanujanInteger 6 10 = -1 := by
  calc
    goldbachRamanujanInteger 6 10 =
        goldbachRamanujanInteger 2 10 * goldbachRamanujanInteger 3 10 :=
      goldbachRamanujanInteger_mul_of_coprime
        (q := 2) (r := 3) (by norm_num) (by norm_num) (by norm_num)
    _ = -1 := by
      rw [goldbachRamanujanInteger_prime Nat.prime_two,
        goldbachRamanujanInteger_prime Nat.prime_three]
      norm_num

/-- The Ramanujan integer at modulus six and target eighteen is `φ(6)=2`. -/
theorem ramanujan_six_eighteen_control :
    goldbachRamanujanInteger 6 18 = 2 := by
  calc
    goldbachRamanujanInteger 6 18 =
        goldbachRamanujanInteger 2 18 * goldbachRamanujanInteger 3 18 :=
      goldbachRamanujanInteger_mul_of_coprime
        (q := 2) (r := 3) (by norm_num) (by norm_num) (by norm_num)
    _ = 2 := by
      rw [goldbachRamanujanInteger_prime Nat.prime_two,
        goldbachRamanujanInteger_prime Nat.prime_three]
      norm_num

/-- A nonsquarefree denominator contributes zero. -/
theorem coefficient_four_zero_control :
    goldbachProgressionDenominatorCoefficient 4 10 = 0 := by
  exact
    goldbachProgressionDenominatorCoefficient_eq_zero_of_not_squarefree
      (by norm_num) (by decide)

/-- The coefficient at denominator six factors into the coefficients at two
and three. -/
theorem coefficient_six_multiplicative_control :
    goldbachProgressionDenominatorCoefficient 6 10 =
      goldbachProgressionDenominatorCoefficient 2 10 *
        goldbachProgressionDenominatorCoefficient 3 10 := by
  simpa using
    goldbachProgressionDenominatorCoefficient_mul_of_coprime
      (N := 10) (q := 2) (r := 3)
      (by norm_num) (by norm_num) (by norm_num)

/-- Concrete negative squarefree composite coefficient. -/
theorem coefficient_six_ten_control :
    goldbachProgressionDenominatorCoefficient 6 10 =
      (-1 / 4 : ℂ) := by
  rw [coefficient_six_multiplicative_control,
    goldbachProgressionDenominatorCoefficient_prime_formula Nat.prime_two,
    goldbachProgressionDenominatorCoefficient_prime_formula Nat.prime_three]
  norm_num

/-- Concrete positive squarefree composite coefficient. -/
theorem coefficient_six_eighteen_control :
    goldbachProgressionDenominatorCoefficient 6 18 =
      (1 / 2 : ℂ) := by
  calc
    goldbachProgressionDenominatorCoefficient 6 18 =
        goldbachProgressionDenominatorCoefficient 2 18 *
          goldbachProgressionDenominatorCoefficient 3 18 :=
      goldbachProgressionDenominatorCoefficient_mul_of_coprime
        (q := 2) (r := 3) (by norm_num) (by norm_num) (by norm_num)
    _ = _ := by
      rw [goldbachProgressionDenominatorCoefficient_prime_formula Nat.prime_two,
        goldbachProgressionDenominatorCoefficient_prime_formula Nat.prime_three]
      norm_num

/-- At prime cutoff three the primorial is six. -/
theorem primorial_three_control :
    primorial 3 = 6 := by
  decide

/-- The only primorial divisor omitted by denominator cutoff three is six. -/
theorem primorial_tail_three_control :
    goldbachPrimorialTailDivisors 3 = {6} := by
  decide

/-- Exact finite Euler decomposition at cutoff three and target ten. -/
theorem euler_range_tail_ten_control :
    goldbachFiniteCoefficientEulerProduct
        (goldbachPrimeCutoff 3) 10 =
      goldbachDenominatorCoefficientRangeSum 3 10 +
        goldbachPrimorialCoefficientTail 3 10 := by
  exact
    goldbachFiniteCoefficientEulerProduct_eq_range_add_tail 3 10

/-- The explicit coefficient tail at cutoff three is the denominator-six
coefficient. -/
theorem coefficient_tail_three_ten_control :
    goldbachPrimorialCoefficientTail 3 10 =
      (-1 / 4 : ℂ) := by
  rw [goldbachPrimorialCoefficientTail,
    primorial_tail_three_control]
  simp [coefficient_six_ten_control]

/-- The finite Euler product and its range-plus-tail split have the expected
rational values. -/
theorem euler_value_three_ten_control :
    goldbachFiniteCoefficientEulerProduct
        (goldbachPrimeCutoff 3) 10 = (3 / 2 : ℂ) ∧
      goldbachDenominatorCoefficientRangeSum 3 10 =
        (7 / 4 : ℂ) := by
  have hRange : goldbachDenominatorRange 3 = {1, 2, 3} := by decide
  constructor
  · rw [goldbachFiniteCoefficientEulerProduct_eq_range_add_tail,
      coefficient_tail_three_ten_control]
    norm_num [goldbachDenominatorCoefficientRangeSum,
      hRange,
      goldbachProgressionDenominatorCoefficient_one,
      goldbachProgressionDenominatorCoefficient_prime_formula,
      Nat.prime_two, Nat.prime_three]
  · norm_num [goldbachDenominatorCoefficientRangeSum,
      hRange,
      goldbachProgressionDenominatorCoefficient_one,
      goldbachProgressionDenominatorCoefficient_prime_formula,
      Nat.prime_two, Nat.prime_three]

/-- The explicit primorial-tail norm is nonnegative. -/
theorem tail_norm_nonnegative_control :
    0 ≤ goldbachPrimorialCoefficientTailNorm 3 10 := by
  exact goldbachPrimorialCoefficientTailNorm_nonneg 3 10

/-- The exact Euler-tail comparison theorem is available at the Fejér core
scale. -/
theorem fejer_euler_tail_comparison_control :
    goldbachCoefficientTruncatedMainScale
        3 10 (goldbachFejerCoreMain 10) -
        goldbachFejerEulerTailError 3 10 ≤
      goldbachFejerDenominatorLowerSum 3 10 := by
  exact
    goldbachCoefficientTruncatedMainScale_sub_fejerEulerTailError_le
      3 10

/-- In this small hostile case the explicit comparison error is larger than
the finite Euler-product core scale, so no positivity is obtained. -/
theorem finite_tail_not_automatic_margin_control :
    ¬ goldbachFejerEulerTailError 3 10 <
      goldbachCoefficientTruncatedMainScale
        3 10 (goldbachFejerCoreMain 10) := by
  have hRange : goldbachDenominatorRange 3 = {1, 2, 3} := by decide
  have hc2 : goldbachProgressionDenominatorCoefficient 2 10 = (1 : ℂ) := by
    rw [goldbachProgressionDenominatorCoefficient_prime_formula Nat.prime_two]
    norm_num
  have hc3 : goldbachProgressionDenominatorCoefficient 3 10 = (-1 / 4 : ℂ) := by
    rw [goldbachProgressionDenominatorCoefficient_prime_formula Nat.prime_three]
    norm_num
  have herror : goldbachFejerEulerTailError 3 10 = (11 / 2 : ℝ) := by
    norm_num [goldbachFejerEulerTailError, goldbachPrimorialCoefficientTailNorm,
      primorial_tail_three_control, goldbachFejerNegativeCoefficientPenalty,
      hRange, goldbachFejerWindowUpper, goldbachFejerCoreMain,
      goldbachRationalArcRadius, goldbachProgressionDenominatorCoefficient_one,
      coefficient_six_ten_control, hc2, hc3]
  rw [herror]
  unfold goldbachCoefficientTruncatedMainScale
  rw [euler_value_three_ten_control.1]
  norm_num [goldbachFejerCoreMain]

/-- Exact composite coefficient and Euler-tail bookkeeping can coexist with a
zero exact Goldbach count. -/
theorem composite_coefficients_not_goldbach_witness :
    goldbachCount 2 = 0 ∧
      goldbachProgressionDenominatorCoefficient 6 2 =
        goldbachProgressionDenominatorCoefficient 2 2 *
          goldbachProgressionDenominatorCoefficient 3 2 := by
  exact ⟨by decide,
    by simpa using
      goldbachProgressionDenominatorCoefficient_mul_of_coprime
        (N := 2) (q := 2) (r := 3)
        (by norm_num) (by norm_num) (by norm_num)⟩

/-- Equality at the final margin remains insufficient. -/
theorem strict_euler_tail_margin_rejected
    (mainValue : ℝ) :
    ¬ mainValue < mainValue := by
  exact lt_irrefl _

end
end GRWTSK.NumberTheory.Primes.Checks.GoldbachCompositeCoefficientControls
