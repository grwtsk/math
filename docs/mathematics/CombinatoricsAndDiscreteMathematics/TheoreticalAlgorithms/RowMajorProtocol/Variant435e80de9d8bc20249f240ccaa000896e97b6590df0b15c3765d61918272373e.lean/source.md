# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RowMajorProtocol.Variant435e80de9d8bc20249f240ccaa000896e97b6590df0b15c3765d61918272373e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `85611c2e08db2caf59467700693a4cb943d71bb4` · SHA-256 `435e80de9d8bc20249f240ccaa000896e97b6590df0b15c3765d61918272373e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.BinaryLogicMatrix.Stream.Frame

namespace Surface.Legacy
namespace BinaryLogicMatrix
namespace Stream

structure RowMajorProtocolFrame where
  frame : Frame
  transportedBits : List Bool
  bitpackHash : String
  transportedBitsSound :
    transportedBits = frame.rowMajorPayload
  matrixSound :
    BinaryLogicMatrix.fromBoolList
      frame.payload.rows
      frame.payload.cols
      transportedBits =
        frame.payload.matrix
  claimBoundary : List String

theorem rowMajorProtocol_frame_is_matrix_backed
    (P : RowMajorProtocolFrame) :
    Nonempty
      (BinaryLogicMatrix P.frame.payload.rows P.frame.payload.cols) :=
  ⟨P.frame.payload.matrix⟩

end Stream
end BinaryLogicMatrix
end Surface.Legacy
```
