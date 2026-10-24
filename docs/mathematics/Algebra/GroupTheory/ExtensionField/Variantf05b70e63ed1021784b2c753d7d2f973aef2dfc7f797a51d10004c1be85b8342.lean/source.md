# Complete source: GRWTSK.Algebra.GroupTheory.ExtensionField.Variantf05b70e63ed1021784b2c753d7d2f973aef2dfc7f797a51d10004c1be85b8342

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `67174a7216bc071f7843498a390181c16b61b8ca` · SHA-256 `f05b70e63ed1021784b2c753d7d2f973aef2dfc7f797a51d10004c1be85b8342`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
