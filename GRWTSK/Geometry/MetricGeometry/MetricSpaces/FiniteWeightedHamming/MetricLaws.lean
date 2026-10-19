/-
# Uncompiled source split candidate: Finite positive-weight Hamming metric laws

Status: SOURCE_READ_SEAMS_REVIEWED_STATIC_ONLY.
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED.
Shared clarification issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional computation: OpenAI/Codex — composite search, probabilistic symbolic
recombination, and linearized diffusive computation.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are provisional user-specified roles, not independently established
model mechanisms or final per-declaration authorship. Existing notices remain
preserved in the exact source archives and copied source documentation.
Source original SHA256: c9f49594a570ab56c08a96af58cc5041741c9d0e1abc8b3d690040c4b3a0e9fc
Source regions: bytes 540..3650. Review: attribution-254-review-000003.
Original documentation below describes the unsplit source context.
No Lean compilation, proof acceptance or public umbrella admission is asserted.
-/

import GRWTSK.Geometry.MetricGeometry.MetricSpaces.FiniteWeightedHamming.Bitfield
import Mathlib.Data.Real.Basic
import Mathlib.Data.Fintype.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Tactic.Linarith

/-!
# Separated weighted-Hamming geometry

The concrete metric uses strictly positive real weights.  A separate generic
pseudometric record exposes the zero-distance quotient boundary rather than
silently identifying zero distance with equality.
-/

namespace GRWTSK.Geometry.MetricGeometry.MetricSpaces.FiniteWeightedHamming.MetricLaws

open GRWTSK.Geometry.MetricGeometry.MetricSpaces.FiniteWeightedHamming (Bitfield)

structure PositiveWeights (width : Nat) where
  weight : Fin width → ℝ
  positive : ∀ coordinate, 0 < weight coordinate

def weightedHamming
    {width : Nat}
    (weights : PositiveWeights width)
    (left right : Bitfield width) : ℝ :=
  ∑ coordinate,
    if left coordinate = right coordinate
      then 0
      else weights.weight coordinate

theorem weightedHamming_nonnegative
    {width : Nat}
    (weights : PositiveWeights width)
    (left right : Bitfield width) :
    0 ≤ weightedHamming weights left right := by
  unfold weightedHamming
  apply Finset.sum_nonneg
  intro coordinate _
  split
  · exact le_rfl
  · exact (weights.positive coordinate).le

@[simp] theorem weightedHamming_self
    {width : Nat}
    (weights : PositiveWeights width)
    (field : Bitfield width) :
    weightedHamming weights field field = 0 := by
  simp [weightedHamming]

theorem weightedHamming_symmetric
    {width : Nat}
    (weights : PositiveWeights width)
    (left right : Bitfield width) :
    weightedHamming weights left right =
      weightedHamming weights right left := by
  unfold weightedHamming
  apply Finset.sum_congr rfl
  intro coordinate _
  by_cases same : left coordinate = right coordinate
  · rw [if_pos same, if_pos same.symm]
  · have reverse : right coordinate ≠ left coordinate := Ne.symm same
    rw [if_neg same, if_neg reverse]

theorem weightedHamming_triangle
    {width : Nat}
    (weights : PositiveWeights width)
    (left middle right : Bitfield width) :
    weightedHamming weights left right ≤
      weightedHamming weights left middle +
      weightedHamming weights middle right := by
  unfold weightedHamming
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_le_sum
  intro coordinate _
  have weightNonnegative : 0 ≤ weights.weight coordinate :=
    (weights.positive coordinate).le
  cases left coordinate <;>
    cases middle coordinate <;>
    cases right coordinate <;>
    simp [weightNonnegative]

theorem weightedHamming_separates
    {width : Nat}
    (weights : PositiveWeights width)
    (left right : Bitfield width)
    (zeroDistance : weightedHamming weights left right = 0) :
    left = right := by
  funext coordinate
  by_contra different
  have selectedPositive :
      0 <
        (if left coordinate = right coordinate
          then 0
          else weights.weight coordinate) := by
    simp [different, weights.positive coordinate]
  have selectedBound :
      (if left coordinate = right coordinate
          then 0
          else weights.weight coordinate) ≤
        weightedHamming weights left right := by
    unfold weightedHamming
    have everyTermNonnegative :
        ∀ candidate ∈ (Finset.univ : Finset (Fin width)),
          0 ≤
            (if left candidate = right candidate
              then 0
              else weights.weight candidate) := by
      intro candidate _
      split
      · exact le_rfl
      · exact (weights.positive candidate).le
    simpa using
      (Finset.single_le_sum everyTermNonnegative
        (Finset.mem_univ coordinate))
  rw [zeroDistance] at selectedBound
  linarith

end GRWTSK.Geometry.MetricGeometry.MetricSpaces.FiniteWeightedHamming.MetricLaws
