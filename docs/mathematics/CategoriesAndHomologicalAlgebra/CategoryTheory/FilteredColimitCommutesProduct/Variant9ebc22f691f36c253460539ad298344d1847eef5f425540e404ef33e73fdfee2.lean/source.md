# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FilteredColimitCommutesProduct.Variant9ebc22f691f36c253460539ad298344d1847eef5f425540e404ef33e73fdfee2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5788f94f94cb9feba19d9b125439434de4c40655` · SHA-256 `c770e2b0bc6594d19022ce6f7f6abcf862a34ca462234d4fcf83bb80bd5c8c15`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsIPC.Variant92e8edf8fdbda6052f8e8cf7a449a42a309dfb242cd99409c3155ae7f333983b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"92e8edf8fdbda6052f8e8cf7a449a42a309dfb242cd99409c3155ae7f333983b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.IsIPC.Variant92e8edf8fdbda6052f8e8cf7a449a42a309dfb242cd99409c3155ae7f333983b","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"92e8edf8fdbda6052f8e8cf7a449a42a309dfb242cd99409c3155ae7f333983b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Limits/FilteredColimitCommutesProduct.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
import Mathlib.CategoryTheory.Limits.FunctorCategory.Filtered
import Mathlib.CategoryTheory.Limits.Types.Filtered
import Mathlib.CategoryTheory.Limits.Types.Shapes
import Mathlib.CategoryTheory.Limits.FunctorCategory.Shapes.Products

/-!
# The IPC property

Given a family of categories `I i` (`i : α`) and a family of functors `F i : I i ⥤ C`, we construct
the natural morphism `colim_k (∏ᶜ s ↦ (F s).obj (k s)) ⟶ ∏ᶜ s ↦ colim_k (F s).obj (k s)`.

Similarly to the study of finite limits commuting with filtered colimits, we then study sufficient
conditions for this morphism to be an isomorphism. We say that `C` satisfies the `w`-IPC property if
the morphism is an isomorphism as long as `α` is `w`-small and `I i` is `w`-small and filtered for
all `i`.

We show that
* the category `Type u` satisfies the `u`-IPC property and
* if `C` satisfies the `w`-IPC property, then `D ⥤ C` satisfies the `w`-IPC property.

These results will be used to show that if a category `C` has products indexed by `α`, then so
does the category of Ind-objects of `C`.

## References
* [M. Kashiwara, P. Schapira, *Categories and Sheaves*][Kashiwara2006], 3.1.10, 3.1.11, 3.1.12.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsIPC.Variant92e8edf8fdbda6052f8e8cf7a449a42a309dfb242cd99409c3155ae7f333983b

universe w v v₁ v₂ u u₁ u₂

namespace CategoryTheory.Limits

section

variable {C : Type u} [Category.{v} C] {α : Type w} {I : α → Type u₁} [∀ i, Category.{v₁} (I i)]
  [HasLimitsOfShape (Discrete α) C]
  (F : ∀ i, I i ⥤ C)

/-- Given a family of functors `I i ⥤ C` for `i : α`, we obtain a functor `(∀ i, I i) ⥤ C` which
maps `k : ∀ i, I i` to `∏ᶜ fun (s : α) => (F s).obj (k s)`. -/
@[simps]
noncomputable def pointwiseProduct : (∀ i, I i) ⥤ C where
  obj k := ∏ᶜ fun (s : α) => (F s).obj (k s)
  map f := Pi.map (fun s => (F s).map (f s))

variable [∀ i, HasColimitsOfShape (I i) C] [HasColimitsOfShape (∀ i, I i) C]

/-- The inclusions `(F s).obj (k s) ⟶ colimit (F s)` induce a cocone on `pointwiseProduct F` with
cone point `∏ᶜ (fun s : α) => colimit (F s)`. -/
@[simps]
noncomputable def coconePointwiseProduct : Cocone (pointwiseProduct F) where
  pt := ∏ᶜ fun (s : α) => colimit (F s)
  ι := { app := fun k => Pi.map fun s => colimit.ι _ _ }

/-- The natural morphism `colim_k (∏ᶜ s ↦ (F s).obj (k s)) ⟶ ∏ᶜ s ↦ colim_k (F s).obj (k s)`.
We will say that a category has the `IPC` property if this morphism is an isomorphism as long
as the indexing categories are filtered. -/
noncomputable def colimitPointwiseProductToProductColimit :
    colimit (pointwiseProduct F) ⟶ ∏ᶜ fun (s : α) => colimit (F s) :=
  colimit.desc (pointwiseProduct F) (coconePointwiseProduct F)

@[reassoc (attr := simp)]
theorem ι_colimitPointwiseProductToProductColimit_π (k : ∀ i, I i) (s : α) :
    colimit.ι (pointwiseProduct F) k ≫ colimitPointwiseProductToProductColimit F ≫ Pi.π _ s =
      Pi.π _ s ≫ colimit.ι (F s) (k s) := by
  simp [colimitPointwiseProductToProductColimit]

end

section functorCategory

variable {C : Type u} [Category.{v} C] {D : Type u₁} [Category.{v₁} D]
  {α : Type w} {I : α → Type u₂} [∀ i, Category (I i)]
  [HasLimitsOfShape (Discrete α) C]
  (F : ∀ i, I i ⥤ D ⥤ C)

/-- Evaluating the pointwise product `k ↦ ∏ᶜ fun (s : α) => (F s).obj (k s)` at `d` is the same as
taking the pointwise product `k ↦ ∏ᶜ fun (s : α) => ((F s).obj (k s)).obj d`. -/
@[simps!]
noncomputable def pointwiseProductCompEvaluation (d : D) :
    pointwiseProduct F ⋙ (evaluation D C).obj d ≅
      pointwiseProduct (fun s => F s ⋙ (evaluation _ _).obj d) :=
  NatIso.ofComponents (fun k => piObjIso _ _)
    (fun f => Pi.hom_ext _ _ (by simp [← NatTrans.comp_app]))

variable [∀ i, HasColimitsOfShape (I i) C] [HasColimitsOfShape (∀ i, I i) C]

theorem colimitPointwiseProductToProductColimit_app (d : D) :
    (colimitPointwiseProductToProductColimit F).app d =
      (colimitObjIsoColimitCompEvaluation _ _).hom ≫
        (HasColimit.isoOfNatIso (pointwiseProductCompEvaluation F d)).hom ≫
          colimitPointwiseProductToProductColimit _ ≫
            (Pi.mapIso fun _ => (colimitObjIsoColimitCompEvaluation _ _).symm).hom ≫
              (piObjIso _ _).inv := by
  rw [← Iso.inv_comp_eq]
  simp only [← Category.assoc]
  rw [Iso.eq_comp_inv]
  refine Pi.hom_ext _ _ (fun s => colimit.hom_ext (fun k => ?_))
  simp [← NatTrans.comp_app]

end functorCategory

section

variable (C : Type u) [Category.{v} C]

/-- A category `C` has the `w`-IPC property if the natural morphism
`colim_k (∏ᶜ s ↦ (F s).obj (k s)) ⟶ ∏ᶜ s ↦ colim_k (F s).obj (k s)` is an isomorphism for any
family of functors `F i : I i ⥤ C` with `I i` `w`-small and filtered for all `i`. -/
class IsIPC [HasProducts.{w} C] [HasFilteredColimitsOfSize.{w} C] : Prop where
  /-- `colimitPointwiseProductToProductColimit F` is always an isomorphism. -/
  isIso : ∀ (α : Type w) (I : α → Type w) [∀ i, SmallCategory (I i)] [∀ i, IsFiltered (I i)]
    (F : ∀ i, I i ⥤ C), IsIso (colimitPointwiseProductToProductColimit F)

attribute [instance] IsIPC.isIso

end

section types

variable {α : Type u} {I : α → Type u} [∀ i, SmallCategory (I i)] [∀ i, IsFiltered (I i)]

theorem Types.isIso_colimitPointwiseProductToProductColimit (F : ∀ i, I i ⥤ Type u) :
    IsIso (colimitPointwiseProductToProductColimit F) := by
  -- We follow the proof in [Kashiwara2006], Prop. 3.1.11(ii)
  refine (isIso_iff_bijective _).2 ⟨fun y y' hy => ?_, fun x => ?_⟩
  · obtain ⟨ky, yk₀, hyk₀⟩ := Types.jointly_surjective' y
    obtain ⟨ky', yk₀', hyk₀'⟩ := Types.jointly_surjective' y'
    let k := IsFiltered.max ky ky'
    let yk : (pointwiseProduct F).obj k :=
      (pointwiseProduct F).map (IsFiltered.leftToMax ky ky') yk₀
    let yk' : (pointwiseProduct F).obj k :=
      (pointwiseProduct F).map (IsFiltered.rightToMax ky ky') yk₀'
    obtain rfl : y = colimit.ι (pointwiseProduct F) k yk := by
      simp only [k, yk, Types.Colimit.w_apply', hyk₀]
    obtain rfl : y' = colimit.ι (pointwiseProduct F) k yk' := by
      simp only [k, yk', Types.Colimit.w_apply', hyk₀']
    dsimp only [pointwiseProduct_obj] at yk yk'
    have hch : ∀ (s : α), ∃ (i' : I s) (hi' : k s ⟶ i'),
        (F s).map hi' (Pi.π (fun s => (F s).obj (k s)) s yk) =
          (F s).map hi' (Pi.π (fun s => (F s).obj (k s)) s yk') := by
      intro s
      have hy₁ := congrFun (ι_colimitPointwiseProductToProductColimit_π F k s) yk
      have hy₂ := congrFun (ι_colimitPointwiseProductToProductColimit_π F k s) yk'
      dsimp only [pointwiseProduct_obj, types_comp_apply] at hy₁ hy₂
      rw [← hy, hy₁, Types.FilteredColimit.colimit_eq_iff] at hy₂
      obtain ⟨i₀, f₀, g₀, h₀⟩ := hy₂
      refine ⟨IsFiltered.coeq f₀ g₀, f₀ ≫ IsFiltered.coeqHom f₀ g₀, ?_⟩
      conv_rhs => rw [IsFiltered.coeq_condition]
      simp [h₀]
    choose k' f hk' using hch
    apply Types.colimit_sound' f f
    exact Types.limit_ext' _ _ _ (fun ⟨s⟩ => by simpa using hk' _)
  · have hch : ∀ (s : α), ∃ (i : I s) (xi : (F s).obj i), colimit.ι (F s) i xi =
        Pi.π (fun s => colimit (F s)) s x := fun s => Types.jointly_surjective' _
    choose k p hk using hch
    refine ⟨colimit.ι (pointwiseProduct F) k ((Types.productIso _).inv p), ?_⟩
    refine Types.limit_ext' _ _ _ (fun ⟨s⟩ => ?_)
    have := congrFun (ι_colimitPointwiseProductToProductColimit_π F k s)
      ((Types.productIso _).inv p)
    exact this.trans (by simpa using hk _)

instance : IsIPC.{u} (Type u) where
  isIso _ _ := Types.isIso_colimitPointwiseProductToProductColimit

end types

section functorCategory

variable {C : Type u} [Category.{v} C]

instance [HasProducts.{w} C] [HasFilteredColimitsOfSize.{w, w} C] [IsIPC.{w} C] {D : Type u₁}
    [Category.{v₁} D] : IsIPC.{w} (D ⥤ C) := by
  refine ⟨fun β I _ _ F => ?_⟩
  suffices ∀ d, IsIso ((colimitPointwiseProductToProductColimit F).app d) from
    NatIso.isIso_of_isIso_app _
  exact fun d => colimitPointwiseProductToProductColimit_app F d ▸ inferInstance

end functorCategory

end CategoryTheory.Limits
```
