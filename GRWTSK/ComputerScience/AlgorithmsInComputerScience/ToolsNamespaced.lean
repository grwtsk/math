-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Tool.Variant7ad229e87a5e32b71048db4e274327565081d5a8e4ca88c09e073fb862f9a645","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7ad229e87a5e32b71048db4e274327565081d5a8e4ca88c09e073fb862f9a645","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Tool.Variant7ad229e87a5e32b71048db4e274327565081d5a8e4ca88c09e073fb862f9a645","mathematical_subject":"Computation.DataStructures","original_sha256":"7ad229e87a5e32b71048db4e274327565081d5a8e4ca88c09e073fb862f9a645","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Oracle/Tools.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Oracle.Navigation

/-! # Public mathematical tool surface -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Tool.Variant7ad229e87a5e32b71048db4e274327565081d5a8e4ca88c09e073fb862f9a645

namespace Mathematics.Oracle

universe u

inductive Tool
  | navigate
  | answer
  | explainResidue
  | proposeInvention
  | compare
  | traceProgression
  | compileBridge
  | compareTrajectories
  | explainPhase
  | detectSurgeryBoundary
  deriving DecidableEq, Repr

def Tool.publicName : Tool → String
  | .navigate => "math.navigate"
  | .answer => "math.answer"
  | .explainResidue => "math.explain_residue"
  | .proposeInvention => "math.propose_invention"
  | .compare => "math.compare"
  | .traceProgression => "math.trace_progression"
  | .compileBridge => "math.compile_bridge"
  | .compareTrajectories => "math.compare_trajectories"
  | .explainPhase => "math.explain_phase"
  | .detectSurgeryBoundary => "math.detect_surgery_boundary"

structure ToolResultEnvelope (Payload : Type u) where
  stateId : StableId
  inputDigest : Digest
  encoderProfile : Digest
  metricProfile : Digest
  conceptIndexVersion : Digest
  authority : NavigationAuthority
  diagnostics : List String
  payload : Payload

end Mathematics.Oracle
