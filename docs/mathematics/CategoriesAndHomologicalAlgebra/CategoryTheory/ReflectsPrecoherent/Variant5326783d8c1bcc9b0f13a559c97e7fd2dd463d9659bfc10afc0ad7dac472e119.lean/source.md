# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ReflectsPrecoherent.Variant5326783d8c1bcc9b0f13a559c97e7fd2dd463d9659bfc10afc0ad7dac472e119

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `54bc130f05abbb9fdc05172c7741d979afc45677` · SHA-256 `5326783d8c1bcc9b0f13a559c97e7fd2dd463d9659bfc10afc0ad7dac472e119`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
import Mathlib.CategoryTheory.EffectiveEpi.Enough
import Mathlib.CategoryTheory.EffectiveEpi.Preserves
import Mathlib.CategoryTheory.Sites.Coherent.CoherentTopology
/-!

# Reflecting the property of being precoherent

We prove that given a fully faithful functor `F : C ⥤ D` which preserves and reflects finite
effective epimorphic families, such that for every object `X` of `D` there exists an object `W` of
`C` with an effective epi `π : F.obj W ⟶ X`, the category `C` is `Precoherent` whenever `D` is.
-/

namespace CategoryTheory

variable {C D : Type*} [Category C] [Category D] (F : C ⥤ D)
  [F.PreservesFiniteEffectiveEpiFamilies] [F.ReflectsFiniteEffectiveEpiFamilies]
  [F.EffectivelyEnough]
  [Precoherent D] [F.Full] [F.Faithful]

include F in
lemma Functor.reflects_precoherent : Precoherent C where
  pullback {B₁ B₂} f α _ X₁ π₁ _ := by
    obtain ⟨β, _, Y₂, τ₂, H, i, ι, hh⟩ := Precoherent.pullback (F.map f) _ _
      (fun a ↦ F.map (π₁ a)) inferInstance
    refine ⟨β, inferInstance, _, fun b ↦ F.preimage (F.effectiveEpiOver (Y₂ b) ≫ τ₂ b),
      F.finite_effectiveEpiFamily_of_map _ _ ?_,
        ⟨i, fun b ↦ F.preimage (F.effectiveEpiOver (Y₂ b) ≫ ι b), ?_⟩⟩
    · simp only [Functor.map_preimage]
      infer_instance
    · intro b
      apply F.map_injective
      simp [hh b]

end CategoryTheory
```
