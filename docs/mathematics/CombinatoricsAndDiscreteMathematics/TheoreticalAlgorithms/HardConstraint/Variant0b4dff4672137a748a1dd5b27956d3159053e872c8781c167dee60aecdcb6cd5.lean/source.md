# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.HardConstraint.Variant0b4dff4672137a748a1dd5b27956d3159053e872c8781c167dee60aecdcb6cd5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5c25647271c104ffbdcc816695b91ff9e01bd7ad` · SHA-256 `0b4dff4672137a748a1dd5b27956d3159053e872c8781c167dee60aecdcb6cd5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Relaxation.State

/-! # Hard constraints -/

namespace Mathematics.Relaxation

/-- A named predicate that every admitted relaxation state must preserve. -/
structure HardConstraint where
  constraintId : StableId
  Holds : State → Prop
  statementDigest : Digest

/-- Finite conjunction of hard constraints. -/
def SatisfiesAll
    (constraints : List HardConstraint)
    (state : State) : Prop :=
  ∀ constraint ∈ constraints, constraint.Holds state

end Mathematics.Relaxation
```
