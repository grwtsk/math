import Folder.Basic

/-!
# Folder.Linear.Matrix

Radiation role: boolean-linear-analysis
BinaryMatrix spine: This module contains auxiliary Boolean, linear, or analytic mathematics adjacent to the BinaryMatrix spine.
Ontology: linear.matrix
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace Folder
namespace Linear

abbrev Matrix (m n : Nat) (α : Type _) := Fin m → Fin n → α

inductive RowOp (m : Nat) (α : Type _) where
  | swap : Fin m → Fin m → RowOp m α
  | scale : Fin m → α → RowOp m α
  | addScaled : Fin m → Fin m → α → RowOp m α
deriving Repr

end Linear
end Folder
