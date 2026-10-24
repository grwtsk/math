-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ProjectSnapshotKey.Variant50eb56492da54148363833c5a1a02085e4b64144b179906570e172b3ba542972","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"50eb56492da54148363833c5a1a02085e4b64144b179906570e172b3ba542972","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ProjectSnapshotKey.Variant50eb56492da54148363833c5a1a02085e4b64144b179906570e172b3ba542972","mathematical_subject":"Computation.DataStructures","original_sha256":"50eb56492da54148363833c5a1a02085e4b64144b179906570e172b3ba542972","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Ecosystem/Registry.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Ecosystem.Snapshot

/-! # Finite ecosystem registries -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ProjectSnapshotKey.Variant50eb56492da54148363833c5a1a02085e4b64144b179906570e172b3ba542972

namespace Mathematics.Ecosystem

/-- Revision-qualified key for one immutable project snapshot. -/
structure ProjectSnapshotKey where
  project : ProjectId
  revisionId : StableId
  deriving DecidableEq, Repr

def ProjectSnapshot.key (snapshot : ProjectSnapshot) : ProjectSnapshotKey :=
  ⟨snapshot.identity.projectId, snapshot.revision.revisionId⟩

/-- A finite ecosystem snapshot permits many project and toolchain versions. -/
structure Registry where
  snapshots : List ProjectSnapshot
  keysUnique : (snapshots.map ProjectSnapshot.key).Nodup
  registryDigest : Digest

namespace Registry

/-- Lookup is revision-qualified; project name alone is never a global key. -/
def find?
    (registry : Registry)
    (key : ProjectSnapshotKey) : Option ProjectSnapshot :=
  registry.snapshots.find? fun snapshot ↦ snapshot.key = key

end Registry

end Mathematics.Ecosystem
