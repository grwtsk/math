-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.AddIrreducible.Variant3ab582e5ca3d9cceb560a609ac4c2cc7777ead388d9f5f0687fb585e40e04ccc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3ab582e5ca3d9cceb560a609ac4c2cc7777ead388d9f5f0687fb585e40e04ccc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.AddIrreducible.Variant3ab582e5ca3d9cceb560a609ac4c2cc7777ead388d9f5f0687fb585e40e04ccc","mathematical_subject":"Algebra.Groups","original_sha256":"3ab582e5ca3d9cceb560a609ac4c2cc7777ead388d9f5f0687fb585e40e04ccc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Group/Irreducible/Defs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Jens Wagemaker, Yaël Dillies
-/
module

public import Mathlib.Algebra.Group.Units.Defs
public import Mathlib.Basic.Logic.Basic

/-!
# Irreducible elements in a monoid

This file defines irreducible elements of a monoid (`Irreducible`), as non-units that can't be
written as the product of two non-units. This generalises irreducible elements of a ring.
We also define the additive variant (`AddIrreducible`).

In decomposition monoids (e.g., `ℕ`, `ℤ`), this predicate is equivalent to `Prime`
(see `irreducible_iff_prime`), however this is not true in general.
-/


namespace GRWTSK.Algebra.GroupTheory.AddIrreducible.Variant3ab582e5ca3d9cceb560a609ac4c2cc7777ead388d9f5f0687fb585e40e04ccc

public section

assert_not_exists MonoidWithZero IsOrderedMonoid Multiset

variable {M : Type*}

/-- `AddIrreducible p` states that `p` is not an additive unit and cannot be written as a sum of
additive non-units. -/
structure AddIrreducible [AddMonoid M] (p : M) : Prop where
  /-- An irreducible element is not an additive unit. -/
  not_isAddUnit : ¬IsAddUnit p
  /-- If an irreducible element can be written as a sum, then one term is an additive unit. -/
  isAddUnit_or_isAddUnit ⦃a b⦄ : p = a + b → IsAddUnit a ∨ IsAddUnit b

section Monoid
variable [Monoid M] {p a b : M}

/-- `Irreducible p` states that `p` is non-unit and only factors into units.

We explicitly avoid stating that `p` is non-zero, this would require a semiring. Assuming only a
monoid allows us to reuse irreducible for associated elements. -/
@[to_additive (attr := wikidata Q2989575)]
structure Irreducible (p : M) : Prop where
  /-- An irreducible element is not a unit. -/
  not_isUnit : ¬IsUnit p
  /-- If an irreducible element factors, then one factor is a unit. -/
  isUnit_or_isUnit ⦃a b : M⦄ : p = a * b → IsUnit a ∨ IsUnit b

@[to_additive] lemma irreducible_iff :
    Irreducible p ↔ ¬IsUnit p ∧ ∀ ⦃a b⦄, p = a * b → IsUnit a ∨ IsUnit b where
  mp hp := ⟨hp.not_isUnit, hp.isUnit_or_isUnit⟩
  mpr hp := ⟨hp.1, hp.2⟩

@[to_additive (attr := simp)]
lemma not_irreducible_one : ¬Irreducible (1 : M) := by simp [irreducible_iff]

@[to_additive]
lemma Irreducible.ne_one (hp : Irreducible p) : p ≠ 1 := by rintro rfl; exact not_irreducible_one hp

@[to_additive]
lemma of_irreducible_mul : Irreducible (a * b) → IsUnit a ∨ IsUnit b | ⟨_, h⟩ => h rfl

@[to_additive]
lemma irreducible_or_factor (hp : ¬IsUnit p) :
    Irreducible p ∨ ∃ a b, ¬IsUnit a ∧ ¬IsUnit b ∧ p = a * b := by
  simpa [irreducible_iff, hp, and_rotate] using em (∀ a b, p = a * b → IsUnit a ∨ IsUnit b)

@[to_additive]
lemma Irreducible.eq_one_or_eq_one [Subsingleton Mˣ] (hab : Irreducible (a * b)) :
    a = 1 ∨ b = 1 := by simpa using hab.isUnit_or_isUnit rfl

end Monoid
