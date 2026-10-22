/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human research direction: R.A. Jacob Martone. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Primes.GoldbachArcDecomposition
import Mathlib.Tactic.NormNum

set_option autoImplicit false

/-!
# Truncated-series and arc-partition controls

These controls preserve the factor at two, the distinction between local
admissibility and actual prime support, the exact unit-interval partition, and
the strict-margin requirement. They have not been executed in Lean.
-/

namespace GRWTSK.NumberTheory.Primes.Checks.GoldbachArcControls

open MeasureTheory Set
open GRWTSK.NumberTheory.Primes.ConfigurationCounts
open GRWTSK.NumberTheory.Primes.GoldbachWeighted
open GRWTSK.NumberTheory.Primes.GoldbachCircleIntegral
open GRWTSK.NumberTheory.Primes.GoldbachTruncatedSeries
open GRWTSK.NumberTheory.Primes.GoldbachArcDecomposition

/-- The cutoff through five contains exactly the first three primes. -/
theorem prime_cutoff_five :
    goldbachPrimeCutoff 5 = {2, 3, 5} := by decide

/-- The corresponding odd cutoff removes exactly the modulus two. -/
theorem odd_prime_cutoff_five :
    goldbachOddPrimeCutoff 5 = {3, 5} := by decide

/-- A retained factor at two annihilates every odd target. -/
theorem odd_target_truncation_zero :
    goldbachTruncatedSeries 5 9 = 0 := by
  exact goldbachTruncatedSeries_eq_zero_of_not_even (by decide)

/-- Local admissibility is not an actual Goldbach representation: the even
target two has positive finite local product but zero exact prime count. -/
theorem local_product_not_goldbach_witness :
    0 < goldbachTruncatedSeries 5 2 ∧ goldbachCount 2 = 0 := by
  constructor
  · exact goldbachTruncatedSeries_pos (by decide)
  · decide

/-- Declaring no major region leaves the complete coefficient in the minor
contribution. -/
theorem empty_major_partition (N : ℕ) :
    goldbachMajorArcContribution N ∅ = 0 ∧
    goldbachMinorArcContribution N ∅ = (goldbachLogMass N : ℂ) := by
  constructor
  · simp [goldbachMajorArcContribution, goldbachMajorArcSet]
  · have h := goldbachMajor_add_minor_eq_logMass N MeasurableSet.empty
    simpa [goldbachMajorArcContribution, goldbachMajorArcSet] using h

/-- Declaring the whole unit interval as major leaves a zero minor
contribution. -/
theorem full_major_partition (N : ℕ) :
    goldbachMinorArcContribution N (Set.Ioc 0 1) = 0 := by
  simp [goldbachMinorArcContribution, goldbachMinorArcSet]

/-- Equality of the error budget and main lower bound is not a strict margin. -/
theorem zero_margin_rejected (x : ℝ) : ¬ x < x := by
  exact lt_irrefl x

/-- A finite positive local product does not remove the need for a supplied
major approximation and a complete signed minor bound. -/
theorem truncated_scale_alone_not_count :
    0 < goldbachTruncatedSeries 5 2 ∧ ¬ 0 < goldbachCount 2 := by
  constructor
  · exact goldbachTruncatedSeries_pos (by decide)
  · have hcount : goldbachCount 2 = 0 := by decide
    simp [hcount]

end GRWTSK.NumberTheory.Primes.Checks.GoldbachArcControls
