import Folder.NumberTheory.PrimeEnumeration

/-!
# Folder.NumberTheory.FactorLabel

Radiation role: number-theory
BinaryMatrix spine: This module organizes prime-factor cellular arithmetic before data is encoded into BinaryMatrix carriers.
Ontology: nt.factor_label
Pivot role: arithmetic
Zero typology: none
Contract boundary: definition
Composite stack role: arithmetic
-/

namespace Folder
namespace NumberTheory

structure FactorLabel where
  prime : Nat
  exponent : Nat
  rendered : String

def factorLabelOfPrimePower (P : PrimePower) : FactorLabel where
  prime := P.prime
  exponent := P.exponent
  rendered := "p^e"

end NumberTheory
end Folder
