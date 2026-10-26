/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical source attribution: grwtsk contributors.
Upstream Mathlib and existing GRWTSK source retain their licenses. -/
import GRWTSK.Algebra.LinearAlgebra.FiniteBoundaryReturnMatrix
import GRWTSK.Algebra.LinearAlgebra.FiniteClosedWalkTrace

set_option autoImplicit false
noncomputable section

/-!
# Typed real boundary return to complex finite trace

The complex return matrix is constructed from the *same two actual* real
linear maps, preserving their distinct rectangular domain/codomain.  The
operator is identified with the complete real return matrix after its
faithful coefficient embedding into `ℂ`.

For reuse with the prior square `ReturnMatrix` trace API, an explicitly
labelled algebraic facade uses identity descent and the already composed
complex return. The underlying typed system remains the source; the facade
is not another physical or geometric boundary return.
-/

namespace GRWTSK.Algebra.LinearAlgebra.FiniteBoundaryReturn

open GRWTSK.Algebra.LinearAlgebra.FiniteClosedWalkTrace

universe u v
variable {I : Type u} {J : Type v}
variable [Fintype I] [DecidableEq I] [Fintype J] [DecidableEq J]

namespace System

/-- Rectangular complex matrices extracted from the existing two real
linear transports. No symmetry, self-adjointness, or inverse is asserted. -/
def complexDescent (S : System (I → ℝ) (J → ℝ)) : Matrix J I ℂ :=
  (LinearMap.toMatrix' S.descent).map (algebraMap ℝ ℂ)

def complexBoundaryReturn (S : System (I → ℝ) (J → ℝ)) : Matrix I J ℂ :=
  (LinearMap.toMatrix' S.boundaryReturn).map (algebraMap ℝ ℂ)

/-- Actual complex finite return with the same rectangular intermediate
boundary as the original typed system. -/
def complexReturnOperator (S : System (I → ℝ) (J → ℝ)) : Matrix I I ℂ :=
  S.complexBoundaryReturn * S.complexDescent

/-- No moment-matching assumption: the entire complex matrix is the actual
real return operator's coordinate matrix after coefficient embedding. -/
theorem complexReturnOperator_eq_source
    (S : System (I → ℝ) (J → ℝ)) :
    S.complexReturnOperator =
      (LinearMap.toMatrix' S.returnOperator).map (algebraMap ℝ ℂ) := by
  rw [returnOperator, LinearMap.toMatrix'_comp]
  exact (Matrix.map_mul).symm

/-- Every complex return entry comes from one exact real-source basis
coefficient, including all mixed/off-diagonal entries. -/
theorem complexReturnOperator_entry
    (S : System (I → ℝ) (J → ℝ)) (i j : I) :
    S.complexReturnOperator i j =
      ((S.returnOperator (Pi.single j (1 : ℝ)) i : ℝ) : ℂ) := by
  rw [S.complexReturnOperator_eq_source]
  rfl

/-- Reuse the existing *square* finite trace record, with an explicit
identity-descent algebraic facade. The underlying typed system still stores
the true rectangular descent and boundary return separately. -/
def asComplexReturnMatrix
    (S : System (I → ℝ) (J → ℝ)) : ReturnMatrix I where
  descent := 1
  boundaryReturn := S.complexReturnOperator

theorem asComplexReturnMatrix_operator
    (S : System (I → ℝ) (J → ℝ)) :
    S.asComplexReturnMatrix.operator = S.complexReturnOperator := by
  simp [asComplexReturnMatrix, ReturnMatrix.operator]

/-- The actual real matrix product gives every coefficient of the same
complex return when the typed system is realized from matrices. -/
theorem ofMatrices_complexReturnOperator
    (D : Matrix J I ℝ) (R : Matrix I J ℝ)
    (A : Matrix I I ℝ) (B : Matrix J J ℝ) :
    (ofMatrices D R A B).complexReturnOperator =
      (R * D).map (algebraMap ℝ ℂ) := by
  rw [complexReturnOperator_eq_source, ofMatrices_return_toMatrix]

/-- Finite based-walk moments are *exactly* the traces of the complex
coordinate realization of this existing typed boundary return. -/
theorem complexReturn_closedWalkMoment_eq_trace
    (S : System (I → ℝ) (J → ℝ)) (n : ℕ) :
    closedWalkMoment S.complexReturnOperator n =
      Matrix.trace (S.complexReturnOperator ^ n) :=
  closedWalkMoment_eq_trace S.complexReturnOperator n

/-- No independent operator has been substituted into the finite return
trace API: its operator is the same source-derived complex return matrix. -/
theorem asComplexReturnMatrix_closedWalkMoment
    (S : System (I → ℝ) (J → ℝ)) (n : ℕ) :
    closedWalkMoment S.complexReturnOperator n =
      Matrix.trace (S.asComplexReturnMatrix.operator ^ n) := by
  rw [S.asComplexReturnMatrix_operator]
  exact S.complexReturn_closedWalkMoment_eq_trace n

end System

end GRWTSK.Algebra.LinearAlgebra.FiniteBoundaryReturn
