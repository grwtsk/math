-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SolutionSetConditionOfIsCardinalAccessible.Variant0663479871b492066aac15d848fe97d883ae7885b97a8e407fe842d377ec8884","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0663479871b492066aac15d848fe97d883ae7885b97a8e407fe842d377ec8884","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.SolutionSetConditionOfIsCardinalAccessible.Variant0663479871b492066aac15d848fe97d883ae7885b97a8e407fe842d377ec8884","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"0663479871b492066aac15d848fe97d883ae7885b97a8e407fe842d377ec8884","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Presentable/SolutionSetCondition.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou, Dagur Asgeirsson
-/
module

public import Mathlib.CategoryTheory.Presentable.Comma
public import Mathlib.CategoryTheory.Adjunction.AdjointFunctorTheorems

/-!
# Accessible functors satisfy the solution set condition

If `F : C ⥤ D` is an accessible functor between accessible categories,
then `F` satisfies the solution set condition (this is corollary 2.45 in
the book by Adámek and Rosický).

## References
* [Adámek, J. and Rosický, J., *Locally presentable and accessible categories*][Adamek_Rosicky_1994]

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SolutionSetConditionOfIsCardinalAccessible.Variant0663479871b492066aac15d848fe97d883ae7885b97a8e407fe842d377ec8884

@[expose] public section

universe w

namespace CategoryTheory

variable {C D : Type*} [Category* C] [Category* D]

/-- An accessible functor between accessible categories satisfies the solution set condition.
This is corollary 2.45 in [Adamek_Rosicky_1994]. -/
lemma SolutionSetCondition.of_isCardinalAccessible
    [IsAccessibleCategory.{w} C] [IsAccessibleCategory.{w} D]
    (F : C ⥤ D) [Functor.IsAccessible.{w} F] :
    SolutionSetCondition.{w} F := by
  intro Y
  obtain ⟨κ, _, _⟩ := IsAccessibleCategory.exists_cardinal.{w} (StructuredArrow Y F)
  obtain ⟨ι, X₀, h⟩ := ObjectProperty.EssentiallySmall.exists_eq_isoClosure_ofObj.{w}
    (isCardinalPresentable (StructuredArrow Y F) κ)
  refine ⟨ι, fun i ↦ (X₀ i).right, fun i ↦ (X₀ i).hom, fun X g ↦ ?_⟩
  let E := CostructuredArrow (isCardinalPresentable _ κ).ι (StructuredArrow.mk g)
  have : IsFiltered E := isFiltered_of_isCardinalFiltered _ κ
  have : Nonempty E := IsFiltered.nonempty
  let γ : E := Classical.arbitrary _
  obtain ⟨_, ⟨i⟩, ⟨e⟩⟩ := h.le _ γ.left.property
  exact ⟨i, _, StructuredArrow.w (e.inv ≫ γ.hom)⟩

end CategoryTheory
