# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AuxiliaryProfile.Varianta974c7b631fd5a007ea7fd7c376e27b5bcec3dcd228865df119928936fd76901

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e38920fc2cb23886e9dda9497b00bd9b39fc65ad` · SHA-256 `a974c7b631fd5a007ea7fd7c376e27b5bcec3dcd228865df119928936fd76901`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Projects.Profile

/-! # Tao-associated auxiliary project fibers -/

namespace Mathematics.Projects.Tao

inductive AuxiliaryFiberKind
  | problemRegistry
  | estimateComputation
  | optimization
  | researchLog
  deriving DecidableEq, Repr

structure AuxiliaryProfile where
  base : Projects.ProjectProfile
  kind : AuxiliaryFiberKind
  candidateStatementIds : List StableId
  parameterDataIds : List StableId
  benchmarkIds : List StableId
  counterexampleSearchIds : List StableId
  theoremAuthorityExcluded : Bool := true
  profileDigest : Digest

end Mathematics.Projects.Tao
```
