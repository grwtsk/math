import Folder.NumberTheory.PrimePower

/-!
# Folder.CellularArithmetic.ArithmeticTree

Radiation role: cellular-arithmetic
BinaryMatrix spine: This module organizes prime-factor cellular arithmetic before data is encoded into BinaryMatrix carriers.
Ontology: ca.cellular_arithmetic_tree
Pivot role: arithmetic
Zero typology: none
Contract boundary: definition
Composite stack role: arithmetic
-/

namespace Folder
namespace CellularArithmetic

structure CellularArithmeticTree where
  factors : List NumberTheory.PrimePower

namespace CellularArithmeticTree

def decode (T : CellularArithmeticTree) : Nat :=
  T.factors.foldr (fun P acc => P.value * acc) 1

def PrimeStrictlyIncreasing
    (xs : List NumberTheory.PrimePower) : Prop :=
  xs.Pairwise (fun a b => a.prime < b.prime)

def Canonical
    (T : CellularArithmeticTree) : Prop :=
  PrimeStrictlyIncreasing T.factors

@[simp]
theorem decode_empty :
    ({ factors := [] } : CellularArithmeticTree).decode = 1 :=
  rfl

theorem decode_cons
    (P : NumberTheory.PrimePower)
    (xs : List NumberTheory.PrimePower) :
    ({ factors := P :: xs } : CellularArithmeticTree).decode =
      P.value * ({ factors := xs } : CellularArithmeticTree).decode := by
  rfl

end CellularArithmeticTree
end CellularArithmetic
end Folder
