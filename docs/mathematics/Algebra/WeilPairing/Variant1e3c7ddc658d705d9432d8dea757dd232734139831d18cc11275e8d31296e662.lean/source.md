# Complete source: GRWTSK.Algebra.WeilPairing.Variant1e3c7ddc658d705d9432d8dea757dd232734139831d18cc11275e8d31296e662

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d452f31160b5e32ddbf0e8a6ea2a3061e4c8dfd8` · SHA-256 `1e3c7ddc658d705d9432d8dea757dd232734139831d18cc11275e8d31296e662`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Arithmetic.Torsion
import Folder.Cellular.Phase

/-!
# Folder.Arithmetic.WeilPairing

Radiation role: elliptic-compatibility
BinaryMatrix spine: This module names arithmetic compatibility structures that may act on shell torsion without identifying it with BinaryMatrix data.
Ontology: arithmetic.weil_pairing
Pivot role: none
Zero typology: elliptic
Contract boundary: contract
Composite stack role: torsion
-/


namespace Folder
namespace Arithmetic

structure MTorsionPoint
    {K : Type _} [Field K]
    {E : ShortWeierstrass K}
    (G : ECGroupLaw E)
    (m : Nat) where
  point : ECPoint E
  annihilated : nsmulPoint G m point = ECPoint.infinity (E := E)

structure WeilPairingContract
    {K : Type _} [Field K]
    {E : ShortWeierstrass K}
    (G : ECGroupLaw E)
    (m : Nat) where
  pairing :
    MTorsionPoint G m → MTorsionPoint G m → Cellular.Phase m
  alternating :
    ∀ P, pairing P P = 0
  bilinear_left :
    Prop
  bilinear_right :
    Prop
  nondegenerate :
    Prop

theorem weil_pairing_alternating
    {K : Type _} [Field K]
    {E : ShortWeierstrass K}
    {G : ECGroupLaw E}
    {m : Nat}
    (W : WeilPairingContract G m)
    (P : MTorsionPoint G m) :
    W.pairing P P = 0 :=
  W.alternating P

end Arithmetic
end Folder
```
