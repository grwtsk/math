import Folder.NumberTheory.PrimePower

/-!
# Folder.CellularArithmetic.Grammar

Radiation role: cellular-arithmetic
BinaryMatrix spine: This module organizes prime-factor cellular arithmetic before data is encoded into BinaryMatrix carriers.
Ontology: ca.arithmetic_factor_term
Pivot role: arithmetic
Zero typology: none
Contract boundary: proved
Composite stack role: arithmetic
-/

namespace Folder
namespace CellularArithmetic

inductive ArithmeticFactorTerm where
  | one : ArithmeticFactorTerm
  | dilate :
      ArithmeticFactorTerm →
      NumberTheory.PrimePower →
      ArithmeticFactorTerm

inductive CellularFactorTerm where
  | pivot : CellularFactorTerm
  | dilate :
      CellularFactorTerm →
      NumberTheory.PrimePower →
      CellularFactorTerm

def arithmeticToCellular :
    ArithmeticFactorTerm → CellularFactorTerm
  | .one => .pivot
  | .dilate t p => .dilate (arithmeticToCellular t) p

def cellularToArithmetic :
    CellularFactorTerm → ArithmeticFactorTerm
  | .pivot => .one
  | .dilate t p => .dilate (cellularToArithmetic t) p

theorem cellularToArithmetic_arithmeticToCellular
    (t : ArithmeticFactorTerm) :
    cellularToArithmetic (arithmeticToCellular t) = t := by
  induction t with
  | one => rfl
  | dilate t p ih =>
      simp [arithmeticToCellular, cellularToArithmetic, ih]

theorem arithmeticToCellular_cellularToArithmetic
    (t : CellularFactorTerm) :
    arithmeticToCellular (cellularToArithmetic t) = t := by
  induction t with
  | pivot => rfl
  | dilate t p ih =>
      simp [arithmeticToCellular, cellularToArithmetic, ih]

namespace ArithmeticFactorTerm

def eval : ArithmeticFactorTerm → Nat
  | .one => 1
  | .dilate t P => t.eval * P.value

end ArithmeticFactorTerm

namespace CellularFactorTerm

def decode : CellularFactorTerm → Nat
  | .pivot => 1
  | .dilate t P => t.decode * P.value

end CellularFactorTerm

theorem decode_arithmeticToCellular
    (t : ArithmeticFactorTerm) :
    (arithmeticToCellular t).decode = t.eval := by
  induction t with
  | one => rfl
  | dilate t p ih =>
      simp [arithmeticToCellular, CellularFactorTerm.decode,
        ArithmeticFactorTerm.eval, ih]

end CellularArithmetic
end Folder
