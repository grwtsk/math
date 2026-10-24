# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FiniteGrp.Variantccfc4d09d9d6dedaf905ed113989db8a2427a30297b2785e1de19dd251170c64

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `13b89ec02895b0f63096c6c185c786689b4a28bc` · SHA-256 `98000ba39fca2482142b75209f6f9d1d19ca89c3dbaa46aab98af28f6c94170e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FiniteGrp.Variant253474abc6a1c9f9a2504a2f9dec3e134f9db6221f07f131378e057beb4000f5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"253474abc6a1c9f9a2504a2f9dec3e134f9db6221f07f131378e057beb4000f5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.FiniteGrp.Variant253474abc6a1c9f9a2504a2f9dec3e134f9db6221f07f131378e057beb4000f5","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"253474abc6a1c9f9a2504a2f9dec3e134f9db6221f07f131378e057beb4000f5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Category/Grp/FiniteGrp.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jujian Zhang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jujian Zhang, Nailin Guan, Yuyang Zhao
-/
module

public import Mathlib.Algebra.Category.Grp.Basic
public import Mathlib.Basic.Finite.Defs

/-!
# The category of finite groups

## Main definitions and results

* `FiniteGrp` is the category of finite groups.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FiniteGrp.Variant253474abc6a1c9f9a2504a2f9dec3e134f9db6221f07f131378e057beb4000f5

@[expose] public section

universe u v

open CategoryTheory

/-- The category of finite groups. -/
@[pp_with_univ]
structure FiniteGrp where
  /-- A group that is finite -/
  toGrp : GrpCat.{u}
  [isFinite : Finite toGrp]

/-- The category of finite additive groups. -/
@[pp_with_univ]
structure FiniteAddGrp where
  /-- An additive group that is finite -/
  toAddGrp : AddGrpCat.{u}
  [isFinite : Finite toAddGrp]

attribute [to_additive] FiniteGrp

namespace FiniteGrp

@[to_additive]
instance : CoeSort FiniteGrp.{u} (Type u) where
  coe G := G.toGrp

@[to_additive]
instance : Category FiniteGrp :=
  inferInstanceAs <| Category (InducedCategory _ FiniteGrp.toGrp)

@[to_additive]
instance : ConcreteCategory FiniteGrp (· →* ·) :=
  inferInstanceAs <| ConcreteCategory (InducedCategory _ toGrp) _

@[to_additive]
instance (G : FiniteGrp) : Group G := inferInstanceAs <| Group G.toGrp

@[to_additive]
instance (G : FiniteGrp) : Finite G := G.isFinite

/-- Construct a term of `FiniteGrp` from a type endowed with the structure of a finite group. -/
@[to_additive /-- Construct a term of `FiniteAddGrp` from a type endowed with the structure of a
finite additive group. -/]
def of (G : Type u) [Group G] [Finite G] : FiniteGrp where
  toGrp := ↧G
  isFinite := ‹_›

/-- The morphism in `FiniteGrp`, induced from a morphism of the category `GrpCat`. -/
@[to_additive
/-- The morphism in `FiniteAddGrp`, induced from a morphism of the category `AddGrpCat` -/]
def ofHom {X Y : Type u} [Group X] [Finite X] [Group Y] [Finite Y] (f : X →* Y) : of X ⟶ of Y :=
  InducedCategory.homMk (GrpCat.ofHom f)

@[to_additive]
lemma ofHom_apply {X Y : Type u} [Group X] [Finite X] [Group Y] [Finite Y] (f : X →* Y) (x : X) :
    ofHom f x = f x :=
  rfl

end FiniteGrp

section Notation

open Lean.PrettyPrinter.Delaborator

/-- This prints `FiniteAddGrp.of X` as `↧X`. -/
@[app_delab FiniteAddGrp.of]
meta def FiniteAddGrp.delabOf : Delab := CategoryTheory.delabOf

/-- This prints `FiniteGrp.of X` as `↧X`. -/
@[app_delab FiniteGrp.of]
meta def FiniteGrp.delabOf : Delab := CategoryTheory.delabOf

end Notation
```
