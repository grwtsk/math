# Complete source: GRWTSK.Algebra.EllipticCurve.Variantf88c8cc094eae04d559a6bd0e910e4641cc8f62d19b2f4fdba89434ac3877bb2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e8295076ae3eca2de0f0be4bcd131884270d3cf8` · SHA-256 `f88c8cc094eae04d559a6bd0e910e4641cc8f62d19b2f4fdba89434ac3877bb2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
