# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RustProtocolBuffer.Variant1336555fb6e0e38a61889d6629deaee69067601b5b19deebe80f480528b3ea75

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fe21c8922c3214d6df8790bb1f81ac4d8916d9d0` · SHA-256 `1336555fb6e0e38a61889d6629deaee69067601b5b19deebe80f480528b3ea75`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
