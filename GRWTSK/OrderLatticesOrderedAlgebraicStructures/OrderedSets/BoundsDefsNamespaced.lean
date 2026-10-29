-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UpperBounds.Variant096c48b6ad934f8b6425acb5650acb726c1079c1d62d13e15f51a280a3a0b8a6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"096c48b6ad934f8b6425acb5650acb726c1079c1d62d13e15f51a280a3a0b8a6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.UpperBounds.Variant096c48b6ad934f8b6425acb5650acb726c1079c1d62d13e15f51a280a3a0b8a6","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"096c48b6ad934f8b6425acb5650acb726c1079c1d62d13e15f51a280a3a0b8a6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Order/Bounds/Defs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Yury Kudryashov
-/
import Mathlib.Data.Set.Defs
import Mathlib.Tactic.TypeStar

/-!
# Definitions about upper/lower bounds

In this file we define:
* `upperBounds`, `lowerBounds` : the set of upper bounds (resp., lower bounds) of a set;
* `BddAbove s`, `BddBelow s` : the set `s` is bounded above (resp., below), i.e., the set of upper
  (resp., lower) bounds of `s` is nonempty;
* `IsLeast s a`, `IsGreatest s a` : `a` is a least (resp., greatest) element of `s`;
  for a partial order, it is unique if exists;
* `IsLUB s a`, `IsGLB s a` : `a` is a least upper bound (resp., a greatest lower bound)
  of `s`; for a partial order, it is unique if exists.
* `IsCofinal s`: for every `a`, there exists a member of `s` greater or equal to it.
* `IsCofinalFor s t` : for all `a ∈ s` there exists `b ∈ t` such that `a ≤ b`
* `IsCoinitialFor s t` : for all `a ∈ s` there exists `b ∈ t` such that `b ≤ a`
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UpperBounds.Variant096c48b6ad934f8b6425acb5650acb726c1079c1d62d13e15f51a280a3a0b8a6

variable {α : Type*} [LE α]

/-- The set of upper bounds of a set. -/
def upperBounds (s : Set α) : Set α :=
  { x | ∀ ⦃a⦄, a ∈ s → a ≤ x }

/-- The set of lower bounds of a set. -/
def lowerBounds (s : Set α) : Set α :=
  { x | ∀ ⦃a⦄, a ∈ s → x ≤ a }

/-- A set is bounded above if there exists an upper bound. -/
def BddAbove (s : Set α) :=
  (upperBounds s).Nonempty

/-- A set is bounded below if there exists a lower bound. -/
def BddBelow (s : Set α) :=
  (lowerBounds s).Nonempty

/-- `a` is a least element of a set `s`; for a partial order, it is unique if exists. -/
def IsLeast (s : Set α) (a : α) : Prop :=
  a ∈ s ∧ a ∈ lowerBounds s

/-- `a` is a greatest element of a set `s`; for a partial order, it is unique if exists. -/
def IsGreatest (s : Set α) (a : α) : Prop :=
  a ∈ s ∧ a ∈ upperBounds s

/-- `a` is a least upper bound of a set `s`; for a partial order, it is unique if exists. -/
def IsLUB (s : Set α) : α → Prop :=
  IsLeast (upperBounds s)

/-- `a` is a greatest lower bound of a set `s`; for a partial order, it is unique if exists. -/
def IsGLB (s : Set α) : α → Prop :=
  IsGreatest (lowerBounds s)

/-- A set `s` is said to be cofinal for a set `t` if, for all `a ∈ s` there exists `b ∈ t`
such that `a ≤ b`. -/
def IsCofinalFor (s t : Set α) := ∀ ⦃a⦄, a ∈ s → ∃ b ∈ t, a ≤ b

/-- A set `s` is said to be coinitial for a set `t` if, for all `a ∈ s` there exists `b ∈ t`
such that `b ≤ a`. -/
def IsCoinitialFor (s t : Set α) := ∀ ⦃a⦄, a ∈ s → ∃ b ∈ t, b ≤ a

/-- A set is cofinal when for every `x : α` there exists `y ∈ s` with `x ≤ y`. -/
def IsCofinal (s : Set α) : Prop :=
  ∀ x, ∃ y ∈ s, x ≤ y
