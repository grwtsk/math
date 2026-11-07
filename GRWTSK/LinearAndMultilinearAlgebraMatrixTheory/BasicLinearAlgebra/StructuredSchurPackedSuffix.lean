/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.StructuredSchurPackedArchive
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.StructuredSchurGeometricCheckpoint
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.StructuredSchurSuffixReplay

/-!
# Packed archive suffixes and Schur checkpoint transport

The right subtree of a joined archive starts at the length of its left
subtree. Each record equality then identifies both the decoded anchor
and the caps used by the geometric price. Restricting the geometric
caps uses the same squared node and upper node on both tapes.

Every survivor at the original offset has a unique suffix index obtained
by subtracting the offset. Applying the row-state restriction identity
at that index transports the endpoint equality along with the block caps.
The concrete archive comparison and the local recurrence checks remain
inputs. This is finite exact transport. Independent mathematical review
is pending.
-/

set_option autoImplicit false

namespace GRWTSK.Algebra.LinearAlgebra.StructuredSchurCompactReplay

open StructuredSchurNearestEven

variable {r N : ℕ}

/-- The same geometric cap is computed before and after taking an active suffix. -/
theorem Tape.restrictSuffix_withGeometricCaps (tape : Tape r N) (upper : ℤ)
    (start n : ℕ) (h : start + n = N) :
    (tape.withGeometricCaps upper).restrictSuffix start n h =
      (tape.restrictSuffix start n h).withGeometricCaps upper :=
  rfl

/-- A checked active suffix supplies the full block and all survivor equalities. -/
theorem Tape.blockCaps_checkpoint_of_restrictSuffix (tape : Tape r N)
    (start n : ℕ) (h : start + n = N) (checkpoint next : Fin N → GridRow r)
    (length : ℕ) (hLen : length ≤ n)
    (checked : (tape.restrictSuffix start n h).BlockCaps 0
        (checkpoint ∘ suffixEmbedding start n h) length (by omega) ∧
      ∀ i : Fin n, length ≤ i.val →
        (tape.restrictSuffix start n h).rowAt 0 (checkpoint ∘ suffixEmbedding start n h)
          length i = next (suffixEmbedding start n h i)) :
    tape.BlockCaps start checkpoint length (by omega) ∧
      ∀ i : Fin N, start + length ≤ i.val →
        tape.rowAt start checkpoint length i = next i := by
  refine ⟨tape.blockCaps_of_restrictSuffix start n h checkpoint length hLen checked.1, ?_⟩
  intro i hi
  let j : Fin n := ⟨i.val - start, by have := i.isLt; omega⟩
  have hj : length ≤ j.val := by change length ≤ i.val - start; omega
  have hIndex : suffixEmbedding start n h j = i := by
    apply Fin.ext
    change start + (i.val - start) = i.val
    omega
  have hNext := checked.2 j hj
  rw [tape.restrictSuffix_rowAt, hIndex] at hNext
  exact hNext

namespace PackedRadixFold

/-- Reading past the left range reads the corresponding right subtree record. -/
theorem Archive.record_join_right {offset lo hi : ℕ}
    (left : Archive offset lo) (right : Archive (offset + lo) hi) (i : ℕ) :
    (Archive.join left right).record (lo + i) = right.record i := by
  rw [Archive.record, ite_eq_right (by omega), Nat.add_sub_cancel_left]

/-- Exact suffix words bind both projections of a locally decoded recurrence tape. -/
theorem Archive.restrictSuffix_tape_of_records (archive : Archive 0 N) (node : Fin N → ℤ)
    (start n : ℕ) (h : start + n = N) (localTape : Tape 2 n) (record : Fin n → ℕ)
    (hWords : ∀ i, archive.record (start + i.val) = record i)
    (hNodes : ∀ i, node (suffixEmbedding start n h i) = localTape.node i)
    (hAnchors : ∀ i, PackedWords.row (record i) = localTape.anchor i)
    (hCaps : ∀ i, PackedWords.caps (record i) = localTape.caps i) :
    (archive.tape node).restrictSuffix start n h = localTape := by
  unfold Tape.restrictSuffix Archive.tape
  cases localTape
  congr 1
  · exact funext hNodes
  · exact funext fun i => (congrArg PackedWords.row (hWords i)).trans (hAnchors i)
  · exact funext fun i => (congrArg PackedWords.caps (hWords i)).trans (hCaps i)

end PackedRadixFold

end GRWTSK.Algebra.LinearAlgebra.StructuredSchurCompactReplay
