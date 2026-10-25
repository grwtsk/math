# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.SmallComplete.Varianta37c8bce56259d5eaae65418063957a942fec454b056d02b72763ffed1833fb7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1364e0f5f7911cf4501f9f468ea7abad2fdadeb0` · SHA-256 `a37c8bce56259d5eaae65418063957a942fec454b056d02b72763ffed1833fb7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Bhavik Mehta. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Bhavik Mehta
-/
module

public import Mathlib.CategoryTheory.Limits.Shapes.Products
public import Mathlib.SetTheory.Cardinal.Basic

/-!
# Any small complete category is a preorder

We show that any small category which has all (small) limits is a preorder: In particular, we show
that if a small category `C` in universe `u` has products of size `u`, then for any `X Y : C`
there is at most one morphism `X ⟶ Y`.
Note that in Lean, a preorder category is strictly one where the morphisms are in `Prop`, so
we instead show that the homsets are subsingleton.

## References

* https://ncatlab.org/nlab/show/complete+small+category#in_classical_logic

## Tags

small complete, preorder, Freyd
-/

public section


namespace CategoryTheory

open Category Limits

open Cardinal

universe u

variable {C : Type u} [SmallCategory C] [HasProducts.{u} C]

/-- A small category with products is a thin category.

in Lean, a preorder category is one where the morphisms are in Prop, which is weaker than the usual
notion of a preorder/thin category which says that each homset is subsingleton; we show the latter
rather than providing a `Preorder C` instance.
-/
instance (priority := 100) : Quiver.IsThin C := fun X Y =>
  ⟨fun r s => by
    by_contra r_ne_s
    have z : (2 : Cardinal) ≤ #(X ⟶ Y) := by
      rw [Cardinal.two_le_iff]
      exact ⟨_, _, r_ne_s⟩
    let md := Σ Z W : C, Z ⟶ W
    let α := #md
    apply not_le_of_gt (Cardinal.cantor α)
    let yp : C := ∏ᶜ fun _ : md => Y
    apply _root_.trans _ _
    · exact #(X ⟶ yp)
    · apply le_trans (Cardinal.power_le_power_right z)
      rw [Cardinal.power_def]
      apply le_of_eq
      rw [Cardinal.eq]
      refine ⟨⟨Pi.lift, fun f k => f ≫ Pi.π _ k, ?_, ?_⟩⟩
      · intro f
        ext k
        simp [yp]
      · intro f
        ext ⟨j⟩
        simp [yp]
    · apply Cardinal.mk_le_of_injective _
      · intro f
        exact ⟨_, _, f⟩
      · rintro f g k
        cases k
        rfl⟩

end CategoryTheory
```
