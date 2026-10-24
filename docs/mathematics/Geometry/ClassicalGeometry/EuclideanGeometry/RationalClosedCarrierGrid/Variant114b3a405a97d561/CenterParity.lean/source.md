# Complete source: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.RationalClosedCarrierGrid.Variant114b3a405a97d561.CenterParity

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `68a2aad2b71d8d945b7adf8ca8ab27247d7cf025` · SHA-256 `fa60707025d1bacf55d4115c24003379fb7e557993e76e53c6ed176f696f3a40`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
CenterParity — individually reviewed exact source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 114b3a405a97d561feb21963e18cddd711ca7a32ece4620a2f9993c2c790a012
Organized SHA-256: 0f79f53aaba330d5b99f48fad13607adae5cf8958c881aeab453dbe0769f4a6a
PMD: 510.3.010.010 euclidean geometry (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Exact center 1/2, bounded odd/even center Fin constructors and six carrier/origin parity theorems. The positive-even size is 2*(half+1); odd/even proof premises and empty-dimension behavior elsewhere remain unchanged. No numerical or JavaScript execution is claimed. -/

import BitMatrix.Geometry.GridCell
import Mathlib.Tactic

import GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.RationalClosedCarrierGrid.Variant114b3a405a97d561.CertifiedInteriorMultiplicity

/-!
# Exact carrier-grid geometry

This module gives the closed-cell support relation used by the JavaScript
carrier grid an exact rational model.  It deliberately separates support from
origin matching: a point on an internal face is supported by two cells on that
axis, but it matches neither cell barycenter.
-/

namespace GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.RationalClosedCarrierGrid.Variant114b3a405a97d561


namespace BitMatrix.Geometry.CarrierGrid

open BitMatrix.Runtime.Semantics

/-- The normalized center coordinate. -/
def center : ℚ := 1 / 2


def oddCenterIndex (half : Nat) : Fin (2 * half + 1) :=
  ⟨half, by omega⟩


def evenCenterLeft (half : Nat) : Fin (2 * (half + 1)) :=
  ⟨half, by omega⟩


def evenCenterRight (half : Nat) : Fin (2 * (half + 1)) :=
  ⟨half + 1, by omega⟩


/-- An odd grid has one exact center carrier on each axis. -/
theorem odd_center_axisCarriers (half : Nat) :
    axisCarriers (2 * half + 1) center = {oddCenterIndex half} := by
  apply axisCarriers_eq_singleton_of_cell
  · dsimp [center, oddCenterIndex]
    push_cast
    linarith
  · dsimp [center, oddCenterIndex]
    push_cast
    linarith


/-- A positive even grid has two exact center carriers on each axis. -/
theorem even_center_axisCarriers (half : Nat) :
    axisCarriers (2 * (half + 1)) center =
      {evenCenterLeft half, evenCenterRight half} := by
  apply axisCarriers_eq_pair_of_internalBoundary
  · simp [evenCenterLeft, evenCenterRight]
  · dsimp [center, evenCenterRight]
    push_cast
    ring


/-- An odd square grid has one exact carrier at its normalized center. -/
theorem odd_center_carrierMultiplicity (half : Nat) :
    carrierMultiplicity (2 * half + 1) { x := center, y := center } = 1 := by
  simp [carrierMultiplicity, odd_center_axisCarriers]


/-- A positive even square grid has four exact carriers at its normalized
center: two choices independently on each axis. -/
theorem even_center_carrierMultiplicity (half : Nat) :
    carrierMultiplicity (2 * (half + 1)) { x := center, y := center } = 4 := by
  unfold carrierMultiplicity
  rw [even_center_axisCarriers]
  have unequal : evenCenterLeft half ≠ evenCenterRight half := by
    intro equality
    have values : half = half + 1 := by
      simpa [evenCenterLeft, evenCenterRight] using congrArg Fin.val equality
    omega
  simp [unequal]


/-- On an odd grid, the unique supporting center cell is also the unique
origin match. -/
theorem odd_center_axisOriginMatches_iff (half : Nat)
    (index : Fin (2 * half + 1)) :
    AxisOriginMatches (2 * half + 1) center index ↔
      index = oddCenterIndex half := by
  unfold AxisOriginMatches center
  constructor
  · intro equality
    apply Fin.ext
    dsimp [oddCenterIndex]
    push_cast at equality
    ring_nf at equality
    have rationalEquality : (index.val : ℚ) = (half : ℚ) := by
      linarith
    exact_mod_cast rationalEquality
  · rintro rfl
    dsimp [oddCenterIndex]
    push_cast
    ring


/-- On a positive even grid, the normalized center is an internal boundary
and therefore is not any cell's barycenter. -/
theorem even_center_axisOriginMatches_false (half : Nat)
    (index : Fin (2 * (half + 1))) :
    ¬ AxisOriginMatches (2 * (half + 1)) center index := by
  unfold AxisOriginMatches center
  intro equality
  push_cast at equality
  ring_nf at equality
  have naturalEquality : 2 * index.val + 1 = 2 * (half + 1) := by
    apply Nat.cast_injective (R := ℚ)
    push_cast
    linarith
  omega


end BitMatrix.Geometry.CarrierGrid

end GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.RationalClosedCarrierGrid.Variant114b3a405a97d561
```
