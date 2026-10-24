-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Identity.Variant0d0106838331a34b02743f25c0ef59ed6167fa7a8e9252f1d17329b20ff04382","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0d0106838331a34b02743f25c0ef59ed6167fa7a8e9252f1d17329b20ff04382","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Identity.Variant0d0106838331a34b02743f25c0ef59ed6167fa7a8e9252f1d17329b20ff04382","mathematical_subject":"Foundations.Unclassified","original_sha256":"0d0106838331a34b02743f25c0ef59ed6167fa7a8e9252f1d17329b20ff04382","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Progression/Canonical.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Progression.State

/-! # Content-addressed progression and carrier identity -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Identity.Variant0d0106838331a34b02743f25c0ef59ed6167fa7a8e9252f1d17329b20ff04382

namespace Mathematics.Progression

structure Identity where
  progressionDigest : Digest
  profileDigest : Digest
  deriving DecidableEq, Repr

/-- Carrier identity depends on the complete progression and interpretation
profile, never on an endpoint label alone. -/
structure CarrierIdentity where
  progressionId : ProgressionId
  identity : Identity
  deriving DecidableEq, Repr

theorem carrier_identity_ext
    {left right : CarrierIdentity}
    (hprogression : left.progressionId = right.progressionId)
    (hdigests : left.identity = right.identity) :
    left = right := by
  cases left
  cases right
  simp_all

end Mathematics.Progression
