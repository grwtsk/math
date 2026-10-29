-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ElementNameIR.Variant96f88d374da8f55c21af531e02d5d94084edfe802b00800a9559273d6c79dd2a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"96f88d374da8f55c21af531e02d5d94084edfe802b00800a9559273d6c79dd2a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ElementNameIR.Variant96f88d374da8f55c21af531e02d5d94084edfe802b00800a9559273d6c79dd2a","mathematical_subject":"Computation.DataStructures","original_sha256":"96f88d374da8f55c21af531e02d5d94084edfe802b00800a9559273d6c79dd2a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Oracle/Naming/Proposal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Oracle.Naming.Cohomology

/-! # Typed Oracle and model naming proposals -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ElementNameIR.Variant96f88d374da8f55c21af531e02d5d94084edfe802b00800a9559273d6c79dd2a

namespace Mathematics.Oracle.Naming

open Mathematics

structure ElementNameIR where
  schema : String
  elementId : SourceElementId
  name : ElementName
  action : String
  domain : Array String
  supportIds : Array String
  nonclaims : Array String
  irDigest : Digest
  deriving DecidableEq, Repr

structure OracleCandidate where
  candidateId : String
  value : ElementNameIR
  supportStrengths : Array (String × Rat)
  negativeEvidence : Array String
  collisionFree : Bool
  scoreTuple : Array String
  authority : NamingAuthority := .deterministicOracle
  deriving Repr

structure ModelProposal where
  selectedCandidateId : String
  value : ElementNameIR
  modelDigest : Digest
  tokenizerDigest : Digest
  templateDigest : Digest
  authority : NamingAuthority := .modelProposed
  deriving Repr

def ProposalAgreement (oracle : OracleCandidate) (model : ModelProposal) : Prop :=
  model.selectedCandidateId = oracle.candidateId ∧ model.value = oracle.value

end Mathematics.Oracle.Naming
