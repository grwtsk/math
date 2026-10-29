-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProjectionFailure.Variant662c04fe5f5278b4662d0909b9b85b475b06eb8969c0c48c8969265f7f59eb63","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"662c04fe5f5278b4662d0909b9b85b475b06eb8969c0c48c8969265f7f59eb63","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ProjectionFailure.Variant662c04fe5f5278b4662d0909b9b85b475b06eb8969c0c48c8969265f7f59eb63","mathematical_subject":"Foundations.Unclassified","original_sha256":"662c04fe5f5278b4662d0909b9b85b475b06eb8969c0c48c8969265f7f59eb63","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Projection/Failure.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Fail-closed projection states

These are terminal proof failures, not ranking outcomes.  An implementation may
attach diagnostics, but it may not replace any constructor below with a guess.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProjectionFailure.Variant662c04fe5f5278b4662d0909b9b85b475b06eb8969c0c48c8969265f7f59eb63

namespace Mathematics.Projection

/-- Every mandatory stop state in the rigidified projection protocol. -/
inductive ProjectionFailure
  | uncertifiedExternalLabel
  | labelCollision
  | incompleteLabelCoverage
  | ambiguousLabelDenotation
  | unresolvedDerivedNode
  | nonfunctionalProjectionLaw
  | projectionCertificateFailure
  deriving DecidableEq, Repr, Inhabited

/-- A projection can be emitted only on the successful side of this boundary. -/
abbrev ProjectionResult (Projection : Type) :=
  Except ProjectionFailure Projection

end Mathematics.Projection
