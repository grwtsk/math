-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CofinalGramDescriptor.Variant7bcb52000d4e15492dc77cd2d24cd85a988d46f00cc4b49e50d9ef9ee963be6b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7bcb52000d4e15492dc77cd2d24cd85a988d46f00cc4b49e50d9ef9ee963be6b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.CofinalGramDescriptor.Variant7bcb52000d4e15492dc77cd2d24cd85a988d46f00cc4b49e50d9ef9ee963be6b","mathematical_subject":"Computation.DataStructures","original_sha256":"7bcb52000d4e15492dc77cd2d24cd85a988d46f00cc4b49e50d9ef9ee963be6b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SemiLocalDefect/Sonin/CofinalGram.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.UnknownLedger


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CofinalGramDescriptor.Variant7bcb52000d4e15492dc77cd2d24cd85a988d46f00cc4b49e50d9ef9ee963be6b

namespace Mathematics.SemiLocalDefect.Sonin

structure CofinalGramDescriptor where
  systemRef : String
  finiteStageRefs : List String
  stabilityCertificateRef : Option String
  status : OpenBridgeStatus :=
    openBridgeStatus .soninGramCofinalStability

end Mathematics.SemiLocalDefect.Sonin
