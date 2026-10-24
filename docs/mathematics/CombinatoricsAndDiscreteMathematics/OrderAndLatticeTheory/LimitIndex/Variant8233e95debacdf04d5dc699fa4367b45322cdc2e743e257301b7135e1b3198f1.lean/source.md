# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.LimitIndex.Variant8233e95debacdf04d5dc699fa4367b45322cdc2e743e257301b7135e1b3198f1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2b4cd0944792a56475c38d4f7fbf2cfdfb3a3cec` · SHA-256 `8233e95debacdf04d5dc699fa4367b45322cdc2e743e257301b7135e1b3198f1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.StratifiedBoundary.OrdinalTally.FundamentalSequence
import Mathlib.Order.Monotone.Basic

/-!
# Registered limit index

The declared supremum is evidence, not a consequence of displaying a finite
prefix.
-/

namespace Mathematics.StratifiedBoundary

def IsDeclaredSupremum
    {Semantic : Type u}
    [Preorder Semantic]
    (sequence : Nat → Semantic)
    (limit : Semantic) : Prop :=
  (∀ stage, sequence stage ≤ limit) ∧
    ∀ upper,
      (∀ stage, sequence stage ≤ upper) →
        limit ≤ upper

structure RegisteredLimitIndex
    (Semantic : Type u)
    [Preorder Semantic] where
  sequenceId : FundamentalSequenceId
  index : Nat → Semantic
  declaredLimit : Semantic
  normalizedAtEveryStage : Prop
  normalizationEvidence : normalizedAtEveryStage
  monotone : Monotone index
  declaredSupremum :
    IsDeclaredSupremum index declaredLimit

theorem limit_index_monotone
    {Semantic : Type u}
    [Preorder Semantic]
    (limitIndex : RegisteredLimitIndex Semantic) :
    Monotone limitIndex.index :=
  limitIndex.monotone

theorem limit_index_has_declared_supremum
    {Semantic : Type u}
    [Preorder Semantic]
    (limitIndex : RegisteredLimitIndex Semantic) :
    IsDeclaredSupremum
      limitIndex.index
      limitIndex.declaredLimit :=
  limitIndex.declaredSupremum

end Mathematics.StratifiedBoundary
```
