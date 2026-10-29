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
