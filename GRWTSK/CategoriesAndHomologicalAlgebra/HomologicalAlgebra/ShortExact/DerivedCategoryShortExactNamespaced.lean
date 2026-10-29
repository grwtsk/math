-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.HomologicalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.TriangleOfSES.Variant8a40bc4e7af1974456d1be4ebbb4f83d1c773b7d3aac96bdb247050ffb1ef5ec","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8a40bc4e7af1974456d1be4ebbb4f83d1c773b7d3aac96bdb247050ffb1ef5ec","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.HomologicalAlgebra.SourceCorpus.TriangleOfSES.Variant8a40bc4e7af1974456d1be4ebbb4f83d1c773b7d3aac96bdb247050ffb1ef5ec","mathematical_subject":"Algebra.HomologicalAlgebra","original_sha256":"8a40bc4e7af1974456d1be4ebbb4f83d1c773b7d3aac96bdb247050ffb1ef5ec","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Homology/DerivedCategory/ShortExact.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.Algebra.Homology.HomotopyCategory.ShortExact
import Mathlib.Algebra.Homology.DerivedCategory.Basic

/-!
# The distinguished triangle attached to a short exact sequence of cochain complexes

Given a short exact short complex `S` in the category `CochainComplex C ℤ`,
we construct a distinguished triangle
`Q.obj S.X₁ ⟶ Q.obj S.X₂ ⟶  Q.obj S.X₃ ⟶ (Q.obj S.X₃)⟦1⟧`
in the derived category of `C`.
(See `triangleOfSES` and `triangleOfSES_distinguished`.)

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.TriangleOfSES.Variant8a40bc4e7af1974456d1be4ebbb4f83d1c773b7d3aac96bdb247050ffb1ef5ec

assert_not_exists TwoSidedIdeal

universe w v u

open CategoryTheory Category Pretriangulated

namespace DerivedCategory

variable {C : Type u} [Category.{v} C] [Abelian C] [HasDerivedCategory.{w} C]
  {S : ShortComplex (CochainComplex C ℤ)} (hS : S.ShortExact)

/-- The connecting homomorphism `Q.obj (S.X₃) ⟶ (Q.obj S.X₁)⟦(1 : ℤ)⟧`
in the derived category when `S` is a short exact short complex of
cochain complexes in an abelian category. -/
noncomputable def triangleOfSESδ :
  Q.obj (S.X₃) ⟶ (Q.obj S.X₁)⟦(1 : ℤ)⟧ :=
    have := CochainComplex.mappingCone.quasiIso_descShortComplex hS
    inv (Q.map (CochainComplex.mappingCone.descShortComplex S)) ≫
      Q.map (CochainComplex.mappingCone.triangle S.f).mor₃ ≫
      (Q.commShiftIso (1 : ℤ)).hom.app S.X₁

/-- The distinguished triangle in the derived category associated to a short
exact sequence of cochain complexes. -/
@[simps!]
noncomputable def triangleOfSES : Triangle (DerivedCategory C) :=
  Triangle.mk (Q.map S.f) (Q.map S.g) (triangleOfSESδ hS)

/-- The triangle `triangleOfSES` attached to a short exact sequence `S` of cochain
complexes is isomorphism to the standard distinguished triangle associated to
the morphism `S.f`. -/
noncomputable def triangleOfSESIso :
    triangleOfSES hS ≅ Q.mapTriangle.obj (CochainComplex.mappingCone.triangle S.f) := by
  have := CochainComplex.mappingCone.quasiIso_descShortComplex hS
  refine Iso.symm (Triangle.isoMk _ _ (Iso.refl _) (Iso.refl _)
    (asIso (Q.map (CochainComplex.mappingCone.descShortComplex S))) ?_ ?_ ?_)
  · dsimp [triangleOfSES]
    simp only [comp_id, id_comp]
  · dsimp
    simp only [← Q.map_comp, CochainComplex.mappingCone.inr_descShortComplex, id_comp]
  · dsimp [triangleOfSESδ]
    rw [CategoryTheory.Functor.map_id, comp_id, IsIso.hom_inv_id_assoc]

lemma triangleOfSES_distinguished :
    triangleOfSES hS ∈ distTriang (DerivedCategory C) := by
  rw [mem_distTriang_iff]
  exact ⟨_, _, S.f, ⟨triangleOfSESIso hS⟩⟩

end DerivedCategory
