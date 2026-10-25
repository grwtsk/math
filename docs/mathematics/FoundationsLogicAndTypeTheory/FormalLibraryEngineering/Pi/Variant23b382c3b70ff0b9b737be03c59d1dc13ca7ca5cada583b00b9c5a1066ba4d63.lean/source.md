# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Pi.Variant23b382c3b70ff0b9b737be03c59d1dc13ca7ca5cada583b00b9c5a1066ba4d63

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a5301976a463eb35f9ec8c804dde303ed1ce4a25` · SHA-256 `23b382c3b70ff0b9b737be03c59d1dc13ca7ca5cada583b00b9c5a1066ba4d63`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2017 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
module

public import Mathlib.Data.Int.Notation
public import Mathlib.Tactic.Push.Attr

/-!
# Cast of integers to function types

This file provides a (pointwise) cast from `ℤ` to function types.

## Main declarations

* `Pi.instIntCast`: map `n : ℤ` to the constant function `n : ∀ i, π i`
-/

public section

assert_not_exists IsOrderedMonoid RingHom

namespace Pi

variable {ι : Type*} {π : ι → Type*} [∀ i, IntCast (π i)]

instance instIntCast : IntCast (∀ i, π i) where intCast n _ := n

@[simp]
theorem intCast_apply (n : ℤ) (i : ι) : (n : ∀ i, π i) i = n :=
  rfl

@[push ←]
theorem intCast_def (n : ℤ) : (n : ∀ i, π i) = fun _ => ↑n :=
  rfl

end Pi

@[simp]
theorem Sum.elim_intCast_intCast {α β γ : Type*} [IntCast γ] (n : ℤ) :
    Sum.elim (n : α → γ) (n : β → γ) = n :=
  Sum.elim_lam_const_lam_const (γ := γ) n
```
