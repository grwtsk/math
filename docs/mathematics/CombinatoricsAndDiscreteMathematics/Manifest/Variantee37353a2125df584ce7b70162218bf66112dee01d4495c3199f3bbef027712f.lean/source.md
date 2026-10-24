# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Manifest.Variantee37353a2125df584ce7b70162218bf66112dee01d4495c3199f3bbef027712f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `18631ecfb75c734ebef054bad6540bbced242855` · SHA-256 `09f374cd368a2a698d691b4b6b1d7289fc4e86071ad739ee78c81a565f2241a1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.ProjectManifest.Variant232332623127c4fee84b143b3020563a2918be886bc4a37aa3ebd9498a3e392d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"232332623127c4fee84b143b3020563a2918be886bc4a37aa3ebd9498a3e392d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.ProjectManifest.Variant232332623127c4fee84b143b3020563a2918be886bc4a37aa3ebd9498a3e392d","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"232332623127c4fee84b143b3020563a2918be886bc4a37aa3ebd9498a3e392d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Ecosystem/Manifest.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Finset.Basic
import Mathematics.Ecosystem.Artifact

/-! # Complete finite project manifests -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.ProjectManifest.Variant232332623127c4fee84b143b3020563a2918be886bc4a37aa3ebd9498a3e392d

namespace Mathematics.Ecosystem

/--
A finite source snapshot is complete exactly when every source inventory
identity has one retained artifact and no retained artifact lies outside that
inventory.
-/
structure ProjectManifest where
  revision : ProjectRevision
  sourceInventory : Finset ArtifactId
  artifacts : List RawArtifact
  artifactIdsUnique : (artifacts.map RawArtifact.artifactId).Nodup
  coverage :
    ∀ artifactId,
      artifactId ∈ sourceInventory ↔
        ∃ artifact ∈ artifacts, artifact.artifactId = artifactId
  manifestDigest : Digest

namespace ProjectManifest

/-- No inventoried artifact may disappear silently. -/
theorem retains_inventoried
    (manifest : ProjectManifest)
    {artifactId : ArtifactId}
    (inventoried : artifactId ∈ manifest.sourceInventory) :
    ∃ artifact ∈ manifest.artifacts,
      artifact.artifactId = artifactId :=
  (manifest.coverage artifactId).mp inventoried

/-- Every retained artifact is justified by the source inventory. -/
theorem no_fabricated_artifact
    (manifest : ProjectManifest)
    {artifact : RawArtifact}
    (retained : artifact ∈ manifest.artifacts) :
    artifact.artifactId ∈ manifest.sourceInventory := by
  apply (manifest.coverage artifact.artifactId).mpr
  exact ⟨artifact, retained, rfl⟩

/-- Artifact occurrence identity is unique inside one complete manifest. -/
theorem artifact_occurs_exactly_once
    (manifest : ProjectManifest)
    {left right : RawArtifact}
    (leftMember : left ∈ manifest.artifacts)
    (rightMember : right ∈ manifest.artifacts)
    (sameId : left.artifactId = right.artifactId) :
    left = right :=
  List.inj_on_of_nodup_map manifest.artifactIdsUnique
    leftMember rightMember sameId

/-- Omitting an inventoried artifact contradicts manifest coverage. -/
theorem omission_rejected
    (manifest : ProjectManifest)
    {artifactId : ArtifactId}
    (inventoried : artifactId ∈ manifest.sourceInventory)
    (omitted :
      ¬ ∃ artifact ∈ manifest.artifacts,
        artifact.artifactId = artifactId) :
    False :=
  omitted (manifest.retains_inventoried inventoried)

end ProjectManifest

end Mathematics.Ecosystem
```
