/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.StructuredSchurCompactReplay

/-!
# Fused row checks for compact structured Schur replay

A row traversal carries its reconstructed state and the Boolean result of
its checks. Each surviving cell uses one rounded transition, both to test
the supplied caps and to obtain the next state. Generator coordinates are
materialized into finite vectors so a new row does not store a chain of
generator update functions. A row at its own pivot checks anchor equality.

The fused result implies the existing compact block checks. The returned
state of a surviving row is its exact endpoint for checkpoint linkage.
Kernel throughput on a large instance and literal source inclusion remain
separate obligations. Independent mathematical review is pending.
-/

set_option autoImplicit false

namespace GRWTSK.Algebra.LinearAlgebra.StructuredSchurCompactReplay

open StructuredSchurIntegerReplay StructuredSchurNearestEven

variable {r N : ℕ}

private def materialize (row : GridRow r) : GridRow r :=
  let v := Vector.ofFn row.v
  let u := Vector.ofFn row.u
  ⟨row.diag, fun i => v[i.val], fun i => u[i.val]⟩

private theorem materialize_eq (row : GridRow r) : materialize row = row := by
  cases row
  simp [materialize]

/-- The cap checks on a transition result already computed by the traversal. -/
private def TransitionCaps (delta : ℤ) (pivot row : GridRow r)
    (result : ℤ × GridRow r) (e : StepPrices r) : Prop :=
  let (c, next) := result
  |c| ≤ (e.colMag : ℤ) ∧
  |rawNumerator row.v row.u pivot.v pivot.u - delta * displacementFactor * c| ≤ (e.colErr : ℤ) ∧
  (e.diagRadius ≠ 0 ∨ c^2 + pivot.diag * columnFactor^2 * (next.diag - row.diag) = 0) ∧
  ∀ l,
    (e.vRadius l ≠ 0 ∨ c * pivot.v l + pivot.diag * columnFactor * (next.v l - row.v l) = 0) ∧
    (e.uRadius l ≠ 0 ∨ c * pivot.u l + pivot.diag * columnFactor * (next.u l - row.u l) = 0) ∧
    |next.v l| ≤ (e.maxV l : ℤ) ∧ |next.u l| ≤ (e.maxU l : ℤ)

private instance (delta : ℤ) (pivot row : GridRow r) (result : ℤ × GridRow r)
    (e : StepPrices r) : Decidable (TransitionCaps delta pivot row result e) := by
  cases result
  unfold TransitionCaps
  infer_instance

private def Tape.fusedCell (tape : Tape r N) (p i : Fin N) (row : GridRow r) :
    Bool × GridRow r :=
  if p < i then
    let delta := tape.node i - tape.node p
    let result := rowTransition delta (tape.anchor p) row
    let next := materialize result.2
    (decide (TransitionCaps delta (tape.anchor p) row (result.1, next) (tape.caps p)), next)
  else if p = i then
    (decide (AnchorMatches row (tape.anchor p)), row)
  else (true, row)

private theorem Tape.fusedCell_state (tape : Tape r N) (p i : Fin N) (row : GridRow r)
    (h : p < i) :
    (tape.fusedCell p i row).2 = (rowTransition (tape.node i - tape.node p)
      (tape.anchor p) row).2 := by
  simp only [Tape.fusedCell, ite_eq_left h, materialize_eq]

private theorem Tape.fusedCell_sound (tape : Tape r N) (p i : Fin N) (row : GridRow r)
    (h : (tape.fusedCell p i row).1 = true) :
    (p = i → AnchorMatches row (tape.anchor p)) ∧
    (p < i → RowCaps (tape.node i - tape.node p) (tape.anchor p) row (tape.caps p)) := by
  constructor
  · intro heq
    subst i
    simpa only [Tape.fusedCell, lt_irrefl, ite_false, ite_true, decide_eq_true_eq] using h
  · intro hlt
    have hr : TransitionCaps (tape.node i - tape.node p) (tape.anchor p) row
        (rowTransition (tape.node i - tape.node p) (tape.anchor p) row) (tape.caps p) := by
      simpa only [Tape.fusedCell, ite_eq_left hlt, materialize_eq, Prod.eta, decide_eq_true_eq] using h
    exact hr

/-- Traverse one row of a block with one carried state. The row is frozen at
its own pivot, so the returned endpoint is used only for surviving rows. -/
def Tape.fusedRow (tape : Tape r N) (start : ℕ) (checkpoint : Fin N → GridRow r)
    (i : Fin N) : ℕ → Bool × GridRow r
  | 0 => (true, materialize (checkpoint i))
  | k+1 =>
      let old := tape.fusedRow start checkpoint i k
      if h : start+k < N then
        let cell := tape.fusedCell ⟨start+k, h⟩ i old.2
        (old.1 && cell.1, cell.2)
      else (false, old.2)

/-- On a surviving row, the fused state is the exact checkpoint state. -/
theorem Tape.fusedRow_end_state (tape : Tape r N) (start : ℕ)
    (checkpoint : Fin N → GridRow r) (i : Fin N) (k : ℕ)
    (h : start+k ≤ i.val) :
    (tape.fusedRow start checkpoint i k).2 = tape.rowAt start checkpoint k i := by
  induction k with
  | zero => exact materialize_eq (checkpoint i)
  | succ k ih =>
      have hn : start+k < N := by have := i.isLt; omega
      have hi : (⟨start+k, hn⟩ : Fin N) < i := by change start+k < i.val; omega
      simp only [Tape.fusedRow, dite_eq_left hn, tape.fusedCell_state _ _ _ hi,
        ih (by omega), tape.rowAt_succ start checkpoint k i hn]

/-- The fused Boolean result pays every relevant cap and anchor comparison
within the row's replay interval. -/
theorem Tape.fusedRow_sound (tape : Tape r N) (start : ℕ)
    (checkpoint : Fin N → GridRow r) (i : Fin N) (length : ℕ)
    (hLength : start+length ≤ N)
    (hPass : (tape.fusedRow start checkpoint i length).1 = true) :
    ∀ k : Fin length,
      let p : Fin N := ⟨start+k.val, by omega⟩
      (p = i → AnchorMatches (tape.rowAt start checkpoint k.val i) (tape.anchor p)) ∧
      (p < i → RowCaps (tape.node i - tape.node p) (tape.anchor p)
        (tape.rowAt start checkpoint k.val i) (tape.caps p)) := by
  induction length with
  | zero => intro k; exact Fin.elim0 k
  | succ length ih =>
      have hn : start+length < N := by omega
      let p : Fin N := ⟨start+length, hn⟩
      let old := tape.fusedRow start checkpoint i length
      have hBoth : (old.1 && (tape.fusedCell p i old.2).1) = true := by
        simpa only [Tape.fusedRow, dite_eq_left hn] using hPass
      obtain ⟨hPrev, hCell⟩ := Bool.and_eq_true_iff.mp hBoth
      intro k
      by_cases hk : k.val < length
      · exact ih (by omega) hPrev ⟨k.val, hk⟩
      · have he : k.val = length := by have := k.isLt; omega
        have he' : k = (⟨length, Nat.lt_succ_self length⟩ : Fin (length+1)) := Fin.ext he
        rw [he']
        have hc := tape.fusedCell_sound p i old.2 hCell
        change (p = i → AnchorMatches (tape.rowAt start checkpoint length i) (tape.anchor p)) ∧
          (p < i → RowCaps (tape.node i - tape.node p) (tape.anchor p)
            (tape.rowAt start checkpoint length i) (tape.caps p))
        constructor
        · intro h
          have hle : start+length ≤ i.val := by subst i; exact le_rfl
          rw [← tape.fusedRow_end_state start checkpoint i length hle]
          exact hc.1 h
        · intro h
          have hle : start+length ≤ i.val := h.le
          rw [← tape.fusedRow_end_state start checkpoint i length hle]
          exact hc.2 h

/-- Fused block replay separates the shared pivot checks from independent
surviving row traversals. Each row stops at its pivot or at the block end. -/
def Tape.FusedBlockChecks (tape : Tape r N) (start : ℕ)
    (checkpoint : Fin N → GridRow r) (length : ℕ) (h : start+length ≤ N) : Prop :=
  (∀ k : Fin length,
    let p : Fin N := ⟨start+k.val, by omega⟩
    PivotCaps (tape.anchor p) (tape.caps p)) ∧
  ∀ i : Fin N, start ≤ i.val →
    (tape.fusedRow start checkpoint i (min length (i.val+1-start))).1 = true

instance (tape : Tape r N) (start : ℕ) (checkpoint : Fin N → GridRow r)
    (length : ℕ) (h : start+length ≤ N) :
    Decidable (tape.FusedBlockChecks start checkpoint length h) := by
  unfold Tape.FusedBlockChecks
  infer_instance

/-- Fused checking discharges the compact block predicate used by the
existing exact Schur replay theorem. -/
theorem Tape.fusedBlock_sound (tape : Tape r N) (start : ℕ)
    (checkpoint : Fin N → GridRow r) (length : ℕ) (h : start+length ≤ N)
    (hChecked : tape.FusedBlockChecks start checkpoint length h) :
    tape.BlockCaps start checkpoint length h := by
  intro k
  let p : Fin N := ⟨start+k.val, by omega⟩
  have row_sound (i : Fin N) (hi : p ≤ i) :
      (p = i → AnchorMatches (tape.rowAt start checkpoint k.val i) (tape.anchor p)) ∧
      (p < i → RowCaps (tape.node i - tape.node p) (tape.anchor p)
        (tape.rowAt start checkpoint k.val i) (tape.caps p)) := by
    have hi' : start+k.val ≤ i.val := hi
    have hLen : start+min length (i.val+1-start) ≤ N := by
      have := Nat.min_le_left length (i.val+1-start)
      omega
    have hk : k.val < min length (i.val+1-start) := Nat.lt_min.2 ⟨k.isLt, by omega⟩
    exact tape.fusedRow_sound start checkpoint i _ hLen (hChecked.2 i (by omega)) ⟨k.val, hk⟩
  exact ⟨(row_sound p le_rfl).1 rfl, hChecked.1 k, fun i hi => (row_sound i hi.le).2 hi⟩

end GRWTSK.Algebra.LinearAlgebra.StructuredSchurCompactReplay
