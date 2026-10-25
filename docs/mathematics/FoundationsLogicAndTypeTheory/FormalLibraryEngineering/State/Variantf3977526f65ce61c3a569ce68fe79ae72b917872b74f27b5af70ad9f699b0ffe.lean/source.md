# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.State.Variantf3977526f65ce61c3a569ce68fe79ae72b917872b74f27b5af70ad9f699b0ffe

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `825e2851bf1fc379c9d36c5aed525ea1a93c717d` · SHA-256 `f3977526f65ce61c3a569ce68fe79ae72b917872b74f27b5af70ad9f699b0ffe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Progression.Kind

/-! # Immutable progression states -/

namespace Mathematics.Progression

universe u

structure State (Payload : Type u) where
  id : ProgressionStateId
  revision : Nat
  kind : StateKind
  payload : Payload
  payloadDigest : Digest
  predecessor : Option ProgressionStateId

end Mathematics.Progression
```
