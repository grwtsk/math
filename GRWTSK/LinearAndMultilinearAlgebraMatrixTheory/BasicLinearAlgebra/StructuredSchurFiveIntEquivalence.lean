/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import Batteries.Tactic.OpenPrivate
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.StructuredSchurFiveInt
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.StructuredSchurGeometricCheckpoint

/-!
# Exact equivalence of five-coordinate and compact Schur replay

Projection to the five integer coordinates has the displayed inverse
on GridRow 2. Expanding the two-term generator sum identifies one
rounded transition. The natural magnitude comparisons equal the
original integer absolute-value bounds. Equality of the five coordinates
equals the original pivot anchor predicate.

For a valid finite pivot interval, induction on its length transports
both the accumulated Boolean checks and the complete row state.
The interval bound keeps every pivot address within the original tape.
Applying the same survivor comparison then identifies the complete
checkpoint checker. The table equalities include the nodes, anchors and
all five magnitude bounds. Concrete table bindings and successful
arithmetic checks remain separate inputs. Independent mathematical
review is pending.
-/


set_option autoImplicit false
set_option maxRecDepth 30000
set_option maxHeartbeats 1000000

namespace GRWTSK.Algebra.LinearAlgebra.FiveIntSchurBridge

open StructuredSchurIntegerReplay StructuredSchurNearestEven StructuredSchurCompactReplay
open private Tape.magnitudeCell materialize_eq from
  GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.StructuredSchurGeometricReplay

def ofGrid (row : GridRow 2) : FiveIntSchur.Row :=
  ⟨row.diag,row.v 0,row.u 0,row.v 1,row.u 1⟩

def toGrid (row : FiveIntSchur.Row) : GridRow 2 :=
  ⟨row.diag,![row.v0,row.v1],![row.u0,row.u1]⟩

theorem to_of (row : GridRow 2) : toGrid (ofGrid row) = row := by
  cases row with
  | mk d v u =>
    unfold toGrid ofGrid
    congr 1 <;> funext i <;> fin_cases i <;> rfl

theorem ofGrid_injective : Function.Injective ofGrid := by
  intro a b h
  rw [← to_of a,← to_of b,h]

theorem nearestEven_eq (x d : ℤ) :
    StructuredSchurNearestEven.nearestEven x d = FiveIntSchur.nearestEven x d := rfl

theorem transition_eq (delta : ℤ) (pivot row : GridRow 2) :
    let result := rowTransition delta pivot row
    (result.1,ofGrid result.2) = FiveIntSchur.transition delta (ofGrid pivot) (ofGrid row) := by
  simp only [rowTransition,FiveIntSchur.transition,rawNumerator,Fin.sum_univ_two,ofGrid,
    nearestEven_eq,columnFactor,displacementFactor,FiveIntSchur.columnFactor,FiveIntSchur.displacementFactor,
    pow_two]
  rfl

def ofCaps (bounds : StepPrices 2) : FiveIntSchur.Caps :=
  ⟨bounds.colMag,bounds.maxV 0,bounds.maxU 0,bounds.maxV 1,bounds.maxU 1⟩

private theorem natAbs_le_iff (x : ℤ) (n : ℕ) : x.natAbs ≤ n ↔ |x| ≤ (n : ℤ) := by
  rw [← Nat.cast_le (α := ℤ),Int.natCast_natAbs]

theorem magnitudes_iff (c : ℤ) (row : GridRow 2) (bounds : StepPrices 2) :
    FiveIntSchur.Magnitudes c (ofGrid row) (ofCaps bounds) ↔ MagnitudeCaps (c,row) bounds := by
  simp only [FiveIntSchur.Magnitudes,ofGrid,ofCaps,MagnitudeCaps,natAbs_le_iff,Fin.forall_fin_two]
  tauto

theorem anchors_iff (a b : GridRow 2) :
    ofGrid a = ofGrid b ↔ AnchorMatches a b := by
  constructor
  · intro h
    have heq := ofGrid_injective h
    rw [heq]
    exact ⟨rfl,fun _ => ⟨rfl,rfl⟩⟩
  · intro h
    exact congrArg ofGrid h.eq



def ofResult (result : Bool × GridRow 2) : Bool × FiveIntSchur.Row :=
  (result.1,ofGrid result.2)

theorem cell_eq {N : ℕ} (tape : Tape 2 N) (node : ℕ → ℤ)
    (pivot : ℕ → FiveIntSchur.Row) (bounds : ℕ → FiveIntSchur.Caps)
    (hNode : ∀ j : Fin N, node j.val = tape.node j)
    (hPivot : ∀ j : Fin N, pivot j.val = ofGrid (tape.anchor j))
    (hBounds : ∀ j : Fin N, bounds j.val = ofCaps (tape.caps j))
    (p i : Fin N) (row : GridRow 2) :
    ofResult (Tape.magnitudeCell tape p i row) =
      FiveIntSchur.cell node pivot bounds p.val i.val (ofGrid row) := by
  unfold Tape.magnitudeCell FiveIntSchur.cell
  by_cases hlt : p < i
  · have hn : p.val < i.val := hlt
    simp only [ite_eq_left hlt,ite_eq_left hn,hNode i,hNode p,hPivot p,hBounds p,
      ofResult,materialize_eq]
    rw [← transition_eq]
    simp only [← magnitudes_iff]
  · have hn : ¬ p.val < i.val := hlt
    by_cases he : p = i
    · have hv : p.val = i.val := congrArg Fin.val he
      simp only [ite_eq_right hlt,ite_eq_right hn,ite_eq_left he,ite_eq_left hv,hPivot p,
        ofResult,anchors_iff]
    · have hv : p.val ≠ i.val := fun h => he (Fin.ext h)
      simp only [ite_eq_right hlt,ite_eq_right hn,ite_eq_right he,ite_eq_right hv,ofResult]

theorem run_eq {N : ℕ} (tape : Tape 2 N) (node : ℕ → ℤ)
    (pivot : ℕ → FiveIntSchur.Row) (bounds : ℕ → FiveIntSchur.Caps)
    (hNode : ∀ j : Fin N, node j.val = tape.node j)
    (hPivot : ∀ j : Fin N, pivot j.val = ofGrid (tape.anchor j))
    (hBounds : ∀ j : Fin N, bounds j.val = ofCaps (tape.caps j))
    (start : ℕ) (checkpoint : Fin N → GridRow 2) (i : Fin N) (length : ℕ)
    (hLength : start+length ≤ N) :
    ofResult (tape.magnitudeRow start checkpoint i length) =
      FiveIntSchur.run node pivot bounds start i.val (ofGrid (checkpoint i)) length := by
  induction length with
  | zero => simp only [Tape.magnitudeRow,FiveIntSchur.run,ofResult,materialize_eq]
  | succ k ih =>
    have hN : start+k < N := by omega
    simp only [Tape.magnitudeRow,dite_eq_left hN,FiveIntSchur.run]
    rw [← ih (by omega)]
    simp only [ofResult]
    rw [← cell_eq tape node pivot bounds hNode hPivot hBounds ⟨start+k,hN⟩ i]
    rfl

theorem checkCheckpoint_eq {N : ℕ} (tape : Tape 2 N) (node : ℕ → ℤ)
    (pivot : ℕ → FiveIntSchur.Row) (bounds : ℕ → FiveIntSchur.Caps)
    (hNode : ∀ j : Fin N, node j.val = tape.node j)
    (hPivot : ∀ j : Fin N, pivot j.val = ofGrid (tape.anchor j))
    (hBounds : ∀ j : Fin N, bounds j.val = ofCaps (tape.caps j))
    (start : ℕ) (checkpoint next : Fin N → GridRow 2) (i : Fin N) (length : ℕ)
    (hLength : start+length ≤ N) :
    tape.magnitudeRowCheckpoint start checkpoint next length i =
      FiveIntSchur.checkCheckpoint node pivot bounds start i.val length
        (ofGrid (checkpoint i)) (ofGrid (next i)) := by
  unfold Tape.magnitudeRowCheckpoint FiveIntSchur.checkCheckpoint
  rw [← run_eq tape node pivot bounds hNode hPivot hBounds start checkpoint i
    (min length (i.val+1-start)) (by have := min_le_left length (i.val+1-start); omega)]
  simp only [ofResult,anchors_iff]


end GRWTSK.Algebra.LinearAlgebra.FiveIntSchurBridge
