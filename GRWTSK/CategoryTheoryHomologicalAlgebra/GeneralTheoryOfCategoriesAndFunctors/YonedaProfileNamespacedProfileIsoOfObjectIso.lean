-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CompleteMorphismProfile.Variant113cf48a1d880e722589ad65a3d353a9ad121111db4d274a33b760b9878dcdc8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"113cf48a1d880e722589ad65a3d353a9ad121111db4d274a33b760b9878dcdc8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.CompleteMorphismProfile.Variant113cf48a1d880e722589ad65a3d353a9ad121111db4d274a33b760b9878dcdc8","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"113cf48a1d880e722589ad65a3d353a9ad121111db4d274a33b760b9878dcdc8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Terrain/YonedaProfile.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.CategoryTheory.Yoneda

/-!
# Complete morphism profiles and Yoneda reconstruction

The profile of an object is its full representable presheaf, not a finite
incidence sketch.  Full faithfulness of Yoneda then reconstructs every object
isomorphism from an isomorphism of complete profiles.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CompleteMorphismProfile.Variant113cf48a1d880e722589ad65a3d353a9ad121111db4d274a33b760b9878dcdc8

namespace Mathematics.Terrain.YonedaProfile

open CategoryTheory

universe v u

variable {C : Type u} [Category.{v} C]

/-- The complete incoming-morphism profile of an object. -/
abbrev CompleteMorphismProfile (object : C) :=
  CategoryTheory.yoneda.obj object

/-- Every object isomorphism induces an isomorphism of complete profiles. -/
def profileIsoOfObjectIso {left right : C} (iso : left ≅ right) :
    CompleteMorphismProfile left ≅ CompleteMorphismProfile right :=
  CategoryTheory.yoneda.mapIso iso

/--
Yoneda reconstructs an object isomorphism from an isomorphism of the complete
morphism profiles.
-/
noncomputable def reconstructIso
    {left right : C}
    (profileIso :
      CompleteMorphismProfile left ≅ CompleteMorphismProfile right) :
    left ≅ right :=
  CategoryTheory.yoneda.preimageIso profileIso

/-- Reconstruction is inverse to mapping an existing object isomorphism. -/
@[simp]
theorem reconstructIso_profileIsoOfObjectIso
    {left right : C} (iso : left ≅ right) :
    reconstructIso (profileIsoOfObjectIso iso) = iso := by
  exact CategoryTheory.Functor.preimageIso_mapIso _ iso

/--
Two objects have isomorphic complete profiles exactly when they are
isomorphic.  This statement does not hold for an arbitrary finite Boolean
shadow.
-/
theorem profileIso_nonempty_iff_objectIso_nonempty
    (left right : C) :
    Nonempty
        (CompleteMorphismProfile left ≅ CompleteMorphismProfile right) ↔
      Nonempty (left ≅ right) := by
  constructor
  · rintro ⟨profileIso⟩
    exact ⟨reconstructIso profileIso⟩
  · rintro ⟨iso⟩
    exact ⟨profileIsoOfObjectIso iso⟩

end Mathematics.Terrain.YonedaProfile
