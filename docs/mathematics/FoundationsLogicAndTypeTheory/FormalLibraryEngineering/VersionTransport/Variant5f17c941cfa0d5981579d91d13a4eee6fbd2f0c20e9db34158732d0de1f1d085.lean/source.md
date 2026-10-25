# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.VersionTransport.Variant5f17c941cfa0d5981579d91d13a4eee6fbd2f0c20e9db34158732d0de1f1d085

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e0693e5a0542df6e7da8c03ccbdfa374c46dc9a0` · SHA-256 `5f17c941cfa0d5981579d91d13a4eee6fbd2f0c20e9db34158732d0de1f1d085`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Concept.PropertyTransport
import Mathematics.Federation.Conflict

/-! # Partial version transport -/

namespace Mathematics.Federation

universe u

/--
Version transport is partial, preserves source identity, and cannot strengthen
the independent authority coordinates.
-/
structure VersionTransport (Object : Type u) where
  transportId : StableId
  source : ProjectFiber
  target : ProjectFiber
  domain : Set Object
  map? : Object → Option Object
  domain_exact :
    ∀ object, object ∈ domain ↔ ∃ output, map? object = some output
  sourceAuthority : Concept.Profile
  targetAuthority : Concept.Profile
  authority_nonincrease :
    targetAuthority.NoStrongerThan sourceAuthority
  transportDigest : Digest

/--
An environment-scoped transport family supplies identity and composition laws.
Partiality remains visible through `Option`; no inverse is postulated.
-/
structure VersionTransportSystem (Object : Type u) where
  fiber : Ecosystem.ProjectSnapshotKey → ProjectFiber
  transport :
    ∀ (_source _target : Ecosystem.ProjectSnapshotKey),
      VersionTransport Object
  endpoints :
    ∀ source target,
      (transport source target).source = fiber source ∧
      (transport source target).target = fiber target
  identity :
    ∀ base object,
      (transport base base).map? object = some object
  composition :
    ∀ source middle target object,
      ((transport source middle).map? object).bind
          (transport middle target).map? =
        (transport source target).map? object

/-- Failed transport is retained as residue rather than fabricated output. -/
structure TransportResidue where
  transportId : StableId
  sourceObjectId : StableId
  reason : String
  evidenceDigest : Digest
  deriving DecidableEq, Repr

end Mathematics.Federation
```
