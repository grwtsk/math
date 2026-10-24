# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Outcome.Variant73478d0643bc4610ac48a932f6a70a301aba7108ceb01fd09f82f4ea5956233f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c6cd0c95abdcd1bfff80ad48b1dd6d87dc171b12` · SHA-256 `73478d0643bc4610ac48a932f6a70a301aba7108ceb01fd09f82f4ea5956233f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
