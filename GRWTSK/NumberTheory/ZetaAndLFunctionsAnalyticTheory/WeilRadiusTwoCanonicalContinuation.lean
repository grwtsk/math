/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.

Source base: grwtsk/math@db3788d1fdb5039b0dcbc999ca958298062077ce.
Canonical workflow source: grwtsk/noeaaeue@
a9ae81cc4e1da49eaa19980a7e9dd02be67564e7.
SOURCE_PROOF_CANDIDATE / LEAN_ELABORATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoPackedTwoPivotCertificate
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoCanonicalFinalSuffix
import Mathlib.Tactic.NativeDecide

/-!
# The concrete 1022-pivot bridge to the canonical final suffix

## Exact source and consumer

The maintained radius-two tape already has two independently exposed exact
blocks:

* offsets `398336` and `398337`, starting from
  `RadiusTwoPackedTwoPivotCertificate.checkpoint` and returning every surviving
  row to `nextCheckpoint` at offset `398338`;
* the final 576 pivots at offsets `399360` through `399935`, starting from
  `CanonicalCheckedSuffix.checkpoint`.

The literal gap between these blocks is therefore the finite interval

`398338 <= offset < 399360`,

of length 1022.  This module asks the native decision procedure to check the
actual `Tape.BlockCaps` proposition on that interval, beginning with the exact
`nextCheckpoint`.  It separately checks every one of the 576 surviving rows
against the already archived final-suffix checkpoint.  No prefix, suffix,
high-floor, or analytic sign proposition is supplied as a field or theorem
argument.

The two closed decisions compose with the already checked final block and then
with the two-pivot block.  The resulting theorem checks the complete last 1600
pivots of the same canonical 399936-pivot tape and carries its existing total
price bound `39/1000`.

## Mathematical mechanism and boundary

This is exact finite integer recurrence replay.  `Tape.BlockCaps` checks every
pivot anchor, positive pivot and compact error cap, and every still-active row;
the endpoint decision compares all signed five-coordinate rows.  The bridge
uses the stored canonical nodes, anchors and caps without replacing them by
hashes, floating approximations, or a newly named matrix.

The calculation shares the canonical tape and archived checkpoints with the
adjacent certificates, so it is not an independent analytical proof of the
literal Weil source comparison.  It does not prove the preceding 398336-pivot
recurrence from the source seed, the source-seed enclosure, the physical
`OddLiteralWindow.HighFloor 2 (-1 / 2) (1 / 5) 64`, `StageLower 1`, a cofinal
family, RH, or Dirichlet GRH.

The declarations below are source candidates until the exact current bytes are
elaborated, replayed by a fresh kernel, and axiom-audited.  In particular, the
presence of `native_decide` in source is not itself a claim that the computation
was run in this publication round.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoCanonicalContinuation

open GRWTSK.Algebra.LinearAlgebra
open StructuredSchurCompactReplay StructuredSchurIntegerReplay
open RadiusTwoPackedTwoPivotCertificate
open scoped BigOperators

/-- The exact canonical tape shared by the two-pivot certificate and the final
suffix certificate. -/
abbrev paidTape : Tape 2 399936 :=
  CanonicalRadiusTwoBudgetWhole.tape.withGeometricCaps (400000 ^ 2)

/-- Original global address of one row surviving at offset 399360. -/
abbrev finalIndex (i : Fin 576) : Fin 399936 :=
  suffixEmbedding 399360 576 (by decide) i

/-- Closed replay of every pivot and active row in the previously missing
1022-pivot interval.  There is no recurrence premise in this theorem. -/
theorem bridgeBlockCaps :
    paidTape.BlockCaps 398338 nextCheckpoint 1022 (by decide) := by
  native_decide

/-- Closed comparison of all 576 surviving bridge rows with the actual archived
checkpoint consumed by the checked final suffix. -/
theorem bridgeEndpointLocal :
    ∀ i : Fin 576,
      paidTape.rowAt 398338 nextCheckpoint 1022 (finalIndex i) =
        CanonicalCheckedSuffix.checkpoint (finalIndex i) := by
  native_decide

/-- The same endpoint comparison on the original full-tape carrier. -/
theorem bridgeEndpoint :
    ∀ i : Fin 399936, 399360 ≤ i.val →
      paidTape.rowAt 398338 nextCheckpoint 1022 i =
        CanonicalCheckedSuffix.checkpoint i := by
  intro i hi
  let j : Fin 576 := ⟨i.val - 399360, by have := i.isLt; omega⟩
  have hIndex : finalIndex j = i := by
    apply Fin.ext
    change 399360 + (i.val - 399360) = i.val
    omega
  rw [← hIndex]
  exact bridgeEndpointLocal j

/-- The bridge and the already checked final 576-pivot suffix form the complete
1598-pivot continuation from `nextCheckpoint` to the end of the tape. -/
theorem continuationBlockCaps :
    paidTape.BlockCaps 398338 nextCheckpoint 1598 (by decide) := by
  simpa only [show 1022 + 576 = 1598 by norm_num] using
    (paidTape.blockCaps_add 398338 nextCheckpoint 1022 576 (by decide)
      CanonicalCheckedSuffix.checkpoint
      (by
        simpa only [show 398338 + 1022 = 399360 by norm_num] using
          bridgeEndpoint)
      bridgeBlockCaps
      (by
        simpa only [paidTape, show 398338 + 1022 = 399360 by norm_num] using
          RadiusTwoCanonicalFinalSuffix.blockCaps))

/-- The existing two pivots followed by the new concrete continuation check all
last 1600 pivots from the original archived offset-398336 checkpoint. -/
theorem checkpointSuffixBlockCaps :
    paidTape.BlockCaps 398336 checkpoint 1600 (by decide) := by
  simpa only [show 2 + 1598 = 1600 by norm_num] using
    (paidTape.blockCaps_add 398336 checkpoint 2 1598 (by decide)
      nextCheckpoint
      (by
        simpa only [show 398336 + 2 = 398338 by norm_num] using
          checkedBlock.2)
      checkedBlock.1
      (by
        simpa only [show 398336 + 2 = 398338 by norm_num] using
          continuationBlockCaps))

/-- The complete checked 1600-pivot suffix and the canonical total price refer
to the same tape. -/
theorem checkpointSuffixAndPrice :
    paidTape.BlockCaps 398336 checkpoint 1600 (by decide) ∧
      (∑ i, price (paidTape.caps i)) ≤ (39 / 1000 : ℝ) :=
  ⟨checkpointSuffixBlockCaps, by
    simpa only [paidTape] using RadiusTwoCanonicalFinalSuffix.priceBound⟩

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoCanonicalContinuation
