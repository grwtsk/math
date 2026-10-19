import Mathematics.AbelReynolds.Realization
import Mathlib.GroupTheory.Perm.Basic

/-!
# Certified extension-field tally realization

An extension-field coordinate is meaningful only relative to a certified
basis, polynomial, coordinate order, and reduction law.  This realization is
separate from the Archimedean, group, and frontier carriers.
-/

namespace Mathematics.AbelReynolds

structure ExtensionFieldBasis (prime degree : Nat) where
  nontrivialPrime : 2 ≤ prime
  positiveDegree : 0 < degree
  basisId : String
  irreduciblePolynomial : List (ZMod prime)
  coordinateOrder : Equiv.Perm (Fin degree)
  reductionLawId : String

def extensionFieldRealization
    {prime degree : Nat}
    (basis : ExtensionFieldBasis prime degree)
    (coordinates : Fin degree → Tally) :
    Fin degree → ZMod prime :=
  fun index =>
    modularRealization prime
      (coordinates (basis.coordinateOrder index))

@[simp] theorem extensionFieldRealization_apply
    {prime degree : Nat}
    (basis : ExtensionFieldBasis prime degree)
    (coordinates : Fin degree → Tally)
    (index : Fin degree) :
    extensionFieldRealization basis coordinates index =
      modularRealization prime
        (coordinates (basis.coordinateOrder index)) :=
  rfl

end Mathematics.AbelReynolds
