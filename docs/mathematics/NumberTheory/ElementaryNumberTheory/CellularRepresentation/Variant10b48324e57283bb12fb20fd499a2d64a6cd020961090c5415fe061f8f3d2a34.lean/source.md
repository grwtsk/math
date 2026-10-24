# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.CellularRepresentation.Variant10b48324e57283bb12fb20fd499a2d64a6cd020961090c5415fe061f8f3d2a34

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `86fb239f7ae38566330fdb1a43a3061742243f63` · SHA-256 `10b48324e57283bb12fb20fd499a2d64a6cd020961090c5415fe061f8f3d2a34`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CellularArithmetic.ArithmeticTree
import Folder.NumberTheory.FundamentalTheorem

/-!
# Folder.CellularArithmetic.CellularRepresentation

Radiation role: cellular-arithmetic
BinaryMatrix spine: This module organizes prime-factor cellular arithmetic before data is encoded into BinaryMatrix carriers.
Ontology: ca.cellular_arithmetic_representation
Pivot role: arithmetic
Zero typology: none
Contract boundary: proved
Composite stack role: arithmetic
-/

namespace Folder
namespace CellularArithmetic

structure FactorMapRepresentation where
  number : NumberTheory.PositiveNat
  factorMap : Nat →₀ Nat
  canonical : ∀ p ∈ factorMap.support, Nat.Prime p
  factorMap_eq : factorMap = NumberTheory.FactorizationMap number
  decodes : NumberTheory.factorProduct factorMap = number.val

def FactorMapRepresentation.decode
    (R : FactorMapRepresentation) : Nat :=
  NumberTheory.factorProduct R.factorMap

structure CellularArithmeticRepresentation where
  factorMapRep : FactorMapRepresentation

namespace CellularArithmeticRepresentation

def number (R : CellularArithmeticRepresentation) :
    NumberTheory.PositiveNat :=
  R.factorMapRep.number

def decode (R : CellularArithmeticRepresentation) : Nat :=
  R.factorMapRep.decode

def canonical (_R : CellularArithmeticRepresentation) : Prop :=
  True

end CellularArithmeticRepresentation

noncomputable def encodeFactorMap
    (n : NumberTheory.PositiveNat) :
    FactorMapRepresentation where
  number := n
  factorMap := NumberTheory.FactorizationMap n
  canonical := by
    intro p hp
    exact NumberTheory.factorization_support_prime n
      (Finsupp.mem_support_iff.mp hp)
  factorMap_eq := rfl
  decodes := NumberTheory.factorProduct_factorization n

noncomputable def encodePositiveNat
    (n : NumberTheory.PositiveNat) :
    CellularArithmeticRepresentation where
  factorMapRep := encodeFactorMap n

theorem decode_encode_positiveNat
    (n : NumberTheory.PositiveNat) :
    (encodePositiveNat n).decode = n.val :=
  NumberTheory.factorProduct_factorization n

def SameDecoded
    (A B : CellularArithmeticRepresentation) : Prop :=
  A.decode = B.decode

theorem factorMap_unique_of_same_number
    (A B : CellularArithmeticRepresentation)
    (h : A.number.val = B.number.val) :
    A.factorMapRep.factorMap = B.factorMapRep.factorMap := by
  have hn : A.factorMapRep.number = B.factorMapRep.number :=
    NumberTheory.PositiveNat.ext h
  rw [A.factorMapRep.factorMap_eq, B.factorMapRep.factorMap_eq, hn]

def canonicalTreeUniquenessTarget : Prop :=
  ∀ A B : CellularArithmeticTree,
    A.Canonical → B.Canonical → A.decode = B.decode → A = B

end CellularArithmetic
end Folder
```
