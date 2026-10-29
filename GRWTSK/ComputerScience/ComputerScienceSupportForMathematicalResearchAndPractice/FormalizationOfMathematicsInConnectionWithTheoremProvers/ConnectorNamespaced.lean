-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ConnectorDescriptor.Variant2e7d31fd9a4d9aa4cd281156e09e848ae800e9468e6c2c494719e7f2dade29bd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2e7d31fd9a4d9aa4cd281156e09e848ae800e9468e6c2c494719e7f2dade29bd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ConnectorDescriptor.Variant2e7d31fd9a4d9aa4cd281156e09e848ae800e9468e6c2c494719e7f2dade29bd","mathematical_subject":"Foundations.Unclassified","original_sha256":"2e7d31fd9a4d9aa4cd281156e09e848ae800e9468e6c2c494719e7f2dade29bd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SemiLocalDefect/Sonin/Connector.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.UnknownLedger


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ConnectorDescriptor.Variant2e7d31fd9a4d9aa4cd281156e09e848ae800e9468e6c2c494719e7f2dade29bd

namespace Mathematics.SemiLocalDefect.Sonin

structure ConnectorDescriptor where
  connectorRef : String
  sourceSpaceRef : String
  targetSpaceRef : String
  status : OpenBridgeStatus :=
    openBridgeStatus .soninConnector

end Mathematics.SemiLocalDefect.Sonin
