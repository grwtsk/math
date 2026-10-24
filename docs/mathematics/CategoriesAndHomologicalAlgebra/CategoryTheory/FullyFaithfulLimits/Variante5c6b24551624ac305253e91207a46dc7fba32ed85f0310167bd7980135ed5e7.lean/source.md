# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FullyFaithfulLimits.Variante5c6b24551624ac305253e91207a46dc7fba32ed85f0310167bd7980135ed5e7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aa1dbd06e3e89a08dcd0bf7a927a7cfcf327c887` · SHA-256 `e5c6b24551624ac305253e91207a46dc7fba32ed85f0310167bd7980135ed5e7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.CategoryTheory.Adjunction.FullyFaithful
public import Mathlib.CategoryTheory.Adjunction.Limits

/-!
# Preservation of colimits and reflective adjunctions

Let `adj : F ⊣ G` be an adjunction with `G : D ⥤ C` full and faithful.
We show that if colimits of shape `J` exist in `C`, then a functor
`H : D ⥤ E` preserves colimits of shape `J` iff `F ⋙ H` does.

In particular, a functor from a category of sheaves preserves colimits
iff it does so after precomposition with the sheafification functor.

-/

public section

universe v u v₁ v₂ v₃ u₁ u₂ u₃

namespace CategoryTheory.Adjunction

open Limits

variable {C : Type u₁} [Category.{v₁} C] {D : Type u₂} [Category.{v₂} D]
  {F : C ⥤ D} {G : D ⥤ C} (adj : F ⊣ G)
  {E : Type u₃} [Category.{v₃} E] (H : D ⥤ E)
  (J : Type u) [Category.{v} J]

include adj

set_option backward.defeqAttrib.useBackward true in
lemma preservesColimitsOfShape_iff (J : Type u) [Category.{v} J]
    [HasColimitsOfShape J C] [G.Full] [G.Faithful] :
    PreservesColimitsOfShape J H ↔ PreservesColimitsOfShape J (F ⋙ H) := by
  have := adj.isLeftAdjoint
  refine ⟨fun _ ↦ inferInstance, fun _ ↦ ⟨fun {K} ↦ ?_⟩⟩
  let iso : (K ⋙ G) ⋙ F ≅ K :=
    Functor.associator _ _ _ ≪≫ Functor.isoWhiskerLeft _ (asIso adj.counit) ≪≫ K.rightUnitor
  refine preservesColimit_of_preserves_colimit_cocone
    ((IsColimit.precomposeInvEquiv iso _).symm
      (isColimitOfPreserves F (colimit.isColimit (K ⋙ G)))) ?_
  exact IsColimit.ofIsoColimit
    ((IsColimit.precomposeInvEquiv
      ((Functor.associator _ _ _).symm ≪≫ Functor.isoWhiskerRight iso H) _).symm
        (isColimitOfPreserves (F ⋙ H) (colimit.isColimit (K ⋙ G))))
          (Cocone.ext (Iso.refl _))

lemma preservesColimitsOfSize_iff
    [HasColimitsOfSize.{v, u} C] [G.Full] [G.Faithful] :
    PreservesColimitsOfSize.{v, u} H ↔ PreservesColimitsOfSize.{v, u} (F ⋙ H) := by
  have := adj.isLeftAdjoint
  refine ⟨fun _ ↦ inferInstance, fun _ ↦ ⟨fun {J _} ↦ ?_⟩⟩
  rw [adj.preservesColimitsOfShape_iff]
  infer_instance

end CategoryTheory.Adjunction
```
