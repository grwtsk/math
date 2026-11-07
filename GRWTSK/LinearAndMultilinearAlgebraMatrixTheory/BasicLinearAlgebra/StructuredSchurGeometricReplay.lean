/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.StructuredSchurCompactReplay

/-!
# Geometric rounding caps for structured Schur replay

The exact nearest-even transition has doubled integer residual at most
its positive denominator. This supplies unit diagonal and generator
radii, corresponding to one half of a grid unit in the decoded data.
The column denominator is the positive node difference times `2^22`.
An upper node bound therefore gives one column residual cap per pivot.

The magnitude checker retains the proposed column magnitude and every
successor generator magnitude, the shared pivot checks, exact anchor
matches, and the same carried checkpoint state. The geometric prices
must be charged to the existing cumulative budget. The exact source
comparison remains separate. Independent mathematical review is pending.
-/

set_option autoImplicit false

namespace GRWTSK.Algebra.LinearAlgebra.StructuredSchurCompactReplay

open StructuredSchurIntegerReplay StructuredSchurNearestEven

variable {r N : ℕ}

/-- Replace the rounding radii by geometric column and unit update caps. -/
def geometricCaps (e : StepPrices r) (span : ℤ) : StepPrices r :=
  { e with
    colErr := (span * (2^21 : ℤ)).toNat
    diagRadius := 1
    vRadius := fun _ => 1
    uRadius := fun _ => 1 }

/-- The exact paid integer price for two generator pairs with geometric caps. -/
theorem priceNumerator_geometricCaps (e : StepPrices 2) (span : ℤ) :
    priceNumerator (geometricCaps e span) =
      250 * 2^40 + 21 * (2 * (span * (2^21 : ℤ)).toNat * e.colMul +
        2 * (e.maxV 0 + e.maxU 0 + e.maxV 1 + e.maxU 1) + 6) := by
  simp only [priceNumerator, offNumerator, geometricCaps, Fin.sum_univ_two]
  ring

/-- Checks on the magnitudes of the computed column and successor. -/
def MagnitudeCaps (result : ℤ × GridRow r) (e : StepPrices r) : Prop :=
  |result.1| ≤ (e.colMag : ℤ) ∧
    ∀ l, |result.2.v l| ≤ (e.maxV l : ℤ) ∧ |result.2.u l| ≤ (e.maxU l : ℤ)

instance (result : ℤ × GridRow r) (e : StepPrices r) :
    Decidable (MagnitudeCaps result e) := by
  unfold MagnitudeCaps
  infer_instance

/-- Nearest-even rounding supplies every missing residual bound. -/
theorem rowCaps_of_magnitudes (delta span : ℤ) (pivot row : GridRow r) (e : StepPrices r)
    (hDelta : 0 < delta) (hSpan : delta ≤ span) (hPivot : 0 < pivot.diag)
    (hMag : MagnitudeCaps (rowTransition delta pivot row) e) :
    RowCaps delta pivot row (geometricCaps e span) := by
  let c := (rowTransition delta pivot row).1
  have hRound := (rowTransition_residual delta pivot row hDelta hPivot).1
  have h0 : 0 ≤ span * (2^21 : ℤ) := mul_nonneg (hDelta.le.trans hSpan) (by norm_num)
  have hCap : ((geometricCaps e span).colErr : ℤ) = span * (2^21 : ℤ) :=
    Int.toNat_of_nonneg h0
  have hc :
      |rawNumerator row.v row.u pivot.v pivot.u - delta * displacementFactor * c| ≤
        ((geometricCaps e span).colErr : ℤ) := by
    rw [hCap]
    change 2 * |rawNumerator row.v row.u pivot.v pivot.u - delta * displacementFactor * c| ≤
      delta * displacementFactor at hRound
    have hFactor : displacementFactor = 2 * (2^21 : ℤ) := by norm_num [displacementFactor]
    rw [hFactor] at hRound ⊢
    omega
  exact ⟨hMag.1, hc, Or.inl Nat.one_ne_zero, fun l =>
    ⟨Or.inl Nat.one_ne_zero, Or.inl Nat.one_ne_zero, hMag.2 l⟩⟩

/-- Keep the exact node and anchor data while changing the paid cap fields. -/
def Tape.withGeometricCaps (tape : Tape r N) (upperNode : ℤ) : Tape r N :=
  { tape with caps := fun p => geometricCaps (tape.caps p) (upperNode - tape.node p) }

theorem Tape.withGeometricCaps_rowAt (tape : Tape r N) (upperNode : ℤ) (start : ℕ)
    (checkpoint : Fin N → GridRow r) (k : ℕ) (i : Fin N) :
    (tape.withGeometricCaps upperNode).rowAt start checkpoint k i =
      tape.rowAt start checkpoint k i := by
  induction k with
  | zero => rfl
  | succ k ih =>
      simp only [Tape.rowAt]
      rw [ih]
      rfl

private def materialize (row : GridRow r) : GridRow r :=
  let v := Vector.ofFn row.v
  let u := Vector.ofFn row.u
  ⟨row.diag, fun i => v[i.val], fun i => u[i.val]⟩

private theorem materialize_eq (row : GridRow r) : materialize row = row := by
  cases row
  simp [materialize]

private def Tape.magnitudeCell (tape : Tape r N) (p i : Fin N) (row : GridRow r) :
    Bool × GridRow r :=
  if p < i then
    let result := rowTransition (tape.node i - tape.node p) (tape.anchor p) row
    let next := materialize result.2
    (decide (MagnitudeCaps (result.1, next) (tape.caps p)), next)
  else if p = i then
    (decide (AnchorMatches row (tape.anchor p)), row)
  else (true, row)

private theorem Tape.magnitudeCell_state (tape : Tape r N) (p i : Fin N) (row : GridRow r)
    (h : p < i) :
    (tape.magnitudeCell p i row).2 = (rowTransition (tape.node i - tape.node p)
      (tape.anchor p) row).2 := by
  simp only [Tape.magnitudeCell, ite_eq_left h, materialize_eq]

private theorem Tape.magnitudeCell_sound (tape : Tape r N) (p i : Fin N) (row : GridRow r)
    (h : (tape.magnitudeCell p i row).1 = true) :
    (p = i → AnchorMatches row (tape.anchor p)) ∧
    (p < i → MagnitudeCaps (rowTransition (tape.node i - tape.node p) (tape.anchor p) row)
      (tape.caps p)) := by
  constructor
  · intro heq
    subst i
    simpa only [Tape.magnitudeCell, lt_irrefl, ite_false, ite_true, decide_eq_true_eq] using h
  · intro hlt
    simpa only [Tape.magnitudeCell, ite_eq_left hlt, materialize_eq, Prod.eta,
      decide_eq_true_eq] using h

/-- Replay a row with the exact rounded transition and magnitude checks. -/
def Tape.magnitudeRow (tape : Tape r N) (start : ℕ) (checkpoint : Fin N → GridRow r)
    (i : Fin N) : ℕ → Bool × GridRow r
  | 0 => (true, materialize (checkpoint i))
  | k+1 =>
      let old := tape.magnitudeRow start checkpoint i k
      if h : start+k < N then
        let cell := tape.magnitudeCell ⟨start+k, h⟩ i old.2
        (old.1 && cell.1, cell.2)
      else (false, old.2)

/-- A surviving row has exactly the same checkpoint state under magnitude replay. -/
theorem Tape.magnitudeRow_end_state (tape : Tape r N) (start : ℕ)
    (checkpoint : Fin N → GridRow r) (i : Fin N) (k : ℕ)
    (h : start+k ≤ i.val) :
    (tape.magnitudeRow start checkpoint i k).2 = tape.rowAt start checkpoint k i := by
  induction k with
  | zero => exact materialize_eq (checkpoint i)
  | succ k ih =>
      have hn : start+k < N := by have := i.isLt; omega
      have hi : (⟨start+k, hn⟩ : Fin N) < i := by change start+k < i.val; omega
      simp only [Tape.magnitudeRow, dite_eq_left hn, tape.magnitudeCell_state _ _ _ hi,
        ih (by omega), tape.rowAt_succ start checkpoint k i hn]

/-- A checked row supplies every local cap and its exact pivot anchor match. -/
theorem Tape.magnitudeRow_sound (tape : Tape r N) (upperNode : ℤ) (start : ℕ)
    (checkpoint : Fin N → GridRow r) (i : Fin N) (length : ℕ)
    (hLength : start+length ≤ N) (hNodes : StrictMono tape.node)
    (hUpper : tape.node i ≤ upperNode)
    (hPivot : ∀ p : Fin N, start ≤ p.val → p.val < start+length → 0 < (tape.anchor p).diag)
    (hPass : (tape.magnitudeRow start checkpoint i length).1 = true) :
    ∀ k : Fin length,
      let p : Fin N := ⟨start+k.val, by omega⟩
      (p = i → AnchorMatches (tape.rowAt start checkpoint k.val i) (tape.anchor p)) ∧
      (p < i → RowCaps (tape.node i - tape.node p) (tape.anchor p)
        (tape.rowAt start checkpoint k.val i) ((tape.withGeometricCaps upperNode).caps p)) := by
  induction length with
  | zero => intro k; exact Fin.elim0 k
  | succ length ih =>
      have hn : start+length < N := by omega
      let p : Fin N := ⟨start+length, hn⟩
      let old := tape.magnitudeRow start checkpoint i length
      have hBoth : (old.1 && (tape.magnitudeCell p i old.2).1) = true := by
        simpa only [Tape.magnitudeRow, dite_eq_left hn] using hPass
      obtain ⟨hPrev, hCell⟩ := Bool.and_eq_true_iff.mp hBoth
      intro k
      by_cases hk : k.val < length
      · exact ih (by omega) (fun q hlo hhi => hPivot q hlo (by omega)) hPrev ⟨k.val, hk⟩
      · have he : k.val = length := by have := k.isLt; omega
        have he' : k = (⟨length, Nat.lt_succ_self length⟩ : Fin (length+1)) := Fin.ext he
        rw [he']
        have hc := tape.magnitudeCell_sound p i old.2 hCell
        change (p = i → AnchorMatches (tape.rowAt start checkpoint length i) (tape.anchor p)) ∧
          (p < i → RowCaps (tape.node i - tape.node p) (tape.anchor p)
            (tape.rowAt start checkpoint length i) ((tape.withGeometricCaps upperNode).caps p))
        constructor
        · intro h
          have hle : start+length ≤ i.val := by subst i; exact le_rfl
          rw [← tape.magnitudeRow_end_state start checkpoint i length hle]
          exact hc.1 h
        · intro h
          have hle : start+length ≤ i.val := h.le
          have hp : 0 < (tape.anchor p).diag :=
            hPivot p (by dsimp [p]; omega) (by dsimp [p]; omega)
          rw [← tape.magnitudeRow_end_state start checkpoint i length hle]
          exact rowCaps_of_magnitudes _ _ _ _ _ (sub_pos.mpr (hNodes h))
            (sub_le_sub_right hUpper _) hp (hc.2 h)

/-- Magnitude-only replay discharges the existing compact block predicate
with the stated upper node and widened prices. -/
theorem Tape.magnitudeBlock_sound (tape : Tape r N) (upperNode : ℤ) (start : ℕ)
    (checkpoint : Fin N → GridRow r) (length : ℕ) (hLength : start+length ≤ N)
    (hNodes : StrictMono tape.node) (hUpper : ∀ i, tape.node i ≤ upperNode)
    (hPivot : ∀ k : Fin length, let p : Fin N := ⟨start+k.val, by omega⟩
      PivotCaps (tape.anchor p) (tape.caps p))
    (hRows : ∀ i : Fin N, start ≤ i.val →
      (tape.magnitudeRow start checkpoint i (min length (i.val+1-start))).1 = true) :
    (tape.withGeometricCaps upperNode).BlockCaps start checkpoint length hLength := by
  have hPositive (q : Fin N) (hlo : start ≤ q.val) (hhi : q.val < start+length) :
      0 < (tape.anchor q).diag := by
    let j : Fin length := ⟨q.val-start, by omega⟩
    have hj : (⟨start+j.val, by have := j.isLt; omega⟩ : Fin N) = q := by
      apply Fin.ext
      change start+(q.val-start) = q.val
      omega
    have h := hPivot j
    dsimp only at h
    rw [hj] at h
    exact h.1
  intro k
  let p : Fin N := ⟨start+k.val, by omega⟩
  have row_sound (i : Fin N) (hi : p ≤ i) :
      (p = i → AnchorMatches (tape.rowAt start checkpoint k.val i) (tape.anchor p)) ∧
      (p < i → RowCaps (tape.node i - tape.node p) (tape.anchor p)
        (tape.rowAt start checkpoint k.val i) ((tape.withGeometricCaps upperNode).caps p)) := by
    have hi' : start+k.val ≤ i.val := hi
    have hMin := Nat.min_le_left length (i.val+1-start)
    have hLen : start+min length (i.val+1-start) ≤ N := by omega
    have hk : k.val < min length (i.val+1-start) := Nat.lt_min.2 ⟨k.isLt, by omega⟩
    exact tape.magnitudeRow_sound upperNode start checkpoint i _ hLen hNodes (hUpper i)
      (fun q hlo hhi => hPositive q hlo (by omega)) (hRows i (by omega)) ⟨k.val, hk⟩
  change (tape.withGeometricCaps upperNode).PivotRows p
    ((tape.withGeometricCaps upperNode).rowAt start checkpoint k.val)
  have hStates : (tape.withGeometricCaps upperNode).rowAt start checkpoint k.val =
      tape.rowAt start checkpoint k.val :=
    funext (fun i => tape.withGeometricCaps_rowAt upperNode start checkpoint k.val i)
  rw [hStates]
  exact ⟨(row_sound p le_rfl).1 rfl, hPivot k, fun i hi => (row_sound i hi.le).2 hi⟩

end GRWTSK.Algebra.LinearAlgebra.StructuredSchurCompactReplay
