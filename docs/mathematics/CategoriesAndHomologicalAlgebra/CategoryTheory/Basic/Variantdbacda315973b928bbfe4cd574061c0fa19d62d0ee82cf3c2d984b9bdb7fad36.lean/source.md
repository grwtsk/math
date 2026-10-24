# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variantdbacda315973b928bbfe4cd574061c0fa19d62d0ee82cf3c2d984b9bdb7fad36

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `469949d7f6377c3bac810829e538a44a23ece448` · SHA-256 `53a59ac18d802a0bb4a6cc7fff0f7819c9e56eac64609cc89d1a88a0f4181d56`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FinCategory.Variant35aa0a13f10d88daf57431638877b981ac53e17bcae68953b122481ba4ddae29","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"35aa0a13f10d88daf57431638877b981ac53e17bcae68953b122481ba4ddae29","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.FinCategory.Variant35aa0a13f10d88daf57431638877b981ac53e17bcae68953b122481ba4ddae29","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"35aa0a13f10d88daf57431638877b981ac53e17bcae68953b122481ba4ddae29","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/FinCategory/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.Data.Fintype.Basic
import Mathlib.CategoryTheory.Discrete.Basic
import Mathlib.CategoryTheory.Opposites
import Mathlib.CategoryTheory.Category.ULift

/-!
# Finite categories

A category is finite in this sense if it has finitely many objects, and finitely many morphisms.

## Implementation
Prior to https://github.com/leanprover-community/mathlib4/pull/14046, `FinCategory` required a `DecidableEq` instance on the object and morphism types.
This does not seem to have had any practical payoff (i.e. making some definition constructive)
so we have removed these requirements to avoid
having to supply instances or delay with non-defeq conflicts between instances.
-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FinCategory.Variant35aa0a13f10d88daf57431638877b981ac53e17bcae68953b122481ba4ddae29

universe w v u

noncomputable section

namespace CategoryTheory

instance discreteFintype {α : Type*} [Fintype α] : Fintype (Discrete α) :=
  Fintype.ofEquiv α discreteEquiv.symm

instance discreteHomFintype {α : Type*} (X Y : Discrete α) : Fintype (X ⟶ Y) := by
  classical
  apply ULift.fintype

/-- A category with a `Fintype` of objects, and a `Fintype` for each morphism space. -/
class FinCategory (J : Type v) [SmallCategory J] where
  fintypeObj : Fintype J := by infer_instance
  fintypeHom : ∀ j j' : J, Fintype (j ⟶ j') := by infer_instance

attribute [instance] FinCategory.fintypeObj FinCategory.fintypeHom

instance finCategoryDiscreteOfFintype (J : Type v) [Fintype J] : FinCategory (Discrete J) where

open Opposite

/-- The opposite of a finite category is finite.
-/
instance finCategoryOpposite {J : Type v} [SmallCategory J] [FinCategory J] : FinCategory Jᵒᵖ where
  fintypeObj := Fintype.ofEquiv _ equivToOpposite
  fintypeHom j j' := Fintype.ofEquiv _ (opEquiv j j').symm

/-- Applying `ULift` to morphisms and objects of a category preserves finiteness. -/
instance finCategoryUlift {J : Type v} [SmallCategory J] [FinCategory J] :
    FinCategory.{max w v} (ULiftHom.{w, max w v} (ULift.{w, v} J)) where
  fintypeObj := ULift.fintype J
  fintypeHom := fun _ _ => ULift.fintype _

end CategoryTheory
```
