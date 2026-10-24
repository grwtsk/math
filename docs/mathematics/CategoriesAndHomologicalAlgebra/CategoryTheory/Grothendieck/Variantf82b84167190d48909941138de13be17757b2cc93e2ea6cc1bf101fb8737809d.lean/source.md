# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Grothendieck.Variantf82b84167190d48909941138de13be17757b2cc93e2ea6cc1bf101fb8737809d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d4d3ea8c1f4cd56b0f780623e17dd0a3e1b201d6` · SHA-256 `f82b84167190d48909941138de13be17757b2cc93e2ea6cc1bf101fb8737809d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
import Mathlib.CategoryTheory.Filtered.Basic
import Mathlib.CategoryTheory.Grothendieck

/-!
# Filteredness of Grothendieck construction

We show that if `F : C ⥤ Cat` is such that `C` is filtered and `F.obj c` is filtered for all
`c : C`, then `Grothendieck F` is filtered.
-/

universe v u

namespace CategoryTheory

variable {C : Type u} [Category.{v} C] (F : C ⥤ Cat)

open IsFiltered

instance [IsFilteredOrEmpty C] [∀ c, IsFilteredOrEmpty (F.obj c)] :
    IsFilteredOrEmpty (Grothendieck F) := by
  refine ⟨?_, ?_⟩
  · rintro ⟨c, f⟩ ⟨d, g⟩
    exact ⟨⟨max c d, max ((F.map (leftToMax c d)).obj f) ((F.map (rightToMax c d)).obj g)⟩,
      ⟨leftToMax c d, leftToMax _ _⟩, ⟨rightToMax c d, rightToMax _ _⟩, trivial⟩
  · rintro ⟨c, f⟩ ⟨d, g⟩ ⟨u, x⟩ ⟨v, y⟩
    refine ⟨⟨coeq u v, coeq (eqToHom ?_ ≫
        (F.map (coeqHom u v)).map x) ((F.map (coeqHom u v)).map y)⟩, ⟨coeqHom u v, coeqHom _ _⟩, ?_⟩
    · conv_rhs => rw [← Cat.comp_obj, ← F.map_comp, coeq_condition, F.map_comp, Cat.comp_obj]
    · apply Grothendieck.ext _ _ (coeq_condition u v)
      refine Eq.trans ?_ (eqToHom _ ≫= coeq_condition _ _)
      simp

instance [IsFiltered C] [∀ c, IsFiltered (F.obj c)] : IsFiltered (Grothendieck F) := by
  have : Nonempty (Grothendieck F) := by
    obtain ⟨c⟩ : Nonempty C := IsFiltered.nonempty
    obtain ⟨f⟩ : Nonempty (F.obj c) := IsFiltered.nonempty
    exact ⟨⟨c, f⟩⟩
  apply IsFiltered.mk

end CategoryTheory
```
