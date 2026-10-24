# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Equalizer.Variant4872cb144bc31befa29f20f231539077b2dd4e8f859a266cc11e869cb0fb1548

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `acd890c5e85aafea6d8242c442b075c0de2971f2` · SHA-256 `4872cb144bc31befa29f20f231539077b2dd4e8f859a266cc11e869cb0fb1548`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
import Mathlib.CategoryTheory.Limits.Shapes.Pullback.CommSq

/-!
# Equalizers as pullbacks of products

Also see `CategoryTheory.Limits.Constructions.Equalizers` for very similar results.

-/

universe v u

namespace CategoryTheory.Limits

variable {C : Type u} [Category.{v} C] {X Y : C} (f g : X ⟶ Y)

/-- The equalizer of `f g : X ⟶ Y` is the pullback of the diagonal map `Y ⟶ Y × Y`
along the map `(f, g) : X ⟶ Y × Y`. -/
lemma isPullback_equalizer_prod [HasEqualizer f g] [HasBinaryProduct Y Y] :
    IsPullback (equalizer.ι f g) (equalizer.ι f g ≫ f) (prod.lift f g) (prod.lift (𝟙 _) (𝟙 _)) := by
  refine ⟨⟨by ext <;> simp [equalizer.condition f g]⟩, ⟨PullbackCone.IsLimit.mk _ ?_ ?_ ?_ ?_⟩⟩
  · refine fun s ↦ equalizer.lift s.fst ?_
    have H₁ : s.fst ≫ f = s.snd := by simpa using congr($s.condition ≫ prod.fst)
    have H₂ : s.fst ≫ g = s.snd := by simpa using congr($s.condition ≫ prod.snd)
    exact H₁.trans H₂.symm
  · exact fun s ↦ by simp
  · exact fun s ↦ by simpa using congr($s.condition ≫ prod.fst)
  · exact fun s m hm _ ↦ by ext; simp [*]

/-- The coequalizer of `f g : X ⟶ Y` is the pushout of the diagonal map `X ⨿ X ⟶ X`
along the map `(f, g) : X ⨿ X ⟶ Y`. -/
lemma isPushout_coequalizer_coprod [HasCoequalizer f g] [HasBinaryCoproduct X X] :
    IsPushout (coprod.desc f g) (coprod.desc (𝟙 _) (𝟙 _))
      (coequalizer.π f g) (f ≫ coequalizer.π f g) := by
  refine ⟨⟨by ext <;> simp [coequalizer.condition f g]⟩, ⟨PushoutCocone.IsColimit.mk _ ?_ ?_ ?_ ?_⟩⟩
  · refine fun s ↦ coequalizer.desc s.inl ?_
    have H₁ : f ≫ s.inl = s.inr := by simpa using congr(coprod.inl ≫ $s.condition)
    have H₂ : g ≫ s.inl = s.inr := by simpa using congr(coprod.inr ≫ $s.condition)
    exact H₁.trans H₂.symm
  · exact fun s ↦ by simp
  · exact fun s ↦ by simpa using congr(coprod.inl ≫ $s.condition)
  · exact fun s m hm _ ↦ by ext; simp [*]

end CategoryTheory.Limits
```
