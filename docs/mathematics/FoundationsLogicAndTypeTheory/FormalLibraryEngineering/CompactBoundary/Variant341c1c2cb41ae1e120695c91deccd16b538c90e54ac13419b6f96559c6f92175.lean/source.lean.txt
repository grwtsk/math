-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CompactSurveyBoundary.Variant6d31b1bd41b9a605de1e5a1aa74a984ec3ede4bfe7ebd3881e72e3d780c277e7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6d31b1bd41b9a605de1e5a1aa74a984ec3ede4bfe7ebd3881e72e3d780c277e7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CompactSurveyBoundary.Variant6d31b1bd41b9a605de1e5a1aa74a984ec3ede4bfe7ebd3881e72e3d780c277e7","mathematical_subject":"Foundations.Unclassified","original_sha256":"6d31b1bd41b9a605de1e5a1aa74a984ec3ede4bfe7ebd3881e72e3d780c277e7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/ResearchSurvey/CompactBoundary.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CompactSurveyBoundary.Variant6d31b1bd41b9a605de1e5a1aa74a984ec3ede4bfe7ebd3881e72e3d780c277e7

set_option autoImplicit false

namespace Think.Compact

structure CompactSurveyBoundary where
  targetCount : Nat
  primitiveCount : Nat
  conjectureMentionCount : Nat
  theoremAuthorityImported : Bool
deriving Repr

def compactSurveyBoundary : CompactSurveyBoundary :=
  { targetCount := 604
    primitiveCount := 304
    conjectureMentionCount := 47
    theoremAuthorityImported := false }

theorem compactSurveyBoundary_noTheoremAuthority :
    compactSurveyBoundary.theoremAuthorityImported = false := by
  rfl

end Think.Compact
