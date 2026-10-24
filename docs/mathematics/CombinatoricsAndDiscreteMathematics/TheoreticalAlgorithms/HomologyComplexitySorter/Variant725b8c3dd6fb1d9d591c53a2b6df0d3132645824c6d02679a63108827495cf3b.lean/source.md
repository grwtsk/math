# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.HomologyComplexitySorter.Variant725b8c3dd6fb1d9d591c53a2b6df0d3132645824c6d02679a63108827495cf3b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cca6f2de98a466cc39e77e2826fcabb5242047c7` · SHA-256 `725b8c3dd6fb1d9d591c53a2b6df0d3132645824c6d02679a63108827495cf3b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.BinaryLogicMatrix.Stream.TensorLocus

namespace Surface.Legacy
namespace BinaryLogicMatrix
namespace Stream

structure PaddedHomologyBoundary where
  paddingDimension : Nat
  sphericalDimension : Nat
  chainComplexDescriptor? : Option String
  boundarySquaredZeroCertificate? : Option String
  bettiDescriptor? : Option String
  noPaddedHomologyGroupClaimWithoutCertificate : True
  claimBoundary : List String

structure HomologyComplexityIndex where
  locus : TensorLocus
  paddedBoundary : PaddedHomologyBoundary
  boundaryDepth : Nat
  tensorWeight : Nat
  arithmeticWeight : Int
  torsionWeight : Nat
  poleOrderWeight : Nat
  leastComplexRank : Nat
  claimBoundary : List String

structure HomologyComplexityPreorder where
  le :
    HomologyComplexityIndex →
    HomologyComplexityIndex →
      Prop
  refl :
    ∀ A, le A A
  trans :
    ∀ A B C, le A B → le B C → le A C
  claimBoundary : List String

theorem homologyComplexity_boundary_visible
    (H : HomologyComplexityIndex) :
    H.claimBoundary = H.claimBoundary :=
  rfl

end Stream
end BinaryLogicMatrix
end Surface.Legacy
```
