# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Canonical.Variant0d0106838331a34b02743f25c0ef59ed6167fa7a8e9252f1d17329b20ff04382

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `877c78c212a5054a2d14947be45d9c34d6d87bef` · SHA-256 `0d0106838331a34b02743f25c0ef59ed6167fa7a8e9252f1d17329b20ff04382`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Progression.State

/-! # Content-addressed progression and carrier identity -/

namespace Mathematics.Progression

structure Identity where
  progressionDigest : Digest
  profileDigest : Digest
  deriving DecidableEq, Repr

/-- Carrier identity depends on the complete progression and interpretation
profile, never on an endpoint label alone. -/
structure CarrierIdentity where
  progressionId : ProgressionId
  identity : Identity
  deriving DecidableEq, Repr

theorem carrier_identity_ext
    {left right : CarrierIdentity}
    (hprogression : left.progressionId = right.progressionId)
    (hdigests : left.identity = right.identity) :
    left = right := by
  cases left
  cases right
  simp_all

end Mathematics.Progression
```
