# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.VersionTransport.Variant1f12154720740a1387ba716ec64e28b2d719487b70107ec04d564ec0fb7b2aae

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0861bf288882f2969cf6f10873c91120012650e8` · SHA-256 `0c2756bf456bc2c60eeca48aaf0a811292168e99239e98f8d573815d8b4a3391`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.VersionTransport.Variant5f17c941cfa0d5981579d91d13a4eee6fbd2f0c20e9db34158732d0de1f1d085","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5f17c941cfa0d5981579d91d13a4eee6fbd2f0c20e9db34158732d0de1f1d085","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.VersionTransport.Variant5f17c941cfa0d5981579d91d13a4eee6fbd2f0c20e9db34158732d0de1f1d085","mathematical_subject":"Foundations.Unclassified","original_sha256":"5f17c941cfa0d5981579d91d13a4eee6fbd2f0c20e9db34158732d0de1f1d085","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Federation/VersionTransport.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Concept.PropertyTransport
import Mathematics.Federation.Conflict

/-! # Partial version transport -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.VersionTransport.Variant5f17c941cfa0d5981579d91d13a4eee6fbd2f0c20e9db34158732d0de1f1d085

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
