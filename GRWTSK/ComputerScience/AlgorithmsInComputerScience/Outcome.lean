import Mathematics.Reflection.Candidate

/-!
# Reflection outcomes

Accepted, challenged, rejected, and revised outcomes all remain first-class
history.  Acceptance is an outcome label only; positive authority still
requires the existing proof-bearing certificate and re-ingestion path.
-/

namespace Mathematics.Reflection

inductive OutcomeKind
  | accepted
  | challenged
  | rejected
  | revised
  deriving DecidableEq, Repr, Inhabited

structure Outcome where
  outcomeId : StableId
  candidateId : StableId
  kind : OutcomeKind
  targetProjectId : ProjectId
  evidenceIds : List EvidenceId
  diagnosticIds : List StableId
  successorCandidateId : Option StableId
  outcomeDigest : Digest
  deriving DecidableEq, Repr

/-- Rejection remains addressable and may carry a later revised candidate. -/
def Outcome.IsNegative (outcome : Outcome) : Prop :=
  outcome.kind = .challenged ∨
  outcome.kind = .rejected

end Mathematics.Reflection
