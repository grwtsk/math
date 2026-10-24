# Complete source: GRWTSK.NumberTheory.Primes.Checks.GoldbachFejerControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `abf411d17cd4f4414f9d010833664ce51b5fb75c` · SHA-256 `b2ccff01947f70bd7d73ed9e003311b9f462574334e5d99e30bff10b694854d2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Primes.GoldbachFejerBoundary
import Mathlib.Tactic.NormNum

set_option autoImplicit false

/-!
# Controls for the finite Goldbach Fejér lower source

These source controls retain the exact triangular multiplicities, the
positive-square identity, the fixed central lower mass, the sign-sensitive
coefficient branches, and the distinction between a positive singular window
and an actual prime representation.

The controls have not been executed in Lean.
-/

namespace GRWTSK.NumberTheory.Primes.Checks.GoldbachFejerControls

open scoped BigOperators Real
open GRWTSK.NumberTheory.Primes.ConfigurationCounts
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcs
open GRWTSK.NumberTheory.Primes.GoldbachProgressionMainModel
open GRWTSK.NumberTheory.Primes.GoldbachProgressionCoefficientFactorization
open GRWTSK.NumberTheory.Primes.GoldbachPrimeCoefficientBridge
open GRWTSK.NumberTheory.Primes.GoldbachPeriodizedSingularWindow
open GRWTSK.NumberTheory.Primes.GoldbachFiniteSingularExpansion
open GRWTSK.NumberTheory.Primes.GoldbachFiniteSingularEvaluation
open GRWTSK.NumberTheory.Primes.GoldbachFejerKernel
open GRWTSK.NumberTheory.Primes.GoldbachFejerCoreLowerBound
open GRWTSK.NumberTheory.Primes.GoldbachFejerBoundary

noncomputable section

/-- Concrete triangular frequency multiplicities. -/
theorem triangular_frequency_controls :
    goldbachTriangularFrequencyWeight 4 0 = 5 ∧
      goldbachTriangularFrequencyWeight 4 (-3) = 2 ∧
      goldbachTriangularFrequencyWeight 4 5 = 0 := by
  norm_num [goldbachTriangularFrequencyWeight_formula]

/-- At target zero, the complete integer kernel and the Fejér kernel are both
the constant one source. -/
theorem fejer_kernel_zero_control
    (β : ℝ) :
    goldbachIntegerExponentialKernel 0 β = 1 ∧
      goldbachFejerKernel 0 β = 1 := by
  constructor
  · simp [goldbachIntegerExponentialKernel]
  · simp [goldbachFejerKernel,
      goldbachIntegerExponentialKernel,
      Complex.normSq]

/-- The fixed core radius and mass are literal rational quantities. -/
theorem fejer_core_constants_control :
    goldbachFejerCoreRadius 11 = (1 / 72 : ℝ) ∧
      goldbachFejerCoreMain 11 = 1 := by
  constructor <;>
    norm_num [goldbachFejerCoreRadius,
      goldbachFejerCoreMain]

/-- The representative denominator-three window contains the fixed core. -/
theorem fejer_core_containment_control :
    goldbachFejerCoreRadius 18 ≤
      goldbachRationalArcRadius 3 18 3 := by
  exact goldbachFejerCoreRadius_le_arcRadius
    (by norm_num) (by norm_num)

/-- The denominator-three singular window has the explicit uniform lower
bound `19/12`. -/
theorem fejer_window_lower_control :
    (19 / 12 : ℝ) ≤
      (goldbachSymmetricRealSingularIntegral
        3 18 3).re := by
  convert (goldbachFejerCoreMain_le_symmetric_re
    (Q := 3) (N := 18) (q := 3) (by norm_num) (by norm_num)) using 1
  norm_num [goldbachFejerCoreMain]

/-- The even target at prime denominator two has positive real arithmetic
coefficient one. -/
theorem denominator_two_coefficient_control :
    (goldbachProgressionDenominatorCoefficient
      2 18).re = 1 := by
  rw [goldbachProgressionDenominatorCoefficient_prime_formula
    Nat.prime_two]
  norm_num

/-- A nondividing prime denominator retains its negative coefficient. -/
theorem denominator_three_negative_coefficient_control :
    (goldbachProgressionDenominatorCoefficient
      3 10).re = -(1 / 4 : ℝ) := by
  rw [goldbachProgressionDenominatorCoefficient_prime_formula
    Nat.prime_three]
  norm_num

/-- A positive coefficient uses the central lower mass. -/
theorem positive_coefficient_branch_control :
    goldbachFejerDenominatorLowerTerm 2 18 2 =
      (19 / 12 : ℝ) := by
  unfold goldbachFejerDenominatorLowerTerm
  rw [denominator_two_coefficient_control]
  norm_num [goldbachFejerCoreMain]

/-- A negative coefficient uses the upper window envelope, not the positive
core lower mass. -/
theorem negative_coefficient_branch_control :
    goldbachFejerDenominatorLowerTerm 3 10 3 =
      -(11 / 2 : ℝ) := by
  unfold goldbachFejerDenominatorLowerTerm
  rw [denominator_three_negative_coefficient_control]
  norm_num [goldbachFejerWindowUpper,
    goldbachRationalArcRadius]

/-- At zero frequency, the grouped triangular source has the expected total
pair multiplicity. -/
theorem triangular_sum_at_zero_control :
    (∑ m ∈ Finset.Icc (-(2 : ℤ)) (2 : ℤ),
      goldbachTriangularFrequencyWeight 2 m) = 9 := by
  rw [show Finset.Icc (-(2 : ℤ)) 2 = {-2, -1, 0, 1, 2} by decide]
  norm_num [goldbachTriangularFrequencyWeight_formula]

/-- The Fejér-square theorem makes the finite singular kernel pointwise
nonnegative, including away from the additive diagonal. -/
theorem fejer_nonnegative_control
    (β : ℝ) :
    0 ≤
      (goldbachFiniteSingularKernel 7 β).re := by
  exact goldbachFiniteSingularKernel_re_nonneg 7 β

/-- Positive finite singular mass is not itself a Goldbach witness. -/
theorem fejer_window_not_goldbach_witness :
    goldbachCount 2 = 0 ∧
      0 <
        (goldbachSymmetricRealSingularIntegral
          1 2 1).re := by
  exact ⟨by decide,
    goldbachSymmetricRealSingularIntegral_re_pos
      (Q := 1) (N := 2) (q := 1)
      (by norm_num) (by norm_num)⟩

/-- Equality with the announced lower source cannot satisfy a strict terminal
margin. -/
theorem strict_fejer_margin_rejected
    (Q N : ℕ) :
    ¬ goldbachFejerDenominatorLowerSum Q N <
        goldbachFejerDenominatorLowerSum Q N := by
  exact lt_irrefl _

end
end GRWTSK.NumberTheory.Primes.Checks.GoldbachFejerControls
```
