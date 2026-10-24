# Complete source: GRWTSK.Algebra.GroupTheory.UniqueProds.Variant91335464e2e1db94ab25eb8b9cef491ef3ec4cdf04b86d8e22a6129a8480f493

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b265902fa7df49060d32b38a325cdcb900d45119` · SHA-256 `91335464e2e1db94ab25eb8b9cef491ef3ec4cdf04b86d8e22a6129a8480f493`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Damiano Testa. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Damiano Testa
-/
import Mathlib.Algebra.FreeMonoid.Basic
import Mathlib.Algebra.Group.UniqueProds.Basic
import Mathlib.Algebra.Order.Group.Nat

/-!
# Free monoids have unique products
-/

assert_not_exists Cardinal Subsemiring Algebra Submodule StarModule

open Finset

/-- Any `FreeMonoid` has the `TwoUniqueProds` property. -/
instance FreeMonoid.instTwoUniqueProds {κ : Type*} : TwoUniqueProds (FreeMonoid κ) :=
  .of_mulHom ⟨Multiplicative.ofAdd ∘ List.length, fun _ _ ↦ congr_arg _ List.length_append⟩
    (fun _ _ _ _ h h' ↦ List.append_inj h <| Equiv.injective Multiplicative.ofAdd h'.1)

/-- Any `FreeAddMonoid` has the `TwoUniqueSums` property. -/
instance FreeAddMonoid.instTwoUniqueSums {κ : Type*} : TwoUniqueSums (FreeAddMonoid κ) :=
  .of_addHom ⟨_, fun _ _ => List.length_append⟩ (fun _ _ _ _ h h' ↦ List.append_inj h h'.1)
```
