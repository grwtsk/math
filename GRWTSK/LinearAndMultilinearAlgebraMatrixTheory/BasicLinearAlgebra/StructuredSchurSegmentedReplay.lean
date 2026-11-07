/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.StructuredSchurGeometricReplay

/-!
# Segmenting an exact geometric Schur row replay

After the first segment the row must still be active. Its exact rounded
state is then a valid initial row for the second segment. Induction on
the second length uses the same pivot and state at each update. The
two accumulated Boolean checks combine by associativity of conjunction.
This lets a long concrete replay check an explicit intermediate row
and evaluate each segment separately. Independent mathematical review
is pending.
-/

set_option autoImplicit false

namespace GRWTSK.Algebra.LinearAlgebra.StructuredSchurCompactReplay

open StructuredSchurNearestEven

variable {r N : ℕ}

/-- Splitting at a checked survivor preserves the row and all magnitude checks. -/
theorem Tape.magnitudeRow_append (tape : Tape r N) (start : ℕ)
    (checkpoint : Fin N → GridRow r) (i : Fin N) (k m : ℕ)
    (middle : GridRow r) (hActive : start + k ≤ i.val)
    (hMiddle : (tape.magnitudeRow start checkpoint i k).2 = middle)
    (hLength : start + k + m ≤ N) :
    tape.magnitudeRow start checkpoint i (k + m) =
      ((tape.magnitudeRow start checkpoint i k).1 &&
        (tape.magnitudeRow (start + k) (fun _ => middle) i m).1,
        (tape.magnitudeRow (start + k) (fun _ => middle) i m).2) := by
  induction m with
  | zero =>
    have hZero := tape.magnitudeRow_end_state (start + k) (fun _ => middle) i 0 (by omega)
    change (tape.magnitudeRow (start + k) (fun _ => middle) i 0).2 = middle at hZero
    change tape.magnitudeRow start checkpoint i k =
      ((tape.magnitudeRow start checkpoint i k).1 && true,
        (tape.magnitudeRow (start + k) (fun _ => middle) i 0).2)
    rw [hZero, Bool.and_true, ← hMiddle]
  | succ m ih =>
    have hLeft : start + (k + m) < N := by omega
    rw [Nat.add_succ]
    simp only [Tape.magnitudeRow, dite_eq_left hLeft, ih (by omega), Nat.add_assoc, Bool.and_assoc]

end GRWTSK.Algebra.LinearAlgebra.StructuredSchurCompactReplay
