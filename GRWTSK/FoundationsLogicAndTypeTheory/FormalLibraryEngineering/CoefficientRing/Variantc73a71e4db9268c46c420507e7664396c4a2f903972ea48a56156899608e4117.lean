-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CoefficientRingDescriptor.Variant48cbddefdde569ce14d7b94f39b3446a5889757496bef26117540ccb4051a0d0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"48cbddefdde569ce14d7b94f39b3446a5889757496bef26117540ccb4051a0d0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CoefficientRingDescriptor.Variant48cbddefdde569ce14d7b94f39b3446a5889757496bef26117540ccb4051a0d0","mathematical_subject":"Foundations.Unclassified","original_sha256":"48cbddefdde569ce14d7b94f39b3446a5889757496bef26117540ccb4051a0d0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SemiLocalDefect/QSeries/CoefficientRing.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.UnknownLedger


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CoefficientRingDescriptor.Variant48cbddefdde569ce14d7b94f39b3446a5889757496bef26117540ccb4051a0d0

namespace Mathematics.SemiLocalDefect.QSeries

structure CoefficientRingDescriptor where
  ringRef : String
  exactArithmeticRef : String
  intervalRef : Option String
  status : OpenBridgeStatus :=
    openBridgeStatus .qSeriesCoefficientRing

end Mathematics.SemiLocalDefect.QSeries
