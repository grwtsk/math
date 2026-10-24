# Complete source: GRWTSK.Algebra.Star.Variant63ebe3cc10f30e0432fa09dab631c3007e4e6658dc5e952b28d5f63b170a9773

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `72cb0450d91634d5eaf4dfac7207562edc02c476` · SHA-256 `63ebe3cc10f30e0432fa09dab631c3007e4e6658dc5e952b28d5f63b170a9773`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
module

public import Mathlib.Algebra.Star.Basic
public import Mathlib.Data.Finset.Attr
public import Mathlib.RingTheory.Congruence.Defs

/-!
# Helpers for working with star operators on quotients.

TODO: consider defining `Star` versions of `RingCon`.
-/

public section

section Ring
variable {R : Type*} [NonUnitalNonAssocSemiring R] [StarRing R] {r : R → R → Prop}

theorem RingConGen.Rel.star (hr : ∀ a b, r a b → r (star a) (star b))
    ⦃a b : R⦄ : Rel r a b → Rel r (star a) (star b)
  | refl _ => .refl _
  | symm h => .symm <| h.star hr
  | trans h1 h2 => .trans  (h1.star hr) (h2.star hr)
  | of _ _ h => .of _ _ (hr _ _ h)
  | mul h1 h2 => by
    rw [star_mul, star_mul]
    exact (h2.star hr).mul (h1.star hr)
  | add h1 h2 => by
    rw [star_add, star_add]
    exact (h1.star hr).add (h2.star hr)

theorem ringConGen_star (hr : ∀ a b, r a b → r (star a) (star b)) ⦃a b : R⦄ :
    ringConGen r a b → ringConGen r (star a) (star b) := (RingConGen.Rel.star hr ·)

end Ring
```
