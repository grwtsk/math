# Complete source: GRWTSK.NumberTheory.Primes.GoldbachRationalArcCriterion

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d583e49b6af1572883ceb1517777f7ab09f836d6` · SHA-256 `f7297e13924bf9cf8e781372582616f392440918b8d8e53b4a987411aabfa15d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Primes.GoldbachArcDecomposition
import GRWTSK.NumberTheory.Primes.GoldbachRationalArcs
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Goldbach criterion specialized to the concrete rational arcs

The finite rational family is clipped to the inherited unit integration domain.
The complementary minor set and both signed contributions are then inherited
without changing the exact Goldbach integrand.

The terminal theorems remain conditional. They require a major lower bound,
a complete signed minor norm bound, and a strict margin. No such analytic
estimate is constructed here.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Primes.GoldbachRationalArcCriterion

open scoped Real
open Set
open GRWTSK.NumberTheory.Primes.ConfigurationCounts
open GRWTSK.NumberTheory.Primes.GoldbachWeighted
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcs
open GRWTSK.NumberTheory.Primes.GoldbachArcDecomposition

noncomputable section

/-- The concrete rational major region clipped to the exact unit domain. -/
def goldbachRationalMajorArcSet (Q N : ℕ) : Set ℝ :=
  goldbachMajorArcSet (goldbachRationalMajorRegion Q N)

/-- The complementary concrete rational minor region inside the unit domain. -/
def goldbachRationalMinorArcSet (Q N : ℕ) : Set ℝ :=
  goldbachMinorArcSet (goldbachRationalMajorRegion Q N)

/-- The clipped concrete rational major set is measurable. -/
theorem measurable_goldbachRationalMajorArcSet (Q N : ℕ) :
    MeasurableSet (goldbachRationalMajorArcSet Q N) := by
  unfold goldbachRationalMajorArcSet
  exact measurable_goldbachMajorArcSet
    (measurable_goldbachRationalMajorRegion Q N)

/-- The concrete rational minor set is measurable. -/
theorem measurable_goldbachRationalMinorArcSet (Q N : ℕ) :
    MeasurableSet (goldbachRationalMinorArcSet Q N) := by
  unfold goldbachRationalMinorArcSet
  exact measurable_goldbachMinorArcSet
    (measurable_goldbachRationalMajorRegion Q N)

/-- The clipped concrete rational major set lies in `(0,1]`. -/
theorem goldbachRationalMajorArcSet_subset_unit (Q N : ℕ) :
    goldbachRationalMajorArcSet Q N ⊆ Set.Ioc 0 1 := by
  intro x hx
  change x ∈ Set.Ioc 0 1 ∩ goldbachRationalMajorRegion Q N at hx
  exact hx.1

/-- The endpoint zero is excluded by the exact integration convention. -/
theorem zero_not_mem_goldbachRationalMajorArcSet (Q N : ℕ) :
    0 ∉ goldbachRationalMajorArcSet Q N := by
  simp [goldbachRationalMajorArcSet, goldbachMajorArcSet]

/-- The concrete rational major and minor regions partition `(0,1]`. -/
theorem goldbachRationalMajor_union_minor (Q N : ℕ) :
    goldbachRationalMajorArcSet Q N ∪
        goldbachRationalMinorArcSet Q N =
      Set.Ioc 0 1 := by
  simpa [goldbachRationalMajorArcSet, goldbachRationalMinorArcSet] using
    goldbachMajorArcSet_union_minor (goldbachRationalMajorRegion Q N)

/-- The concrete rational major and minor regions are disjoint. -/
theorem goldbachRationalMajor_disjoint_minor (Q N : ℕ) :
    Disjoint (goldbachRationalMajorArcSet Q N)
      (goldbachRationalMinorArcSet Q N) := by
  simpa [goldbachRationalMajorArcSet, goldbachRationalMinorArcSet] using
    goldbachMajorArcSet_disjoint_minor (goldbachRationalMajorRegion Q N)

/-- The signed Goldbach contribution from the concrete rational major arcs. -/
def goldbachRationalMajorContribution (Q N : ℕ) : ℂ :=
  goldbachMajorArcContribution N (goldbachRationalMajorRegion Q N)

/-- The signed Goldbach contribution from the complementary rational minor set. -/
def goldbachRationalMinorContribution (Q N : ℕ) : ℂ :=
  goldbachMinorArcContribution N (goldbachRationalMajorRegion Q N)

/-- Exact recombination of the concrete rational major and minor contributions. -/
theorem goldbachRationalMajor_add_minor_eq_logMass (Q N : ℕ) :
    goldbachRationalMajorContribution Q N +
        goldbachRationalMinorContribution Q N =
      (goldbachLogMass N : ℂ) := by
  simpa [goldbachRationalMajorContribution,
    goldbachRationalMinorContribution] using
    goldbachMajor_add_minor_eq_logMass N
      (measurable_goldbachRationalMajorRegion Q N)

/-- A strict lower bound for the concrete rational major contribution that
beats the complete signed minor norm yields an exact Goldbach witness count. -/
theorem goldbachCount_pos_of_rational_arc_bounds
    {Q N : ℕ} (mainLower minorError : ℝ)
    (hmain :
      mainLower ≤ (goldbachRationalMajorContribution Q N).re)
    (hminor :
      ‖goldbachRationalMinorContribution Q N‖ ≤ minorError)
    (hmargin : minorError < mainLower) :
    0 < goldbachCount N := by
  exact goldbachCount_pos_of_major_minor_bounds
    (major := goldbachRationalMajorRegion Q N)
    (measurable_goldbachRationalMajorRegion Q N)
    mainLower minorError
    (by simpa [goldbachRationalMajorContribution] using hmain)
    (by simpa [goldbachRationalMinorContribution] using hminor)
    hmargin

/-- The rational-arc denominator cutoff and the finite local-factor cutoff
remain independent parameters. Both approximation errors must be supplied and
charged exactly once. -/
theorem goldbachCount_pos_of_rational_truncated_certificate
    {arcQ localQ N : ℕ}
    (scale localError minorError : ℝ)
    (hmajorLower :
      goldbachTruncatedMainScale localQ N scale - localError ≤
        (goldbachRationalMajorContribution arcQ N).re)
    (hminor :
      ‖goldbachRationalMinorContribution arcQ N‖ ≤ minorError)
    (hmargin :
      localError + minorError <
        goldbachTruncatedMainScale localQ N scale) :
    0 < goldbachCount N := by
  exact goldbachCount_pos_of_truncated_arc_certificate
    (Q := localQ) (N := N)
    (major := goldbachRationalMajorRegion arcQ N)
    (measurable_goldbachRationalMajorRegion arcQ N)
    scale localError minorError
    (by simpa [goldbachRationalMajorContribution] using hmajorLower)
    (by simpa [goldbachRationalMinorContribution] using hminor)
    hmargin

end
end GRWTSK.NumberTheory.Primes.GoldbachRationalArcCriterion
```
