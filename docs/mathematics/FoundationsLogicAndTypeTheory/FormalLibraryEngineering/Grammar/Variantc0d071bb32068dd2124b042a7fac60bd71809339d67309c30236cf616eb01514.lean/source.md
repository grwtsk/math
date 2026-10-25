# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Grammar.Variantc0d071bb32068dd2124b042a7fac60bd71809339d67309c30236cf616eb01514

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `90e9dec52d67ecc5a3f8b8768d6f8ee0b4926348` · SHA-256 `c0d071bb32068dd2124b042a7fac60bd71809339d67309c30236cf616eb01514`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
