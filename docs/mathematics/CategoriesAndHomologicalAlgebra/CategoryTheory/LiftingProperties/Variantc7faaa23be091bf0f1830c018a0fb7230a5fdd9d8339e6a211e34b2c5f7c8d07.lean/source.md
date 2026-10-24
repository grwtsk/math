# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LiftingProperties.Variantc7faaa23be091bf0f1830c018a0fb7230a5fdd9d8339e6a211e34b2c5f7c8d07

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8a3df179f793ff51590cfddb022fd3316081b8e6` · SHA-256 `c7faaa23be091bf0f1830c018a0fb7230a5fdd9d8339e6a211e34b2c5f7c8d07`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.CategoryTheory.Preadditive.Injective.Basic
import Mathlib.CategoryTheory.MorphismProperty.LiftingProperty

/-!
# Characterization of injective objects in terms of lifting properties

An object `I` is injective iff the morphism `I ⟶ 0` has the
right lifting property with respect to monomorphisms,
`injective_iff_rlp_monomorphisms_zero`.

-/

universe v u

namespace CategoryTheory

open Limits ZeroObject

variable {C : Type u} [Category.{v} C]

namespace Injective

lemma hasLiftingProperty_of_isZero
    {A B I Z : C} (i : A ⟶ B) [Mono i] [Injective I] (p : I ⟶ Z) (hZ : IsZero Z) :
    HasLiftingProperty i p where
  sq_hasLift {f g} sq := ⟨⟨{
    l := Injective.factorThru f i
    fac_right := hZ.eq_of_tgt _ _ }⟩⟩

instance {A B I : C} (i : A ⟶ B) [Mono i] [Injective I] [HasZeroObject C] (p : I ⟶ 0) :
    HasLiftingProperty i (p : I ⟶ 0) :=
  Injective.hasLiftingProperty_of_isZero i p (isZero_zero C)

end Injective

lemma injective_iff_rlp_monomorphisms_of_isZero
    [HasZeroMorphisms C] {I Z : C} (p : I ⟶ Z) (hZ : IsZero Z) :
    Injective I ↔ (MorphismProperty.monomorphisms C).rlp p := by
  obtain rfl := hZ.eq_of_tgt p 0
  constructor
  · intro _ A B i (_ : Mono i)
    exact Injective.hasLiftingProperty_of_isZero i 0 hZ
  · intro h
    constructor
    intro A B f i hi
    have := h _ hi
    have sq : CommSq f i (0 : I ⟶ Z) 0 := ⟨by simp⟩
    exact ⟨sq.lift, by simp⟩

lemma injective_iff_rlp_monomorphisms_zero
    [HasZeroMorphisms C] [HasZeroObject C] (I : C) :
    Injective I ↔ (MorphismProperty.monomorphisms C).rlp (0 : I ⟶ 0) :=
  injective_iff_rlp_monomorphisms_of_isZero _ (isZero_zero C)

end CategoryTheory
```
