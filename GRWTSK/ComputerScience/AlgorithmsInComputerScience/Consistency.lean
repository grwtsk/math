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
