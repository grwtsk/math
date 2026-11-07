/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.StructuredSchurCompactReplay

/-!
# Exact suffix restriction for compact Schur replay

A checkpoint identifies the active suffix of the tape. Restricting the
nodes, anchors, prices, and checkpoint to that suffix preserves every
rounded row transition and every checked block predicate. This lets a
finite replay use local indices while returning its result at the
original tape position.

An independently supplied archive slice still has to agree exactly
with the suffix data and checkpoint. Independent mathematical review
is pending.
-/

set_option autoImplicit false

namespace GRWTSK.Algebra.LinearAlgebra.StructuredSchurCompactReplay

variable {r N : ℕ}

/-- Embed the active suffix indices into the full tape. -/
def suffixEmbedding (start n : ℕ) (h : start+n = N) (i : Fin n) : Fin N :=
  ⟨start+i.val, by omega⟩

/-- Use local indices for a tape's active suffix. -/
def Tape.restrictSuffix (tape : Tape r N) (start n : ℕ) (h : start+n = N) : Tape r n :=
  ⟨tape.node ∘ suffixEmbedding start n h,
   tape.anchor ∘ suffixEmbedding start n h,
   tape.caps ∘ suffixEmbedding start n h⟩

/-- Local suffix replay has the same row state as replay at the original
tape offset. -/
theorem Tape.restrictSuffix_rowAt (tape : Tape r N) (start n : ℕ) (h : start+n = N)
    (checkpoint : Fin N → StructuredSchurNearestEven.GridRow r) (k : ℕ) (i : Fin n) :
    (tape.restrictSuffix start n h).rowAt 0 (checkpoint ∘ suffixEmbedding start n h) k i =
      tape.rowAt start checkpoint k (suffixEmbedding start n h i) := by
  induction k with
  | zero => rfl
  | succ k ih =>
      by_cases hk : k < n
      · have hl : 0+k < n := by omega
        have hg : start+k < N := by omega
        have hp : suffixEmbedding start n h ⟨0+k, hl⟩ = ⟨start+k, hg⟩ := by
          apply Fin.ext
          simp [suffixEmbedding]
        rw [(tape.restrictSuffix start n h).rowAt_succ 0 _ k i hl,
          tape.rowAt_succ start checkpoint k (suffixEmbedding start n h i) hg]
        rw [ih]
        simp only [Tape.restrictSuffix, Function.comp_apply, hp]
      · have hl : ¬ 0+k < n := by omega
        have hg : ¬ start+k < N := by omega
        simp only [Tape.rowAt, dite_eq_right hl, dite_eq_right hg, ih]

/-- A block checked on the active suffix gives the same checked block on
the full tape. -/
theorem Tape.blockCaps_of_restrictSuffix (tape : Tape r N) (start n : ℕ) (h : start+n = N)
    (checkpoint : Fin N → StructuredSchurNearestEven.GridRow r) (length : ℕ) (hLen : length ≤ n)
    (hLocal : (tape.restrictSuffix start n h).BlockCaps 0
      (checkpoint ∘ suffixEmbedding start n h) length (by omega)) :
    tape.BlockCaps start checkpoint length (by omega) := by
  intro k
  let localTape := tape.restrictSuffix start n h
  let emb := suffixEmbedding start n h
  let q : Fin n := ⟨k.val, by have := k.isLt; omega⟩
  let p : Fin N := emb q
  have hCaps : localTape.PivotRows q (localTape.rowAt 0 (checkpoint ∘ emb) k.val) := by
    simpa only [Nat.zero_add] using hLocal k
  change tape.PivotRows p (tape.rowAt start checkpoint k.val)
  refine ⟨?_, hCaps.2.1, ?_⟩
  · have ha := hCaps.1
    change AnchorMatches ((tape.restrictSuffix start n h).rowAt 0
      (checkpoint ∘ suffixEmbedding start n h) k.val q) (tape.anchor p) at ha
    rw [tape.restrictSuffix_rowAt] at ha
    exact ha
  · intro i hi
    have hiVal : start+k.val < i.val := hi
    let j : Fin n := ⟨i.val-start, by have := i.isLt; omega⟩
    have hj : q < j := by change k.val < i.val-start; omega
    have hjEq : suffixEmbedding start n h j = i := by
      apply Fin.ext
      change start+(i.val-start) = i.val
      omega
    have hr := hCaps.2.2 j hj
    change RowCaps (tape.node (suffixEmbedding start n h j) - tape.node p) (tape.anchor p)
      ((tape.restrictSuffix start n h).rowAt 0 (checkpoint ∘ suffixEmbedding start n h) k.val j)
      (tape.caps p) at hr
    rw [tape.restrictSuffix_rowAt, hjEq] at hr
    exact hr

end GRWTSK.Algebra.LinearAlgebra.StructuredSchurCompactReplay
