# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Countable.Variantbbf5ce548b0b0745b1870a40717fa9b32a786d71f0f77efe5eb940c5f8c2f8f7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9ab50bad28ec52d4477dd8b5704ca83684d1ad2d` · SHA-256 `061bcca60515be8b9d019216552354f9fefe3886d4d1223af7ca6962b9e908c1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CountableCategory.Variant1651a2aa9fa0e0d64d039339de7e3f59500b34329c4d9d5021a021605589c558","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1651a2aa9fa0e0d64d039339de7e3f59500b34329c4d9d5021a021605589c558","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.CountableCategory.Variant1651a2aa9fa0e0d64d039339de7e3f59500b34329c4d9d5021a021605589c558","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"1651a2aa9fa0e0d64d039339de7e3f59500b34329c4d9d5021a021605589c558","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Countable.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
module

public import Mathlib.Basic.Countable.Small
public import Mathlib.CategoryTheory.EssentiallySmall
public import Mathlib.CategoryTheory.FinCategory.Basic

/-!
# Countable categories

A category is countable in this sense if it has countably many objects and countably many morphisms.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CountableCategory.Variant1651a2aa9fa0e0d64d039339de7e3f59500b34329c4d9d5021a021605589c558

@[expose] public section

universe w v u

noncomputable section

namespace CategoryTheory

instance discreteCountable {α : Type*} [Countable α] : Countable (Discrete α) :=
  Countable.of_equiv α discreteEquiv.symm

/-- A category with countably many objects and morphisms. -/
class CountableCategory (J : Type*) [Category* J] : Prop where
  countableObj : Countable J := by infer_instance
  countableHom : ∀ j j' : J, Countable (j ⟶ j') := by infer_instance

attribute [instance] CountableCategory.countableObj CountableCategory.countableHom

instance countableCategoryDiscreteOfCountable (J : Type*) [Countable J] :
    CountableCategory (Discrete J) where

instance {J : Type u} [Countable J] [Category* J] [Quiver.IsThin J] : CountableCategory J :=
  CountableCategory.mk inferInstance (fun _ _ ↦ ⟨fun _ ↦ 0, fun _ _ _ ↦ Subsingleton.elim _ _⟩)

instance : CountableCategory ℕ where

namespace CountableCategory

variable (α : Type u) [Category.{v} α] [CountableCategory α]

/-- A countable category `α` is equivalent to a category with objects in `Type`. -/
abbrev ObjAsType : Type :=
  InducedCategory α (equivShrink.{0} α).symm

instance : Countable (ObjAsType α) := Countable.of_equiv α (equivShrink.{0} α)

instance {i j : ObjAsType α} : Countable (i ⟶ j) :=
  Countable.of_equiv _ InducedCategory.homEquiv.symm

instance : CountableCategory (ObjAsType α) where

/-- The constructed category is indeed equivalent to `α`. -/
noncomputable def objAsTypeEquiv : ObjAsType α ≌ α :=
  (inducedFunctor (equivShrink.{0} α).symm).asEquivalence

/-- A countable category `α` is equivalent to a *small* category with objects in `Type`. -/
def HomAsType := ShrinkHoms (ObjAsType α)

instance : LocallySmall.{0} (ObjAsType α) where
  hom_small _ _ := inferInstance

instance : SmallCategory (HomAsType α) := inferInstanceAs <| SmallCategory (ShrinkHoms _)

instance : Countable (HomAsType α) := Countable.of_equiv α (equivShrink.{0} α)

instance {i j : HomAsType α} : Countable (i ⟶ j) :=
  Countable.of_equiv ((ShrinkHoms.equivalence _).inverse.obj i ⟶
    (ShrinkHoms.equivalence _).inverse.obj j)
    (Functor.FullyFaithful.ofFullyFaithful _).homEquiv.symm

instance : CountableCategory (HomAsType α) where

/-- The constructed category is indeed equivalent to `α`. -/
noncomputable def homAsTypeEquiv : HomAsType α ≌ α :=
  (ShrinkHoms.equivalence _).symm.trans (objAsTypeEquiv _)

end CountableCategory

instance (α : Type*) [SmallCategory α] [FinCategory α] : CountableCategory α where

open Opposite

/-- The opposite of a countable category is countable. -/
instance countableCategoryOpposite {J : Type*} [Category* J] [CountableCategory J] :
    CountableCategory Jᵒᵖ where
  countableObj := Countable.of_equiv _ equivToOpposite
  countableHom j j' := Countable.of_equiv _ (opEquiv j j').symm

attribute [local instance] uliftCategory in
/-- Applying `ULift` to morphisms and objects of a category preserves countability. -/
instance countableCategoryUlift {J : Type v} [Category.{v} J] [CountableCategory J] :
    CountableCategory.{max w v} (ULiftHom.{w, max w v} (ULift.{w, v} J)) where
  countableObj := instCountableULift
  countableHom := fun i j =>
    have : Countable ((ULiftHom.objDown i).down ⟶ (ULiftHom.objDown j).down) := inferInstance
    instCountableULift

end CategoryTheory
```
