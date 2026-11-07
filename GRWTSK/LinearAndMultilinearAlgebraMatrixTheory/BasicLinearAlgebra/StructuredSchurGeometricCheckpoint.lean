/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.StructuredSchurGeometricReplay

/-!
# Composable checkpoint checks for geometric Schur replay

A row traversal returns its magnitude checks and surviving state.
Compare that state with the next checkpoint in the same row check.
A row eliminated within the block instead checks its own pivot anchor.
All row results and shared pivot caps supply the compact block and
pointwise linkage on exactly the surviving rows.

Adjacent checked blocks combine through their common checkpoint.
The proof leaves the source data, exact replay of each row, and price
budget explicit. Independent mathematical review is pending.
-/

set_option autoImplicit false

namespace GRWTSK.Algebra.LinearAlgebra.StructuredSchurCompactReplay

open StructuredSchurNearestEven

variable {r N : ℕ}

/-- Check a row's magnitudes and its endpoint when the row survives. -/
def Tape.magnitudeRowCheckpoint (tape : Tape r N) (start : ℕ)
    (checkpoint next : Fin N → GridRow r) (length : ℕ) (i : Fin N) : Bool :=
  let result := tape.magnitudeRow start checkpoint i (min length (i.val+1-start))
  result.1 && if start+length ≤ i.val then decide (AnchorMatches result.2 (next i)) else true

/-- Checked rows supply both the compact block and its exact surviving
checkpoint coordinates. -/
theorem Tape.magnitudeBlock_checkpoint_sound (tape : Tape r N) (upperNode : ℤ)
    (start : ℕ) (checkpoint next : Fin N → GridRow r) (length : ℕ)
    (hLength : start+length ≤ N) (hNodes : StrictMono tape.node)
    (hUpper : ∀ i, tape.node i ≤ upperNode)
    (hPivot : ∀ k : Fin length, let p : Fin N := ⟨start+k.val, by omega⟩
      PivotCaps (tape.anchor p) (tape.caps p))
    (hRows : ∀ i : Fin N, start ≤ i.val →
      tape.magnitudeRowCheckpoint start checkpoint next length i = true) :
    (tape.withGeometricCaps upperNode).BlockCaps start checkpoint length hLength ∧
      ∀ i : Fin N, start+length ≤ i.val →
        (tape.withGeometricCaps upperNode).rowAt start checkpoint length i = next i := by
  constructor
  · exact tape.magnitudeBlock_sound upperNode start checkpoint length hLength hNodes hUpper hPivot
      (fun i hi => (Bool.and_eq_true_iff.mp (hRows i hi)).1)
  · intro i hi
    have hPass := (Bool.and_eq_true_iff.mp (hRows i (by omega))).2
    have hMin : min length (i.val+1-start) = length := min_eq_left (by omega)
    have hMatch : AnchorMatches (tape.magnitudeRow start checkpoint i length).2 (next i) := by
      simpa only [ite_eq_left hi, hMin, decide_eq_true_eq] using hPass
    rw [tape.withGeometricCaps_rowAt upperNode, ← tape.magnitudeRow_end_state start checkpoint i length hi]
    exact hMatch.eq

private theorem Tape.rowAt_local (tape : Tape r N) (start : ℕ)
    (left right : Fin N → GridRow r) (i : Fin N) (h : left i = right i) (k : ℕ) :
    tape.rowAt start left k i = tape.rowAt start right k i := by
  induction k with
  | zero => exact h
  | succ k ih => simp only [Tape.rowAt, ih]

/-- Adjacent checked blocks and their endpoint equalities compose. -/
theorem Tape.blockCaps_checkpoint_add (tape : Tape r N) (start : ℕ)
    (initial mid next : Fin N → GridRow r) (k m : ℕ) (hLength : start+(k+m) ≤ N)
    (first : tape.BlockCaps start initial k (by omega) ∧
      ∀ i : Fin N, start+k ≤ i.val → tape.rowAt start initial k i = mid i)
    (second : tape.BlockCaps (start+k) mid m (by omega) ∧
      ∀ i : Fin N, start+(k+m) ≤ i.val → tape.rowAt (start+k) mid m i = next i) :
    tape.BlockCaps start initial (k+m) hLength ∧
      ∀ i : Fin N, start+(k+m) ≤ i.val → tape.rowAt start initial (k+m) i = next i := by
  refine ⟨tape.blockCaps_add start initial k m hLength mid first.2 first.1 second.1, ?_⟩
  intro i hi
  rw [tape.rowAt_add start initial k m]
  exact (tape.rowAt_local (start+k) (tape.rowAt start initial k) mid i
    (first.2 i (by omega)) m).trans (second.2 i hi)

end GRWTSK.Algebra.LinearAlgebra.StructuredSchurCompactReplay
