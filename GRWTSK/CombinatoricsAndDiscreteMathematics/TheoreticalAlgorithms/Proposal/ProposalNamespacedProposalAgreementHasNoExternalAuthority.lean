-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ElementNameIR.Variant4ef0bbf68a58ab038b04ef2ce1fa2b66f33cff5d82f0de1f32fcc78d8eafae74","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4ef0bbf68a58ab038b04ef2ce1fa2b66f33cff5d82f0de1f32fcc78d8eafae74","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ElementNameIR.Variant4ef0bbf68a58ab038b04ef2ce1fa2b66f33cff5d82f0de1f32fcc78d8eafae74","mathematical_subject":"Computation.DataStructures","original_sha256":"4ef0bbf68a58ab038b04ef2ce1fa2b66f33cff5d82f0de1f32fcc78d8eafae74","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Oracle/Naming/Proposal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Oracle.Naming.Cohomology

/-! # Typed Oracle and model naming proposals -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ElementNameIR.Variant4ef0bbf68a58ab038b04ef2ce1fa2b66f33cff5d82f0de1f32fcc78d8eafae74

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
  authority : NamingAuthority := .oracleProposed
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

/-- Agreement remains a proposal; it does not establish external denotation. -/
theorem proposalAgreement_has_no_external_authority
    (_oracle : OracleCandidate) (_model : ModelProposal) :
    NamingAuthority.modelOracleAgreement ≠
      NamingAuthority.externalCertified := by
  decide

end Mathematics.Oracle.Naming
