-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProjectionDefectDescriptor.Variant851c6ffb44610365549e39dc54ccb417c00e9490157d12a5dfa19770dafb1ae8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"851c6ffb44610365549e39dc54ccb417c00e9490157d12a5dfa19770dafb1ae8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ProjectionDefectDescriptor.Variant851c6ffb44610365549e39dc54ccb417c00e9490157d12a5dfa19770dafb1ae8","mathematical_subject":"Foundations.Unclassified","original_sha256":"851c6ffb44610365549e39dc54ccb417c00e9490157d12a5dfa19770dafb1ae8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SemiLocalDefect/Sonin/ProjectionDefect.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.UnknownLedger


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProjectionDefectDescriptor.Variant851c6ffb44610365549e39dc54ccb417c00e9490157d12a5dfa19770dafb1ae8

namespace Mathematics.SemiLocalDefect.Sonin

structure ProjectionDefectDescriptor where
  defectRef : String
  projectionRef : String
  capacityRelationRef : Option String
  status : OpenBridgeStatus :=
    openBridgeStatus .soninProjectionDefect

end Mathematics.SemiLocalDefect.Sonin
