-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FinCategory.Varianta26d7a5f5a4727d33afb9ffeb2f3210ee869d13cd2659771c59a0917d2c671be","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a26d7a5f5a4727d33afb9ffeb2f3210ee869d13cd2659771c59a0917d2c671be","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.FinCategory.Varianta26d7a5f5a4727d33afb9ffeb2f3210ee869d13cd2659771c59a0917d2c671be","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"a26d7a5f5a4727d33afb9ffeb2f3210ee869d13cd2659771c59a0917d2c671be","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/FinCategory/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

public import Mathlib.Data.Fintype.EquivFin
public import Mathlib.CategoryTheory.Discrete.Basic
public import Mathlib.CategoryTheory.Opposites
public import Mathlib.CategoryTheory.Category.ULift

/-!
# Finite categories

A category is finite in this sense if it has finitely many objects, and finitely many morphisms.

## Implementation
Prior to https://github.com/leanprover-community/mathlib4/pull/14046, `FinCategory` required a `DecidableEq` instance on the object and morphism types.
This does not seem to have had any practical payoff (i.e. making some definition constructive)
so we have removed these requirements to avoid
having to supply instances or delay with non-defeq conflicts between instances.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FinCategory.Varianta26d7a5f5a4727d33afb9ffeb2f3210ee869d13cd2659771c59a0917d2c671be

public section


universe w v u

noncomputable section

namespace CategoryTheory

instance discreteFintype {α : Type*} [Fintype α] : Fintype (Discrete α) :=
  Fintype.ofEquiv α discreteEquiv.symm

instance {α : Type*} [Finite α] : Finite (Discrete α) :=
  Finite.of_equiv α discreteEquiv.symm

@[no_expose]
instance discreteHomFintype {α : Type*} (X Y : Discrete α) : Fintype (X ⟶ Y) := .ofFinite _

/-- A category with a `Fintype` of objects, and a `Fintype` for each morphism space. -/
class FinCategory (J : Type v) [SmallCategory J] where
  fintypeObj : Fintype J := by infer_instance
  fintypeHom : ∀ j j' : J, Fintype (j ⟶ j') := by infer_instance

attribute [instance_reducible, instance] FinCategory.fintypeObj FinCategory.fintypeHom

instance finCategoryDiscreteOfFintype (J : Type v) [Fintype J] : FinCategory (Discrete J) where

instance {J : Type u} [Fintype J] [SmallCategory J] [Quiver.IsThin J] : FinCategory J :=
  FinCategory.mk ‹Fintype J› fun j j' ↦ Fintype.ofFinite (j ⟶ j')

open Opposite

/-- The opposite of a finite category is finite.
-/
instance finCategoryOpposite {J : Type v} [SmallCategory J] [FinCategory J] : FinCategory Jᵒᵖ where
  fintypeObj := Fintype.ofEquiv _ equivToOpposite
  fintypeHom j j' := Fintype.ofEquiv _ (opEquiv j j').symm

attribute [local instance] uliftCategory in
/-- Applying `ULift` to morphisms and objects of a category preserves finiteness. -/
instance finCategoryUlift {J : Type v} [SmallCategory J] [FinCategory J] :
    FinCategory.{max w v} (ULiftHom.{w, max w v} (ULift.{w, v} J)) where
  fintypeObj := ULift.fintype J
  fintypeHom := fun _ _ => ULift.fintype _

end CategoryTheory
