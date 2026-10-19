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
