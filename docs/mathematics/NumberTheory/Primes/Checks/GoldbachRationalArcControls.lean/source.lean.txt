/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Primes.GoldbachRationalArcCriterion
import Mathlib.Tactic.NormNum

set_option autoImplicit false

/-!
# Controls for the concrete Goldbach rational arcs

These source controls retain reduced-fraction indexing, the period lifts,
unit-domain clipping, possible raw-arc overlap, and the distinction between an
exact partition and an analytic estimate. They have not been executed in Lean.
-/

namespace GRWTSK.NumberTheory.Primes.Checks.GoldbachRationalArcControls

open Set
open GRWTSK.NumberTheory.Primes.ConfigurationCounts
open GRWTSK.NumberTheory.Primes.GoldbachWeighted
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcs
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcCriterion

/-- No denominator is admitted at cutoff zero. -/
theorem rational_indices_zero :
    goldbachRationalArcIndices 0 = ∅ :=
  goldbachRationalArcIndices_zero

/-- Cutoff one contains exactly the reduced class `0/1`. -/
theorem rational_indices_one :
    goldbachRationalArcIndices 1 =
      ({(0, 1)} : Finset (ℕ × ℕ)) := by
  decide

/-- Cutoff two adds exactly the reduced class `1/2`. -/
theorem rational_indices_two :
    goldbachRationalArcIndices 2 =
      ({(0, 1), (1, 2)} : Finset (ℕ × ℕ)) := by
  decide

/-- A concrete radius retains the denominator and target scaling. -/
theorem rational_radius_control :
    goldbachRationalArcRadius 2 3 1 = (1 / 2 : ℝ) := by
  norm_num [goldbachRationalArcRadius]

/-- The adjacent `+1` lift captures the neighborhood near the right endpoint. -/
theorem periodic_wrap_control :
    (9 / 10 : ℝ) ∈ goldbachPeriodizedRationalArc 1 3 0 1 := by
  norm_num [goldbachPeriodizedRationalArc,
    goldbachRationalArcCenter, goldbachRationalArcRadius]

/-- Raw rational arcs are not silently assumed disjoint. -/
theorem raw_arc_overlap_control :
    ∃ x : ℝ,
      x ∈ goldbachPeriodizedRationalArc 2 0 0 1 ∧
      x ∈ goldbachPeriodizedRationalArc 2 0 1 2 := by
  refine ⟨(1 / 2 : ℝ), ?_, ?_⟩ <;>
    norm_num [goldbachPeriodizedRationalArc,
      goldbachRationalArcCenter, goldbachRationalArcRadius]

/-- The zero cutoff yields the empty raw major region. -/
theorem zero_cutoff_region_empty :
    goldbachRationalMajorRegion 0 7 = ∅ :=
  goldbachRationalMajorRegion_zero_cutoff 7

/-- Clipping excludes zero even though the periodized zero arc is centered there. -/
theorem clipping_excludes_zero :
    0 ∉ goldbachRationalMajorArcSet 2 7 :=
  zero_not_mem_goldbachRationalMajorArcSet 2 7

/-- The exact rational partition can coexist with a zero exact Goldbach count. -/
theorem rational_partition_not_goldbach_witness :
    goldbachCount 2 = 0 ∧
      goldbachRationalMajorContribution 1 2 +
          goldbachRationalMinorContribution 1 2 =
        (goldbachLogMass 2 : ℂ) := by
  exact ⟨by decide, goldbachRationalMajor_add_minor_eq_logMass 1 2⟩

/-- The raw arc may extend outside the unit domain, while the clipped major set cannot. -/
theorem clipping_is_not_optional :
    (-1 : ℝ) ∈ goldbachPeriodizedRationalArc 2 0 0 1 ∧
      (-1 : ℝ) ∉ goldbachRationalMajorArcSet 2 0 := by
  constructor
  · norm_num [goldbachPeriodizedRationalArc,
      goldbachRationalArcCenter, goldbachRationalArcRadius]
  · intro h
    have hpos : (0 : ℝ) < -1 :=
      (goldbachRationalMajorArcSet_subset_unit 2 0 h).1
    norm_num at hpos

end GRWTSK.NumberTheory.Primes.Checks.GoldbachRationalArcControls
