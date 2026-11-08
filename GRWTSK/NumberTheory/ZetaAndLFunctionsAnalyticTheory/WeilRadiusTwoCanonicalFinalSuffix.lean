/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import CanonicalRootSuffixAttach

/-!
# The final 576 pivots on the canonical radius-two Schur tape

This fixed finite result records the checked block from offset 399360 through
399936, starting at `CanonicalCheckedSuffix.checkpoint`, and the complete price
bound on the same `CanonicalRadiusTwoBudgetWhole.tape`. Reading the right
subtree of the balanced archive gives exactly the 576 local record words.
Their decoded anchors and caps agree with the local recurrence tape; the
checked surviving checkpoint rows transport the local block to its global
addresses. The complete price uses all 399936 records of that same archive.
Taking the two projections of the source conjunction gives the results below.

The checkpoint at offset 399360 is an archived finite state. This module gives
no preceding 399360-pivot recurrence from the original seed to that state.
The full recurrence, literal source seed comparisons, and the actual `1/5`
high floor at `N = 64` remain open. A full-chain consumer must supply that
prefix and those source bridges; this suffix theorem does not supply them.
There is no cofinal-window, RH or Dirichlet-GRH conclusion here.

The source word comparison and the row-state transport are exact comparisons,
not independent proofs of positivity. This wrapper adds a maintained source
return for that fixed block, with no claim of mathematical novelty or completed
independent analytical review. The formal assurance of a checked target is
separate from replay of its imported closure or a latest-pin replay.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoCanonicalFinalSuffix

open GRWTSK.Algebra.LinearAlgebra.StructuredSchurCompactReplay
open GRWTSK.Algebra.LinearAlgebra.StructuredSchurIntegerReplay
open scoped BigOperators

/-- The actual canonical tape checks its final 576 pivots from the archived checkpoint. -/
theorem blockCaps :
    (CanonicalRadiusTwoBudgetWhole.tape.withGeometricCaps (400000^2)).BlockCaps
      399360 CanonicalCheckedSuffix.checkpoint 576 (by decide) :=
  CanonicalRootSuffixAttach.checkedSuffixAndPrice.1

/-- The full price bound belongs to the very same canonical tape as `blockCaps`. -/
theorem priceBound :
    (∑ i, price ((CanonicalRadiusTwoBudgetWhole.tape.withGeometricCaps (400000^2)).caps i))
      ≤ (39/1000 : ℝ) :=
  CanonicalRootSuffixAttach.checkedSuffixAndPrice.2

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoCanonicalFinalSuffix
