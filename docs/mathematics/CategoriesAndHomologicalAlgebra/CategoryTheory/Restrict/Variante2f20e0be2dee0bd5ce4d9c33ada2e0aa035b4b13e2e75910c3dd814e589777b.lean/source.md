# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Restrict.Variante2f20e0be2dee0bd5ce4d9c33ada2e0aa035b4b13e2e75910c3dd814e589777b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b72adde9ebf9d742ea213260b5bfa03982e3f4ce` · SHA-256 `28673364e6bcc5e17359f9d498485b92311462aaaf91ec5cfcaea37b311ae79e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.RestrictFullyFaithful.Variant92bf2a19f57cf08c98f1260756c7888798c0b1c0285d3bdb3bef5af05d641521","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"92bf2a19f57cf08c98f1260756c7888798c0b1c0285d3bdb3bef5af05d641521","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.RestrictFullyFaithful.Variant92bf2a19f57cf08c98f1260756c7888798c0b1c0285d3bdb3bef5af05d641521","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"92bf2a19f57cf08c98f1260756c7888798c0b1c0285d3bdb3bef5af05d641521","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Adjunction/Restrict.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.CategoryTheory.Adjunction.Basic
import Mathlib.CategoryTheory.HomCongr
/-!

# Restricting adjunctions

`Adjunction.restrictFullyFaithful` shows that an adjunction can be restricted along fully faithful
inclusions.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.RestrictFullyFaithful.Variant92bf2a19f57cf08c98f1260756c7888798c0b1c0285d3bdb3bef5af05d641521

namespace CategoryTheory.Adjunction

universe v₁ v₂ u₁ u₂ v₃ v₄ u₃ u₄

open Category Opposite

variable {C : Type u₁} [Category.{v₁} C]
variable {D : Type u₂} [Category.{v₂} D]
variable {C' : Type u₃} [Category.{v₃} C']
variable {D' : Type u₄} [Category.{v₄} D']
variable {iC : C ⥤ C'} {iD : D ⥤ D'}
  {L' : C' ⥤ D'} {R' : D' ⥤ C'} (adj : L' ⊣ R') (hiC : iC.FullyFaithful) (hiD : iD.FullyFaithful)
  {L : C ⥤ D} {R : D ⥤ C} (comm1 : iC ⋙ L' ≅ L ⋙ iD) (comm2 : iD ⋙ R' ≅ R ⋙ iC)

attribute [local simp] homEquiv_unit homEquiv_counit

/-- If `C` is a full subcategory of `C'` and `D` is a full subcategory of `D'`, then we can restrict
an adjunction `L' ⊣ R'` where `L' : C' ⥤ D'` and `R' : D' ⥤ C'` to `C` and `D`.
The construction here is slightly more general, in that `C` is required only to have a full and
faithful "inclusion" functor `iC : C ⥤ C'` (and similarly `iD : D ⥤ D'`) which commute (up to
natural isomorphism) with the proposed restrictions.
-/
noncomputable def restrictFullyFaithful : L ⊣ R :=
  Adjunction.mkOfHomEquiv
    { homEquiv := fun X Y =>
        calc
          (L.obj X ⟶ Y) ≃ (iD.obj (L.obj X) ⟶ iD.obj Y) := hiD.homEquiv
          _ ≃ (L'.obj (iC.obj X) ⟶ iD.obj Y) := Iso.homCongr (comm1.symm.app X) (Iso.refl _)
          _ ≃ (iC.obj X ⟶ R'.obj (iD.obj Y)) := adj.homEquiv _ _
          _ ≃ (iC.obj X ⟶ iC.obj (R.obj Y)) := Iso.homCongr (Iso.refl _) (comm2.app Y)
          _ ≃ (X ⟶ R.obj Y) := hiC.homEquiv.symm

      homEquiv_naturality_left_symm := fun {X' X Y} f g => by
        apply hiD.map_injective
        simpa [Trans.trans] using (comm1.inv.naturality_assoc f _).symm
      homEquiv_naturality_right := fun {X Y' Y} f g => by
        apply hiC.map_injective
        suffices R'.map (iD.map g) ≫ comm2.hom.app Y = comm2.hom.app Y' ≫ iC.map (R.map g) by
          simp [Trans.trans, this]
        apply comm2.hom.naturality g }

@[simp, reassoc]
lemma map_restrictFullyFaithful_unit_app (X : C) :
    iC.map ((adj.restrictFullyFaithful hiC hiD comm1 comm2).unit.app X) =
    adj.unit.app (iC.obj X) ≫ R'.map (comm1.hom.app X) ≫ comm2.hom.app (L.obj X) := by
  simp [restrictFullyFaithful]

@[simp, reassoc]
lemma map_restrictFullyFaithful_counit_app (X : D) :
    iD.map ((adj.restrictFullyFaithful hiC hiD comm1 comm2).counit.app X) =
    comm1.inv.app (R.obj X) ≫ L'.map (comm2.inv.app X) ≫ adj.counit.app (iD.obj X) := by
  dsimp [restrictFullyFaithful]
  simp

lemma restrictFullyFaithful_homEquiv_apply {X : C} {Y : D} (f : L.obj X ⟶ Y) :
    (adj.restrictFullyFaithful hiC hiD comm1 comm2).homEquiv X Y f =
      hiC.preimage (adj.unit.app (iC.obj X) ≫ R'.map (comm1.hom.app X) ≫
        R'.map (iD.map f) ≫ comm2.hom.app Y) := by
  -- This proof was just `simp [restrictFullyFaithful]` before https://github.com/leanprover-community/mathlib4/pull/16317
  apply hiC.map_injective
  simp only [homEquiv_apply, Functor.comp_obj, Functor.map_comp, map_restrictFullyFaithful_unit_app,
    Functor.id_obj, assoc, Functor.FullyFaithful.map_preimage]
  congr 2
  exact (comm2.hom.naturality _).symm

end CategoryTheory.Adjunction
```
