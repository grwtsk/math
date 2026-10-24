# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variantb5523b4fbbd503997c671ef4e0aab17fa5441edd4b393068dffc8999eec18e48

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9139f88dd460f83de67b092428632be0a170c217` · SHA-256 `b5831b37c3954f02db8fb0b3549d974bf47924f7af5a48d70595a64b9b3d2c23`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorReflectsIsomorphisms.Variant101371ced34ff9c9463dba5e9163ac30443c412c4927318ec4f42a8d0c72471c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"101371ced34ff9c9463dba5e9163ac30443c412c4927318ec4f42a8d0c72471c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.FunctorReflectsIsomorphisms.Variant101371ced34ff9c9463dba5e9163ac30443c412c4927318ec4f42a8d0c72471c","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"101371ced34ff9c9463dba5e9163ac30443c412c4927318ec4f42a8d0c72471c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Functor/ReflectsIso/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Bhavik Mehta. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Bhavik Mehta
-/
import Mathlib.CategoryTheory.Whiskering
import Mathlib.CategoryTheory.Iso
import Mathlib.CategoryTheory.Functor.FullyFaithful

/-!
# Functors which reflect isomorphisms

A functor `F` reflects isomorphisms if whenever `F.map f` is an isomorphism, `f` was too.

It is formalized as a `Prop` valued typeclass `ReflectsIsomorphisms F`.

Any fully faithful functor reflects isomorphisms.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorReflectsIsomorphisms.Variant101371ced34ff9c9463dba5e9163ac30443c412c4927318ec4f42a8d0c72471c

open CategoryTheory CategoryTheory.Functor

namespace CategoryTheory

variable {C : Type*} [Category C]
  {D : Type*} [Category D]
  {E : Type*} [Category E]

section ReflectsIso

/-- Define what it means for a functor `F : C ⥤ D` to reflect isomorphisms: for any
morphism `f : A ⟶ B`, if `F.map f` is an isomorphism then `f` is as well.
Note that we do not assume or require that `F` is faithful.
-/
class Functor.ReflectsIsomorphisms (F : C ⥤ D) : Prop where
  /-- For any `f`, if `F.map f` is an iso, then so was `f`. -/
  reflects : ∀ {A B : C} (f : A ⟶ B) [IsIso (F.map f)], IsIso f

/-- If `F` reflects isos and `F.map f` is an iso, then `f` is an iso. -/
theorem isIso_of_reflects_iso {A B : C} (f : A ⟶ B) (F : C ⥤ D) [IsIso (F.map f)]
    [F.ReflectsIsomorphisms] : IsIso f :=
  ReflectsIsomorphisms.reflects F f

lemma isIso_iff_of_reflects_iso {A B : C} (f : A ⟶ B) (F : C ⥤ D) [F.ReflectsIsomorphisms] :
    IsIso (F.map f) ↔ IsIso f :=
  ⟨fun _ => isIso_of_reflects_iso f F, fun _ => inferInstance⟩

lemma Functor.FullyFaithful.reflectsIsomorphisms {F : C ⥤ D} (hF : F.FullyFaithful) :
    F.ReflectsIsomorphisms where
  reflects _ _ := hF.isIso_of_isIso_map _

instance (priority := 100) reflectsIsomorphisms_of_full_and_faithful
    (F : C ⥤ D) [F.Full] [F.Faithful] :
    F.ReflectsIsomorphisms :=
  (Functor.FullyFaithful.ofFullyFaithful F).reflectsIsomorphisms

instance reflectsIsomorphisms_comp (F : C ⥤ D) (G : D ⥤ E)
    [F.ReflectsIsomorphisms] [G.ReflectsIsomorphisms] :
    (F ⋙ G).ReflectsIsomorphisms :=
  ⟨fun f (hf : IsIso (G.map _)) => by
    haveI := isIso_of_reflects_iso (F.map f) G
    exact isIso_of_reflects_iso f F⟩

lemma reflectsIsomorphisms_of_comp (F : C ⥤ D) (G : D ⥤ E)
    [(F ⋙ G).ReflectsIsomorphisms] : F.ReflectsIsomorphisms where
  reflects f _ := by
    rw [← isIso_iff_of_reflects_iso _ (F ⋙ G)]
    dsimp
    infer_instance

instance (F : D ⥤ E) [F.ReflectsIsomorphisms] :
    ((whiskeringRight C D E).obj F).ReflectsIsomorphisms where
  reflects {X Y} f _ := by
    rw [NatTrans.isIso_iff_isIso_app]
    intro Z
    rw [← isIso_iff_of_reflects_iso _ F]
    change IsIso ((((whiskeringRight C D E).obj F).map f).app Z)
    infer_instance

end ReflectsIso

end CategoryTheory
```
