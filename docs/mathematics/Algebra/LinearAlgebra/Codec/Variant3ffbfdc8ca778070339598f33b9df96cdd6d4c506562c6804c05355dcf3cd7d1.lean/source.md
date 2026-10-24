# Complete source: GRWTSK.Algebra.LinearAlgebra.Codec.Variant3ffbfdc8ca778070339598f33b9df96cdd6d4c506562c6804c05355dcf3cd7d1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8c4502da6f8c46dd5e2e2fc5914fa57d00910e3f` · SHA-256 `3ffbfdc8ca778070339598f33b9df96cdd6d4c506562c6804c05355dcf3cd7d1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.BinaryLogicMatrix.Core

namespace Surface.Legacy

class BinaryLogicMatrixCodec (α : Type) where
  rows : α -> Nat
  cols : α -> Nat
  encode : (x : α) -> BinaryLogicMatrix (rows x) (cols x)
  decode? : {rows cols : Nat} -> BinaryLogicMatrix rows cols -> Option α
  roundTrip : ∀ x : α, decode? (encode x) = some x

namespace BinaryLogicMatrixCodec

def encodeSigma {α : Type} [C : BinaryLogicMatrixCodec α] (x : α) :
    Sigma fun rows => Sigma fun cols => BinaryLogicMatrix rows cols :=
  ⟨C.rows x, ⟨C.cols x, C.encode x⟩⟩

theorem roundTrip_checked {α : Type} [C : BinaryLogicMatrixCodec α] (x : α) :
    C.decode? (C.encode x) = some x :=
  C.roundTrip x

end BinaryLogicMatrixCodec

end Surface.Legacy
```
