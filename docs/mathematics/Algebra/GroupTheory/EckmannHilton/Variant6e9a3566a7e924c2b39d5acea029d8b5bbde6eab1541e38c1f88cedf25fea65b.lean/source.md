# Complete source: GRWTSK.Algebra.GroupTheory.EckmannHilton.Variant6e9a3566a7e924c2b39d5acea029d8b5bbde6eab1541e38c1f88cedf25fea65b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e72b57b0293de7196fa6001b4f055055345d078a` · SHA-256 `5ee892fc52e9166eb02bfb1b37313d2106ed339b3d50c5e3ba20a2005727d7a9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.IsUnital.Variant8755c7bf29f45559113c44bfd5073ce6a4263e6bed9fe57cebffa13b2dde9806","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8755c7bf29f45559113c44bfd5073ce6a4263e6bed9fe57cebffa13b2dde9806","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.IsUnital.Variant8755c7bf29f45559113c44bfd5073ce6a4263e6bed9fe57cebffa13b2dde9806","mathematical_subject":"Algebra.Groups","original_sha256":"8755c7bf29f45559113c44bfd5073ce6a4263e6bed9fe57cebffa13b2dde9806","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/GroupTheory/EckmannHilton.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Kenny Lau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin, Kenny Lau, Robert Y. Lewis
-/
import Mathlib.Algebra.Group.Defs

/-!
# Eckmann-Hilton argument

The Eckmann-Hilton argument says that if a type carries two monoid structures that distribute
over one another, then they are equal, and in addition commutative.
The main application lies in proving that higher homotopy groups (`πₙ` for `n ≥ 2`) are commutative.

## Main declarations

* `EckmannHilton.commMonoid`: If a type carries a unital magma structure that distributes
  over a unital binary operation, then the magma is a commutative monoid.
* `EckmannHilton.commGroup`: If a type carries a group structure that distributes
  over a unital binary operation, then the group is commutative.

-/


namespace GRWTSK.Algebra.GroupTheory.IsUnital.Variant8755c7bf29f45559113c44bfd5073ce6a4263e6bed9fe57cebffa13b2dde9806

universe u

namespace EckmannHilton

variable {X : Type u}

/-- Local notation for `m a b`. -/
local notation a " <" m:51 "> " b => m a b

/-- `IsUnital m e` expresses that `e : X` is a left and right unit
for the binary operation `m : X → X → X`. -/
structure IsUnital (m : X → X → X) (e : X) : Prop extends Std.LawfulIdentity m e

@[to_additive EckmannHilton.AddZeroClass.IsUnital]
theorem MulOneClass.isUnital [_G : MulOneClass X] : IsUnital (· * ·) (1 : X) :=
  IsUnital.mk { left_id := MulOneClass.one_mul,
                right_id := MulOneClass.mul_one }

variable {m₁ m₂ : X → X → X} {e₁ e₂ : X}
variable (h₁ : IsUnital m₁ e₁) (h₂ : IsUnital m₂ e₂)
variable (distrib : ∀ a b c d, ((a <m₂> b) <m₁> c <m₂> d) = (a <m₁> c) <m₂> b <m₁> d)

include h₁ h₂ distrib

/-- If a type carries two unital binary operations that distribute over each other,
then they have the same unit elements.

In fact, the two operations are the same, and give a commutative monoid structure,
see `eckmann_hilton.CommMonoid`. -/
theorem one : e₁ = e₂ := by
  simpa only [h₁.left_id, h₁.right_id, h₂.left_id, h₂.right_id] using distrib e₂ e₁ e₁ e₂

/-- If a type carries two unital binary operations that distribute over each other,
then these operations are equal.

In fact, they give a commutative monoid structure, see `eckmann_hilton.CommMonoid`. -/
theorem mul : m₁ = m₂ := by
  funext a b
  calc
    m₁ a b = m₁ (m₂ a e₁) (m₂ e₁ b) := by
      { simp only [one h₁ h₂ distrib, h₁.left_id, h₁.right_id, h₂.left_id, h₂.right_id] }
    _ = m₂ a b := by simp only [distrib, h₁.left_id, h₁.right_id, h₂.left_id, h₂.right_id]

/-- If a type carries two unital binary operations that distribute over each other,
then these operations are commutative.

In fact, they give a commutative monoid structure, see `eckmann_hilton.CommMonoid`. -/
theorem mul_comm : Std.Commutative m₂ :=
  ⟨fun a b => by simpa [mul h₁ h₂ distrib, h₂.left_id, h₂.right_id] using distrib e₂ a b e₂⟩

/-- If a type carries two unital binary operations that distribute over each other,
then these operations are associative.

In fact, they give a commutative monoid structure, see `eckmann_hilton.CommMonoid`. -/
theorem mul_assoc : Std.Associative m₂ :=
  ⟨fun a b c => by simpa [mul h₁ h₂ distrib, h₂.left_id, h₂.right_id] using distrib a b e₂ c⟩

/-- If a type carries a unital magma structure that distributes over a unital binary
operation, then the magma structure is a commutative monoid. -/
@[to_additive
      "If a type carries a unital additive magma structure that distributes over a unital binary
      operation, then the additive magma structure is a commutative additive monoid."]
abbrev commMonoid [h : MulOneClass X]
    (distrib : ∀ a b c d, ((a * b) <m₁> c * d) = (a <m₁> c) * b <m₁> d) : CommMonoid X :=
  { h with
      mul_comm := (mul_comm h₁ MulOneClass.isUnital distrib).comm,
      mul_assoc := (mul_assoc h₁ MulOneClass.isUnital distrib).assoc }

/-- If a type carries a group structure that distributes over a unital binary operation,
then the group is commutative. -/
@[to_additive
      "If a type carries an additive group structure that distributes over a unital binary
      operation, then the additive group is commutative."]
abbrev commGroup [G : Group X]
    (distrib : ∀ a b c d, ((a * b) <m₁> c * d) = (a <m₁> c) * b <m₁> d) : CommGroup X :=
  { EckmannHilton.commMonoid h₁ distrib, G with .. }

end EckmannHilton
```
