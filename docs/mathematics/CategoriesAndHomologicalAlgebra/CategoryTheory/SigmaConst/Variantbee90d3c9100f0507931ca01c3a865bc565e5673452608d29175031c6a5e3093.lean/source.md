# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SigmaConst.Variantbee90d3c9100f0507931ca01c3a865bc565e5673452608d29175031c6a5e3093

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `046804b58a9946f31eb9271a0c734ceed78169bb` · SHA-256 `eb0e400853615c44bc787471ddefad29082323f438ab0c92e515e00aa7bf223b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SigmaConstCokernelCofork.Variant4185786d36d8ee97d6fcfcf55c4e93c9b3c5a61e8d0d34e4bcea337375329b30","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4185786d36d8ee97d6fcfcf55c4e93c9b3c5a61e8d0d34e4bcea337375329b30","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.SigmaConstCokernelCofork.Variant4185786d36d8ee97d6fcfcf55c4e93c9b3c5a61e8d0d34e4bcea337375329b30","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"4185786d36d8ee97d6fcfcf55c4e93c9b3c5a61e8d0d34e4bcea337375329b30","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Limits/Preserves/SigmaConst.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.CategoryTheory.Limits.Preserves.Shapes.Products
public import Mathlib.CategoryTheory.Limits.Shapes.ZeroMorphisms
public import Mathlib.CategoryTheory.Limits.Shapes.Kernels
public import Mathlib.CategoryTheory.Limits.Types.Colimits

/-!
# `sigmaConst.obj` preserves colimits

Given an object `R` in a category `C` with coproducts of size `w`,
the functor `sigmaConst.obj R : Type w ⥤ C` which sends
a type `T` to the coproduct of copies of `R` indexed by `T`
preserves all colimits.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SigmaConstCokernelCofork.Variant4185786d36d8ee97d6fcfcf55c4e93c9b3c5a61e8d0d34e4bcea337375329b30

@[expose] public section

universe w v' v u' u

namespace CategoryTheory.Limits

variable {C : Type u} [Category.{v} C] {D : Type u'} [Category.{v'} D]

set_option backward.defeqAttrib.useBackward true in
/- If the morphisms in `C` were in `Type w`, the functor
`sigmaConst.{w}`
would be a left adjoint (see `sigmaConstAdj`). In general, we cannot
expect this functor to be a left adjoint, but the commutation
with colimits always holds. -/
instance [HasCoproducts.{w} C] (R : C) :
    PreservesColimitsOfSize.{v', u'} (sigmaConst.{w}.obj R) where
  preservesColimitsOfShape {J _} := ⟨fun {K} ↦ ⟨fun {c} hc ↦ ⟨by
    replace hc := (Types.isColimit_iff_coconeTypesIsColimit ..).1 ⟨hc⟩
    let coconeTypes (s : Cocone (K ⋙ sigmaConst.obj R)) : K.CoconeTypes :=
      { pt := R ⟶ s.pt
        ι j k := Sigma.ι (fun _ ↦ R) k ≫ s.ι.app j
        ι_naturality g := by ext; simp [← s.w g] }
    exact {
      desc s := Sigma.desc (hc.desc (coconeTypes s))
      fac s j := by
        dsimp
        ext k
        simp [dsimp% hc.fac_apply, dsimp% Sigma.ι_comp_desc (hc.desc (coconeTypes s)), coconeTypes]
      uniq s m hm := by
        dsimp
        ext x
        obtain ⟨j, k, rfl⟩ := Functor.CoconeTypes.IsColimit.ι_jointly_surjective hc x
        simp [coconeTypes, ← hm, dsimp% hc.fac_apply,
          dsimp% Sigma.ι_comp_desc (hc.desc (coconeTypes s))] }⟩⟩⟩

section

variable [HasZeroMorphisms C] (R : C) {α β : Type*} (f : α → β)
  [HasCoproduct (fun (_ : α) ↦ R)] [HasCoproduct (fun (_ : β) ↦ R)]
  [HasCoproduct (fun (_ : ((Set.range f)ᶜ : Set _)) ↦ R)]

open scoped Classical in
/-- A colimit cokernel cofork for the map
`∐ fun (_ : α) ↦ R ⟶ ∐ fun (_ : β) ↦ R` induced by a map `f : α → β`. -/
@[simps! pt, implicit_reducible]
noncomputable def sigmaConstCokernelCofork :
    CokernelCofork
      (Sigma.map' (f := fun _ ↦ R) (g := fun _ ↦ R) f (fun _ ↦ 𝟙 R)) :=
  CokernelCofork.ofπ (Z := ∐ fun (_ : ((Set.range f)ᶜ : Set _)) ↦ R)
    (Sigma.desc (fun b ↦
      if hb : b ∈ (Set.range f)ᶜ then Sigma.ι (fun _ ↦ R) ⟨b, hb⟩ else 0))
    (by ext; simp)

set_option backward.defeqAttrib.useBackward true in
@[reassoc]
lemma ι_sigmaConstCokernelCofork_π (b : β) (hb : b ∉ Set.range f) :
    dsimp% Sigma.ι (fun _ ↦ R) b ≫ (sigmaConstCokernelCofork R f).π =
      Sigma.ι (fun _ ↦ R) ⟨b, hb⟩ := by
  dsimp [sigmaConstCokernelCofork]
  rw [Sigma.ι_comp_desc]
  apply dite_eq_left

set_option backward.defeqAttrib.useBackward true in
@[reassoc (attr := simp)]
lemma ι_sigmaConstCokernelCofork_π_eq_zero (a : α) :
    dsimp% Sigma.ι (fun _ ↦ R) (f a) ≫ (sigmaConstCokernelCofork R f).π = 0 := by
  dsimp [sigmaConstCokernelCofork]
  rw [Sigma.ι_comp_desc]
  exact dite_eq_right (by simp)

set_option backward.defeqAttrib.useBackward true in
/-- The cokernel of the map `∐ fun (_ : α) ↦ R ⟶ ∐ fun (_ : β) ↦ R` induced
by a map `f : α → β` identifies to the coproduct of copies of `R`
indexed by the complement of the range of `f`. -/
noncomputable def isColimitSigmaConstCokernelCofork :
    IsColimit (sigmaConstCokernelCofork R f) :=
  Cofork.IsColimit.mk _
    (fun s ↦ Sigma.desc (fun ⟨b, _⟩ ↦ Sigma.ι (fun _ ↦ R) b ≫ s.π))
    (fun s ↦ by
      ext b
      by_cases hb : b ∈ Set.range f
      · obtain ⟨a, rfl⟩ := hb
        simpa [-CokernelCofork.condition] using Sigma.ι (fun _ ↦ R) a ≫= s.condition.symm
      · simp [ι_sigmaConstCokernelCofork_π_assoc _ _ _ hb])
    (fun s m hm ↦ by
      dsimp
      ext ⟨b, hb⟩
      rw [Sigma.ι_comp_desc, ← hm, ι_sigmaConstCokernelCofork_π_assoc])

instance :
    HasCokernel (Sigma.map' (f := fun _ ↦ R) (g := fun _ ↦ R) f (fun _ ↦ 𝟙 R)) :=
  ⟨_, isColimitSigmaConstCokernelCofork R f⟩

end

set_option backward.defeqAttrib.useBackward true in
instance [HasZeroMorphisms C] (R : C) [HasCoproducts.{w} C] {α β : Type w} (f : α ⟶ β) :
    HasCokernel ((sigmaConst.obj R).map f) := by
  dsimp; infer_instance

section

variable [HasCoproducts.{w} C] [HasCoproducts.{w} D]
  (F : C ⥤ D) [∀ (T : Type w), PreservesColimitsOfShape (Discrete T) F] (X : C)

/-- The isomophism `sigmaConst.obj X ⋙ F ≅ sigmaConst.obj (F.obj X)` when `F`
preserves coproducts. -/
noncomputable def sigmaConstObjCompIso : sigmaConst.obj X ⋙ F ≅ sigmaConst.obj (F.obj X) :=
  NatIso.ofComponents (fun _ ↦ PreservesCoproduct.iso _ _) (fun {T₁ T₂} f ↦ by
    dsimp [Sigma.map']
    rw [← cancel_epi (PreservesCoproduct.iso F (fun (_ : T₁) ↦ X)).inv,
      ← cancel_mono (PreservesCoproduct.iso F (fun (_ : T₂) ↦ X)).inv,
      Iso.inv_hom_id_assoc, Category.assoc, Category.assoc, Iso.hom_inv_id, Category.comp_id,
      PreservesCoproduct.inv_hom, PreservesCoproduct.inv_hom, sigmaComparison_map_desc]
    cat_disch)

@[reassoc (attr := simp)]
lemma map_ι_sigmaConstObjCompIso_hom_app {T : Type w} (t : T) :
    dsimp% F.map (Sigma.ι (fun (_ : T) ↦ X) t) ≫ (sigmaConstObjCompIso F X).hom.app T =
      Sigma.ι (fun (_ : T) ↦ F.obj X) t := by
  dsimp [sigmaConstObjCompIso]
  rw [← cancel_mono (PreservesCoproduct.iso F (fun (_ : T) ↦ X)).inv,
    Category.assoc, Iso.hom_inv_id]
  simp

@[reassoc (attr := simp)]
lemma ι_sigmaConstObjCompIso_inv_app {T : Type w} (t : T) :
    Sigma.ι (fun (_ : T) ↦ F.obj X) t ≫ (sigmaConstObjCompIso F X).inv.app T =
      F.map (Sigma.ι (fun (_ : T) ↦ X) t) := by
  simp [sigmaConstObjCompIso]

end

end CategoryTheory.Limits
```
