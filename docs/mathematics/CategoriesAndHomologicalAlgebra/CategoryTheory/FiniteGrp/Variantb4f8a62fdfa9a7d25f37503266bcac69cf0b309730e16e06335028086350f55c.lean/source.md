# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FiniteGrp.Variantb4f8a62fdfa9a7d25f37503266bcac69cf0b309730e16e06335028086350f55c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `28945f406077db90200ebde2fb7f6a97313678a7` · SHA-256 `09a72990745d850d504a598d971a7f7b7c2b1954ea7e4f5215f3d1a86265c403`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FiniteGrp.Variantdd183845b9e9fd006e9c6c8d661f9cf9115e9be8d357d9781b2b041d82f9ecec","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dd183845b9e9fd006e9c6c8d661f9cf9115e9be8d357d9781b2b041d82f9ecec","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.FiniteGrp.Variantdd183845b9e9fd006e9c6c8d661f9cf9115e9be8d357d9781b2b041d82f9ecec","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"dd183845b9e9fd006e9c6c8d661f9cf9115e9be8d357d9781b2b041d82f9ecec","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Category/Grp/FiniteGrp.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jujian Zhang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jujian Zhang, Nailin Guan, Yuyang Zhao
-/
import Mathlib.Data.Finite.Defs
import Mathlib.Algebra.Category.Grp.Basic

/-!

## Main definitions and results

* `FiniteGrp` is the category of finite groups.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FiniteGrp.Variantdd183845b9e9fd006e9c6c8d661f9cf9115e9be8d357d9781b2b041d82f9ecec

universe u v

open CategoryTheory

/-- The category of finite groups. -/
@[pp_with_univ]
structure FiniteGrp where
  /-- A group that is finite -/
  toGrp : Grp
  [isFinite : Finite toGrp]

/-- The category of finite additive groups. -/
@[pp_with_univ]
structure FiniteAddGrp where
  /-- An add group that is finite -/
  toAddGrp : AddGrp
  [isFinite : Finite toAddGrp]

attribute [to_additive] FiniteGrp

namespace FiniteGrp

@[to_additive]
instance : CoeSort FiniteGrp.{u} (Type u) where
  coe G := G.toGrp

@[to_additive]
instance : Category FiniteGrp := InducedCategory.category FiniteGrp.toGrp

@[to_additive]
instance : ConcreteCategory FiniteGrp (· →* ·) := InducedCategory.concreteCategory FiniteGrp.toGrp

@[to_additive]
instance (G : FiniteGrp) : Group G := inferInstanceAs <| Group G.toGrp

@[to_additive]
instance (G : FiniteGrp) : Finite G := G.isFinite

/-- Construct a term of `FiniteGrp` from a type endowed with the structure of a finite group. -/
@[to_additive "Construct a term of `FiniteAddGrp` from a type endowed with the structure of a
finite additive group."]
def of (G : Type u) [Group G] [Finite G] : FiniteGrp where
  toGrp := Grp.of G
  isFinite := ‹_›

/-- The morphism in `FiniteGrp`, induced from a morphism of the category `Grp`. -/
@[to_additive "The morphism in `FiniteAddGrp`, induced from a morphism of the category `AddGrp`"]
def ofHom {X Y : Type u} [Group X] [Finite X] [Group Y] [Finite Y] (f : X →* Y) : of X ⟶ of Y :=
  Grp.ofHom f

@[to_additive]
lemma ofHom_apply {X Y : Type u} [Group X] [Finite X] [Group Y] [Finite Y] (f : X →* Y) (x : X) :
    ofHom f x = f x :=
  rfl

end FiniteGrp
```
