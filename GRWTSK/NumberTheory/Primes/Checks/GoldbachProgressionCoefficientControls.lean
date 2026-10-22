/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human research direction: R.A. Jacob Martone. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Primes.GoldbachProgressionCoefficientBoundary
import Mathlib.Tactic.NormNum

set_option autoImplicit false

/-!
# Controls for Goldbach progression coefficients

These controls retain the sign and normalization of the prime-denominator
coefficient, its distinction from the local factor, the factor at two, and the
boundary between an exact coefficient factorization and an analytic lower
bound. They have not been executed in Lean.
-/

namespace GRWTSK.NumberTheory.Primes.Checks.GoldbachProgressionCoefficientControls

open GRWTSK.NumberTheory.Primes.ConfigurationCounts
open GRWTSK.NumberTheory.Primes.GoldbachTruncatedSeries
open GRWTSK.NumberTheory.Primes.GoldbachProgressionCoefficientFactorization
open GRWTSK.NumberTheory.Primes.GoldbachPrimeCoefficientBridge
open GRWTSK.NumberTheory.Primes.GoldbachProgressionCoefficientBoundary

/-- At the prime two, an even target gives denominator coefficient one. -/
theorem prime_two_even_coefficient :
    goldbachProgressionDenominatorCoefficient 2 10 = 1 := by
  rw [goldbachProgressionDenominatorCoefficient_prime_formula
    Nat.prime_two]
  norm_num

/-- At the prime two, an odd target gives denominator coefficient negative
one, so the associated Euler factor vanishes. -/
theorem prime_two_odd_coefficient :
    goldbachProgressionDenominatorCoefficient 2 9 = -1 := by
  rw [goldbachProgressionDenominatorCoefficient_prime_formula
    Nat.prime_two]
  norm_num

/-- A prime divisor of the target contributes `1 / (p - 1)`. -/
theorem prime_three_divisor_coefficient :
    goldbachProgressionDenominatorCoefficient 3 12 =
      (1 / 2 : ℂ) := by
  rw [goldbachProgressionDenominatorCoefficient_prime_formula
    Nat.prime_three]
  norm_num

/-- A prime not dividing the target contributes
`-1 / (p - 1)^2`. -/
theorem prime_three_nondivisor_coefficient :
    goldbachProgressionDenominatorCoefficient 3 10 =
      (-1 / 4 : ℂ) := by
  rw [goldbachProgressionDenominatorCoefficient_prime_formula
    Nat.prime_three]
  norm_num

/-- The denominator coefficient is not itself the local factor; one must add
the universal leading one. -/
theorem coefficient_not_local_factor :
    goldbachProgressionDenominatorCoefficient 3 12 =
        (1 / 2 : ℂ) ∧
      (GRWTSK.NumberTheory.Primes.GoldbachLocalFactors.goldbachPrimeLocalFactor
        3 12 : ℂ) = 3 / 2 := by
  constructor
  · exact prime_three_divisor_coefficient
  · norm_num
      [GRWTSK.NumberTheory.Primes.GoldbachLocalFactors.goldbachPrimeLocalFactor,
       GRWTSK.NumberTheory.Primes.GoldbachLocalFactors.goldbachPrimeResidueCount,
       GRWTSK.NumberTheory.Primes.GoldbachLocalFactors.goldbachPrimeResidues]

/-- Adding one restores the exact modulus-five local factor. -/
theorem prime_five_local_factor_bridge :
    (1 : ℂ) +
        goldbachProgressionDenominatorCoefficient 5 10 =
      (GRWTSK.NumberTheory.Primes.GoldbachLocalFactors.goldbachPrimeLocalFactor
        5 10 : ℂ) := by
  exact
    one_add_goldbachProgressionDenominatorCoefficient_eq_localFactor
      (N := 10) (by norm_num)

/-- Through the prime cutoff five, target ten has finite coefficient Euler
product `2 * (3/4) * (5/4) = 15/8`. -/
theorem cutoff_five_target_ten :
    goldbachFiniteCoefficientEulerProduct
        (goldbachPrimeCutoff 5) 10 =
      (15 / 8 : ℂ) := by
  have hcut : goldbachPrimeCutoff 5 = {2, 3, 5} := by decide
  rw [goldbachFiniteCoefficientEulerProduct_eq_localProduct
    (fun p hp => (mem_goldbachPrimeCutoff.1 hp).1), hcut]
  norm_num [GRWTSK.NumberTheory.Primes.GoldbachLocalFactors.finiteGoldbachLocalProduct,
    GRWTSK.NumberTheory.Primes.GoldbachLocalFactors.goldbachPrimeLocalFactor_formula,
    GRWTSK.NumberTheory.Primes.GoldbachLocalFactors.goldbachUniversalOddFactor]

/-- Retaining the prime-two Euler factor makes every odd target vanish. -/
theorem cutoff_five_odd_target_zero :
    goldbachFiniteCoefficientEulerProduct
        (goldbachPrimeCutoff 5) 9 = 0 := by
  exact goldbachFiniteCoefficientEulerProduct_eq_zero_of_not_even
    (Q := 5) (N := 9) (by norm_num) (by norm_num)

/-- Positive finite coefficient Euler products remain only local
admissibility: the even target two has no Goldbach representation in the
repository's exact count convention. -/
theorem positive_coefficient_product_not_goldbach_witness :
    0 <
        (goldbachFiniteCoefficientEulerProduct
          (goldbachPrimeCutoff 5) 2).re ∧
      goldbachCount 2 = 0 := by
  exact
    ⟨goldbachFiniteCoefficientEulerProduct_re_pos
      (Q := 5) (N := 2) (by norm_num) (by norm_num),
     by decide⟩

/-- Exact coefficient factorization can coexist with zero Goldbach count. -/
theorem factored_major_not_goldbach_witness :
    goldbachCount 2 = 0 ∧
      GRWTSK.NumberTheory.Primes.GoldbachProgressionArcBoundary.goldbachProgressionArcModelMajorSum
          1 2 =
        goldbachProgressionFactoredMajorSum 1 2 := by
  exact
    ⟨by decide,
      GRWTSK.NumberTheory.Primes.GoldbachProgressionCoefficientFactorization.goldbachProgressionArcModelMajorSum_eq_factored
        1 2⟩

/-- Equality of a complete error budget and its proposed main lower bound
cannot pass the strict terminal margin. -/
theorem coefficient_zero_margin_rejected (x : ℝ) :
    ¬ x < x := by
  exact lt_irrefl x

end GRWTSK.NumberTheory.Primes.Checks.GoldbachProgressionCoefficientControls
