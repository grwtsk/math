# Complete source: GRWTSK.Algebra.LinearAlgebra.PivotCertificate.Variantcf9ac8197566a7bce5935492d82597b1bb1a99171c490295c3023dbc0ce61aaf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1c350b5baf00c6ec7bcd0230a7f3c9c544463ebc` · SHA-256 `cf9ac8197566a7bce5935492d82597b1bb1a99171c490295c3023dbc0ce61aaf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Linear.Pivot
import Folder.Linear.DeterminantWitness
import Folder.Linear.Certificate

/-!
# Folder.Theorem.Linear.PivotCertificate

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.linear.pivot_certificate
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/


namespace Folder
namespace Linear

theorem pivot_certificate_sound
    {m n : Nat}
    {α : Type _}
    [Zero α]
    {A : Matrix m n α}
    (C : PivotCertificate A) :
    A C.pos.row C.pos.col ≠ 0 :=
  pivot_nonzero C

theorem determinant_certificate_sound
    {n : Nat}
    {α : Type _}
    [CommRing α]
    {A : Matrix n n α}
    (W : DeterminantWitness A) :
    W.detValue = _root_.Matrix.det A :=
  determinant_witness_correct W

end Linear
end Folder
```
