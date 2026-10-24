/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license; see LICENSE.
Human direction: grwtsk contributors; OpenAI Codex formalization/checking assistance.
Historical human/machine split unknown; upstream authors and licenses retain their identities.
This interface selects the Schrodinger core and its generated-family counterexample owner.
-/
import Mathlib.LinearAlgebra.Matrix.SpecialLinearGroup
import Mathlib.LinearAlgebra.Matrix.Notation
import Mathlib.LinearAlgebra.Matrix.Trace
import Mathlib.Tactic.FinCases
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Ring
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.LinearCombination
import Mathlib.Tactic.IntervalCases

namespace GRWTSK.LinearAlgebra.SchrodingerTransfer

/-!
# Exact Jacobi transfer normalization

The state is ordered as `(current, previous)`. The raw Jacobi transfer has
determinant `aPrevious / aCurrent`; only the weighted state
`(current, aPrevious * previous)` gives the canonical determinant-one matrix.
All division-based recurrence equivalences require `aCurrent ≠ 0`.

This is the one-dimensional transfer mechanic also used in spectral cocycle
arguments. It imports no Ten Martini theorem, spectrum conclusion, theta
identification, or RH estimate.
-/


open Matrix


universe u


/-- Schrödinger transfer for `next + previous + V * current = E * current`. -/
def schrodingerTransfer {R : Type u} [CommRing R] (E V : R) :
    Matrix (Fin 2) (Fin 2) R := !![E - V, -1; 1, 0]



/-- The state ordering is frozen: first current, then previous. -/
def rawState {R : Type u} (current previous : R) : Fin 2 → R :=
  ![current, previous]



/-- Exact equivalence between the scalar Schrödinger recurrence and transfer dynamics. -/
theorem schrodinger_recurrence_iff_transfer {R : Type u} [CommRing R]
    (E V previous current next : R) :
    next + previous + V * current = E * current ↔
      rawState next current = (schrodingerTransfer E V).mulVec (rawState current previous) := by
  have hcoord : (schrodingerTransfer E V).mulVec (rawState current previous) =
      rawState ((E - V) * current - previous) current := by
    ext i
    fin_cases i <;> simp [schrodingerTransfer, rawState, Matrix.mulVec, dotProduct,
      Fin.sum_univ_two]
    all_goals ring
  rw [hcoord]
  constructor
  · intro h
    have hnext : next = (E - V) * current - previous := by
      linear_combination h
    rw [hnext]
  · intro h
    have hnext := congrFun h 0
    simp only [rawState, Matrix.cons_val_zero] at hnext
    rw [hnext]
    ring



/-- The Schrödinger transfer is determinant one over any commutative ring. -/
theorem det_schrodingerTransfer {R : Type u} [CommRing R] (E V : R) :
    (schrodingerTransfer E V).det = 1 := by
  simp [schrodingerTransfer, Matrix.det_fin_two]



/-- The proven determinant equation packages the transfer as an actual `SL₂` element. -/
def schrodingerSL {R : Type u} [CommRing R] (E V : R) :
    Matrix.SpecialLinearGroup (Fin 2) R :=
  ⟨schrodingerTransfer E V, det_schrodingerTransfer E V⟩



/-- Hostile fixture: common `SL₂` syntax does not identify two transfer matrices. -/
theorem schrodinger_same_SL_syntax_not_equal :
    (schrodingerSL (0 : ℚ) 0 : Matrix (Fin 2) (Fin 2) ℚ) ≠
      (schrodingerSL (1 : ℚ) 0 : Matrix (Fin 2) (Fin 2) ℚ) := by
  intro h
  have hentry := congrFun (congrFun h 0) 0
  norm_num [schrodingerSL, schrodingerTransfer] at hentry




end GRWTSK.LinearAlgebra.SchrodingerTransfer
