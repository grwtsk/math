-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PreservesColimitsOfShapeIff.Variante5c6b24551624ac305253e91207a46dc7fba32ed85f0310167bd7980135ed5e7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e5c6b24551624ac305253e91207a46dc7fba32ed85f0310167bd7980135ed5e7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.PreservesColimitsOfShapeIff.Variante5c6b24551624ac305253e91207a46dc7fba32ed85f0310167bd7980135ed5e7","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"e5c6b24551624ac305253e91207a46dc7fba32ed85f0310167bd7980135ed5e7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Adjunction/FullyFaithfulLimits.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PreservesColimitsOfShapeIff.Variante5c6b24551624ac305253e91207a46dc7fba32ed85f0310167bd7980135ed5e7

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
