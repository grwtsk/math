# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Agreement.Variant08b94b3e5fe4a652d75812a151143380d372e4e891e9e0cd48692e0a6b007586

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ea3195ea515e68d2d34d44f6e359b013fbea6f17` · SHA-256 `08b94b3e5fe4a652d75812a151143380d372e4e891e9e0cd48692e0a6b007586`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Oracle.Jurisdiction
import Mathematics.Projection.PolyHierarchy

/-!
# Dimensioned oracle agreement

Agreement is recorded by dimension.  Consensus is a proposal-level
observation and cannot construct an intrinsic or kernel-certified fact.
-/

namespace Mathematics.Oracle

inductive AgreementDimension
  | identity
  | type_
  | meaning
  | denotation
  | boundary
  | relation
  | relationKind
  | dependency
  | representation
  | authority
  | proofRoute
  | transportability
  | residue
  | prohibition
  | audience
  deriving DecidableEq, Repr, Inhabited

inductive AgreementStatus
  | exact
  | compatible
  | disagrees
  | unresolved
  deriving DecidableEq, Repr, Inhabited

structure AgreementFinding where
  findingId : StableId
  dimension : AgreementDimension
  status : AgreementStatus
  oracleIds : List OracleId
  subjectPointIds : List ElementId
  evidenceIds : List EvidenceId
  findingDigest : Digest
  deriving DecidableEq, Repr

structure AgreementLedger where
  pointUniverseId : StableId
  findings : List AgreementFinding
  dimensionsCovered :
    ∀ dimension,
      ∃ finding ∈ findings,
        finding.dimension = dimension
  ledgerDigest : Digest

/-- Even complete exact agreement remains proposal authority. -/
def AgreementLedger.authority
    (_ledger : AgreementLedger) :
    Projection.ProposalAuthority :=
  .modelOracleAgreement

@[simp] theorem agreement_is_not_fact_authority
    (ledger : AgreementLedger) :
    ¬ ∃ authority : Projection.FactAuthority,
      Sum.inl ledger.authority =
        (Sum.inr authority :
          Projection.ProposalAuthority ⊕ Projection.FactAuthority) :=
  Projection.proposal_is_not_fact_authority ledger.authority

end Mathematics.Oracle
```
