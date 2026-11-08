/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors

Source base: grwtsk/math@c779a67fa824da8f9b75384f7d61c46baeb2ce1f.
Canonical workflow source: grwtsk/noeaaeue@
e790dbb75fab307c1c6c94db26ee44ceddf8a7cf.
Conditional finite checkpoint-splice adapter; formal assurance is tracked in
grwtsk/noeaaeue docs/verification.md with exact source and replay receipts.
Independent analytical review and novelty assessment remain pending.
-/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.StructuredSchurCheckpointSplice
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoPackedTwoPivotCertificate
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoPackedTwoPivotSource

/-!
# Splice the checked radius-two two-pivot block into its full recurrence

The current radius-two archive contains a checked two-pivot block at offsets
398336 and 398337, together with all 1598 surviving endpoint rows and the full
canonical price bound `39/1000`.  The preceding recurrence is still open.  This
module states the exact port that a future prefix must meet and proves that such
a prefix advances through both checked pivots without changing carriers.

The common object is the original archived checkpoint, not merely a local array
with the same length.  `checkpoint_active_original` identifies all 1600 active
rows with `RadiusTwoNextPredecessorData.initial`; the analogous endpoint theorem
returns every survivor to `PackedFullTwoSource.expectedGrid`.  The generic
checkpoint-splice theorem then composes the prefix, the two checked pivots, and
any separately checked continuation.

This is an exact finite recurrence improvement.  It does not construct the
398336-pivot prefix, the remaining 1598 pivots, the literal seed/source
comparison, the paid finite-head sign, the physical `1/5` high floor, any
cofinal family, RH, or Dirichlet GRH.  The native checkpoint aliases and the
checked block share archived data and are not independent analytic proofs.
Changing one active checkpoint row invalidates the splice.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoPackedTwoPivotSplice

open GRWTSK.Algebra.LinearAlgebra
open StructuredSchurNearestEven StructuredSchurCompactReplay
open StructuredSchurIntegerReplay
open RadiusTwoPackedTwoPivotCertificate
open scoped BigOperators

/-- The canonical geometric-cap tape on which the complete `39/1000` price is
proved. -/
abbrev paidTape : Tape 2 399936 :=
  CanonicalRadiusTwoBudgetWhole.tape.withGeometricCaps (400000 ^ 2)

/-- The original full-tape index of one row in the active 1600-row suffix. -/
abbrev activeIndex (i : Fin 1600) : Fin 399936 :=
  suffixEmbedding 398336 1600 (by decide) i

/-- The local initial checkpoint is exactly the original archived checkpoint on
every active row, including both rows that will be eliminated. -/
theorem checkpoint_active_original (i : Fin 1600) :
    checkpoint (activeIndex i) = RadiusTwoNextPredecessorData.initial i := by
  change liftCheckpoint PackedTwoCanonicalData.initial
      (suffixEmbedding 398336 1600 (by decide) i) =
    RadiusTwoNextPredecessorData.initial i
  exact (liftCheckpoint_restrict PackedTwoCanonicalData.initial i).trans
    (archivedInitial i)

/-- Every stored survivor endpoint is the original five-coordinate endpoint. -/
theorem nextCheckpoint_active_original (i : Fin 1600) :
    nextCheckpoint (activeIndex i) = PackedFullTwoSource.expectedGrid i := by
  change liftCheckpoint PackedTwoCanonicalData.expected
      (suffixEmbedding 398336 1600 (by decide) i) =
    PackedFullTwoSource.expectedGrid i
  exact (liftCheckpoint_restrict PackedTwoCanonicalData.expected i).trans
    (archivedEndpoint i)

/-- Convert a prefix endpoint stated in the original archived coordinates into
the exact full-tape checkpoint consumed by the checked two-pivot block. -/
theorem prefixEndpoint_to_checkpoint
    (seed : Fin 399936 → GridRow 2)
    (hEndpoint : ∀ i : Fin 1600,
      paidTape.rowAt 0 seed 398336 (activeIndex i) =
        RadiusTwoNextPredecessorData.initial i) :
    ∀ i : Fin 399936, 398336 ≤ i.val →
      paidTape.rowAt 0 seed 398336 i = checkpoint i := by
  intro i hi
  let j : Fin 1600 := ⟨i.val - 398336, by have := i.isLt; omega⟩
  have hIndex : activeIndex j = i := by
    apply Fin.ext
    change 398336 + (i.val - 398336) = i.val
    omega
  rw [← hIndex]
  exact (hEndpoint j).trans (checkpoint_active_original j).symm

/-- A source-matched checked prefix advances through the two certified pivots
and returns every surviving full-tape row to `nextCheckpoint`. -/
theorem checkedPrefixAndTwoPivot
    (seed : Fin 399936 → GridRow 2)
    (hPrefix : paidTape.BlockCaps 0 seed 398336 (by decide))
    (hEndpoint : ∀ i : Fin 1600,
      paidTape.rowAt 0 seed 398336 (activeIndex i) =
        RadiusTwoNextPredecessorData.initial i) :
    paidTape.BlockCaps 0 seed 398338 (by decide) ∧
      ∀ i : Fin 399936, 398338 ≤ i.val →
        paidTape.rowAt 0 seed 398338 i = nextCheckpoint i :=
  paidTape.blockCaps_checkpoint_splice 0 seed 398336 2 (by decide)
    checkpoint nextCheckpoint (prefixEndpoint_to_checkpoint seed hEndpoint)
    hPrefix checkedBlock

/-- The same splice stated in the original local endpoint coordinates. -/
theorem checkedPrefixAndTwoPivot_originalEndpoint
    (seed : Fin 399936 → GridRow 2)
    (hPrefix : paidTape.BlockCaps 0 seed 398336 (by decide))
    (hEndpoint : ∀ i : Fin 1600,
      paidTape.rowAt 0 seed 398336 (activeIndex i) =
        RadiusTwoNextPredecessorData.initial i) :
    paidTape.BlockCaps 0 seed 398338 (by decide) ∧
      ∀ i : Fin 1600, 2 ≤ i.val →
        paidTape.rowAt 0 seed 398338 (activeIndex i) =
          PackedFullTwoSource.expectedGrid i := by
  have h := checkedPrefixAndTwoPivot seed hPrefix hEndpoint
  refine ⟨h.1, ?_⟩
  intro i hi
  have hrow := h.2 (activeIndex i) (by
    change 398338 ≤ 398336 + i.val
    omega)
  exact hrow.trans (nextCheckpoint_active_original i)

/-- Any separately checked continuation can be appended after the two-pivot
endpoint.  No surviving row is synthesized or assigned a default value. -/
theorem checkedPrefixTwoPivotAndSuffix
    (seed : Fin 399936 → GridRow 2)
    (hPrefix : paidTape.BlockCaps 0 seed 398336 (by decide))
    (hEndpoint : ∀ i : Fin 1600,
      paidTape.rowAt 0 seed 398336 (activeIndex i) =
        RadiusTwoNextPredecessorData.initial i)
    (m : ℕ) (hm : 398338 + m ≤ 399936)
    (hSuffix : paidTape.BlockCaps 398338 nextCheckpoint m hm) :
    paidTape.BlockCaps 0 seed (398338 + m) (by omega) := by
  have h := checkedPrefixAndTwoPivot seed hPrefix hEndpoint
  exact paidTape.blockCaps_add 0 seed 398338 m (by omega)
    nextCheckpoint h.2 h.1 hSuffix

/-- The splice and the already proved complete canonical price refer to the same
tape.  The price bound does not establish the missing prefix or source sign. -/
theorem checkedPrefixTwoPivotAndPrice
    (seed : Fin 399936 → GridRow 2)
    (hPrefix : paidTape.BlockCaps 0 seed 398336 (by decide))
    (hEndpoint : ∀ i : Fin 1600,
      paidTape.rowAt 0 seed 398336 (activeIndex i) =
        RadiusTwoNextPredecessorData.initial i) :
    paidTape.BlockCaps 0 seed 398338 (by decide) ∧
      (∑ i, price (paidTape.caps i)) ≤ (39 / 1000 : ℝ) :=
  ⟨(checkedPrefixAndTwoPivot seed hPrefix hEndpoint).1,
    checkedBlockAndPrice.2⟩

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoPackedTwoPivotSplice
