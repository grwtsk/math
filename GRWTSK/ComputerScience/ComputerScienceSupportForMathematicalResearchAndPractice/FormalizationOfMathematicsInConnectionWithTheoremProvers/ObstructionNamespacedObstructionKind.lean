-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ObstructionKind.Variant6673454ad9cd057b9f0f85a7028cdedcb7c0c1ae1a5cd9ed368fec599c9fdb38","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6673454ad9cd057b9f0f85a7028cdedcb7c0c1ae1a5cd9ed368fec599c9fdb38","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ObstructionKind.Variant6673454ad9cd057b9f0f85a7028cdedcb7c0c1ae1a5cd9ed368fec599c9fdb38","mathematical_subject":"Foundations.Unclassified","original_sha256":"6673454ad9cd057b9f0f85a7028cdedcb7c0c1ae1a5cd9ed368fec599c9fdb38","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Surgery/Obstruction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Orbit.All

/-! # Orbit boundaries and obstructions -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ObstructionKind.Variant6673454ad9cd057b9f0f85a7028cdedcb7c0c1ae1a5cd9ed368fec599c9fdb38

namespace Mathematics.Surgery

inductive ObstructionKind
  | orbitTypeBoundary
  | endpointFailure
  | regularityFailure
  | residualDivergence
  | cohomologyClass
  deriving DecidableEq, Repr

structure Obstruction where
  kind : ObstructionKind
  evidence : EvidenceId
  explanation : String
  deriving DecidableEq, Repr

end Mathematics.Surgery
