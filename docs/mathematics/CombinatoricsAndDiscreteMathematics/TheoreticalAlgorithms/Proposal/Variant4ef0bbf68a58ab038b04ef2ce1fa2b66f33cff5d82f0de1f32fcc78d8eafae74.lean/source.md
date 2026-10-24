# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Proposal.Variant4ef0bbf68a58ab038b04ef2ce1fa2b66f33cff5d82f0de1f32fcc78d8eafae74

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a324f68af1ea1d7dfaa9ff446599c168d0a958bf` · SHA-256 `4ef0bbf68a58ab038b04ef2ce1fa2b66f33cff5d82f0de1f32fcc78d8eafae74`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
