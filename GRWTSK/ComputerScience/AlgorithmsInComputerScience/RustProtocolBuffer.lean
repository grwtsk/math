import Surface.Legacy.BinaryLogicMatrix.Stream.RowMajorProtocol

namespace Surface.Legacy
namespace BinaryLogicMatrix
namespace Stream

structure RustProtocolBufferFrame where
  magic : String
  version : Nat
  streamId : String
  frameIndex : Nat
  rows : Nat
  cols : Nat
  bitpackRowMajor : List Nat
  matrixHash : String
  previousHash? : Option String
  payloadHash : String
  boundaryHash : String
  source : String
  claimBoundary : List String
  polarPaddingPoleHash : String
  epsilonDescriptorHash : String
  xorNaturalityMode : String
  tensorIntegrityHash : String
  curvatureBalanceHash : String
  homologyComplexityHash : String
  simplePoleDescriptorHash : String
  extendsRowMajorFrame : Prop

theorem rustProtocolBuffer_boundary_visible
    (B : RustProtocolBufferFrame) :
    B.claimBoundary = B.claimBoundary :=
  rfl

end Stream
end BinaryLogicMatrix
end Surface.Legacy
