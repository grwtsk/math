# Complete source: GRWTSK.Algebra.GroupTheory.Defs.Variant46252496bb597b90b7fe250210f0aa5e29047e48d656d77880bac29beba9e30f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `63ffcaaef2d8289ecd6b9d945bbf2b169b26da23` · SHA-256 `fa6e5285aec5ffe2ec590571141bbe531992f9d1eb1393869a9046681cbfd867`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.AddIrreducible.Variant8d1715b813f996b894b8938253e3cd5ee448dfa49a1152c573f8ee68c146cdfb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8d1715b813f996b894b8938253e3cd5ee448dfa49a1152c573f8ee68c146cdfb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.AddIrreducible.Variant8d1715b813f996b894b8938253e3cd5ee448dfa49a1152c573f8ee68c146cdfb","mathematical_subject":"Algebra.Groups","original_sha256":"8d1715b813f996b894b8938253e3cd5ee448dfa49a1152c573f8ee68c146cdfb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Group/Irreducible/Defs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Jens Wagemaker, Yaël Dillies
-/
import Mathlib.Algebra.Group.Units.Defs
import Mathlib.Logic.Basic

/-!
# Irreducible elements in a monoid

This file defines irreducible elements of a monoid (`Irreducible`), as non-units that can't be
written as the product of two non-units. This generalises irreducible elements of a ring.
We also define the additive variant (`AddIrreducible`).

In decomposition monoids (e.g., `ℕ`, `ℤ`), this predicate is equivalent to `Prime`
(see `irreducible_iff_prime`), however this is not true in general.
-/


namespace GRWTSK.Algebra.GroupTheory.AddIrreducible.Variant8d1715b813f996b894b8938253e3cd5ee448dfa49a1152c573f8ee68c146cdfb

assert_not_exists MonoidWithZero OrderedCommMonoid Multiset

variable {M : Type*}

/-- `AddIrreducible p` states that `p` is not an additive unit and cannot be written as a sum of
additive non-units. -/
structure AddIrreducible [AddMonoid M] (p : M) : Prop where
  /-- An irreducible element is not an additive unit. -/
  not_isAddUnit : ¬IsAddUnit p
  /-- If an irreducible element can be written as a sum, then one term is an additive unit. -/
  isAddUnit_or_isAddUnit ⦃a b⦄ : p = a + b → IsAddUnit a ∨ IsAddUnit b

section Monoid
variable [Monoid M] {p q x y : M}

/-- `Irreducible p` states that `p` is non-unit and only factors into units.

We explicitly avoid stating that `p` is non-zero, this would require a semiring. Assuming only a
monoid allows us to reuse irreducible for associated elements. -/
@[to_additive]
structure Irreducible (p : M) : Prop where
  /-- An irreducible element is not a unit. -/
  not_isUnit : ¬IsUnit p
  /-- If an irreducible element factors, then one factor is a unit. -/
  isUnit_or_isUnit ⦃a b⦄ : p = a * b → IsUnit a ∨ IsUnit b

namespace Irreducible

@[deprecated (since := "2025-04-09")] alias not_unit := not_isUnit
@[deprecated (since := "2025-04-10")] alias isUnit_or_isUnit' := isUnit_or_isUnit

end Irreducible

@[to_additive] lemma irreducible_iff :
    Irreducible p ↔ ¬IsUnit p ∧ ∀ ⦃a b⦄, p = a * b → IsUnit a ∨ IsUnit b where
  mp hp := ⟨hp.not_isUnit, hp.isUnit_or_isUnit⟩
  mpr hp := ⟨hp.1, hp.2⟩

@[to_additive (attr := simp)]
lemma not_irreducible_one : ¬Irreducible (1 : M) := by simp [irreducible_iff]

@[to_additive]
lemma Irreducible.ne_one (hp : Irreducible p) : p ≠ 1 := by rintro rfl; exact not_irreducible_one hp

@[to_additive]
lemma of_irreducible_mul : Irreducible (x * y) → IsUnit x ∨ IsUnit y | ⟨_, h⟩ => h rfl

@[to_additive]
lemma irreducible_or_factor (hp : ¬IsUnit p) :
    Irreducible p ∨ ∃ a b, ¬IsUnit a ∧ ¬IsUnit b ∧ p = a * b := by
  simpa [irreducible_iff, hp, and_rotate] using em (∀ a b, p = a * b → IsUnit a ∨ IsUnit b)

end Monoid
```
