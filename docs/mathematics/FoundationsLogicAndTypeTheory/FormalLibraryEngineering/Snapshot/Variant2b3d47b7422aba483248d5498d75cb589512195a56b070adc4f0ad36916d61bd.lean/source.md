# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Snapshot.Variant2b3d47b7422aba483248d5498d75cb589512195a56b070adc4f0ad36916d61bd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6c465a332197f50f0ca65f4b13619f9260f166e5` · SHA-256 `c423d7e60ffcc98c040fdbb0eebd9c3e9ad647352b0a892e9780e6fa1363a566`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProjectSnapshot.Variant6597a4782547ccfb5b19fad9c5ef3355d6178fb0d51fe9b9855907ed12e7ba9a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6597a4782547ccfb5b19fad9c5ef3355d6178fb0d51fe9b9855907ed12e7ba9a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ProjectSnapshot.Variant6597a4782547ccfb5b19fad9c5ef3355d6178fb0d51fe9b9855907ed12e7ba9a","mathematical_subject":"Foundations.Unclassified","original_sha256":"6597a4782547ccfb5b19fad9c5ef3355d6178fb0d51fe9b9855907ed12e7ba9a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Ecosystem/Snapshot.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Ecosystem.Admission

/-! # Immutable project snapshots -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProjectSnapshot.Variant6597a4782547ccfb5b19fad9c5ef3355d6178fb0d51fe9b9855907ed12e7ba9a

namespace Mathematics.Ecosystem

/--
One immutable project snapshot.  Analysis and repairs live in overlays and do
not mutate these source-authoritative fields.
-/
structure ProjectSnapshot where
  identity : ProjectIdentity
  revision : ProjectRevision
  manifest : ProjectManifest
  admission : ProjectAdmission
  toolchainCapsuleId : StableId
  rootDigest : Digest
  revision_matches :
    revision.project = identity
  manifest_matches :
    manifest.revision = revision
  admission_matches :
    admission.project = identity ∧ admission.manifest = manifest
  admitted : admission.status = .admitted

namespace ProjectSnapshot

/-- Complete capture survives packaging as a project snapshot. -/
theorem retains_source_artifact
    (snapshot : ProjectSnapshot)
    {artifactId : ArtifactId}
    (inventoried : artifactId ∈ snapshot.manifest.sourceInventory) :
    ∃ artifact ∈ snapshot.manifest.artifacts,
      artifact.artifactId = artifactId :=
  snapshot.manifest.retains_inventoried inventoried

end ProjectSnapshot

end Mathematics.Ecosystem
```
