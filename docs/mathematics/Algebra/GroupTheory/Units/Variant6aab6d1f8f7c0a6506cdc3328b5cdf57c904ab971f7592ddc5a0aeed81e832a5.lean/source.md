# Complete source: GRWTSK.Algebra.GroupTheory.Units.Variant6aab6d1f8f7c0a6506cdc3328b5cdf57c904ab971f7592ddc5a0aeed81e832a5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ba43080762225f738d14de480781ffe0f32afcef` · SHA-256 `6aab6d1f8f7c0a6506cdc3328b5cdf57c904ab971f7592ddc5a0aeed81e832a5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
import Mathlib.Algebra.Group.Equiv.Defs
import Mathlib.Algebra.Group.Pi.Basic
import Mathlib.Algebra.Group.Units.Defs
import Mathlib.Util.Delaborators

/-! # Units in pi types -/

variable {ι : Type*} {M : ι → Type*} [∀ i, Monoid (M i)] {x : Π i, M i}

open Units in
/-- The monoid equivalence between units of a product,
and the product of the units of each monoid. -/
@[to_additive (attr := simps)
  "The additive-monoid equivalence between (additive) units of a product,
  and the product of the (additive) units of each monoid."]
def MulEquiv.piUnits : (Π i, M i)ˣ ≃* Π i, (M i)ˣ where
  toFun f i := ⟨f.val i, f.inv i, congr_fun f.val_inv i, congr_fun f.inv_val i⟩
  invFun f := ⟨(val <| f ·), (inv <| f ·), funext (val_inv <| f ·), funext (inv_val <| f ·)⟩
  left_inv _ := rfl
  right_inv _ := rfl
  map_mul' _ _ := rfl

@[to_additive]
lemma Pi.isUnit_iff :
    IsUnit x ↔ ∀ i, IsUnit (x i) := by
  simp_rw [isUnit_iff_exists, funext_iff, ← forall_and]
  exact Classical.skolem (p := fun i y ↦ x i * y = 1 ∧ y * x i = 1).symm

@[to_additive]
alias ⟨IsUnit.apply, _⟩ := Pi.isUnit_iff

@[to_additive]
lemma IsUnit.val_inv_apply (hx : IsUnit x) (i : ι) : (hx.unit⁻¹).1 i = (hx.apply i).unit⁻¹ := by
  rw [← Units.inv_eq_val_inv, ← MulEquiv.val_inv_piUnits_apply]; congr; ext; rfl
```
