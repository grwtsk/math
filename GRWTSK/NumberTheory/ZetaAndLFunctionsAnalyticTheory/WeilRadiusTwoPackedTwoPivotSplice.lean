/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.

Source base: grwtsk/math@aaa9172c9e5c6630a50fed3301a3eb2c2b07677a.
Canonical workflow source: grwtsk/noeaaeue@
b8136c36f7e0466381ad5ca2f4ad32c98bae9af1.
SOURCE_PROOF_CANDIDATE / LEAN_COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN.
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
returns every survivor to `PackedFullTwoSource.expectedGrid`.  The imported
checkpoint theorem then composes the prefix, the two checked pivots, and any
separately checked continuation.

The specialized full-length consumer below shows exactly what remains for the
finite recurrence: a checked prefix through offset 398336 with the stated
checkpoint return, and a checked 1598-pivot suffix from `nextCheckpoint`.
Together with the already checked middle block they cover all 399936 pivots and
retain the same complete price bound.  Neither missing block is constructed
here.

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
  paidTape.blockCaps_checkpoint_add_explicitLink 0 seed 398336 2 (by decide)
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

/-- Exact full finite recurrence consumer.

A checked 398336-pivot prefix with the original archived endpoint and a checked
1598-pivot suffix from the transported endpoint cover all 399936 pivots. -/
theorem checkedFullRecurrence
    (seed : Fin 399936 → GridRow 2)
    (hPrefix : paidTape.BlockCaps 0 seed 398336 (by decide))
    (hEndpoint : ∀ i : Fin 1600,
      paidTape.rowAt 0 seed 398336 (activeIndex i) =
        RadiusTwoNextPredecessorData.initial i)
    (hSuffix : paidTape.BlockCaps 398338 nextCheckpoint 1598 (by decide)) :
    paidTape.BlockCaps 0 seed 399936 (by decide) := by
  simpa only [show 398338 + 1598 = 399936 by norm_num] using
    (checkedPrefixTwoPivotAndSuffix seed hPrefix hEndpoint
      1598 (by decide) hSuffix)

/-- The complete recurrence and the canonical price use exactly the same tape.

This remains a conditional finite result: the prefix, suffix, literal source
comparison, and final paid sign are not supplied here. -/
theorem checkedFullRecurrenceAndPrice
    (seed : Fin 399936 → GridRow 2)
    (hPrefix : paidTape.BlockCaps 0 seed 398336 (by decide))
    (hEndpoint : ∀ i : Fin 1600,
      paidTape.rowAt 0 seed 398336 (activeIndex i) =
        RadiusTwoNextPredecessorData.initial i)
    (hSuffix : paidTape.BlockCaps 398338 nextCheckpoint 1598 (by decide)) :
    paidTape.BlockCaps 0 seed 399936 (by decide) ∧
      (∑ i, price (paidTape.caps i)) ≤ (39 / 1000 : ℝ) :=
  ⟨checkedFullRecurrence seed hPrefix hEndpoint hSuffix,
    checkedBlockAndPrice.2⟩

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
