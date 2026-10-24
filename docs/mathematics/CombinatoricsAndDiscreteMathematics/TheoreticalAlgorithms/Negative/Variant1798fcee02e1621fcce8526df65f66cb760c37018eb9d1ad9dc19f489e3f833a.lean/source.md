# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Negative.Variant1798fcee02e1621fcce8526df65f66cb760c37018eb9d1ad9dc19f489e3f833a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d2ac5277da892dd238598df6feba0e63f825efb9` · SHA-256 `1798fcee02e1621fcce8526df65f66cb760c37018eb9d1ad9dc19f489e3f833a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
