# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Frame.Variant5c521608eee20e53ab54a516874580fc1dbc14b788f46ec8c28b5a241005e4db

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4ac3c491686594e22d92b28c3368c571b9c361f0` · SHA-256 `5c521608eee20e53ab54a516874580fc1dbc14b788f46ec8c28b5a241005e4db`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.BinaryLogicMatrix.Stream.Core

namespace Surface.Legacy
namespace BinaryLogicMatrix
namespace Stream

structure Frame where
  frameIndex : Nat
  payload : SomeBinaryLogicMatrix
  rowMajorPayload : List Bool
  payloadMatchesMatrix :
    rowMajorPayload =
      BinaryLogicMatrix.rowMajorBits payload.matrix
  roundTripMatrix :
    BinaryLogicMatrix.fromBoolList
      payload.rows
      payload.cols
      rowMajorPayload =
        payload.matrix
  matrixHash : String
  previousHash? : Option String
  boundaryHash : String
  claimBoundary : List String

theorem frame_payload_is_BinaryLogicMatrix
    (F : Frame) :
    Nonempty (BinaryLogicMatrix F.payload.rows F.payload.cols) :=
  ⟨F.payload.matrix⟩

end Stream
end BinaryLogicMatrix
end Surface.Legacy
```
