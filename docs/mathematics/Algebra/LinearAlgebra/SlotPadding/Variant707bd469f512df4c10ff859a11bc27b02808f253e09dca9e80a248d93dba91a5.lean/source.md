# Complete source: GRWTSK.Algebra.LinearAlgebra.SlotPadding.Variant707bd469f512df4c10ff859a11bc27b02808f253e09dca9e80a248d93dba91a5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1f12e77eecab619b8ff8df5f335ed1d302fd93c0` · SHA-256 `707bd469f512df4c10ff859a11bc27b02808f253e09dca9e80a248d93dba91a5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import BridgeElements.BitMatrixSurface
import URSMContracts

/-! # Preservation of logical matrix cells under Rust-owned slot embedding. -/

namespace URSM.Bridge

open URSM.Contracts

def padBitMatrix
    (slot : SlotEmbedding n S)
    (matrix : BitMatrix n n) :
    BitMatrix S S :=
  slot.pad (asContractSquare n matrix)

@[simp] theorem padBitMatrix_on_image
    (slot : SlotEmbedding n S)
    (matrix : BitMatrix n n)
    (i j : Fin n) :
    padBitMatrix slot matrix (slot.encode i) (slot.encode j) =
      matrix i j :=
  slot.pad_on_image (asContractSquare n matrix) i j

end URSM.Bridge
```
