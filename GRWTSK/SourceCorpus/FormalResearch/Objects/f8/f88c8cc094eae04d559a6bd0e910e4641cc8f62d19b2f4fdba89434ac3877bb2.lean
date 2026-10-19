import Folder.Arithmetic.Weierstrass

/-!
# Folder.Arithmetic.EllipticCurve

Radiation role: elliptic-compatibility
BinaryMatrix spine: This module names arithmetic compatibility structures that may act on shell torsion without identifying it with BinaryMatrix data.
Ontology: arithmetic.elliptic_curve
Pivot role: none
Zero typology: elliptic
Contract boundary: definition
Composite stack role: torsion
-/


namespace Folder
namespace Arithmetic

inductive ECPoint {K : Type _} [Field K]
    (E : ShortWeierstrass K) where
  | infinity : ECPoint E
  | affine : AffinePoint E → ECPoint E

structure ECGroupLaw {K : Type _} [Field K]
    (E : ShortWeierstrass K) where
  add : ECPoint E → ECPoint E → ECPoint E
  zero_left : ∀ P, add (ECPoint.infinity (E := E)) P = P
  zero_right : ∀ P, add P (ECPoint.infinity (E := E)) = P
  neg : ECPoint E → ECPoint E
  add_left_neg : ∀ P, add (neg P) P = ECPoint.infinity (E := E)
  add_right_neg : ∀ P, add P (neg P) = ECPoint.infinity (E := E)
  assoc : ∀ P Q R, add (add P Q) R = add P (add Q R)

end Arithmetic
end Folder
