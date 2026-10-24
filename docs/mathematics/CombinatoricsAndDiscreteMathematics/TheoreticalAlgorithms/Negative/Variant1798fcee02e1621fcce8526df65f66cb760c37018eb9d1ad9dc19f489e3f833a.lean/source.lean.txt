import Mathematics.Core.SemanticIdentity
import Mathematics.SourceAnalysis.AbstractSourceAddress

/-!
# Negative mathematics

Failure, ambiguity, prohibition, and supersession remain addressable
mathematical states.  They are not represented by deleting a positive record.
-/

namespace Mathematics.Concept

inductive EpistemicDisposition
  | true_
  | false_
  | conjectured
  | independent
  | unknown
  | ambiguous
  | undefined
  | prohibited
  | computationalFailure
  | semanticFailure
  | superseded
  | attempted
  deriving DecidableEq, Repr, Inhabited

/-- A first-class negative or unresolved mathematical observation. -/
structure NegativeElement where
  elementId : ElementRef
  subjectId : ElementId
  disposition : EpistemicDisposition
  source : SourceAnalysis.AbstractSourceAddress
  obstructionIds : List StableId
  continuationIds : List StableId
  evidenceIds : List EvidenceId
  statementDigest : Digest
  deriving DecidableEq, Repr

/-- A negative element remains about its original subject under continuation. -/
def NegativeElement.SameSubject
    (left right : NegativeElement) : Prop :=
  left.subjectId = right.subjectId

end Mathematics.Concept
