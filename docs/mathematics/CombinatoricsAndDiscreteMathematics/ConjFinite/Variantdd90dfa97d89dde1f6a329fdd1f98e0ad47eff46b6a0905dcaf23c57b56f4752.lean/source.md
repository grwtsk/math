# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.ConjFinite.Variantdd90dfa97d89dde1f6a329fdd1f98e0ad47eff46b6a0905dcaf23c57b56f4752

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `86c5b5228d46f5a8475aadd1bf5d82a83625a5fe` · SHA-256 `dd90dfa97d89dde1f6a329fdd1f98e0ad47eff46b6a0905dcaf23c57b56f4752`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Eric Rodriguez. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Rodriguez
-/
import Mathlib.Algebra.Group.Conj
import Mathlib.Data.Fintype.Units

/-!
# Conjugacy of elements of finite groups
-/

assert_not_exists Field

-- TODO: the following `assert_not_exists` should work, but does not
-- assert_not_exists MonoidWithZero

variable {α : Type*} [Monoid α]

attribute [local instance] IsConj.setoid

instance [Fintype α] [DecidableRel (IsConj : α → α → Prop)] : Fintype (ConjClasses α) :=
  Quotient.fintype (IsConj.setoid α)

instance [Finite α] : Finite (ConjClasses α) :=
  Quotient.finite _

instance [DecidableEq α] [Fintype α] : DecidableRel (IsConj : α → α → Prop) := fun a b =>
  inferInstanceAs (Decidable (∃ c : αˣ, c.1 * a = b * c.1))

instance conjugatesOf.fintype [Fintype α] [DecidableRel (IsConj : α → α → Prop)] {a : α} :
  Fintype (conjugatesOf a) :=
  @Subtype.fintype _ _ (‹DecidableRel IsConj› a) _

namespace ConjClasses

variable [Fintype α] [DecidableRel (IsConj : α → α → Prop)]

instance {x : ConjClasses α} : Fintype (carrier x) :=
  Quotient.recOnSubsingleton x fun _ => conjugatesOf.fintype

end ConjClasses
```
