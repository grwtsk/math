# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Capsule.Varianta3a26e356010f3e0f4fc884bbe1a158419612cff6478724969ff3323e7b1696b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `18db29307e3fdbc14e9c48a9679d0c33ee2a2734` · SHA-256 `e48e00dc2566ebe738d578c4d365f58ecfdc9fee18096a3d5c3326bc4f2f41fd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Capsule.Variant8da03620cfc0aa032bfb8cab84d6da219099c8f94714f8251e345fa8e84f0eb3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8da03620cfc0aa032bfb8cab84d6da219099c8f94714f8251e345fa8e84f0eb3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Capsule.Variant8da03620cfc0aa032bfb8cab84d6da219099c8f94714f8251e345fa8e84f0eb3","mathematical_subject":"Computation.DataStructures","original_sha256":"8da03620cfc0aa032bfb8cab84d6da219099c8f94714f8251e345fa8e84f0eb3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Toolchain/Capsule.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Ecosystem.ProjectIdentity
import Mathematics.Toolchain.LakeGraph

/-! # Project-federated toolchain capsules -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Capsule.Variant8da03620cfc0aa032bfb8cab84d6da219099c8f94714f8251e345fa8e84f0eb3

namespace Mathematics.Toolchain

/--
An exact, project-local reconstruction environment.  Multiple capsules may
carry incompatible Lean or Mathlib revisions without flattening.
-/
structure Capsule where
  capsuleId : StableId
  project : ProjectId
  revisionId : StableId
  lean : LeanVersion
  lakeGraph : LakeGraph
  buildTargetIds : List StableId
  buildTargetIdsUnique : buildTargetIds.Nodup
  platform : String
  toolchainDigest : Digest
  buildOptionsDigest : Digest
  environmentDigest : Digest

/-- Capsule identity is qualified by project and revision. -/
structure CapsuleKey where
  project : ProjectId
  revisionId : StableId
  capsuleId : StableId
  deriving DecidableEq, Repr

def Capsule.key (capsule : Capsule) : CapsuleKey :=
  ⟨capsule.project, capsule.revisionId, capsule.capsuleId⟩

end Mathematics.Toolchain
```
