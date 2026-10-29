-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DouglasConnectorDescriptor.Variant6db55ed5e6fbe501853d756bb30c0af94f8c0386ce3ce04703ca11fd1749ec0f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6db55ed5e6fbe501853d756bb30c0af94f8c0386ce3ce04703ca11fd1749ec0f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.DouglasConnectorDescriptor.Variant6db55ed5e6fbe501853d756bb30c0af94f8c0386ce3ce04703ca11fd1749ec0f","mathematical_subject":"Foundations.Unclassified","original_sha256":"6db55ed5e6fbe501853d756bb30c0af94f8c0386ce3ce04703ca11fd1749ec0f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SemiLocalDefect/Hardy/DouglasConnector.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.UnknownLedger


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DouglasConnectorDescriptor.Variant6db55ed5e6fbe501853d756bb30c0af94f8c0386ce3ce04703ca11fd1749ec0f

namespace Mathematics.SemiLocalDefect.Hardy

structure DouglasConnectorDescriptor where
  connectorRef : String
  sourceTransmissionRef : String
  targetTransmissionRef : String
  contractionCertificateRef : Option String
  status : OpenBridgeStatus :=
    openBridgeStatus .douglasConnector

end Mathematics.SemiLocalDefect.Hardy
