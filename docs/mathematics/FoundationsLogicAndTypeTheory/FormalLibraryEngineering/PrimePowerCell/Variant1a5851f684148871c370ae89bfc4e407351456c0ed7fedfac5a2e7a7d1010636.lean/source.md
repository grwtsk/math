# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PrimePowerCell.Variant1a5851f684148871c370ae89bfc4e407351456c0ed7fedfac5a2e7a7d1010636

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2ced7771bfc38f5b0f9439fa364f2d476c094bf0` · SHA-256 `1a5851f684148871c370ae89bfc4e407351456c0ed7fedfac5a2e7a7d1010636`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CellularArithmetic.ArithmeticTree

/-!
# Folder.CellularArithmetic.PrimePowerCell

Radiation role: cellular-arithmetic
BinaryMatrix spine: This module organizes prime-factor cellular arithmetic before data is encoded into BinaryMatrix carriers.
Ontology: ca.prime_power_cell
Pivot role: arithmetic
Zero typology: none
Contract boundary: proved
Composite stack role: arithmetic
-/

namespace Folder
namespace CellularArithmetic

structure PrimePowerCell where
  label : NumberTheory.PrimePower
  addressDepth : Nat

def dilateTree
    (T : CellularArithmeticTree)
    (P : NumberTheory.PrimePower) :
    CellularArithmeticTree :=
  { factors := T.factors ++ [P] }

theorem decode_dilateTree
    (T : CellularArithmeticTree)
    (P : NumberTheory.PrimePower) :
    (dilateTree T P).decode = T.decode * P.value := by
  unfold dilateTree CellularArithmeticTree.decode
  induction T.factors with
  | nil =>
      simp
  | cons Q qs ih =>
      simp [ih, Nat.mul_assoc]

end CellularArithmetic
end Folder
```
