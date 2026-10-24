# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Proposal.Variante9f3315af9d47743cfb1b875437005ecf4bcabcbf2c719089683168fee6b3e72

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7048166b5cf3e1bd5f730b6f2fe60f5c0e755e65` · SHA-256 `e9f3315af9d47743cfb1b875437005ecf4bcabcbf2c719089683168fee6b3e72`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import MathDiscovery.Oracle.Naming.Cohomology

/-! # Typed Oracle and model naming proposals -/

namespace MathDiscovery.Oracle.Naming

open MathDiscovery

structure AtomNameIR where
  schema : String
  atomId : SourceAtomId
  name : AtomName
  action : String
  domain : Array String
  supportIds : Array String
  nonclaims : Array String
  irDigest : Digest
  deriving DecidableEq, Repr

structure OracleCandidate where
  candidateId : String
  value : AtomNameIR
  supportStrengths : Array (String × Rat)
  negativeEvidence : Array String
  collisionFree : Bool
  scoreTuple : Array String
  authority : NamingAuthority := .deterministicOracle
  deriving Repr

structure ModelProposal where
  selectedCandidateId : String
  value : AtomNameIR
  modelDigest : Digest
  tokenizerDigest : Digest
  templateDigest : Digest
  authority : NamingAuthority := .modelProposed
  deriving Repr

def ProposalAgreement (oracle : OracleCandidate) (model : ModelProposal) : Prop :=
  model.selectedCandidateId = oracle.candidateId ∧ model.value = oracle.value

end MathDiscovery.Oracle.Naming
```
