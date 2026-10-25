import Folder.NumberTheory.FundamentalTheorem

/-!
# Folder.NumberTheory.PrimeEnumeration

Radiation role: number-theory
BinaryMatrix spine: This module organizes prime-factor cellular arithmetic before data is encoded into BinaryMatrix carriers.
Ontology: nt.prime_enumeration
Pivot role: arithmetic
Zero typology: none
Contract boundary: definition
Composite stack role: arithmetic
-/

namespace Folder
namespace NumberTheory

def factorizationLabel (_n : PositiveNat) : String :=
  "Nat.factorization label"

def IsNaturalCountingLabel (n : PositiveNat) : Prop :=
  factorProduct (FactorizationMap n) = n.val

theorem naturalCountingLabel_correct
    (n : PositiveNat) :
    IsNaturalCountingLabel n :=
  factorProduct_factorization n

end NumberTheory
end Folder
