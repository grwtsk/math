# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant9a707daafda3a40e5c26bb7f15163bac2211652f4d2f85e08765022f3dd98337

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d540c20ffe00269ef829e75ebff32055c05140e3` · SHA-256 `fda31b5b565185ce1fba2f4c347aecfbf8d05fea9f2f8314cc154b843a2475c1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsCardinalAccessible.Variante8b0f36044fa4e19d896082dff45dd70d56883c49d6671c5c16e11a6442027bc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e8b0f36044fa4e19d896082dff45dd70d56883c49d6671c5c16e11a6442027bc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.IsCardinalAccessible.Variante8b0f36044fa4e19d896082dff45dd70d56883c49d6671c5c16e11a6442027bc","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"e8b0f36044fa4e19d896082dff45dd70d56883c49d6671c5c16e11a6442027bc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Presentable/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.CategoryTheory.Adjunction.Limits
import Mathlib.CategoryTheory.Limits.Preserves.Ulift
import Mathlib.CategoryTheory.Presentable.IsCardinalFiltered
import Mathlib.SetTheory.Cardinal.HasCardinalLT

/-! # Presentable objects

A functor `F : C ⥤ D` is `κ`-accessible (`Functor.IsCardinalAccessible`)
if it commutes with colimits of shape `J` where `J` is any `κ`-filtered category
(that is essentially small relative to the universe `w` such that `κ : Cardinal.{w}`.).
We also introduce another typeclass `Functor.IsAccessible` saying that there exists
a regular cardinal `κ` such that `Functor.IsCardinalAccessible`.

An object `X` of a category is `κ`-presentable (`IsCardinalPresentable`)
if the functor `Hom(X, _)` (i.e. `coyoneda.obj (op X)`) is `κ`-accessible.
Similar as for accessible functors, we define a type class `IsAccessible`.

## References
* [Adámek, J. and Rosický, J., *Locally presentable and accessible categories*][Adamek_Rosicky_1994]

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsCardinalAccessible.Variante8b0f36044fa4e19d896082dff45dd70d56883c49d6671c5c16e11a6442027bc

universe w w' v₁ v₂ v₃ u₁ u₂ u₃

namespace CategoryTheory

open Limits Opposite

variable {C : Type u₁} [Category.{v₁} C] {D : Type u₂} [Category.{v₂} D]

namespace Functor

section

variable (F G : C ⥤ D) (e : F ≅ G) (κ : Cardinal.{w}) [Fact κ.IsRegular]

/-- A functor `F : C ⥤ D` is `κ`-accessible (with `κ` a regular cardinal)
if it preserves colimits of shape `J` where `J` is any `κ`-filtered category.
In the mathematical literature, some assumptions are often made on the
categories `C` or `D` (e.g. the existence of `κ`-filtered colimits,
see `HasCardinalFilteredColimits` below), but here we do not
make such assumptions. -/
class IsCardinalAccessible : Prop where
  preservesColimitOfShape (J : Type w) [SmallCategory J] [IsCardinalFiltered J κ] :
    PreservesColimitsOfShape J F

lemma preservesColimitsOfShape_of_isCardinalAccessible [F.IsCardinalAccessible κ]
    (J : Type w) [SmallCategory J] [IsCardinalFiltered J κ] :
    PreservesColimitsOfShape J F :=
  IsCardinalAccessible.preservesColimitOfShape κ _

lemma preservesColimitsOfShape_of_isCardinalAccessible_of_essentiallySmall
    [F.IsCardinalAccessible κ]
    (J : Type u₃) [Category.{v₃} J] [EssentiallySmall.{w} J] [IsCardinalFiltered J κ] :
    PreservesColimitsOfShape J F := by
  have := IsCardinalFiltered.of_equivalence κ (equivSmallModel.{w} J)
  have := F.preservesColimitsOfShape_of_isCardinalAccessible κ (SmallModel.{w} J)
  exact preservesColimitsOfShape_of_equiv (equivSmallModel.{w} J).symm F

variable {κ} in
lemma isCardinalAccessible_of_le
    [F.IsCardinalAccessible κ] {κ' : Cardinal.{w}} [Fact κ'.IsRegular] (h : κ ≤ κ') :
    F.IsCardinalAccessible κ' where
  preservesColimitOfShape {J _ _} := by
    have := IsCardinalFiltered.of_le J h
    exact F.preservesColimitsOfShape_of_isCardinalAccessible κ J

include e in
variable {F G} in
lemma isCardinalAccessible_of_natIso [F.IsCardinalAccessible κ] : G.IsCardinalAccessible κ where
  preservesColimitOfShape J _ hκ := by
    have := F.preservesColimitsOfShape_of_isCardinalAccessible κ J
    exact preservesColimitsOfShape_of_natIso e

end

end Functor

variable (X : C) (Y : C) (e : X ≅ Y) (κ : Cardinal.{w}) [Fact κ.IsRegular]

/-- An object `X` in a category is `κ`-presentable (for `κ` a regular cardinal)
when the functor `Hom(X, _)` preserves colimits indexed by
`κ`-filtered categories. -/
abbrev IsCardinalPresentable : Prop := (coyoneda.obj (op X)).IsCardinalAccessible κ

lemma preservesColimitsOfShape_of_isCardinalPresentable [IsCardinalPresentable X κ]
    (J : Type w) [SmallCategory.{w} J] [IsCardinalFiltered J κ] :
    PreservesColimitsOfShape J (coyoneda.obj (op X)) :=
  (coyoneda.obj (op X)).preservesColimitsOfShape_of_isCardinalAccessible κ J

lemma preservesColimitsOfShape_of_isCardinalPresentable_of_essentiallySmall
    [IsCardinalPresentable X κ]
    (J : Type u₃) [Category.{v₃} J] [EssentiallySmall.{w} J] [IsCardinalFiltered J κ] :
    PreservesColimitsOfShape J (coyoneda.obj (op X)) :=
  (coyoneda.obj (op X)).preservesColimitsOfShape_of_isCardinalAccessible_of_essentiallySmall κ J

variable {κ} in
lemma isCardinalPresentable_of_le [IsCardinalPresentable X κ]
    {κ' : Cardinal.{w}} [Fact κ'.IsRegular] (h : κ ≤ κ') :
    IsCardinalPresentable X κ' :=
  (coyoneda.obj (op X)).isCardinalAccessible_of_le h

include e in
variable {X Y} in
lemma isCardinalPresentable_of_iso [IsCardinalPresentable X κ] : IsCardinalPresentable Y κ :=
  Functor.isCardinalAccessible_of_natIso (coyoneda.mapIso e.symm.op) κ

section

lemma isCardinalPresentable_of_equivalence
    {C' : Type u₃} [Category.{v₃} C'] [IsCardinalPresentable X κ] (e : C ≌ C') :
    IsCardinalPresentable (e.functor.obj X) κ := by
  refine ⟨fun J _ _ ↦ ⟨fun {Y} ↦ ?_⟩⟩
  have := preservesColimitsOfShape_of_isCardinalPresentable X κ J
  suffices PreservesColimit Y (coyoneda.obj (op (e.functor.obj X)) ⋙ uliftFunctor.{v₁}) from
    ⟨fun {c} hc ↦ ⟨isColimitOfReflects uliftFunctor.{v₁}
        (isColimitOfPreserves (coyoneda.obj (op (e.functor.obj X)) ⋙ uliftFunctor.{v₁}) hc)⟩⟩
  have iso : coyoneda.obj (op (e.functor.obj X)) ⋙ uliftFunctor.{v₁} ≅
    e.inverse ⋙ coyoneda.obj (op X) ⋙ uliftFunctor.{v₃} :=
    NatIso.ofComponents (fun Z ↦
      (Equiv.ulift.trans ((e.toAdjunction.homEquiv X Z).trans Equiv.ulift.symm)).toIso) (by
        intro _ _ f
        ext ⟨g⟩
        apply Equiv.ulift.injective
        simp [Adjunction.homEquiv_unit])
  exact preservesColimit_of_natIso Y iso.symm

instance isCardinalPresentable_of_isEquivalence
    {C' : Type u₃} [Category.{v₃} C'] [IsCardinalPresentable X κ] (F : C ⥤ C')
    [F.IsEquivalence] :
    IsCardinalPresentable (F.obj X) κ :=
  isCardinalPresentable_of_equivalence X κ F.asEquivalence

@[simp]
lemma isCardinalPresentable_iff_of_isEquivalence
    {C' : Type u₃} [Category.{v₃} C'] (F : C ⥤ C')
    [F.IsEquivalence] :
    IsCardinalPresentable (F.obj X) κ ↔ IsCardinalPresentable X κ := by
  constructor
  · intro
    exact isCardinalPresentable_of_iso
      (show F.inv.obj (F.obj X) ≅ X from F.asEquivalence.unitIso.symm.app X :) κ
  · intro
    infer_instance

end

section

variable (C) (κ : Cardinal.{w}) [Fact κ.IsRegular]

/-- A category has `κ`-filtered colimits if it has colimits of shape `J`
for any `κ`-filtered category `J`. -/
class HasCardinalFilteredColimits : Prop where
  hasColimitsOfShape (J : Type w) [SmallCategory J] [IsCardinalFiltered J κ] :
    HasColimitsOfShape J C := by intros; infer_instance

attribute [instance] HasCardinalFilteredColimits.hasColimitsOfShape

instance [HasColimitsOfSize.{w, w} C] : HasCardinalFilteredColimits.{w} C κ where

end

end CategoryTheory
```
