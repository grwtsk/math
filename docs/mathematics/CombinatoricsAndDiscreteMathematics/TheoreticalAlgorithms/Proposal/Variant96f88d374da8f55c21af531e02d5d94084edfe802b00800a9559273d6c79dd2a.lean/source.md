# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Proposal.Variant96f88d374da8f55c21af531e02d5d94084edfe802b00800a9559273d6c79dd2a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6e1661714e1d71915b1713e11d5dfb6015bf7b12` · SHA-256 `96f88d374da8f55c21af531e02d5d94084edfe802b00800a9559273d6c79dd2a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

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
```
