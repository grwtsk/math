-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PatchOperation.Variant4ef6d133361524d99698c0c1989d4167ea031b7efc5c5364c682caeca85caa21","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4ef6d133361524d99698c0c1989d4167ea031b7efc5c5364c682caeca85caa21","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.PatchOperation.Variant4ef6d133361524d99698c0c1989d4167ea031b7efc5c5364c682caeca85caa21","mathematical_subject":"Computation.DataStructures","original_sha256":"4ef6d133361524d99698c0c1989d4167ea031b7efc5c5364c682caeca85caa21","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Reflection/Patch.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Ecosystem.Snapshot
import Mathematics.Reflection.Candidate

/-! # Snapshot-bound patches -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PatchOperation.Variant4ef6d133361524d99698c0c1989d4167ea031b7efc5c5364c682caeca85caa21

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
