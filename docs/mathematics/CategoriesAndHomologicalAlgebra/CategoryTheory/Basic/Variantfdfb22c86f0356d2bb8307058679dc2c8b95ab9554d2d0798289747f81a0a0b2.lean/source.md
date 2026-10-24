# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variantfdfb22c86f0356d2bb8307058679dc2c8b95ab9554d2d0798289747f81a0a0b2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9bd6ecc8369bce046a1e9e56687f05376b540dc2` · SHA-256 `14e4b37f13f62285a239c54793ac1e7b5a25652ee36cb418d555f31d5cb7a6f6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.TensorApply.Variant2a7b7b2bedb459d48edbabfe49c7685a1a45a5a1c80f26a8b6edd5833203ab1a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2a7b7b2bedb459d48edbabfe49c7685a1a45a5a1c80f26a8b6edd5833203ab1a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.TensorApply.Variant2a7b7b2bedb459d48edbabfe49c7685a1a45a5a1c80f26a8b6edd5833203ab1a","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"2a7b7b2bedb459d48edbabfe49c7685a1a45a5a1c80f26a8b6edd5833203ab1a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Monoidal/Types/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Michael Jendrusch. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Michael Jendrusch, Kim Morrison
-/
import Mathlib.CategoryTheory.Monoidal.Cartesian.Basic
import Mathlib.CategoryTheory.Monoidal.Functor
import Mathlib.CategoryTheory.Limits.Types.Shapes

/-!
# The category of types is a (symmetric) monoidal category
-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.TensorApply.Variant2a7b7b2bedb459d48edbabfe49c7685a1a45a5a1c80f26a8b6edd5833203ab1a

open CategoryTheory Limits MonoidalCategory

open Tactic

universe v u

namespace CategoryTheory

instance typesCartesianMonoidalCategory : CartesianMonoidalCategory (Type u) :=
  .ofChosenFiniteProducts Types.terminalLimitCone Types.binaryProductLimitCone

instance : BraidedCategory (Type u) := .ofCartesianMonoidalCategory

@[simp]
theorem tensor_apply {W X Y Z : Type u} (f : W ⟶ X) (g : Y ⟶ Z) (p : W ⊗ Y) :
    (f ⊗ g) p = (f p.1, g p.2) :=
  rfl

@[simp]
theorem whiskerLeft_apply (X : Type u) {Y Z : Type u} (f : Y ⟶ Z) (p : X ⊗ Y) :
    (X ◁ f) p = (p.1, f p.2) :=
  rfl

@[simp]
theorem whiskerRight_apply {Y Z : Type u} (f : Y ⟶ Z) (X : Type u) (p : Y ⊗ X) :
    (f ▷ X) p = (f p.1, p.2) :=
  rfl

@[simp]
theorem leftUnitor_hom_apply {X : Type u} {x : X} {p : PUnit} :
    ((λ_ X).hom : 𝟙_ (Type u) ⊗ X → X) (p, x) = x :=
  rfl

@[simp]
theorem leftUnitor_inv_apply {X : Type u} {x : X} :
    ((λ_ X).inv : X ⟶ 𝟙_ (Type u) ⊗ X) x = (PUnit.unit, x) :=
  rfl

@[simp]
theorem rightUnitor_hom_apply {X : Type u} {x : X} {p : PUnit} :
    ((ρ_ X).hom : X ⊗ 𝟙_ (Type u) → X) (x, p) = x :=
  rfl

@[simp]
theorem rightUnitor_inv_apply {X : Type u} {x : X} :
    ((ρ_ X).inv : X ⟶ X ⊗ 𝟙_ (Type u)) x = (x, PUnit.unit) :=
  rfl

@[simp]
theorem associator_hom_apply {X Y Z : Type u} {x : X} {y : Y} {z : Z} :
    ((α_ X Y Z).hom : (X ⊗ Y) ⊗ Z → X ⊗ Y ⊗ Z) ((x, y), z) = (x, (y, z)) :=
  rfl

@[simp]
theorem associator_inv_apply {X Y Z : Type u} {x : X} {y : Y} {z : Z} :
    ((α_ X Y Z).inv : X ⊗ Y ⊗ Z → (X ⊗ Y) ⊗ Z) (x, (y, z)) = ((x, y), z) :=
  rfl

@[simp] theorem associator_hom_apply_1 {X Y Z : Type u} {x} :
    (((α_ X Y Z).hom : (X ⊗ Y) ⊗ Z → X ⊗ Y ⊗ Z) x).1 = x.1.1 :=
  rfl

@[simp] theorem associator_hom_apply_2_1 {X Y Z : Type u} {x} :
    (((α_ X Y Z).hom : (X ⊗ Y) ⊗ Z → X ⊗ Y ⊗ Z) x).2.1 = x.1.2 :=
  rfl

@[simp] theorem associator_hom_apply_2_2 {X Y Z : Type u} {x} :
    (((α_ X Y Z).hom : (X ⊗ Y) ⊗ Z → X ⊗ Y ⊗ Z) x).2.2 = x.2 :=
  rfl

@[simp] theorem associator_inv_apply_1_1 {X Y Z : Type u} {x} :
    (((α_ X Y Z).inv : X ⊗ Y ⊗ Z → (X ⊗ Y) ⊗ Z) x).1.1 = x.1 :=
  rfl

@[simp] theorem associator_inv_apply_1_2 {X Y Z : Type u} {x} :
    (((α_ X Y Z).inv : X ⊗ Y ⊗ Z → (X ⊗ Y) ⊗ Z) x).1.2 = x.2.1 :=
  rfl

@[simp] theorem associator_inv_apply_2 {X Y Z : Type u} {x} :
    (((α_ X Y Z).inv : X ⊗ Y ⊗ Z → (X ⊗ Y) ⊗ Z) x).2 = x.2.2 :=
  rfl

@[simp]
theorem braiding_hom_apply {X Y : Type u} {x : X} {y : Y} :
    ((β_ X Y).hom : X ⊗ Y → Y ⊗ X) (x, y) = (y, x) :=
  rfl

@[simp]
theorem braiding_inv_apply {X Y : Type u} {x : X} {y : Y} :
    ((β_ X Y).inv : Y ⊗ X → X ⊗ Y) (y, x) = (x, y) :=
  rfl

@[simp]
theorem CartesianMonoidalCategory.lift_apply {X Y Z : Type u} {f : X ⟶ Y} {g : X ⟶ Z} {x : X} :
    lift f g x = (f x, g x) :=
  rfl

-- We don't yet have an API for tensor products indexed by finite ordered types,
-- but it would be nice to state how monoidal functors preserve these.
/-- If `F` is a monoidal functor out of `Type`, it takes the (n+1)st cartesian power
of a type to the image of that type, tensored with the image of the nth cartesian power. -/
noncomputable def MonoidalFunctor.mapPi {C : Type*} [Category C] [MonoidalCategory C]
    (F : Type _ ⥤ C) [F.Monoidal] (n : ℕ) (β : Type*) :
    F.obj (Fin (n + 1) → β) ≅ F.obj β ⊗ F.obj (Fin n → β) :=
  Functor.mapIso _ (Fin.consEquiv _).symm.toIso ≪≫ (Functor.Monoidal.μIso F β (Fin n → β)).symm

end CategoryTheory
```
