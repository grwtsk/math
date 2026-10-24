# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Patch.Variant4ef6d133361524d99698c0c1989d4167ea031b7efc5c5364c682caeca85caa21

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `75fda582152e119543dc3c9f6d980066e8571529` · SHA-256 `4ef6d133361524d99698c0c1989d4167ea031b7efc5c5364c682caeca85caa21`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Ecosystem.Snapshot
import Mathematics.Reflection.Candidate

/-! # Snapshot-bound patches -/

namespace Mathematics.Reflection

inductive PatchOperation
  | add
  | modify
  | delete
  | rename
  deriving DecidableEq, Repr

structure PatchElement where
  operation : PatchOperation
  oldPath : Option String
  newPath : Option String
  preimageDigest : Option Digest
  outputDigest : Option Digest
  deriving DecidableEq, Repr

/-- Patch preimages are bound to one immutable upstream snapshot. -/
structure Patch where
  patchId : StableId
  candidate : Candidate
  baseSnapshot : Ecosystem.ProjectSnapshot
  elements : List PatchElement
  elements_nonempty : elements ≠ []
  target_snapshot_exact :
    candidate.targetSnapshot = baseSnapshot
  patchDigest : Digest

end Mathematics.Reflection
```
