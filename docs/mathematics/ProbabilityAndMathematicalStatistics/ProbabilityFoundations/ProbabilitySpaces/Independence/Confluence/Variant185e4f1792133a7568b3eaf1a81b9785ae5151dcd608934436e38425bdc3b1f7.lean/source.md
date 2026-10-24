# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.Confluence.Variant185e4f1792133a7568b3eaf1a81b9785ae5151dcd608934436e38425bdc3b1f7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bedad7a809e283f8186a8ebbc31fb9129b958989` · SHA-256 `185e4f1792133a7568b3eaf1a81b9785ae5151dcd608934436e38425bdc3b1f7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Certified compatible reduction

Order independence is admitted only for handlers carrying an exact commuting
proof.  Noncommuting handlers require branching or quarantine.
-/

namespace Mathematics.Mutation

structure CompatibleReduction (State Event : Type) where
  apply : Event → State → State
  commute :
    ∀ left right state,
      apply left (apply right state) =
        apply right (apply left state)

theorem compatible_reduction_confluent
    (reduction : CompatibleReduction State Event)
    (left right : Event)
    (state : State) :
    reduction.apply left (reduction.apply right state) =
      reduction.apply right (reduction.apply left state) :=
  reduction.commute left right state

end Mathematics.Mutation
```
