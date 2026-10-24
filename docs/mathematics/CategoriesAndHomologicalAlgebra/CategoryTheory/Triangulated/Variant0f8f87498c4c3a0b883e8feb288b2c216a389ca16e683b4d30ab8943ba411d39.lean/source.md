# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Triangulated.Variant0f8f87498c4c3a0b883e8feb288b2c216a389ca16e683b4d30ab8943ba411d39

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `de53d775b36856b42d61d009c87fdcc32618bacb` · SHA-256 `c56226aa72596024e2f6f9f80e9a898b223c306776442ce309340754556c8e98`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Octahedron.Variantdccc3566b9d35bb5f77cd836ffc15acbb1b899de1c9f6e564f8acbd867638f7e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dccc3566b9d35bb5f77cd836ffc15acbb1b899de1c9f6e564f8acbd867638f7e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Octahedron.Variantdccc3566b9d35bb5f77cd836ffc15acbb1b899de1c9f6e564f8acbd867638f7e","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"dccc3566b9d35bb5f77cd836ffc15acbb1b899de1c9f6e564f8acbd867638f7e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/CategoryTheory/Triangulated/Triangulated.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.CategoryTheory.Triangulated.Pretriangulated


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Octahedron.Variantdccc3566b9d35bb5f77cd836ffc15acbb1b899de1c9f6e564f8acbd867638f7e

#align_import category_theory.triangulated.triangulated from "leanprover-community/mathlib"@"19786714ebe478f40b503acb4705fb058ba47303"

/-!
# Triangulated Categories

This file contains the definition of triangulated categories, which are
pretriangulated categories which satisfy the octahedron axiom.

-/


noncomputable section

namespace CategoryTheory

open Limits Category Preadditive Pretriangulated

open ZeroObject

variable (C : Type*) [Category C] [Preadditive C] [HasZeroObject C] [HasShift C ℤ]
  [∀ n : ℤ, Functor.Additive (shiftFunctor C n)] [Pretriangulated C]

namespace Triangulated

variable {C}

-- Porting note: see https://github.com/leanprover/lean4/issues/2188
set_option genInjectivity false in
/-- An octahedron is a type of datum whose existence is asserted by
the octahedron axiom (TR 4), see https://stacks.math.columbia.edu/tag/05QK -/
structure Octahedron
  {X₁ X₂ X₃ Z₁₂ Z₂₃ Z₁₃ : C}
  {u₁₂ : X₁ ⟶ X₂} {u₂₃ : X₂ ⟶ X₃} {u₁₃ : X₁ ⟶ X₃} (comm : u₁₂ ≫ u₂₃ = u₁₃)
  {v₁₂ : X₂ ⟶ Z₁₂} {w₁₂ : Z₁₂ ⟶ X₁⟦(1 : ℤ)⟧} (h₁₂ : Triangle.mk u₁₂ v₁₂ w₁₂ ∈ distTriang C)
  {v₂₃ : X₃ ⟶ Z₂₃} {w₂₃ : Z₂₃ ⟶ X₂⟦(1 : ℤ)⟧} (h₂₃ : Triangle.mk u₂₃ v₂₃ w₂₃ ∈ distTriang C)
  {v₁₃ : X₃ ⟶ Z₁₃} {w₁₃ : Z₁₃ ⟶ X₁⟦(1 : ℤ)⟧} (h₁₃ : Triangle.mk u₁₃ v₁₃ w₁₃ ∈ distTriang C)
 where
  m₁ : Z₁₂ ⟶ Z₁₃
  m₃ : Z₁₃ ⟶ Z₂₃
  comm₁ : v₁₂ ≫ m₁ = u₂₃ ≫ v₁₃
  comm₂ : m₁ ≫ w₁₃ = w₁₂
  comm₃ : v₁₃ ≫ m₃ = v₂₃
  comm₄ : w₁₃ ≫ u₁₂⟦1⟧' = m₃ ≫ w₂₃
  mem : Triangle.mk m₁ m₃ (w₂₃ ≫ v₁₂⟦1⟧') ∈ distTriang C
gen_injective_theorems% Octahedron
#align category_theory.triangulated.octahedron CategoryTheory.Triangulated.Octahedron

instance (X : C) :
    Nonempty (Octahedron (comp_id (𝟙 X)) (contractible_distinguished X)
      (contractible_distinguished X) (contractible_distinguished X)) := by
  refine' ⟨⟨0, 0, _, _, _, _, isomorphic_distinguished _ (contractible_distinguished (0 : C)) _
    (Triangle.isoMk _ _ (by rfl) (by rfl) (by rfl))⟩⟩
  all_goals apply Subsingleton.elim

namespace Octahedron

attribute [reassoc] comm₁ comm₂ comm₃ comm₄

variable {X₁ X₂ X₃ Z₁₂ Z₂₃ Z₁₃ : C}
  {u₁₂ : X₁ ⟶ X₂} {u₂₃ : X₂ ⟶ X₃} {u₁₃ : X₁ ⟶ X₃} (comm : u₁₂ ≫ u₂₃ = u₁₃)
  {v₁₂ : X₂ ⟶ Z₁₂} {w₁₂ : Z₁₂ ⟶ X₁⟦(1 : ℤ)⟧} {h₁₂ : Triangle.mk u₁₂ v₁₂ w₁₂ ∈ distTriang C}
  {v₂₃ : X₃ ⟶ Z₂₃} {w₂₃ : Z₂₃ ⟶ X₂⟦(1 : ℤ)⟧} {h₂₃ : Triangle.mk u₂₃ v₂₃ w₂₃ ∈ distTriang C}
  {v₁₃ : X₃ ⟶ Z₁₃} {w₁₃ : Z₁₃ ⟶ X₁⟦(1 : ℤ)⟧} {h₁₃ : Triangle.mk u₁₃ v₁₃ w₁₃ ∈ distTriang C}
  (h : Octahedron comm h₁₂ h₂₃ h₁₃)

/-- The triangle `Z₁₂ ⟶ Z₁₃ ⟶ Z₂₃ ⟶ Z₁₂⟦1⟧` given by an octahedron. -/
@[simps!]
def triangle : Triangle C :=
  Triangle.mk h.m₁ h.m₃ (w₂₃ ≫ v₁₂⟦1⟧')
#align category_theory.triangulated.octahedron.triangle CategoryTheory.Triangulated.Octahedron.triangle

/-- The first morphism of triangles given by an octahedron. -/
@[simps]
def triangleMorphism₁ : Triangle.mk u₁₂ v₁₂ w₁₂ ⟶ Triangle.mk u₁₃ v₁₃ w₁₃
    where
  hom₁ := 𝟙 X₁
  hom₂ := u₂₃
  hom₃ := h.m₁
  comm₁ := by
    dsimp
    rw [id_comp, comm]
  comm₂ := h.comm₁
  comm₃ := by
    dsimp
    simpa only [Functor.map_id, comp_id] using h.comm₂.symm
#align category_theory.triangulated.octahedron.triangle_morphism₁ CategoryTheory.Triangulated.Octahedron.triangleMorphism₁

/-- The second morphism of triangles given an octahedron. -/
@[simps]
def triangleMorphism₂ : Triangle.mk u₁₃ v₁₃ w₁₃ ⟶ Triangle.mk u₂₃ v₂₃ w₂₃
    where
  hom₁ := u₁₂
  hom₂ := 𝟙 X₃
  hom₃ := h.m₃
  comm₁ := by
    dsimp
    rw [comp_id, comm]
  comm₂ := by
    dsimp
    rw [id_comp, h.comm₃]
  comm₃ := h.comm₄
#align category_theory.triangulated.octahedron.triangle_morphism₂ CategoryTheory.Triangulated.Octahedron.triangleMorphism₂

/- TODO (@joelriou): show that in order to verify the existence of an octahedron, one may
replace the composable maps `u₁₂` and `u₂₃` by any isomorphic composable maps
and the given "cones" of `u₁₂`, `u₂₃`, `u₁₃` by any choice of cones. -/
end Octahedron

end Triangulated

open Triangulated

/-- A triangulated category is a pretriangulated category which satisfies
the octahedron axiom (TR 4), see https://stacks.math.columbia.edu/tag/05QK -/
class IsTriangulated : Prop where
  /-- the octahedron axiom (TR 4) -/
  octahedron_axiom :
    ∀ {X₁ X₂ X₃ Z₁₂ Z₂₃ Z₁₃ : C}
      {u₁₂ : X₁ ⟶ X₂} {u₂₃ : X₂ ⟶ X₃} {u₁₃ : X₁ ⟶ X₃} (comm : u₁₂ ≫ u₂₃ = u₁₃)
      {v₁₂ : X₂ ⟶ Z₁₂} {w₁₂ : Z₁₂ ⟶ X₁⟦(1 : ℤ)⟧} (h₁₂ : Triangle.mk u₁₂ v₁₂ w₁₂ ∈ distTriang C)
      {v₂₃ : X₃ ⟶ Z₂₃} {w₂₃ : Z₂₃ ⟶ X₂⟦(1 : ℤ)⟧} (h₂₃ : Triangle.mk u₂₃ v₂₃ w₂₃ ∈ distTriang C)
      {v₁₃ : X₃ ⟶ Z₁₃} {w₁₃ : Z₁₃ ⟶ X₁⟦(1 : ℤ)⟧} (h₁₃ : Triangle.mk u₁₃ v₁₃ w₁₃ ∈ distTriang C),
      Nonempty (Octahedron comm h₁₂ h₂₃ h₁₃)
#align category_theory.is_triangulated CategoryTheory.IsTriangulated

namespace Triangulated

variable {C}

variable {X₁ X₂ X₃ Z₁₂ Z₂₃ Z₁₃ : C}
  {u₁₂ : X₁ ⟶ X₂} {u₂₃ : X₂ ⟶ X₃} {u₁₃ : X₁ ⟶ X₃} (comm : u₁₂ ≫ u₂₃ = u₁₃)
  {v₁₂ : X₂ ⟶ Z₁₂} {w₁₂ : Z₁₂ ⟶ X₁⟦(1 : ℤ)⟧} {h₁₂ : Triangle.mk u₁₂ v₁₂ w₁₂ ∈ distTriang C}
  {v₂₃ : X₃ ⟶ Z₂₃} {w₂₃ : Z₂₃ ⟶ X₂⟦(1 : ℤ)⟧} {h₂₃ : Triangle.mk u₂₃ v₂₃ w₂₃ ∈ distTriang C}
  {v₁₃ : X₃ ⟶ Z₁₃} {w₁₃ : Z₁₃ ⟶ X₁⟦(1 : ℤ)⟧} {h₁₃ : Triangle.mk u₁₃ v₁₃ w₁₃ ∈ distTriang C}
  (h : Octahedron comm h₁₂ h₂₃ h₁₃)

/-- A choice of octahedron given by the octahedron axiom. -/
def someOctahedron' [IsTriangulated C] : Octahedron comm h₁₂ h₂₃ h₁₃ :=
  (IsTriangulated.octahedron_axiom comm h₁₂ h₂₃ h₁₃).some

/-- A choice of octahedron given by the octahedron axiom. -/
def someOctahedron [IsTriangulated C]
  {X₁ X₂ X₃ Z₁₂ Z₂₃ Z₁₃ : C}
  {u₁₂ : X₁ ⟶ X₂} {u₂₃ : X₂ ⟶ X₃} {u₁₃ : X₁ ⟶ X₃} (comm : u₁₂ ≫ u₂₃ = u₁₃)
  {v₁₂ : X₂ ⟶ Z₁₂} {w₁₂ : Z₁₂ ⟶ X₁⟦(1 : ℤ)⟧} (h₁₂ : Triangle.mk u₁₂ v₁₂ w₁₂ ∈ distTriang C)
  {v₂₃ : X₃ ⟶ Z₂₃} {w₂₃ : Z₂₃ ⟶ X₂⟦(1 : ℤ)⟧} (h₂₃ : Triangle.mk u₂₃ v₂₃ w₂₃ ∈ distTriang C)
  {v₁₃ : X₃ ⟶ Z₁₃} {w₁₃ : Z₁₃ ⟶ X₁⟦(1 : ℤ)⟧} (h₁₃ : Triangle.mk u₁₃ v₁₃ w₁₃ ∈ distTriang C) :
    Octahedron comm h₁₂ h₂₃ h₁₃ :=
  someOctahedron' _
#align category_theory.triangulated.some_octahedron CategoryTheory.Triangulated.someOctahedron

end Triangulated

end CategoryTheory
```
