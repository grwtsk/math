-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Reflect.Variant96c90e824d558db1725118038582df34074af46afcb8814248a543e57a48ce4a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"96c90e824d558db1725118038582df34074af46afcb8814248a543e57a48ce4a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Reflect.Variant96c90e824d558db1725118038582df34074af46afcb8814248a543e57a48ce4a","mathematical_subject":"Foundations.Unclassified","original_sha256":"96c90e824d558db1725118038582df34074af46afcb8814248a543e57a48ce4a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/GammaBridge/Reflected.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.GammaBridge.Interpolation

/-! # Reflected parameter profiles -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Reflect.Variant96c90e824d558db1725118038582df34074af46afcb8814248a543e57a48ce4a

namespace Mathematics.GammaBridge

/-- Reflection reverses a unit-interval parameter without altering its range. -/
def reflect (time : ℝ) : ℝ := 1 - time

@[simp] theorem reflect_left : reflect 0 = 1 := by
  simp [reflect]

@[simp] theorem reflect_right : reflect 1 = 0 := by
  simp [reflect]

@[simp] theorem reflect_involution (time : ℝ) :
    reflect (reflect time) = time := by
  simp [reflect]

end Mathematics.GammaBridge
