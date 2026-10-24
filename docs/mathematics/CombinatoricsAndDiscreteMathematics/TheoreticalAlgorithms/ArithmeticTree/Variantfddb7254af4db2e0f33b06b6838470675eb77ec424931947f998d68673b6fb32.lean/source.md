# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ArithmeticTree.Variantfddb7254af4db2e0f33b06b6838470675eb77ec424931947f998d68673b6fb32

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `adb23aed4004b17573afd2b32eafe96708232050` · SHA-256 `fddb7254af4db2e0f33b06b6838470675eb77ec424931947f998d68673b6fb32`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
