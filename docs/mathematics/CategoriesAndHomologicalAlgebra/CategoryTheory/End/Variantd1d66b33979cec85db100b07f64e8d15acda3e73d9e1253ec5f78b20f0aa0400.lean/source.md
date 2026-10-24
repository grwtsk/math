# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.End.Variantd1d66b33979cec85db100b07f64e8d15acda3e73d9e1253ec5f78b20f0aa0400

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `87857c85aa319de98527a9ceb0e0f393f8d54da9` · SHA-256 `cf74603b09fc5558856a2c785f13d9a2a65465f99a196eaaa12cba0263d0d04c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EndMonoidal.Variant30094bafe1d507689b6a57181dfbfde75a0f4ad2239441f3a00bbda8804ac6fd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"30094bafe1d507689b6a57181dfbfde75a0f4ad2239441f3a00bbda8804ac6fd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.EndMonoidal.Variant30094bafe1d507689b6a57181dfbfde75a0f4ad2239441f3a00bbda8804ac6fd","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"30094bafe1d507689b6a57181dfbfde75a0f4ad2239441f3a00bbda8804ac6fd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Bicategory/End.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.CategoryTheory.Bicategory.Basic
import Mathlib.CategoryTheory.Monoidal.Category

/-!
# Endomorphisms of an object in a bicategory, as a monoidal category.
-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EndMonoidal.Variant30094bafe1d507689b6a57181dfbfde75a0f4ad2239441f3a00bbda8804ac6fd

namespace CategoryTheory

variable {C : Type*} [Bicategory C]

/-- The endomorphisms of an object in a bicategory can be considered as a monoidal category. -/
def EndMonoidal (X : C) :=
  X ⟶ X
-- The `Category` instance should be constructed by a deriving handler.
-- https://github.com/leanprover-community/mathlib4/issues/380

instance (X : C) : Category (EndMonoidal X) :=
  show Category (X ⟶ X) from inferInstance

instance (X : C) : Inhabited (EndMonoidal X) :=
  ⟨𝟙 X⟩

open Bicategory

open MonoidalCategory

open Bicategory

attribute [local simp] EndMonoidal in
instance (X : C) : MonoidalCategory (EndMonoidal X) where
  tensorObj f g := f ≫ g
  whiskerLeft {f _ _} η := f ◁ η
  whiskerRight {_ _} η h := η ▷ h
  tensorUnit := 𝟙 _
  associator f g h := α_ f g h
  leftUnitor f := λ_ f
  rightUnitor f := ρ_ f
  tensor_comp := by
    intros
    dsimp
    rw [Bicategory.whiskerLeft_comp, Bicategory.comp_whiskerRight, Category.assoc, Category.assoc,
      Bicategory.whisker_exchange_assoc]

end CategoryTheory
```
