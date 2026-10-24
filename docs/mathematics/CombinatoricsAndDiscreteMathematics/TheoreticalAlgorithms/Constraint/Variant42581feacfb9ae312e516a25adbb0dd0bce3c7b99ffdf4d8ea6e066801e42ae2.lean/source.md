# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Constraint.Variant42581feacfb9ae312e516a25adbb0dd0bce3c7b99ffdf4d8ea6e066801e42ae2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a507ff1c3d5dbcc2127f85c5783ec7e78e400df6` · SHA-256 `42581feacfb9ae312e516a25adbb0dd0bce3c7b99ffdf4d8ea6e066801e42ae2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import MathDiscovery.Refactor.Profile

/-! # Hard module-planning constraints -/

namespace MathDiscovery.Refactor

open MathDiscovery

inductive ConstraintKind
  | exactlyOneModule
  | mustLink
  | cannotLink
  | acyclicImports
  | reconstructibleContext
  | publicNamePreservation
  | statementPreservation
  | trustNonincrease
  | safetyPreservation
  | stableLayering
  | canonicalRootIsolation
  | importOnlyUmbrella
  deriving DecidableEq, Repr, Inhabited

structure Constraint where
  id : StableId
  kind : ConstraintKind
  atomIds : Array SourceAtomId
  moduleIds : Array TargetModuleId
  evidenceDigest : Digest
  satisfied : Bool
  deriving DecidableEq, Repr

end MathDiscovery.Refactor
```
