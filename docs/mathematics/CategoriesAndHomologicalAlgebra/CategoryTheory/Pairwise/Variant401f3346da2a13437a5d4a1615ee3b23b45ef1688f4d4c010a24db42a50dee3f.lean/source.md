# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Pairwise.Variant401f3346da2a13437a5d4a1615ee3b23b45ef1688f4d4c010a24db42a50dee3f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `59539d39929ccbab9eff711a2c688b458525adca` · SHA-256 `76d5f8a3efa73320f2bc14fb0a805527a0a921a6c83539182a2c3be6981dc628`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Pairwise.Variant9b0fb0eaa2a4100d988b8009e73488fa4c08655d22fbeac760d547175d997fb2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9b0fb0eaa2a4100d988b8009e73488fa4c08655d22fbeac760d547175d997fb2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Pairwise.Variant9b0fb0eaa2a4100d988b8009e73488fa4c08655d22fbeac760d547175d997fb2","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"9b0fb0eaa2a4100d988b8009e73488fa4c08655d22fbeac760d547175d997fb2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Category/Pairwise.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.CategoryTheory.Category.Preorder
import Mathlib.CategoryTheory.Limits.IsLimit
import Mathlib.Order.CompleteLattice.Basic

/-!
# The category of "pairwise intersections".

Given `ι : Type v`, we build the diagram category `Pairwise ι`
with objects `single i` and `pair i j`, for `i j : ι`,
whose only non-identity morphisms are
`left : pair i j ⟶ single i` and `right : pair i j ⟶ single j`.

We use this later in describing (one formulation of) the sheaf condition.

Given any function `U : ι → α`, where `α` is some complete lattice (e.g. `(Opens X)ᵒᵖ`),
we produce a functor `Pairwise ι ⥤ α` in the obvious way,
and show that `iSup U` provides a colimit cocone over this functor.
-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Pairwise.Variant9b0fb0eaa2a4100d988b8009e73488fa4c08655d22fbeac760d547175d997fb2

noncomputable section

universe v u

open CategoryTheory

open CategoryTheory.Limits

namespace CategoryTheory

/-- An inductive type representing either a single term of a type `ι`, or a pair of terms.
We use this as the objects of a category to describe the sheaf condition.
-/
inductive Pairwise (ι : Type v)
  | single : ι → Pairwise ι
  | pair : ι → ι → Pairwise ι

variable {ι : Type v}

namespace Pairwise

instance pairwiseInhabited [Inhabited ι] : Inhabited (Pairwise ι) :=
  ⟨single default⟩

/-- Morphisms in the category `Pairwise ι`. The only non-identity morphisms are
`left i j : single i ⟶ pair i j` and `right i j : single j ⟶ pair i j`.
-/
inductive Hom : Pairwise ι → Pairwise ι → Type v
  | id_single : ∀ i, Hom (single i) (single i)
  | id_pair : ∀ i j, Hom (pair i j) (pair i j)
  | left : ∀ i j, Hom (pair i j) (single i)
  | right : ∀ i j, Hom (pair i j) (single j)

open Hom

instance homInhabited [Inhabited ι] : Inhabited (Hom (single (default : ι)) (single default)) :=
  ⟨id_single default⟩

/-- The identity morphism in `Pairwise ι`.
-/
def id : ∀ o : Pairwise ι, Hom o o
  | single i => id_single i
  | pair i j => id_pair i j

/-- Composition of morphisms in `Pairwise ι`. -/
def comp : ∀ {o₁ o₂ o₃ : Pairwise ι} (_ : Hom o₁ o₂) (_ : Hom o₂ o₃), Hom o₁ o₃
  | _, _, _, id_single _, g => g
  | _, _, _, id_pair _ _, g => g
  | _, _, _, left i j, id_single _ => left i j
  | _, _, _, right i j, id_single _ => right i j

instance : CategoryStruct (Pairwise ι) where
  Hom := Hom
  id := id
  comp := @comp _

section

open Lean Elab Tactic in
/-- A helper tactic for `aesop_cat` and `Pairwise`. -/
def pairwiseCases : TacticM Unit := do
  evalTactic (← `(tactic| casesm* (_ : Pairwise _) ⟶ (_ : Pairwise _)))

attribute [local aesop safe tactic (rule_sets := [CategoryTheory])] pairwiseCases in
instance : Category (Pairwise ι) where

end

variable {α : Type u} (U : ι → α)

section

variable [SemilatticeInf α]

/-- Auxiliary definition for `diagram`. -/
@[simp]
def diagramObj : Pairwise ι → α
  | single i => U i
  | pair i j => U i ⊓ U j

/-- Auxiliary definition for `diagram`. -/
@[simp]
def diagramMap : ∀ {o₁ o₂ : Pairwise ι} (_ : o₁ ⟶ o₂), diagramObj U o₁ ⟶ diagramObj U o₂
  | _, _, id_single _ => 𝟙 _
  | _, _, id_pair _ _ => 𝟙 _
  | _, _, left _ _ => homOfLE inf_le_left
  | _, _, right _ _ => homOfLE inf_le_right

/-- Given a function `U : ι → α` for `[SemilatticeInf α]`, we obtain a functor `Pairwise ι ⥤ α`,
sending `single i` to `U i` and `pair i j` to `U i ⊓ U j`,
and the morphisms to the obvious inequalities.
-/
@[simps]
def diagram : Pairwise ι ⥤ α where
  obj := diagramObj U
  map := diagramMap U

end

section

-- `CompleteLattice` is not really needed, as we only ever use `inf`,
-- but the appropriate structure has not been defined.
variable [CompleteLattice α]

/-- Auxiliary definition for `cocone`. -/
def coconeιApp : ∀ o : Pairwise ι, diagramObj U o ⟶ iSup U
  | single i => homOfLE (le_iSup U i)
  | pair i _ => homOfLE inf_le_left ≫ homOfLE (le_iSup U i)

/-- Given a function `U : ι → α` for `[CompleteLattice α]`,
`iSup U` provides a cocone over `diagram U`.
-/
@[simps]
def cocone : Cocone (diagram U) where
  pt := iSup U
  ι := { app := coconeιApp U }

/-- Given a function `U : ι → α` for `[CompleteLattice α]`,
`iInf U` provides a limit cone over `diagram U`.
-/
def coconeIsColimit : IsColimit (cocone U) where
  desc s := homOfLE
    (by
      apply CompleteSemilatticeSup.sSup_le
      rintro _ ⟨j, rfl⟩
      exact (s.ι.app (single j)).le)

end

end Pairwise

end CategoryTheory
```
