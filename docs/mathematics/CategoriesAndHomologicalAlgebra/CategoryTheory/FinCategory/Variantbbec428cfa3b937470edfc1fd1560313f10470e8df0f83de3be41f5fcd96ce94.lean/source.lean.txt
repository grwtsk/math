-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.OptionEquiv.Varianta7b480634473faaa86edc8bed6d60e831d511d07ae74d00c603038ac61354a94","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a7b480634473faaa86edc8bed6d60e831d511d07ae74d00c603038ac61354a94","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.OptionEquiv.Varianta7b480634473faaa86edc8bed6d60e831d511d07ae74d00c603038ac61354a94","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"a7b480634473faaa86edc8bed6d60e831d511d07ae74d00c603038ac61354a94","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/WithTerminal/FinCategory.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Moisés Herradón Cueto. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Moisés Herradón Cueto
-/
import Mathlib.CategoryTheory.FinCategory.Basic
import Mathlib.CategoryTheory.WithTerminal.Basic
import Mathlib.Data.Fintype.Option

/-!

# `WithTerminal C` and `WithInitial C` are finite whenever `C` is

If `C` has finitely many objects, then so do `WithTerminal C` and `WithInitial C`,
and likewise if `C` has finitely many morphisms as well.

-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.OptionEquiv.Varianta7b480634473faaa86edc8bed6d60e831d511d07ae74d00c603038ac61354a94

universe v u

variable (C : Type u) [CategoryTheory.Category.{v} C]

namespace CategoryTheory.WithTerminal

/-- The equivalence between `Option C` and `WithTerminal C` (they are both the
type `C` plus an extra object `none` or `star`). -/
def optionEquiv : Option C ≃ WithTerminal C where
  toFun
  | some a => of a
  | none => star
  invFun
  | of a => some a
  | star => none
  left_inv a := by cases a <;> simp
  right_inv a := by cases a <;> simp

instance instFintype [Fintype C] : Fintype (WithTerminal C) :=
  .ofEquiv (Option C) <| optionEquiv C

instance instFinCategory [SmallCategory C] [FinCategory C] :
    FinCategory (WithTerminal C) where
  fintypeObj := inferInstance
  fintypeHom
  | star, star
  | of _, star => (inferInstance : Fintype PUnit)
  | star, of _ => (inferInstance : Fintype PEmpty)
  | of a, of b => (inferInstance : Fintype (a ⟶ b))

end CategoryTheory.WithTerminal

namespace CategoryTheory.WithInitial

/-- The equivalence between `Option C` and `WithInitial C` (they are both the
type `C` plus an extra object `none` or `star`). -/
def optionEquiv : Option C ≃ WithInitial C where
  toFun
  | some a => of a
  | none => star
  invFun
  | of a => some a
  | star => none
  left_inv a := by cases a <;> simp
  right_inv a := by cases a <;> simp

instance instFintype [Fintype C] : Fintype (WithInitial C) :=
  .ofEquiv (Option C) <| optionEquiv C

instance instFinCategory [SmallCategory C] [FinCategory C] :
    FinCategory (WithInitial C) where
  fintypeObj := inferInstance
  fintypeHom
  | star, star
  | star, of _ => (inferInstance : Fintype PUnit)
  | of _, star => (inferInstance : Fintype PEmpty)
  | of a, of b => (inferInstance : Fintype (a ⟶ b))

end CategoryTheory.WithInitial
