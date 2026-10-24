-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PreadditiveCoyonedaObjMapSurjective.Variant6d560d4e528af502a5b6f74b84d631cf8795e166ecb9faf4cb076d5a01bcd339","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6d560d4e528af502a5b6f74b84d631cf8795e166ecb9faf4cb076d5a01bcd339","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.PreadditiveCoyonedaObjMapSurjective.Variant6d560d4e528af502a5b6f74b84d631cf8795e166ecb9faf4cb076d5a01bcd339","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"6d560d4e528af502a5b6f74b84d631cf8795e166ecb9faf4cb076d5a01bcd339","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Abelian/Yoneda.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
import Mathlib.Algebra.Category.Grp.Abelian
import Mathlib.CategoryTheory.Abelian.DiagramLemmas.Four
import Mathlib.CategoryTheory.Abelian.Projective.Basic
import Mathlib.CategoryTheory.Generator.Preadditive
import Mathlib.CategoryTheory.Limits.Preserves.Opposites

/-!
# Fullness of restrictions of `preadditiveCoyonedaObj`

In this file we give a sufficient criterion for a restriction of the functor
`preadditiveCoyonedaObj G` to be full: this is the case if `C` is an abelian category and `G : C`
is a projective separator such that every object in the relevant subcategory is a quotient of `G`.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PreadditiveCoyonedaObjMapSurjective.Variant6d560d4e528af502a5b6f74b84d631cf8795e166ecb9faf4cb076d5a01bcd339

open CategoryTheory Opposite Limits

universe v v' u u'

variable {C : Type u} [Category.{v} C] [Abelian C]

namespace CategoryTheory.Abelian

section

attribute [local instance] preservesFiniteLimits_op

theorem preadditiveCoyonedaObj_map_surjective {G : C} [Projective G] (hG : IsSeparator G) {X : C}
    (p : G ⟶ X) [Epi p] {Y : C} :
    Function.Surjective ((preadditiveCoyonedaObj G).map : (X ⟶ Y) → _) := by
  rw [← Functor.coe_mapAddHom, ← AddCommGrp.hom_ofHom (preadditiveCoyonedaObj G).mapAddHom,
    ← AddCommGrp.epi_iff_surjective]
  let cm : ShortComplex C := ⟨kernel.ι p, p, by simp⟩
  have exact : cm.Exact := ShortComplex.exact_of_f_is_kernel _ (kernelIsKernel _)
  have mono : Mono cm.op.f := by dsimp [cm]; infer_instance
  let φ := preadditiveCoyonedaObj G
  have faithful : φ.Faithful := by rwa [← isSeparator_iff_faithful_preadditiveCoyonedaObj]
  apply ShortComplex.epi_of_mono_of_epi_of_mono (cm.op.mapNatTrans (preadditiveYonedaMap _ _))
  · exact exact.op.map_of_mono_of_preservesKernel _ mono inferInstance
  · simp only [ShortComplex.map_f]
    infer_instance
  · suffices φ.map.Surjective by simpa [AddCommGrp.epi_iff_surjective, Functor.coe_mapAddHom]
    exact fun f => ⟨f (𝟙 G), by aesop_cat⟩
  · simp [AddCommGrp.mono_iff_injective, Functor.coe_mapAddHom, Functor.map_injective]

end

variable {D : Type u'} [Category.{v'} D] (F : D ⥤ C)

theorem full_comp_preadditiveCoyonedaObj [F.Full] {G : C} [Projective G] (hG : IsSeparator G)
    (hG₂ : ∀ X, ∃ (p : G ⟶ F.obj X), Epi p) : (F ⋙ preadditiveCoyonedaObj G).Full where
  map_surjective {X Y} f := by
    obtain ⟨p, _⟩ := hG₂ X
    obtain ⟨f, rfl⟩ := preadditiveCoyonedaObj_map_surjective hG p f
    obtain ⟨f, rfl⟩ := F.map_surjective f
    exact ⟨f, rfl⟩

end CategoryTheory.Abelian
