/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Existing GRWTSK/Mathlib declarations retain upstream authorship and licenses. -/
import GRWTSK.Analysis.Geometry.FiniteFourArcReturn
import GRWTSK.Algebra.LinearAlgebra.FiniteClosedWalkTrace
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# Finite trace of the actual geometric quarter-turn

The *single-phase* finite matrix comes from the exact quarter-turn that
rotates each genuine quadratic arc to the next. Its trace is zero while
its second trace moment is -2. Four phase turns close the geometric
path with identity monodromy and trace 2.

The signed trace of a real rotation is not a positive Hodge/Weil form.
This finite operator is not identified with a zeta transfer operator.
-/

namespace GRWTSK.Analysis.Geometry.FiniteFourArcContact

open GRWTSK.Algebra.LinearAlgebra.FiniteClosedWalkTrace
open GRWTSK.Algebra.LinearAlgebra.FiniteBoundaryReturn

/-- Source-derived matrix, obtained from the *actual* geometric linear map. -/
def quarterComplex : Matrix (Fin 2) (Fin 2) ℂ :=
  (LinearMap.toMatrix' quarterTurn).map (algebraMap ℝ ℂ)

/-- Explicit coordinates of the source-derived quarter-turn matrix.
No freely supplied matrix replaces the geometric operator. -/
theorem quarterComplex_entries :
    quarterComplex =
      (fun i j : Fin 2 =>
        if i = 0 then (if j = 1 then (-1 : ℂ) else 0)
        else if j = 0 then (1 : ℂ) else 0) := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    norm_num [quarterComplex, LinearMap.toMatrix'_apply, quarterTurn,
      quarterPoint, Pi.single]

/-- The one-phase geometric transport has no diagonal entries. -/
theorem quarterComplex_trace_zero :
    Matrix.trace quarterComplex = 0 := by
  rw [quarterComplex_entries]
  norm_num [Matrix.trace, Matrix.diag_apply, Fin.sum_univ_two]

/-- Two quarter-turns act as minus identity in the exact coordinate map. -/
theorem quarterComplex_square :
    quarterComplex * quarterComplex =
      -(1 : Matrix (Fin 2) (Fin 2) ℂ) := by
  rw [quarterComplex_entries]
  ext i j
  fin_cases i <;> fin_cases j <;>
    norm_num [Matrix.mul_apply, Fin.sum_univ_two, Matrix.one_apply]

/-- A genuine spectral distinction between one-phase and four-phase
transport: the former has trace zero. -/
theorem onePhase_closedWalkMoment :
    closedWalkMoment quarterComplex 1 = 0 := by
  rw [closedWalkMoment_eq_trace]
  simpa using quarterComplex_trace_zero

/-- The based closed two-step weight retains orientation signs. A negative
trace moment is not positive-semidefinite quadratic-form evidence. -/
theorem twoPhase_closedWalkMoment :
    closedWalkMoment quarterComplex 2 = (-2 : ℂ) := by
  rw [closedWalkMoment_eq_trace, pow_two, quarterComplex_square]
  simp [Matrix.trace, Fin.sum_univ_two]

/-- The complete four-phase geometric return has identity monodromy,
not because the final boundary map was chosen to be identity but because
the actual source quarter-turn is of order four. -/
theorem fourPhase_closedWalkMoment (n : ℕ) :
    closedWalkMoment geometricSystem.complexReturnOperator n = (2 : ℂ) := by
  rw [geometricSystem_complex_return, closedWalkMoment_eq_trace]
  simp

/-- Exact matrix correspondence between the chosen *nonidentity*
closing edge and its concrete one-phase geometric representation. -/
theorem quarterComplex_is_boundaryReturn :
    quarterComplex =
      (LinearMap.toMatrix' geometricSystem.boundaryReturn).map
        (algebraMap ℝ ℂ) := rfl

end GRWTSK.Analysis.Geometry.FiniteFourArcContact
