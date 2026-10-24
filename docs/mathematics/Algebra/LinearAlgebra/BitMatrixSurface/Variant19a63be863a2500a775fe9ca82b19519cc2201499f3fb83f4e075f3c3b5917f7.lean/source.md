# Complete source: GRWTSK.Algebra.LinearAlgebra.BitMatrixSurface.Variant19a63be863a2500a775fe9ca82b19519cc2201499f3fb83f4e075f3c3b5917f7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `60fe5bed6c2bf873d5519abf7e80c749ef23b329` · SHA-256 `19a63be863a2500a775fe9ca82b19519cc2201499f3fb83f4e075f3c3b5917f7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import BitMatrix
import URSMContracts

/-! # Definitionally exact bridge between the two finite function squares. -/

namespace URSM.Bridge

open URSM.Contracts

abbrev asContractSquare (n : Nat) :
    BitMatrix n n → BitSquare n :=
  id

abbrev asBitMatrix (n : Nat) :
    BitSquare n → BitMatrix n n :=
  id

@[simp] theorem roundTripBitMatrix
    (matrix : BitMatrix n n) :
    asBitMatrix n (asContractSquare n matrix) = matrix :=
  rfl

@[simp] theorem roundTripContractSquare
    (matrix : BitSquare n) :
    asContractSquare n (asBitMatrix n matrix) = matrix :=
  rfl

end URSM.Bridge
```
