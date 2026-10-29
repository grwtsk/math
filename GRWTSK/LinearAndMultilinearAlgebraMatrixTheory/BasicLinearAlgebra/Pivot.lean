import Folder.Linear.Matrix

/-!
# Folder.Linear.Pivot

Radiation role: boolean-linear-analysis
BinaryMatrix spine: This module contains auxiliary Boolean, linear, or analytic mathematics adjacent to the BinaryMatrix spine.
Ontology: linear.pivot
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace Folder
namespace Linear

structure PivotPosition (m n : Nat) where
  row : Fin m
  col : Fin n
deriving Repr

structure PivotCertificate
    {m n : Nat}
    {α : Type _}
    [Zero α]
    (A : Matrix m n α) where
  pos : PivotPosition m n
  nonzero : A pos.row pos.col ≠ 0

theorem pivot_nonzero
    {m n : Nat}
    {α : Type _}
    [Zero α]
    {A : Matrix m n α}
    (C : PivotCertificate A) :
    A C.pos.row C.pos.col ≠ 0 :=
  C.nonzero

end Linear
end Folder
