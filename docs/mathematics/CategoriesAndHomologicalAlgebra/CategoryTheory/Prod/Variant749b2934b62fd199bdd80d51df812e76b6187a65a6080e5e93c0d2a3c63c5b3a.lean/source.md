# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Prod.Variant749b2934b62fd199bdd80d51df812e76b6187a65a6080e5e93c0d2a3c63c5b3a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `51b4dda524b2409da4be6e1673a44c1fa4ace14a` · SHA-256 `1375f275fafe2ff58fa3bac438207b443b97e2b14d5d7b23577a694c44f8451a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ProdUniq.Variant39d11893fdae31c65c1e9181de05a918353e91f26d57410a26f5a30057fe7c2e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"39d11893fdae31c65c1e9181de05a918353e91f26d57410a26f5a30057fe7c2e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.ProdUniq.Variant39d11893fdae31c65c1e9181de05a918353e91f26d57410a26f5a30057fe7c2e","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"39d11893fdae31c65c1e9181de05a918353e91f26d57410a26f5a30057fe7c2e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Localization/Prod.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.CategoryTheory.Functor.Currying
import Mathlib.CategoryTheory.Localization.Predicate
import Mathlib.CategoryTheory.MorphismProperty.Composition

/-!
# Localization of product categories

In this file, it is shown that if functors `L₁ : C₁ ⥤ D₁` and `L₂ : C₂ ⥤ D₂`
are localization functors for morphisms properties `W₁` and `W₂`, then
the product functor `C₁ × C₂ ⥤ D₁ × D₂` is a localization functor for
`W₁.prod W₂ : MorphismProperty (C₁ × C₂)`, at least if both `W₁` and `W₂`
contain identities. This main result is the instance `Functor.IsLocalization.prod`.

The proof proceeds by showing first `Localization.Construction.prodIsLocalization`,
which asserts that this holds for the localization functors `W₁.Q` and `W₂.Q` to
the constructed localized categories: this is done by showing that the product
functor `W₁.Q.prod W₂.Q : C₁ × C₂ ⥤ W₁.Localization × W₂.Localization` satisfies
the strict universal property of the localization for `W₁.prod W₂`. The general
case follows by transporting this result through equivalences of categories.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ProdUniq.Variant39d11893fdae31c65c1e9181de05a918353e91f26d57410a26f5a30057fe7c2e

universe v₁ v₂ v₃ v₄ v₅ u₁ u₂ u₃ u₄ u₅

namespace CategoryTheory

variable {C₁ : Type u₁} {C₂ : Type u₂} {D₁ : Type u₃} {D₂ : Type u₄}
  [Category.{v₁} C₁] [Category.{v₂} C₂] [Category.{v₃} D₁] [Category.{v₄} D₂]
  (L₁ : C₁ ⥤ D₁) {W₁ : MorphismProperty C₁}
  (L₂ : C₂ ⥤ D₂) {W₂ : MorphismProperty C₂}

namespace Localization

namespace StrictUniversalPropertyFixedTarget

variable {E : Type u₅} [Category.{v₅} E] (F : C₁ × C₂ ⥤ E)

lemma prod_uniq (F₁ F₂ : (W₁.Localization × W₂.Localization ⥤ E))
    (h : (W₁.Q.prod W₂.Q) ⋙ F₁ = (W₁.Q.prod W₂.Q) ⋙ F₂) :
      F₁ = F₂ := by
  apply Functor.curry_obj_injective
  apply Construction.uniq
  apply Functor.flip_injective
  apply Construction.uniq
  apply Functor.flip_injective
  apply Functor.uncurry_obj_injective
  simpa only [Functor.uncurry_obj_curry_obj_flip_flip] using h

/-- Auxiliary definition for `prodLift`. -/
noncomputable def prodLift₁ [W₂.ContainsIdentities]
    (hF : (W₁.prod W₂).IsInvertedBy F) :
    W₁.Localization ⥤ C₂ ⥤ E :=
  Construction.lift (curry.obj F) (fun _ _ f₁ hf₁ => by
    haveI : ∀ (X₂ : C₂), IsIso (((curry.obj F).map f₁).app X₂) :=
      fun X₂ => hF _ ⟨hf₁, MorphismProperty.id_mem _ _⟩
    apply NatIso.isIso_of_isIso_app)

variable (hF : (W₁.prod W₂).IsInvertedBy F)

lemma prod_fac₁ [W₂.ContainsIdentities] :
    W₁.Q ⋙ prodLift₁ F hF = curry.obj F :=
  Construction.fac _ _

variable [W₁.ContainsIdentities] [W₂.ContainsIdentities]

/-- The lifting of a functor `F : C₁ × C₂ ⥤ E` inverting `W₁.prod W₂` to a functor
`W₁.Localization × W₂.Localization ⥤ E` -/
noncomputable def prodLift :
    W₁.Localization × W₂.Localization ⥤ E := by
  refine uncurry.obj (Construction.lift (prodLift₁ F hF).flip ?_).flip
  intro _ _ f₂ hf₂
  haveI : ∀ (X₁ : W₁.Localization),
      IsIso (((Functor.flip (prodLift₁ F hF)).map f₂).app X₁) := fun X₁ => by
    obtain ⟨X₁, rfl⟩ := (Construction.objEquiv W₁).surjective X₁
    exact ((MorphismProperty.isomorphisms E).arrow_mk_iso_iff
      (((Functor.mapArrowFunctor _ _).mapIso
        (eqToIso (Functor.congr_obj (prod_fac₁ F hF) X₁))).app (Arrow.mk f₂))).2
          (hF _ ⟨MorphismProperty.id_mem _ _, hf₂⟩)
  apply NatIso.isIso_of_isIso_app

lemma prod_fac₂ :
    W₂.Q ⋙ (curry.obj (prodLift F hF)).flip = (prodLift₁ F hF).flip := by
  simp only [prodLift, Functor.curry_obj_uncurry_obj, Functor.flip_flip]
  apply Construction.fac

lemma prod_fac :
    (W₁.Q.prod W₂.Q) ⋙ prodLift F hF = F := by
  rw [← Functor.uncurry_obj_curry_obj_flip_flip', prod_fac₂, Functor.flip_flip, prod_fac₁,
    Functor.uncurry_obj_curry_obj]

variable (W₁ W₂)

/-- The product of two (constructed) localized categories satisfies the universal
property of the localized category of the product. -/
noncomputable def prod :
    StrictUniversalPropertyFixedTarget (W₁.Q.prod W₂.Q) (W₁.prod W₂) E where
  inverts := (Localization.inverts W₁.Q W₁).prod (Localization.inverts W₂.Q W₂)
  lift := fun F hF => prodLift F hF
  fac := fun F hF => prod_fac F hF
  uniq := prod_uniq

end StrictUniversalPropertyFixedTarget

variable (W₁ W₂)
variable [W₁.ContainsIdentities] [W₂.ContainsIdentities]

lemma Construction.prodIsLocalization :
    (W₁.Q.prod W₂.Q).IsLocalization (W₁.prod W₂) :=
  Functor.IsLocalization.mk' _ _
    (StrictUniversalPropertyFixedTarget.prod W₁ W₂)
    (StrictUniversalPropertyFixedTarget.prod W₁ W₂)

end Localization

open Localization

namespace Functor

namespace IsLocalization

variable (W₁ W₂)
variable [W₁.ContainsIdentities] [W₂.ContainsIdentities]

/-- If `L₁ : C₁ ⥤ D₁` and `L₂ : C₂ ⥤ D₂` are localization functors
for `W₁ : MorphismProperty C₁` and `W₂ : MorphismProperty C₂` respectively,
and if both `W₁` and `W₂` contain identities, then the product
functor `L₁.prod L₂ : C₁ × C₂ ⥤ D₁ × D₂` is a localization functor for `W₁.prod W₂`. -/
instance prod [L₁.IsLocalization W₁] [L₂.IsLocalization W₂] :
    (L₁.prod L₂).IsLocalization (W₁.prod W₂) := by
  haveI := Construction.prodIsLocalization W₁ W₂
  exact of_equivalence_target (W₁.Q.prod W₂.Q) (W₁.prod W₂) (L₁.prod L₂)
    ((uniq W₁.Q L₁ W₁).prod (uniq W₂.Q L₂ W₂))
    (NatIso.prod (compUniqFunctor W₁.Q L₁ W₁) (compUniqFunctor W₂.Q L₂ W₂))

end IsLocalization

end Functor

end CategoryTheory
```
