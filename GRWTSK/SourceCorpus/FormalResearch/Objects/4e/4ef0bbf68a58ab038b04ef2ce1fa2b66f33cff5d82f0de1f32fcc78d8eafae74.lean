import Mathematics.Oracle.Naming.Cohomology

/-! # Typed Oracle and model naming proposals -/

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
