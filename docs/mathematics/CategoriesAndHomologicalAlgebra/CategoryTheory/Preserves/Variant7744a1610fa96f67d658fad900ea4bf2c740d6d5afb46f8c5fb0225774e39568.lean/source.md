# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Preserves.Variant7744a1610fa96f67d658fad900ea4bf2c740d6d5afb46f8c5fb0225774e39568

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b0d3eebe558c6163493fb6ea9c7fc748cb49b512` · SHA-256 `7744a1610fa96f67d658fad900ea4bf2c740d6d5afb46f8c5fb0225774e39568`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
import Mathlib.CategoryTheory.Preadditive.Projective.Basic

/-!
# Preservation of projective objects

We define a typeclass `Functor.PreservesProjectiveObjects`.

We restate the existing result that if `F ⊣ G` is an adjunction and `G` preserves monomorphisms,
then `F` preserves projective objects. We show that the converse is true if the domain of `F` has
enough projectives.
-/

universe v₁ v₂ v₃ u₁ u₂ u₃

namespace CategoryTheory

variable {C : Type u₁} [Category.{v₁} C] {D : Type u₂} [Category.{v₂} D]
  {E : Type u₃} [Category.{v₃} E]

/-- A functor preserves projective objects if it maps projective objects to projective objects. -/
class Functor.PreservesProjectiveObjects (F : C ⥤ D) : Prop where
  projective_obj {X : C} : Projective X → Projective (F.obj X)

/-- See `Functor.projective_obj_of_projective` for a variant taking `Projective X` as an explicit
argument. -/
instance Functor.projective_obj (F : C ⥤ D) [F.PreservesProjectiveObjects] (X : C) [Projective X] :
    Projective (F.obj X) :=
  Functor.PreservesProjectiveObjects.projective_obj inferInstance

/-- See `Functor.projective_obj` for a variant taking `Projective X` as a typeclass argument. -/
theorem Functor.projective_obj_of_projective (F : C ⥤ D) [F.PreservesProjectiveObjects] {X : C}
    (h : Projective X) : Projective (F.obj X) :=
  Functor.PreservesProjectiveObjects.projective_obj h

instance Functor.preservesProjectiveObjects_comp (F : C ⥤ D) (G : D ⥤ E)
    [F.PreservesProjectiveObjects] [G.PreservesProjectiveObjects] :
    (F ⋙ G).PreservesProjectiveObjects where
  projective_obj := G.projective_obj_of_projective ∘ F.projective_obj_of_projective

theorem Functor.preservesProjectiveObjects_of_adjunction_of_preservesEpimorphisms
    {F : C ⥤ D} {G : D ⥤ C} (adj : F ⊣ G) [G.PreservesEpimorphisms] :
    F.PreservesProjectiveObjects where
  projective_obj h := adj.map_projective _ h

instance (priority := low) Functor.preservesProjectiveObjects_of_isEquivalence {F : C ⥤ D}
    [IsEquivalence F] : F.PreservesProjectiveObjects :=
  preservesProjectiveObjects_of_adjunction_of_preservesEpimorphisms F.asEquivalence.toAdjunction

theorem Functor.preservesEpimorphisms_of_adjunction_of_preservesProjectiveObjects
    [EnoughProjectives C] {F : C ⥤ D} {G : D ⥤ C} (adj : F ⊣ G) [F.PreservesProjectiveObjects] :
    G.PreservesEpimorphisms where
  preserves {X Y} f _ := by
    suffices ∃ h, h ≫ G.map f = Projective.π (G.obj Y) from epi_of_epi_fac this.choose_spec
    have : Projective (F.obj (Projective.over (G.obj Y))) := F.projective_obj _
    refine ⟨adj.unit.app (Projective.over (G.obj Y)) ≫
      G.map (Projective.factorThru (F.map (Projective.π _) ≫ adj.counit.app Y) f), ?_⟩
    rw [Category.assoc, ← Functor.map_comp]
    simp

end CategoryTheory
```
