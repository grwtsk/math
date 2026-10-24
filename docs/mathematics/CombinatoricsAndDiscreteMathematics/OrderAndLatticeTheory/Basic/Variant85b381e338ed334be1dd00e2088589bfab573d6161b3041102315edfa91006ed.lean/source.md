# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Basic.Variant85b381e338ed334be1dd00e2088589bfab573d6161b3041102315edfa91006ed

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d1c3d1c0e97f8d0ddf456be77f315c912224fd24` · SHA-256 `85b381e338ed334be1dd00e2088589bfab573d6161b3041102315edfa91006ed`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Boolean.Core

namespace Surface.Boolean

universe u

/--
A Boolean algebra presented as a complemented distributive lattice.

The primitive data are the carrier type together with join, meet, complement,
bottom, and top. The laws record boundedness, commutativity, distributivity,
complementation, associativity, and non-degeneracy.

Complement uniqueness is not primitive here; it is derived in
`Surface.Boolean.Algebra.Laws`.
-/
class BooleanAlgebraCore (B : Type u) where
  join : B → B → B
  meet : B → B → B
  compl : B → B
  bot : B
  top : B

  bot_ne_top : bot ≠ top

  join_bot : ∀ a : B, join a bot = a
  meet_top : ∀ a : B, meet a top = a

  join_comm : ∀ a b : B, join a b = join b a
  meet_comm : ∀ a b : B, meet a b = meet b a

  join_assoc : ∀ a b c : B, join a (join b c) = join (join a b) c
  meet_assoc : ∀ a b c : B, meet a (meet b c) = meet (meet a b) c

  join_meet_distrib :
    ∀ a b c : B, join a (meet b c) = meet (join a b) (join a c)
  meet_join_distrib :
    ∀ a b c : B, meet a (join b c) = join (meet a b) (meet a c)

  join_compl : ∀ a : B, join a (compl a) = top
  meet_compl : ∀ a : B, meet a (compl a) = bot

abbrev BooleanAlgebra (B : Type u) :=
  BooleanAlgebraCore B

end Surface.Boolean
```
