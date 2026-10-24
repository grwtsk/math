# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Neighborhood.Variant29f27b9c1b0d03b6133fbb3c6d103e993b6b9f432aae7f1470e818d4cae19713

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8febdbb1e5bdb5f225e649c192c194e91a68a122` · SHA-256 `29f27b9c1b0d03b6133fbb3c6d103e993b6b9f432aae7f1470e818d4cae19713`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.Fintype.Powerset
import Mathlib.Data.Nat.Choose.Basic
import Mathematics.SemiLocalDefect.WP0.PrimeHorizon.Insertion

/-!
# Cut-neighborhood primitives

Shells group equal-depth cuts.  A downstream cone is the finite neighborhood
of cuts containing one insertion target.
-/

namespace Mathematics.SemiLocalDefect.SoninCore

def cutShell
    (U : FinitePrimeHorizon)
    (depth : Nat) :
    Finset (PrimeCut U) :=
  Finset.univ.filter
    (fun S => S.card = depth)

def downstreamCone
    {U : FinitePrimeHorizon}
    (e : PrimeInsertionEdge U) :
    Finset (PrimeCut U) :=
  Finset.univ.filter
    (fun T => e.target ⊆ T)

structure PrimeCutCombinatorics
    (U : FinitePrimeHorizon) : Prop where
  shell_cardinality :
    ∀ r,
      (cutShell U r).card =
      Nat.choose
        (Fintype.card U.Prime)
        r
  cone_cardinality :
    ∀ e : PrimeInsertionEdge U,
      (downstreamCone e).card =
      2 ^
        (Fintype.card U.Prime -
          e.target.card)

end Mathematics.SemiLocalDefect.SoninCore
```
