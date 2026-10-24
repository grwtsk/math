# Complete source: GRWTSK.Algebra.Defs.Variant25618832e74f3ed82384c8f9be59e3e98df11e85326d429ceed3a1b957311837

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8f405b57132786b29b600cd9bb0876919561b6de` · SHA-256 `25618832e74f3ed82384c8f9be59e3e98df11e85326d429ceed3a1b957311837`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2018 Kenny Lau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kenny Lau, Chris Hughes, Mario Carneiro
-/
import Mathlib.Algebra.Group.Units.Defs
import Mathlib.Algebra.Ring.Defs

/-!

# Local rings

Define local rings as commutative rings having a unique maximal ideal.

## Main definitions

* `IsLocalRing`: A predicate on semirings, stating that for any pair of elements that
  adds up to `1`, one of them is a unit. In the commutative case this is shown to be equivalent
  to the condition that there exists a unique maximal ideal, see
  `IsLocalRing.of_unique_max_ideal` and `IsLocalRing.maximal_ideal_unique`.

-/
/-- A semiring is local if it is nontrivial and `a` or `b` is a unit whenever `a + b = 1`.
Note that `IsLocalRing` is a predicate. -/
class IsLocalRing (R : Type*) [Semiring R] : Prop extends Nontrivial R where
  of_is_unit_or_is_unit_of_add_one ::
  /-- in a local ring `R`, if `a + b = 1`, then either `a` is a unit or `b` is a unit. In another
    word, for every `a : R`, either `a` is a unit or `1 - a` is a unit. -/
  isUnit_or_isUnit_of_add_one {a b : R} (h : a + b = 1) : IsUnit a ∨ IsUnit b

@[deprecated (since := "2024-11-09")] alias LocalRing := IsLocalRing
```
