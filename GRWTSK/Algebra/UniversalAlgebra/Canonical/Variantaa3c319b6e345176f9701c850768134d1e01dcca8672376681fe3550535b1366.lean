-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.CanonicallyLinearOrderedSemifield.Variantda4d082e1e9aebc8391b61eddb507a6581970c432c3f3fdf4e82d397a7c8326b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"da4d082e1e9aebc8391b61eddb507a6581970c432c3f3fdf4e82d397a7c8326b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.CanonicallyLinearOrderedSemifield.Variantda4d082e1e9aebc8391b61eddb507a6581970c432c3f3fdf4e82d397a7c8326b","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"da4d082e1e9aebc8391b61eddb507a6581970c432c3f3fdf4e82d397a7c8326b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Order/Field/Canonical.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2014 Robert Y. Lewis. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Robert Y. Lewis, Leonardo de Moura, Mario Carneiro, Floris van Doorn
-/
import Mathlib.Algebra.Order.Field.Defs
import Mathlib.Algebra.Order.GroupWithZero.Canonical
import Mathlib.Algebra.Order.Ring.Canonical

/-!
# Canonically ordered semifields
-/


namespace GRWTSK.Algebra.UniversalAlgebra.CanonicallyLinearOrderedSemifield.Variantda4d082e1e9aebc8391b61eddb507a6581970c432c3f3fdf4e82d397a7c8326b

set_option linter.deprecated false in
/-- A canonically linear ordered field is a linear ordered field in which `a ≤ b` iff there exists
`c` with `b = a + c`. -/
@[deprecated "Use `[LinearOrderedSemifield α] [CanonicallyOrderedAdd α]` instead."
  (since := "2025-01-13")]
structure CanonicallyLinearOrderedSemifield (α : Type*) extends CanonicallyOrderedCommSemiring α,
  LinearOrderedSemifield α

attribute [nolint docBlame] CanonicallyLinearOrderedSemifield.toLinearOrderedSemifield

variable {α : Type*} [Semifield α] [LinearOrder α] [CanonicallyOrderedAdd α]

-- See note [reducible non-instances]
/-- Construct a `LinearOrderedCommGroupWithZero` from a canonically linear ordered semifield. -/
abbrev CanonicallyOrderedAdd.toLinearOrderedCommGroupWithZero :
    LinearOrderedCommGroupWithZero α where
  __ := ‹Semifield α›
  __ := ‹LinearOrder α›
  bot := 0
  bot_le := zero_le
  zero_le_one := zero_le_one
  mul_le_mul_left := fun _ _ h _ ↦ mul_le_mul_of_nonneg_left h <| zero_le _

variable [IsStrictOrderedRing α] [Sub α] [OrderedSub α]

theorem tsub_div (a b c : α) : (a - b) / c = a / c - b / c := by simp_rw [div_eq_mul_inv, tsub_mul]
