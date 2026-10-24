# Complete source: GRWTSK.Algebra.LinearAlgebra.DeterminantWitness.Variant1e40811b31cdcf93322d2a045fae1eac90fb7f2397c40a87f14bbaf80b9daade

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2180370a5b6320d762f728dff042771bed725701` · SHA-256 `1e40811b31cdcf93322d2a045fae1eac90fb7f2397c40a87f14bbaf80b9daade`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Linear.Matrix

/-!
# Folder.Linear.DeterminantWitness

Radiation role: boolean-linear-analysis
BinaryMatrix spine: This module contains auxiliary Boolean, linear, or analytic mathematics adjacent to the BinaryMatrix spine.
Ontology: linear.determinant_witness
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace Folder
namespace Linear

structure DeterminantWitness
    {n : Nat}
    {α : Type _}
    [CommRing α]
    (A : Matrix n n α) where
  detValue : α
  certified : detValue = _root_.Matrix.det A

theorem determinant_witness_correct
    {n : Nat}
    {α : Type _}
    [CommRing α]
    {A : Matrix n n α}
    (W : DeterminantWitness A) :
    W.detValue = _root_.Matrix.det A :=
  W.certified

end Linear
end Folder
```
