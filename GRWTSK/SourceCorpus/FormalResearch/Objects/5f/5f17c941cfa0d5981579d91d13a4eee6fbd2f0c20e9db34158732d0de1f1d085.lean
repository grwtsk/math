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
