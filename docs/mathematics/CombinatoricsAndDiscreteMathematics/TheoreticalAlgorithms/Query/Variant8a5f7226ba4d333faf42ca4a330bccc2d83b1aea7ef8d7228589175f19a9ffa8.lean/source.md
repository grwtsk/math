# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Query.Variant8a5f7226ba4d333faf42ca4a330bccc2d83b1aea7ef8d7228589175f19a9ffa8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4d720810b6ca8ad9dc23715cd9bd35cc51bce523` · SHA-256 `8a5f7226ba4d333faf42ca4a330bccc2d83b1aea7ef8d7228589175f19a9ffa8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.ContinuousAssurance.Index.Validation

/-!
# Authority-preserving index queries

Query results retain whether the payload is a formal fact, external
observation, review, authorization, or unresolved obligation.  These
constructors are intentionally not interchangeable.
-/

namespace Surface.ContinuousAssurance

inductive CanonicalIndexQueryResult
  | fact (record : FormalDeclarationRecord) (claim : IndexedClaim)
  | observation (record : EvidenceEventRecord) (evidence : EvidenceItem)
  | review (record : ReviewBindingRecord) (review : ReviewRecord)
  | authorization (record : AuthorizationBindingRecord)
      (authorization : AuthorizationRecord)
  | obligation (record : ObligationRecord) (obligation : ObligationId)

/-- A finite query over exact object identity. -/
def CanonicalIndex.queryObject
    (index : CanonicalIndex)
    (objectId : MathematicalObjectId) : List AnyIndexRecord :=
  index.records.filter fun record => record.objectId == objectId

theorem CanonicalIndex.mem_queryObject_iff
    (index : CanonicalIndex)
    (objectId : MathematicalObjectId)
    (record : AnyIndexRecord) :
    record ∈ index.queryObject objectId ↔
      record ∈ index.records ∧ record.objectId = objectId := by
  simp [CanonicalIndex.queryObject]

end Surface.ContinuousAssurance
```
