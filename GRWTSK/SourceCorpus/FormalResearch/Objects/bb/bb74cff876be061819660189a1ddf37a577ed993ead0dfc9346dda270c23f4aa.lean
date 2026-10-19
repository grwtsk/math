import Mathematics.SemiLocalDefect.PositiveCapacity
import Mathlib.Tactic.Abel

/-!
# Exact positive boundary cochain

The edge increment is the differential of the capacity.  Cubical closedness
and path telescoping are algebraic theorems, not extra connector assumptions.
-/

namespace Mathematics.SemiLocalDefect

universe uPrime

def insertList
    {Prime : Type uPrime}
    [DecidableEq Prime] :
    Finset Prime → List Prime → Finset Prime
  | cut, [] => cut
  | cut, prime :: rest =>
      insertList (insert prime cut) rest

def boundaryPathSum
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (capacity :
      PrimeCutDefectCapacity model Prime) :
    Finset Prime → List Prime → model.Operator
  | _, [] => 0
  | cut, prime :: rest =>
      capacity.increment cut prime +
        boundaryPathSum capacity
          (insert prime cut) rest

theorem increment_square_closed
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (cut : Finset Prime)
    (left right : Prime) :
    capacity.increment cut left +
        capacity.increment (insert left cut) right =
      capacity.increment cut right +
        capacity.increment (insert right cut) left := by
  simp only [PrimeCutDefectCapacity.increment]
  rw [Finset.insert_comm left right]
  abel

def boundaryCurvature
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (cut : Finset Prime)
    (left right : Prime) :
    model.Operator :=
  capacity.increment cut left +
    capacity.increment (insert left cut) right -
    capacity.increment cut right -
    capacity.increment (insert right cut) left

theorem boundaryCurvature_eq_zero
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (cut : Finset Prime)
    (left right : Prime) :
    boundaryCurvature capacity cut left right =
      0 := by
  unfold boundaryCurvature
  rw [increment_square_closed
    capacity cut left right]
  abel

theorem boundaryPathSum_telescope
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (cut : Finset Prime)
    (path : List Prime) :
    boundaryPathSum capacity cut path =
      capacity.defect (insertList cut path) -
        capacity.defect cut := by
  induction path generalizing cut with
  | nil =>
      simp [boundaryPathSum, insertList]
  | cons prime rest induction =>
      simp only [boundaryPathSum, insertList]
      rw [induction]
      simp only [PrimeCutDefectCapacity.increment]
      abel

theorem boundaryPathSum_independent
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (cut : Finset Prime)
    {left right : List Prime}
    (sameEndpoint :
      insertList cut left =
        insertList cut right) :
    boundaryPathSum capacity cut left =
      boundaryPathSum capacity cut right := by
  rw [boundaryPathSum_telescope,
    boundaryPathSum_telescope,
    sameEndpoint]

end Mathematics.SemiLocalDefect
