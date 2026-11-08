/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.StructuredSchurIntervalTransport
import PackedTwoCanonicalLocal
import PackedTwoCanonicalWords

/-!
# A two-pivot recurrence block on the canonical radius-two tape

The local checker verifies all 1600 initial rows, both eliminated anchors,
3197 rounded row updates and the 1598 surviving five-coordinate rows.
The two literal record words agree with the canonical archive at offsets
398336 and 398337. Reading the same words preserves every signed anchor
coordinate and every price-cap field. The squared nodes agree under the
suffix embedding, so finite-interval transport returns the checked block
and its entire endpoint to the tape whose complete price is at most 39/1000.

The initial checkpoint is the archived state at offset 398336. Its separate
source comparison checks all 1600 aliases against the original checkpoint;
it does not establish the preceding elimination chain. Inactive local
anchor/cap entries are irrelevant because only the two active pivots are
transported. The full recurrence, literal seed comparisons, the 1/5 high
floor, paid head sign and cofinal stages remain separate obligations.

This is finite exact certificate transport. The primary comparison is
literal word equality and coordinate-preserving row-state induction.
An offset change or corrupted active word invalidates that comparison.
The native checkpoint readback shares its input archive with the checker
and is not an independent analytic proof. Novelty and independent
mathematical review are not assessed. Candidate proof construction used
automated assistance; acceptance depends on source-bound kernel evidence.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoPackedTwoPivotCertificate

open GRWTSK.Algebra.LinearAlgebra
open StructuredSchurNearestEven StructuredSchurCompactReplay
open StructuredSchurIntegerReplay
open scoped BigOperators

/-- Embed the active checkpoint without asserting any earlier row state. -/
def liftCheckpoint (localCheckpoint : Fin 1600 → GridRow 2)
    (i : Fin 399936) : GridRow 2 :=
  if h : 398336 ≤ i.val then
    localCheckpoint ⟨i.val - 398336, by have := i.isLt; omega⟩
  else ⟨0, fun _ => 0, fun _ => 0⟩

theorem liftCheckpoint_restrict (localCheckpoint : Fin 1600 → GridRow 2)
    (i : Fin 1600) :
    liftCheckpoint localCheckpoint (suffixEmbedding 398336 1600 (by decide) i) =
      localCheckpoint i := by
  have hi : 398336 ≤ 398336 + i.val := by omega
  have hIndex : (⟨398336 + i.val - 398336, by have := i.isLt; omega⟩ : Fin 1600) = i := by
    apply Fin.ext
    exact Nat.add_sub_cancel_left 398336 i.val
  simp only [liftCheckpoint, suffixEmbedding, dite_eq_left hi, hIndex]

def checkpoint : Fin 399936 → GridRow 2 := liftCheckpoint PackedTwoCanonicalData.initial
def nextCheckpoint : Fin 399936 → GridRow 2 := liftCheckpoint PackedTwoCanonicalData.expected

/-- Both pivots and every survivor are checked on the actual canonical tape. -/
theorem checkedBlock :
    (CanonicalRadiusTwoBudgetWhole.tape.withGeometricCaps (400000^2)).BlockCaps
      398336 checkpoint 2 (by decide) ∧
    ∀ i : Fin 399936, 398338 ≤ i.val →
      (CanonicalRadiusTwoBudgetWhole.tape.withGeometricCaps (400000^2)).rowAt
        398336 checkpoint 2 i = nextCheckpoint i := by
  apply Tape.geometric_blockCaps_checkpoint_of_suffix_interval
    CanonicalRadiusTwoBudgetWhole.tape 398336 1600 (by decide)
    PackedTwoCanonicalData.before (400000^2)
    PackedTwoCanonicalData.initial PackedTwoCanonicalData.expected
    checkpoint nextCheckpoint 2 (by decide)
  · intro i
    change (398401 + (i.val : ℤ))^2 = (65 + ((398336 + i.val : ℕ) : ℤ))^2
    push_cast
    ring
  · intro k
    change PackedWords.row (PackedTwoCanonicalData.record k.val) =
      PackedWords.row (CanonicalRadiusTwoBudgetWhole.archive.record (398336 + k.val))
    exact congrArg PackedWords.row (PackedTwoCanonicalWords.words k).symm
  · intro k
    change PackedWords.caps (PackedTwoCanonicalData.record k.val) =
      PackedWords.caps (CanonicalRadiusTwoBudgetWhole.archive.record (398336 + k.val))
    exact congrArg PackedWords.caps (PackedTwoCanonicalWords.words k).symm
  · intro i
    exact (liftCheckpoint_restrict PackedTwoCanonicalData.initial i).symm
  · intro i _
    exact (liftCheckpoint_restrict PackedTwoCanonicalData.expected i).symm
  · exact PackedTwoCanonicalLocal.completeBlock

/-- The local recurrence and full price allowance refer to one canonical tape. -/
theorem checkedBlockAndPrice :
    (CanonicalRadiusTwoBudgetWhole.tape.withGeometricCaps (400000^2)).BlockCaps
      398336 checkpoint 2 (by decide) ∧
    (∑ i, price ((CanonicalRadiusTwoBudgetWhole.tape.withGeometricCaps (400000^2)).caps i)) ≤
      (39/1000 : ℝ) :=
  ⟨checkedBlock.1, CanonicalRadiusTwoBudgetWhole.paid⟩

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoPackedTwoPivotCertificate
