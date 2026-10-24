# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Opposite.Variantce5894574a4cbf8c45bf2cec35585a450a32254662aafc4ec741196025a6be70

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `18089ab380231a1b36486f919db05e079c2ad824` · SHA-256 `0af13c720443fa19c686e15eca0e0f88eab39424246e11e7eb50e155963427b8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.UnopAdd.Variant2f901a07a5dcbf58a484f418454970e9d0a04307a02748e764703f9335acef95","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2f901a07a5dcbf58a484f418454970e9d0a04307a02748e764703f9335acef95","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.UnopAdd.Variant2f901a07a5dcbf58a484f418454970e9d0a04307a02748e764703f9335acef95","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"2f901a07a5dcbf58a484f418454970e9d0a04307a02748e764703f9335acef95","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Preadditive/Opposite.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison, Adam Topaz, Johan Commelin, Joël Riou
-/
module

public import Mathlib.Algebra.Group.TransferInstance
public import Mathlib.Algebra.Module.Equiv.Defs
public import Mathlib.CategoryTheory.Preadditive.AdditiveFunctor
public import Mathlib.Algebra.Ring.Opposite

/-!
# If `C` is preadditive, `Cᵒᵖ` has a natural preadditive structure.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.UnopAdd.Variant2f901a07a5dcbf58a484f418454970e9d0a04307a02748e764703f9335acef95

@[expose] public section


open Opposite

namespace CategoryTheory

variable (C : Type*) [Category* C] [Preadditive C]

instance : Preadditive Cᵒᵖ where
  homGroup X Y := fast_instance% Equiv.addCommGroup (opEquiv X Y)
  add_comp _ _ _ f f' g := Quiver.Hom.unop_inj (Preadditive.comp_add _ _ _ g.unop f.unop f'.unop)
  comp_add _ _ _ f g g' := Quiver.Hom.unop_inj (Preadditive.add_comp _ _ _ g.unop g'.unop f.unop)

/-- Test that the two ways to obtain the `HasZeroMorphisms Cᵒᵖ` instance
from `Preadditive C` are the same. -/
example : (instPreadditiveOpposite C).preadditiveHasZeroMorphisms =
    @Limits.hasZeroMorphismsOpposite  C _ Preadditive.preadditiveHasZeroMorphisms := by
  with_reducible_and_instances rfl

instance moduleEndLeft {X Y : C} : Module (End X)ᵐᵒᵖ (X ⟶ Y) where
  smul_add _ _ _ := Preadditive.comp_add _ _ _ _ _ _
  smul_zero _ := Limits.comp_zero
  add_smul _ _ _ := Preadditive.add_comp _ _ _ _ _ _
  zero_smul _ := Limits.zero_comp

@[simp]
theorem unop_add {X Y : Cᵒᵖ} (f g : X ⟶ Y) : (f + g).unop = f.unop + g.unop :=
  rfl

@[simp]
theorem unop_sub {X Y : Cᵒᵖ} (f g : X ⟶ Y) : (f - g).unop = f.unop - g.unop :=
  rfl

@[simp]
theorem unop_zsmul {X Y : Cᵒᵖ} (k : ℤ) (f : X ⟶ Y) : (k • f).unop = k • f.unop :=
  rfl

@[simp]
theorem unop_neg {X Y : Cᵒᵖ} (f : X ⟶ Y) : (-f).unop = -f.unop :=
  rfl

@[simp]
theorem op_add {X Y : C} (f g : X ⟶ Y) : (f + g).op = f.op + g.op :=
  rfl

@[simp]
theorem op_sub {X Y : C} (f g : X ⟶ Y) : (f - g).op = f.op - g.op :=
  rfl

@[simp]
theorem op_zsmul {X Y : C} (k : ℤ) (f : X ⟶ Y) : (k • f).op = k • f.op :=
  rfl

@[simp]
theorem op_neg {X Y : C} (f : X ⟶ Y) : (-f).op = -f.op :=
  rfl

variable {C}

/-- `unop` induces morphisms of monoids on hom groups of a preadditive category -/
@[simps!]
def unopHom (X Y : Cᵒᵖ) : (X ⟶ Y) →+ (Opposite.unop Y ⟶ Opposite.unop X) :=
  AddMonoidHom.mk' (fun f => f.unop) fun f g => unop_add _ f g

@[simp]
theorem unop_sum (X Y : Cᵒᵖ) {ι : Type*} (s : Finset ι) (f : ι → (X ⟶ Y)) :
    (s.sum f).unop = s.sum fun i => (f i).unop :=
  map_sum (unopHom X Y) _ _

/-- `op` induces morphisms of monoids on hom groups of a preadditive category -/
@[simps!]
def opHom (X Y : C) : (X ⟶ Y) →+ (Opposite.op Y ⟶ Opposite.op X) :=
  AddMonoidHom.mk' (fun f => f.op) fun f g => op_add _ f g

@[simp]
theorem op_sum (X Y : C) {ι : Type*} (s : Finset ι) (f : ι → (X ⟶ Y)) :
    (s.sum f).op = s.sum fun i => (f i).op :=
  map_sum (opHom X Y) _ _

/-- `G ⟶ G` and `(End G)ᵐᵒᵖ` are isomorphic as `(End G)ᵐᵒᵖ`-modules. -/
@[simps]
def Preadditive.homSelfLinearEquivEndMulOpposite (G : C) : (G ⟶ G) ≃ₗ[(End G)ᵐᵒᵖ] (End G)ᵐᵒᵖ where
  toFun f := ⟨f⟩
  map_add' := by cat_disch
  map_smul' := by cat_disch
  invFun := fun ⟨f⟩ => f
  left_inv := by cat_disch
  right_inv := by cat_disch

variable {D : Type*} [Category* D] [Preadditive D]

instance Functor.op_additive (F : C ⥤ D) [F.Additive] : F.op.Additive where

instance Functor.rightOp_additive (F : Cᵒᵖ ⥤ D) [F.Additive] : F.rightOp.Additive where

instance Functor.leftOp_additive (F : C ⥤ Dᵒᵖ) [F.Additive] : F.leftOp.Additive where

instance Functor.unop_additive (F : Cᵒᵖ ⥤ Dᵒᵖ) [F.Additive] : F.unop.Additive where

end CategoryTheory
```
