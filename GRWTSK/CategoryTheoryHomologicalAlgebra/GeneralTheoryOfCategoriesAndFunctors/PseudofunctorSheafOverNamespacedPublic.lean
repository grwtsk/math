-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PseudofunctorOver.Variant2dd29eb702d137782a347701c189e3524a11c934a6599ff8187012e27269ffb5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2dd29eb702d137782a347701c189e3524a11c934a6599ff8187012e27269ffb5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.PseudofunctorOver.Variant2dd29eb702d137782a347701c189e3524a11c934a6599ff8187012e27269ffb5","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"2dd29eb702d137782a347701c189e3524a11c934a6599ff8187012e27269ffb5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Sites/PseudofunctorSheafOver.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.CategoryTheory.Bicategory.Functor.LocallyDiscrete
public import Mathlib.CategoryTheory.Sites.Over

/-!
# Sheaves on Over categories, as a pseudofunctor

Given a Grothendieck topology `J` on a category `C` and
a category `A`, we define the pseudofunctor
`J.pseudofunctorOver A : Pseudofunctor (LocallyDiscrete Cᵒᵖ) Cat`
which sends `X : C` to the category of sheaves on `Over X`
with values in `A`.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PseudofunctorOver.Variant2dd29eb702d137782a347701c189e3524a11c934a6599ff8187012e27269ffb5

@[expose] public section

universe v' v u' u

namespace CategoryTheory

namespace GrothendieckTopology

variable {C : Type u} [Category.{v} C] (J : GrothendieckTopology C)
  (A : Type u') [Category.{v'} A]

/-- Given a Grothendieck topology `J` on a category `C` and a category `A`,
this is the pseudofunctor which sends `X : C` to the categories of
sheaves on `Over X` with values in `A`. -/
@[simps!]
def pseudofunctorOver : Pseudofunctor (LocallyDiscrete Cᵒᵖ) Cat :=
  LocallyDiscrete.mkPseudofunctor
    (fun X ↦ ↧(Sheaf (J.over X.unop) A))
    (fun f ↦ (J.overMapPullback A f.unop).toCatHom)
    (fun X ↦ Cat.Hom.isoMk <| (J.overMapPullbackId A X.unop))
    (fun f g ↦ Cat.Hom.isoMk <| (J.overMapPullbackComp A g.unop f.unop).symm)
    (fun f g h ↦ by ext1; simpa [overMapPullbackCongr_eq_eqToIso] using!
      J.overMapPullback_assoc A h.unop g.unop f.unop)
    (fun f ↦ by ext1; simpa [overMapPullbackCongr_eq_eqToIso] using!
      J.overMapPullback_comp_id A f.unop)
    (fun f ↦ by ext1; simpa [overMapPullbackCongr_eq_eqToIso] using!
      J.overMapPullback_id_comp A f.unop)

end GrothendieckTopology

end CategoryTheory
