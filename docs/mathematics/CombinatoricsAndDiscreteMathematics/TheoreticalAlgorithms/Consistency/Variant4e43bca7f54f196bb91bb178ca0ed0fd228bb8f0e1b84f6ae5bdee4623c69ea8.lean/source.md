# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Consistency.Variant4e43bca7f54f196bb91bb178ca0ed0fd228bb8f0e1b84f6ae5bdee4623c69ea8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9f4486d829f95ec921b3e2e501ff5103295f6fec` · SHA-256 `4e43bca7f54f196bb91bb178ca0ed0fd228bb8f0e1b84f6ae5bdee4623c69ea8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Concept.PointUniverse

/-!
# Multidimensional self-consistency

Consistency is not one Boolean shadow.  Each required dimension has an
independent finding, and unresolved findings remain visible.
-/

namespace Mathematics.Concept

inductive ConsistencyDimension
  | identity
  | referential
  | type_
  | denotational
  | boundary
  | authority
  | provenance
  | version
  | label
  | projection
  deriving DecidableEq, Repr, Inhabited

inductive ConsistencyStatus
  | valid
  | invalid
  | unresolved
  deriving DecidableEq, Repr, Inhabited

structure ConsistencyFinding where
  findingId : StableId
  subjectId : ElementId
  dimension : ConsistencyDimension
  status : ConsistencyStatus
  evidenceIds : List EvidenceId
  diagnosticDigest : Digest
  deriving DecidableEq, Repr

structure ConsistencyLedger (pointUniverse : PointUniverse) where
  universeDigest : Digest
  universe_digest_exact :
    universeDigest = pointUniverse.universeDigest
  findings : List ConsistencyFinding
  dimensionsCovered :
    ∀ point ∈ pointUniverse.points,
      ∀ dimension,
        ∃ finding ∈ findings,
          finding.subjectId = point.pointId ∧
          finding.dimension = dimension
  findingsResolve :
    ∀ finding ∈ findings,
      finding.subjectId ∈
        pointUniverse.points.map MathematicalPoint.pointId
  ledgerDigest : Digest

def ConsistencyLedger.SelfConsistent
    {pointUniverse : PointUniverse}
    (ledger : ConsistencyLedger pointUniverse) : Prop :=
  ∀ finding ∈ ledger.findings,
    finding.status = .valid

/-- An unresolved finding prevents a claim of complete self-consistency. -/
theorem ConsistencyLedger.not_selfConsistent_of_unresolved
    {pointUniverse : PointUniverse}
    (ledger : ConsistencyLedger pointUniverse)
    {finding : ConsistencyFinding}
    (member : finding ∈ ledger.findings)
    (unresolved : finding.status = .unresolved) :
    ¬ ledger.SelfConsistent := by
  intro consistent
  have valid := consistent finding member
  simp [unresolved] at valid

end Mathematics.Concept
```
