# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.Pi.Variantef7a0a75e50aba39f33a0e95e4b22d215765551c03481a778db0317d6c22c43a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8a2149235bccbc646327f23b0b8f0bdf6940b45d` · SHA-256 `ef7a0a75e50aba39f33a0e95e4b22d215765551c03481a778db0317d6c22c43a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2017 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Batteries.Tactic.Alias
import Mathlib.Data.Int.Notation
import Mathlib.Tactic.TypeStar
import Mathlib.Util.AssertExists

/-!
# Cast of integers to function types

This file provides a (pointwise) cast from `ℤ` to function types.

## Main declarations

* `Pi.instIntCast`: map `n : ℤ` to the constant function `n : ∀ i, π i`
-/

assert_not_exists OrderedCommMonoid RingHom

namespace Pi

variable {ι : Type*} {π : ι → Type*} [∀ i, IntCast (π i)]

instance instIntCast : IntCast (∀ i, π i) where intCast n _ := n

@[simp]
theorem intCast_apply (n : ℤ) (i : ι) : (n : ∀ i, π i) i = n :=
  rfl

theorem intCast_def (n : ℤ) : (n : ∀ i, π i) = fun _ => ↑n :=
  rfl

end Pi

@[simp]
theorem Sum.elim_intCast_intCast {α β γ : Type*} [IntCast γ] (n : ℤ) :
    Sum.elim (n : α → γ) (n : β → γ) = n :=
  Sum.elim_lam_const_lam_const (γ := γ) n
```
