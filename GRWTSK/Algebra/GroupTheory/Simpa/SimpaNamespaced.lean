-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.Inv.Variantd683d27a70ae2dfb68f9b8a24df20a62c0f13ebb4238a77eef38c5823621c5ba","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d683d27a70ae2dfb68f9b8a24df20a62c0f13ebb4238a77eef38c5823621c5ba","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.Inv.Variantd683d27a70ae2dfb68f9b8a24df20a62c0f13ebb4238a77eef38c5823621c5ba","mathematical_subject":"Algebra.Groups","original_sha256":"d683d27a70ae2dfb68f9b8a24df20a62c0f13ebb4238a77eef38c5823621c5ba","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/BatteriesTest/simpa.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Arthur Paulino. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Arthur Paulino, Gabriel Ebner
-/


namespace GRWTSK.Algebra.GroupTheory.Inv.Variantd683d27a70ae2dfb68f9b8a24df20a62c0f13ebb4238a77eef38c5823621c5ba

set_option linter.missingDocs false

example {P : Prop} (p : P) : P := by simpa

example {P : Prop} (p : False) : P := by simp at p

def foo (n : α) := [n]

section unnecessarySimpa

/--
warning: try 'simp' instead of 'simpa'

Note: This linter can be disabled with `set_option linter.unnecessarySimpa false`
-/
#guard_msgs in
example : foo n = [n] := by
  simpa only [foo]

/--
warning: Try `simp at h` instead of `simpa using h`

Note: This linter can be disabled with `set_option linter.unnecessarySimpa false`
-/
#guard_msgs in
example (h : foo n ≠ [n]) : False := by
  simpa [foo] using! h

end unnecessarySimpa

example (p : Nat → Prop) (h : p (a + b)) : p (b + a) := by
  have : a + b = b + a := Nat.add_comm _ _
  simpa [this] using! h

def Injective (f : α → β) : Prop := ∀ ⦃a₁ a₂⦄, f a₁ = f a₂ → a₁ = a₂

namespace div_left_inj_issue

class Inv (α : Type u) where
  inv : α → α

class Group (α) extends Mul α, Div α, Inv α

variable [Group G]

axiom div_eq_mul_inv (a b : G) : a / b = a * Inv.inv b

axiom mul_left_injective (a : G) : Injective (· * a)

theorem div_left_injective (b : G) : Injective fun a => a / b := by
  simpa only [div_eq_mul_inv] using! fun a a' h => mul_left_injective (Inv.inv b) h

end div_left_inj_issue

namespace Prod

theorem mk.inj_iff {a₁ a₂ : α} {b₁ b₂ : β} : (a₁, b₁) = (a₂, b₂) ↔ a₁ = a₂ ∧ b₁ = b₂ :=
  Iff.of_eq (mk.injEq _ _ _ _)

theorem mk.inj_left {α β : Type _} (a : α) : Injective (Prod.mk a : β → α × β) := by
  intro b₁ b₂ h
  simpa only [true_and, Prod.mk.inj_iff, eq_self] using! h

end Prod

theorem implicit_lambda (h : ∀ {x : Nat}, a = x) : a = 2 := by
  simpa using! h

theorem implicit_lambda2 (h : a = 2) : ∀ {_ : Nat}, a = 2 := by
  simpa using! h

theorem no_implicit_lambda (h : ∀ {x : Nat}, a = x) : ∀ {x : Nat}, a = x := by
  simpa using! @h

#guard_msgs (drop warning) in
theorem thm : (a : Int) ≤ b - c ↔ a + b ≤ c := sorry

#guard_msgs (drop warning) in
theorem thm2 : (b : Int) - c ≤ (a - b) - (a - c) := sorry

example : (b - c : Int) + (a - b) + a ≤ c := by
  simpa only [thm] using! thm2

example : (b - c : Int) + (a - b) + a ≤ c := by
  simpa only [thm] using! @thm2

example (P : Bool) (h : ¬ ¬ P) : P := by
  have : ¬ ¬ P := h
  simpa

/--
info: Try this:
  [apply] simpa only using! h
-/
#guard_msgs in
example (p : Prop) (h : p) : p := by simpa? using! h

/--
info: Try this:
  [apply] simpa only [and_true] using! h
-/
#guard_msgs in
example (p : Prop) (h : p ∧ True) : p := by simpa? using! h
