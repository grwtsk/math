# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TheoremCreation.Varianteda1a6008ebab5fb924e7d57e184919c2231151617228e5419a87409c9cb9a13

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2618519b24a60b9f663367e5f43d375bed3457c9` · SHA-256 `eda1a6008ebab5fb924e7d57e184919c2231151617228e5419a87409c9cb9a13`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.BinaryLogicMatrix.Stream.CurvatureBalance

namespace Surface.Legacy
namespace BinaryLogicMatrix
namespace Stream

structure TheoremCreationRequest where
  obligation : TheoremCreationObligation
  sourceWitnesses : List String
  proposedDeclarationName : String
  requiredClaimBoundaries : List String
  claimBoundary : List String

theorem theoremCreationRequest_boundary_visible
    (R : TheoremCreationRequest) :
    R.claimBoundary = R.claimBoundary :=
  rfl

end Stream
end BinaryLogicMatrix
end Surface.Legacy
```
