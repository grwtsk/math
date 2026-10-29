-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tan02UnrestrictedUpgrade.Variant7b91e8bd193684884267a05877078d7ca01b28712fa5eb5e6c4672b715f85902","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7b91e8bd193684884267a05877078d7ca01b28712fa5eb5e6c4672b715f85902","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Tan02UnrestrictedUpgrade.Variant7b91e8bd193684884267a05877078d7ca01b28712fa5eb5e6c4672b715f85902","mathematical_subject":"Foundations.Unclassified","original_sha256":"7b91e8bd193684884267a05877078d7ca01b28712fa5eb5e6c4672b715f85902","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/Algebraization/Theorems/TAN02_UnrestrictedUpgrade.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.Algebraization.Foundations


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tan02UnrestrictedUpgrade.Variant7b91e8bd193684884267a05877078d7ca01b28712fa5eb5e6c4672b715f85902

namespace FCRS.Algebraization.Theorems

/-- HSG upgrades effective Tannakian semantics to the unrestricted target. -/
theorem tan02_unrestrictedUpgrade
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S) :
    TAN02Claim S :=
  registry.tan02

end FCRS.Algebraization.Theorems
