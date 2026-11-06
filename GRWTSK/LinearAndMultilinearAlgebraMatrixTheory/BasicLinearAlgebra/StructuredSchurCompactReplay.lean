/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.StructuredSchurNearestEven

/-!
# Compact nearest-even structured Schur replay

An ordered table supplies the pivot anchors and a price cap for each
pivot. A row is reconstructed by applying the anchors in order, with
the next contiguous block starting from the exact intermediate row.
The anchor at a pivot must equal the reconstructed pivot row.

Positive diagonal and generator radii are justified by the doubled
rounding error theorem. A zero radius requires an exact zero residual.
The column cap and updated generator magnitudes are checked separately.
These checks discharge the integer Schur step. Kernel replay of a
concrete table and its literal seed inclusion are separate obligations.
Independent mathematical review is pending.
-/

set_option autoImplicit false

namespace GRWTSK.Algebra.LinearAlgebra.StructuredSchurCompactReplay

open StructuredSchurIntegerReplay StructuredSchurNearestEven

variable {r N : ℕ}

/-- The pivot magnitude and multiplier checks that are shared by all rows. -/
def PivotCaps (pivot : GridRow r) (e : StepPrices r) : Prop :=
  0 < pivot.diag ∧ 1 ≤ e.colMul ∧
    2 * (e.colMag : ℤ) ≤ pivot.diag * columnFactor * (e.colMul : ℤ)

instance (pivot : GridRow r) (e : StepPrices r) : Decidable (PivotCaps pivot e) := by
  unfold PivotCaps
  infer_instance

/-- Caps still needed after the nearest-even error estimate. A zero rounded
update radius is admissible when its residual vanishes exactly. -/
def RowCaps (delta : ℤ) (pivot row : GridRow r) (e : StepPrices r) : Prop :=
  let (c, next) := rowTransition delta pivot row
  |c| ≤ (e.colMag : ℤ) ∧
  |rawNumerator row.v row.u pivot.v pivot.u - delta * displacementFactor * c| ≤ (e.colErr : ℤ) ∧
  (e.diagRadius ≠ 0 ∨ c^2 + pivot.diag * columnFactor^2 * (next.diag - row.diag) = 0) ∧
  ∀ l,
    (e.vRadius l ≠ 0 ∨ c * pivot.v l + pivot.diag * columnFactor * (next.v l - row.v l) = 0) ∧
    (e.uRadius l ≠ 0 ∨ c * pivot.u l + pivot.diag * columnFactor * (next.u l - row.u l) = 0) ∧
    |next.v l| ≤ (e.maxV l : ℤ) ∧ |next.u l| ≤ (e.maxU l : ℤ)

instance (delta : ℤ) (pivot row : GridRow r) (e : StepPrices r) :
    Decidable (RowCaps delta pivot row e) := by
  unfold RowCaps
  infer_instance

private theorem radius_bound {radius : ℕ} {den residual : ℤ} (hDen : 0 ≤ den)
    (hRound : 2 * |residual| ≤ den) (hRadius : radius ≠ 0 ∨ residual = 0) :
    2 * |residual| ≤ den * (radius : ℤ) := by
  rcases hRadius with h | h
  · have hOne : (1 : ℤ) ≤ (radius : ℤ) := by omega
    calc
      2 * |residual| ≤ den := hRound
      _ = den * 1 := by rw [mul_one]
      _ ≤ den * (radius : ℤ) := mul_le_mul_of_nonneg_left hOne hDen
  · rw [h, abs_zero, mul_zero]
    exact mul_nonneg hDen (Int.natCast_nonneg _)

/-- A tape contains the node data, raw anchor, and price for every pivot. -/
structure Tape (r N : ℕ) where
  node : Fin N → ℤ
  anchor : Fin N → GridRow r
  caps : Fin N → StepPrices r

/-- Replay the indicated number of pivots from a checkpoint. The block
theorems below use only times before the final pivot and surviving rows. -/
def Tape.rowAt (tape : Tape r N) (start : ℕ) (checkpoint : Fin N → GridRow r) :
    ℕ → Fin N → GridRow r
  | 0, i => checkpoint i
  | k+1, i =>
      let old := tape.rowAt start checkpoint k i
      if h : start+k < N then
        let p : Fin N := ⟨start+k, h⟩
        (rowTransition (tape.node i - tape.node p) (tape.anchor p) old).2
      else old

theorem Tape.rowAt_succ (tape : Tape r N) (start : ℕ) (checkpoint : Fin N → GridRow r)
    (k : ℕ) (i : Fin N) (hk : start+k < N) :
    tape.rowAt start checkpoint (k+1) i =
      (rowTransition (tape.node i - tape.node ⟨start+k, hk⟩) (tape.anchor ⟨start+k, hk⟩)
        (tape.rowAt start checkpoint k i)).2 := by
  simp only [Tape.rowAt, dite_eq_left hk]

/-- Consecutive replay blocks share exactly the same intermediate state. -/
theorem Tape.rowAt_add (tape : Tape r N) (start : ℕ) (checkpoint : Fin N → GridRow r)
    (k m : ℕ) :
    tape.rowAt start checkpoint (k+m) =
      tape.rowAt (start+k) (tape.rowAt start checkpoint k) m := by
  induction m with
  | zero => rfl
  | succ m ih =>
      funext i
      rw [show k + (m+1) = k+m+1 by omega, Tape.rowAt, Tape.rowAt]
      rw [ih, Nat.add_assoc start k m]

/-- Index a finite surviving suffix by its original tape position. -/
def suffixIndex (start k : ℕ) {n : ℕ} (h : start+k+n ≤ N) (i : Fin n) : Fin N :=
  ⟨start+k+i.val, by omega⟩

private theorem suffixIndex_succ (start k n : ℕ)
    (h : start+k+(n+1) ≤ N) (h' : start+(k+1)+n ≤ N) (i : Fin n) :
    suffixIndex start k h i.succ = suffixIndex start (k+1) h' i := by
  apply Fin.ext
  simp only [suffixIndex, Fin.val_succ]
  omega

/-- Decode only the rows of the surviving suffix at a block offset. -/
def Tape.stateAt (tape : Tape r N) (start : ℕ) (checkpoint : Fin N → GridRow r)
    (k : ℕ) {n : ℕ} (h : start+k+n ≤ N) : RawState r n :=
  let row := tape.rowAt start checkpoint k ∘ suffixIndex start k h
  ⟨fun i => (row i).diag, fun i => (row i).v, fun i => (row i).u⟩

/-- The recomputed column of one pivot, indexed by the surviving tail. -/
def Tape.columnAt (tape : Tape r N) (start : ℕ) (checkpoint : Fin N → GridRow r)
    (k : ℕ) {n : ℕ} (h : start+k+(n+1) ≤ N) (i : Fin n) : ℤ :=
  let p := suffixIndex start k h 0
  let j := suffixIndex start k h i.succ
  (rowTransition (tape.node j - tape.node p) (tape.anchor p)
    (tape.rowAt start checkpoint k j)).1

/-- Exact pivot-anchor equality and compact caps discharge a full integer
Schur check between consecutive replay states. -/
theorem Tape.checkStep_of_caps (tape : Tape r N) (start : ℕ)
    (checkpoint : Fin N → GridRow r) (k : ℕ) {n : ℕ}
    (h : start+k+(n+1) ≤ N) (h' : start+(k+1)+n ≤ N)
    (hAnchor : tape.rowAt start checkpoint k (suffixIndex start k h 0) =
      tape.anchor (suffixIndex start k h 0))
    (hPivot : PivotCaps (tape.anchor (suffixIndex start k h 0))
      (tape.caps (suffixIndex start k h 0)))
    (hNode : ∀ i : Fin n, tape.node (suffixIndex start k h 0) <
      tape.node (suffixIndex start k h i.succ))
    (hRows : ∀ i : Fin n,
      RowCaps (tape.node (suffixIndex start k h i.succ) - tape.node (suffixIndex start k h 0))
        (tape.anchor (suffixIndex start k h 0))
        (tape.rowAt start checkpoint k (suffixIndex start k h i.succ))
        (tape.caps (suffixIndex start k h 0))) :
    checkStep (tape.node ∘ suffixIndex start k h)
      (tape.stateAt start checkpoint k h) (tape.stateAt start checkpoint (k+1) h')
      (tape.columnAt start checkpoint k h) (tape.caps (suffixIndex start k h 0)) := by
  let p := suffixIndex start k h 0
  let pivot := tape.anchor p
  let e := tape.caps p
  have hk : start+k < N := by omega
  have hp : 0 < pivot.diag := hPivot.1
  have hCol : 0 < columnFactor := by norm_num [columnFactor]
  have hDiagDen : 0 ≤ pivot.diag * columnFactor^2 := (mul_pos hp (pow_pos hCol 2)).le
  have hGenDen : 0 ≤ pivot.diag * columnFactor := (mul_pos hp hCol).le
  have hOld : tape.rowAt start checkpoint k p = pivot := hAnchor
  refine ⟨?_, hPivot.2.1, ?_, ?_⟩
  · change 0 < (tape.rowAt start checkpoint k p).diag
    simpa only [hOld] using hp
  · change 2 * (e.colMag : ℤ) ≤
      (tape.rowAt start checkpoint k p).diag * columnFactor * (e.colMul : ℤ)
    simpa only [hOld] using hPivot.2.2
  · intro i
    let j := suffixIndex start k h i.succ
    let delta := tape.node j - tape.node p
    let row := tape.rowAt start checkpoint k j
    let result := rowTransition delta pivot row
    let c := result.1
    let next := result.2
    have hj : suffixIndex start (k+1) h' i = j := (suffixIndex_succ start k n h h' i).symm
    have hNext : tape.rowAt start checkpoint (k+1) j = next :=
      tape.rowAt_succ start checkpoint k j hk
    have hCaps := hRows i
    change |c| ≤ (e.colMag : ℤ) ∧
      |rawNumerator row.v row.u pivot.v pivot.u - delta * displacementFactor * c| ≤ (e.colErr : ℤ) ∧
      (e.diagRadius ≠ 0 ∨ c^2 + pivot.diag * columnFactor^2 * (next.diag - row.diag) = 0) ∧ _ at hCaps
    have hRound := rowTransition_residual delta pivot row (sub_pos.mpr (hNode i)) hp
    dsimp only [Tape.stateAt, Tape.columnAt, Function.comp_apply]
    rw [show suffixIndex start k h 0 = p from rfl, hj, hOld, hNext]
    exact ⟨hCaps.1, hCaps.2.1, radius_bound hDiagDen hRound.2.1 hCaps.2.2.1, fun l =>
      ⟨radius_bound hGenDen (hRound.2.2 l).1 (hCaps.2.2.2 l).1,
       radius_bound hGenDen (hRound.2.2 l).2 (hCaps.2.2.2 l).2.1,
       (hCaps.2.2.2 l).2.2⟩⟩

/-- Finite coordinate comparison of a recomputed row with a stored anchor. -/
def AnchorMatches (actual expected : GridRow r) : Prop :=
  actual.diag = expected.diag ∧
    ∀ l, actual.v l = expected.v l ∧ actual.u l = expected.u l

instance (actual expected : GridRow r) : Decidable (AnchorMatches actual expected) := by
  unfold AnchorMatches
  infer_instance

theorem AnchorMatches.eq {actual expected : GridRow r} (h : AnchorMatches actual expected) :
    actual = expected := by
  cases actual with
  | mk d v u =>
    cases expected with
    | mk d' v' u' =>
      change d = d' ∧ (∀ l, v l = v' l ∧ u l = u' l) at h
      have hv : v = v' := funext (fun l => (h.2 l).1)
      have hu : u = u' := funext (fun l => (h.2 l).2)
      rw [h.1, hv, hu]

/-- All compact checks for the pivot row and every row still to be updated. -/
def Tape.PivotRows (tape : Tape r N) (p : Fin N) (rows : Fin N → GridRow r) : Prop :=
  AnchorMatches (rows p) (tape.anchor p) ∧ PivotCaps (tape.anchor p) (tape.caps p) ∧
    ∀ i : Fin N, p < i →
      RowCaps (tape.node i - tape.node p) (tape.anchor p) (rows i) (tape.caps p)

instance (tape : Tape r N) (p : Fin N) (rows : Fin N → GridRow r) :
    Decidable (tape.PivotRows p rows) := by
  unfold Tape.PivotRows
  infer_instance

/-- The finite check of a contiguous block from the supplied checkpoint. -/
def Tape.BlockCaps (tape : Tape r N) (start : ℕ) (checkpoint : Fin N → GridRow r)
    (length : ℕ) (h : start+length ≤ N) : Prop :=
  ∀ k : Fin length,
    tape.PivotRows ⟨start+k.val, by omega⟩ (tape.rowAt start checkpoint k.val)

instance (tape : Tape r N) (start : ℕ) (checkpoint : Fin N → GridRow r)
    (length : ℕ) (h : start+length ≤ N) : Decidable (tape.BlockCaps start checkpoint length h) := by
  unfold Tape.BlockCaps
  infer_instance

private theorem Tape.rowAt_congr (tape : Tape r N) (start : ℕ)
    (checkpoint checkpoint' : Fin N → GridRow r) (i : Fin N)
    (h : checkpoint i = checkpoint' i) (k : ℕ) :
    tape.rowAt start checkpoint k i = tape.rowAt start checkpoint' k i := by
  induction k with
  | zero => exact h
  | succ k ih => simp only [Tape.rowAt, ih]

private theorem Tape.pivotRows_congr (tape : Tape r N) (p : Fin N)
    (rows rows' : Fin N → GridRow r) (heq : ∀ i, p ≤ i → rows i = rows' i)
    (h : tape.PivotRows p rows) : tape.PivotRows p rows' := by
  refine ⟨?_, h.2.1, fun i hi => ?_⟩
  · simpa only [heq p le_rfl] using h.1
  · simpa only [heq i hi.le] using h.2.2 i hi

/-- Adjacent blocks compose once their surviving rows agree exactly.
Rows eliminated before the intermediate checkpoint are irrelevant. -/
theorem Tape.blockCaps_add (tape : Tape r N) (start : ℕ) (checkpoint : Fin N → GridRow r)
    (k m : ℕ) (h : start+(k+m) ≤ N) (checkpoint' : Fin N → GridRow r)
    (hLink : ∀ i : Fin N, start+k ≤ i.val →
      tape.rowAt start checkpoint k i = checkpoint' i)
    (first : tape.BlockCaps start checkpoint k (by omega))
    (second : tape.BlockCaps (start+k) checkpoint' m (by omega)) :
    tape.BlockCaps start checkpoint (k+m) h := by
  intro i
  by_cases hi : i.val < k
  · exact first ⟨i.val, hi⟩
  · let j : Fin m := ⟨i.val-k, by omega⟩
    have hOffset : i.val = k+j.val := by dsimp [j]; omega
    have hPivot : (⟨start+i.val, by omega⟩ : Fin N) = ⟨start+k+j.val, by omega⟩ :=
      Fin.ext (by change start+i.val = start+k+j.val; omega)
    change tape.PivotRows (⟨start+i.val, _⟩ : Fin N) (tape.rowAt start checkpoint i.val)
    rw [hPivot, hOffset, tape.rowAt_add]
    refine tape.pivotRows_congr _ _ _ (fun row hrow => ?_) (second j)
    exact tape.rowAt_congr _ _ _ row (hLink row (by
      change start+k+j.val ≤ row.val at hrow
      omega)).symm j.val

/-- Each pivot in a checked compact block discharges the existing integer
Schur replay on its consecutive old and new suffixes. -/
theorem Tape.checkStep_of_block_caps (tape : Tape r N) (start : ℕ)
    (checkpoint : Fin N → GridRow r) {length k n : ℕ}
    (hLength : start+length ≤ N) (hk : k < length)
    (h : start+k+(n+1) ≤ N) (h' : start+(k+1)+n ≤ N)
    (hNodes : StrictMono tape.node)
    (hCaps : tape.BlockCaps start checkpoint length hLength) :
    checkStep (tape.node ∘ suffixIndex start k h)
      (tape.stateAt start checkpoint k h) (tape.stateAt start checkpoint (k+1) h')
      (tape.columnAt start checkpoint k h) (tape.caps (suffixIndex start k h 0)) := by
  have hIndex (i : Fin n) : suffixIndex start k h 0 < suffixIndex start k h i.succ := by
    change start+k+0 < start+k+(i.val+1)
    omega
  have hc : tape.PivotRows (suffixIndex start k h 0) (tape.rowAt start checkpoint k) :=
    hCaps ⟨k, hk⟩
  exact tape.checkStep_of_caps start checkpoint k h h' hc.1.eq hc.2.1
    (fun i => hNodes (hIndex i)) (fun i => hc.2.2 _ (hIndex i))

end GRWTSK.Algebra.LinearAlgebra.StructuredSchurCompactReplay
