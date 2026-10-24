# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Overlap.Variantdfc3b5427486e745c5a30a149910fe2dfd8fe8991eac44d603e5e2d79670668d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `50c9ea11af4b9b8621ab947bbe637cdff25dc6c7` · SHA-256 `dfc3b5427486e745c5a30a149910fe2dfd8fe8991eac44d603e5e2d79670668d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemanticTokenization.Context

/-! # Type-indexed metadata comparisons -/

namespace Mathematics.SemanticTokenization

structure MetadataComparison
    (text : TextCarrier)
    (kind : MetadataType) where
  left : MetadataAssertion text kind
  right : MetadataAssertion text kind
  score : Int

structure SomeMetadataComparison (text : TextCarrier) where
  kind : MetadataType
  comparison : MetadataComparison text kind

structure OverlapAggregationRule where
  ruleId : StableId
  aggregate : List Int → Int

structure TypedOverlap (text : TextCarrier) where
  context : Context
  fields : List (SomeMetadataComparison text)
  aggregation : OverlapAggregationRule
  aggregateScore : Int
  aggregate_exact :
    aggregateScore =
      aggregation.aggregate
        (fields.map
          (fun field => field.comparison.score))

def TypedOverlap.impliesSemanticIdentity
    {text : TextCarrier}
    (_ : TypedOverlap text) : Bool :=
  false

@[simp] theorem overlap_does_not_imply_semantic_identity
    {text : TextCarrier}
    (overlap : TypedOverlap text) :
    overlap.impliesSemanticIdentity = false :=
  rfl

end Mathematics.SemanticTokenization
```
