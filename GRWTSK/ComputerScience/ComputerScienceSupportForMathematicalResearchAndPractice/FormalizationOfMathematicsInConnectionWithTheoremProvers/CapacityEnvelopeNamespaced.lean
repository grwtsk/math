-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CapacityEnvelopeDescriptor.Variant65bba1b79fa1adb9967d26ba38a37732b6292f2ee45cbfe208e03a9f5d0e19a4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"65bba1b79fa1adb9967d26ba38a37732b6292f2ee45cbfe208e03a9f5d0e19a4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CapacityEnvelopeDescriptor.Variant65bba1b79fa1adb9967d26ba38a37732b6292f2ee45cbfe208e03a9f5d0e19a4","mathematical_subject":"Foundations.Unclassified","original_sha256":"65bba1b79fa1adb9967d26ba38a37732b6292f2ee45cbfe208e03a9f5d0e19a4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SemiLocalDefect/CapacityEnvelope.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.UnknownLedger


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CapacityEnvelopeDescriptor.Variant65bba1b79fa1adb9967d26ba38a37732b6292f2ee45cbfe208e03a9f5d0e19a4

namespace Mathematics.SemiLocalDefect

structure CapacityEnvelopeDescriptor where
  envelopeRef : String
  feasibleRegionRef : String
  containmentCertificateRef : Option String
  inconsistencyRef : Option String
  status : OpenBridgeStatus :=
    openBridgeStatus .certifiedCapacityEnvelope

end Mathematics.SemiLocalDefect
