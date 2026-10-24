# Complete source: GRWTSK.Algebra.Lemmas.Variantcae479ae7fba30d406ffbe7441267224090a0fea628643172f288e78822b6445

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9a7e3c1af8bcbbceb8c8c4e2a536df9c8f3fcee4` · SHA-256 `d37d3f05c589b5f585b497f86cde3d4c3af9fa1a5611a91bad451e29b6ad72a8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.RflTrue.Variantabcf6262ed94458197fa600f04616f1f5c18af28cebf8695f2cf05c5130b5b08","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"abcf6262ed94458197fa600f04616f1f5c18af28cebf8695f2cf05c5130b5b08","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.RflTrue.Variantabcf6262ed94458197fa600f04616f1f5c18af28cebf8695f2cf05c5130b5b08","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"abcf6262ed94458197fa600f04616f1f5c18af28cebf8695f2cf05c5130b5b08","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Grind/Lemmas.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Init.Grind.Ring.Basic
public import Init.NotationExtra
public import Init.GetElem
import Init.ByCases
import Init.Classical
import Init.Data.Bool

namespace GRWTSK.Algebra.RflTrue.Variantabcf6262ed94458197fa600f04616f1f5c18af28cebf8695f2cf05c5130b5b08

public section
namespace Lean.Grind

theorem rfl_true : true = true :=
  rfl

def intro_with_eq (p p' : Prop) (q : Sort u) (he : p = p') (h : p' → q) : p → q :=
  fun hp => h (he.mp hp)

def intro_with_eq' (p p' : Prop) (q : p → Sort u) (he : p = p') (h : (h : p') → q (he.mpr_prop h)) : (h : p) → q h :=
  fun hp => h (he.mp hp)

/-! And -/

theorem and_eq_of_eq_true_left {a b : Prop} (h : a = True) : (a ∧ b) = b := by simp [h]
theorem and_eq_of_eq_true_right {a b : Prop} (h : b = True) : (a ∧ b) = a := by simp [h]
theorem and_eq_of_eq_false_left {a b : Prop} (h : a = False) : (a ∧ b) = False := by simp [h]
theorem and_eq_of_eq_false_right {a b : Prop} (h : b = False) : (a ∧ b) = False := by simp [h]

theorem eq_true_of_and_eq_true_left {a b : Prop} (h : (a ∧ b) = True) : a = True := by simp_all
theorem eq_true_of_and_eq_true_right {a b : Prop} (h : (a ∧ b) = True) : b = True := by simp_all

theorem or_of_and_eq_false {a b : Prop} (h : (a ∧ b) = False) : (¬a ∨ ¬b) := by
  by_cases a <;> by_cases b <;> simp_all

/-! Or -/

theorem or_eq_of_eq_true_left {a b : Prop} (h : a = True) : (a ∨ b) = True := by simp [h]
theorem or_eq_of_eq_true_right {a b : Prop} (h : b = True) : (a ∨ b) = True := by simp [h]
theorem or_eq_of_eq_false_left {a b : Prop} (h : a = False) : (a ∨ b) = b := by simp [h]
theorem or_eq_of_eq_false_right {a b : Prop} (h : b = False) : (a ∨ b) = a := by simp [h]

theorem eq_false_of_or_eq_false_left {a b : Prop} (h : (a ∨ b) = False) : a = False := by simp_all
theorem eq_false_of_or_eq_false_right {a b : Prop} (h : (a ∨ b) = False) : b = False := by simp_all

/-! Implies -/

theorem imp_eq_of_eq_false_left {a b : Prop} (h : a = False) : (a → b) = True := by simp [h]
theorem imp_eq_of_eq_true_right {a b : Prop} (h : b = True) : (a → b) = True := by simp [h]
theorem imp_eq_of_eq_true_left {a b : Prop} (h : a = True) : (a → b) = b := by simp [h]
theorem eq_false_of_imp_eq_true {a b : Prop} (h₁ : (a → b) = True) (h₂ : b = False) : a = False := by
  simp at *; intro h; exact h₂ (h₁ h)

theorem eq_true_of_imp_eq_false {a b : Prop} (h : (a → b) = False) : a = True := by simp_all
theorem eq_false_of_imp_eq_false {a b : Prop} (h : (a → b) = False) : b = False := by simp_all

/-! Not -/

theorem not_eq_of_eq_true {a : Prop} (h : a = True) : (Not a) = False := by simp [h]
theorem not_eq_of_eq_false {a : Prop} (h : a = False) : (Not a) = True := by simp [h]

theorem eq_false_of_not_eq_true {a : Prop} (h : (Not a) = True) : a = False := by simp_all
theorem eq_true_of_not_eq_false {a : Prop} (h : (Not a) = False) : a = True := by simp_all

theorem false_of_not_eq_self {a : Prop} (h : (Not a) = a) : False := by
  by_cases a <;> simp_all

/-! Eq -/

theorem eq_eq_of_eq_true_left {a b : Prop} (h : a = True) : (a = b) = b := by simp [h]
theorem eq_eq_of_eq_true_right {a b : Prop} (h : b = True) : (a = b) = a := by simp [h]

theorem eq_congr  {α : Sort u} {a₁ b₁ a₂ b₂ : α} (h₁ : a₁ = a₂) (h₂ : b₁ = b₂) : (a₁ = b₁) = (a₂ = b₂) := by simp [*]
theorem eq_congr' {α : Sort u} {a₁ b₁ a₂ b₂ : α} (h₁ : a₁ = b₂) (h₂ : b₁ = a₂) : (a₁ = b₁) = (a₂ = b₂) := by rw [h₁, h₂, Eq.comm (a := a₂)]

theorem heq_congr  {α : Sort u} {β : Sort u} {a₁ b₁ : α} {a₂ b₂ : β} (h₁ : a₁ ≍ a₂) (h₂ : b₁ ≍ b₂) : (a₁ = b₁) = (a₂ = b₂) := by cases h₁; cases h₂; rfl
theorem heq_congr' {α : Sort u} {β : Sort u} {a₁ b₁ : α} {a₂ b₂ : β} (h₁ : a₁ ≍ b₂) (h₂ : b₁ ≍ a₂) : (a₁ = b₁) = (a₂ = b₂) := by cases h₁; cases h₂; rw [@Eq.comm _ a₁]

/-! Ne -/

theorem ne_of_ne_of_eq_left {α : Sort u} {a b c : α} (h₁ : a = b) (h₂ : b ≠ c) : a ≠ c := by simp [*]
theorem ne_of_ne_of_eq_right {α : Sort u} {a b c : α} (h₁ : a = c) (h₂ : b ≠ c) : b ≠ a := by simp [*]

/-! BEq -/

theorem beq_eq_true_of_eq {α : Type u} {_ : BEq α} {_ : LawfulBEq α} {a b : α} (h : a = b) : (a == b) = true := by
  simp[*]

theorem beq_eq_false_of_diseq {α : Type u} {_ : BEq α} {_ : LawfulBEq α} {a b : α} (h : ¬ a = b) : (a == b) = false := by
  simp[*]

theorem eq_of_beq_eq_true {α : Type u} {_ : BEq α} {_ : LawfulBEq α} {a b : α} (h : (a == b) = true) : a = b := by
  simp [beq_iff_eq.mp h]

theorem ne_of_beq_eq_false {α : Type u} {_ : BEq α} {_ : LawfulBEq α} {a b : α} (h : (a == b) = false) : (a = b) = False := by
  simp [beq_eq_false_iff_ne.mp h]

/-! Bool.and -/

theorem Bool.and_eq_of_eq_true_left {a b : Bool} (h : a = true) : (a && b) = b := by simp [h]
theorem Bool.and_eq_of_eq_true_right {a b : Bool} (h : b = true) : (a && b) = a := by simp [h]
theorem Bool.and_eq_of_eq_false_left {a b : Bool} (h : a = false) : (a && b) = false := by simp [h]
theorem Bool.and_eq_of_eq_false_right {a b : Bool} (h : b = false) : (a && b) = false := by simp [h]

theorem Bool.eq_true_of_and_eq_true_left {a b : Bool} (h : (a && b) = true) : a = true := by simp_all
theorem Bool.eq_true_of_and_eq_true_right {a b : Bool} (h : (a && b) = true) : b = true := by simp_all

/-! Bool.or -/

theorem Bool.or_eq_of_eq_true_left {a b : Bool} (h : a = true) : (a || b) = true := by simp [h]
theorem Bool.or_eq_of_eq_true_right {a b : Bool} (h : b = true) : (a || b) = true := by simp [h]
theorem Bool.or_eq_of_eq_false_left {a b : Bool} (h : a = false) : (a || b) = b := by simp [h]
theorem Bool.or_eq_of_eq_false_right {a b : Bool} (h : b = false) : (a || b) = a := by simp [h]
theorem Bool.eq_false_of_or_eq_false_left {a b : Bool} (h : (a || b) = false) : a = false := by
  cases a <;> simp_all
theorem Bool.eq_false_of_or_eq_false_right {a b : Bool} (h : (a || b) = false) : b = false := by
  cases a <;> simp_all

/-! Bool.not -/

theorem Bool.not_eq_of_eq_true {a : Bool} (h : a = true) : (!a) = false := by simp [h]
theorem Bool.not_eq_of_eq_false {a : Bool} (h : a = false) : (!a) = true := by simp [h]
theorem Bool.eq_false_of_not_eq_true {a : Bool} (h : (!a) = true) : a = false := by simp_all
theorem Bool.eq_true_of_not_eq_false {a : Bool} (h : (!a) = false) : a = true := by simp_all

theorem Bool.eq_false_of_not_eq_true' {a : Bool} (h : ¬ a = true) : a = false := by simp_all
theorem Bool.eq_true_of_not_eq_false' {a : Bool} (h : ¬ a = false) : a = true := by simp_all

theorem Bool.false_of_not_eq_self {a : Bool} (h : (!a) = a) : False := by
  by_cases a <;> simp_all

theorem Bool.ne_of_eq_true_of_eq_false {a b : Bool} (h₁ : a = true) (h₂ : b = false) : (a = b) = False := by
  cases a <;> cases b <;> simp_all
theorem Bool.ne_of_eq_false_of_eq_true {a b : Bool} (h₁ : a = false) (h₂ : b = true) : (a = b) = False := by
  cases a <;> cases b <;> simp_all

/- The following two helper theorems are used to case-split `a = b` representing `iff`. -/
theorem of_eq_eq_true {a b : Prop} (h : (a = b) = True) : (a ∧ b) ∨ (¬ a ∧ ¬ b) := by
  by_cases a <;> by_cases b <;> simp_all
theorem of_eq_eq_false {a b : Prop} (h : (a = b) = False) : (a ∧ ¬b) ∨ (¬ a ∧ b) := by
  by_cases a <;> by_cases b <;> simp_all

/-! Forall -/

theorem forall_propagator (p : Prop) (q : p → Prop) (q' : Prop) (h₁ : p = True) (h₂ : q (of_eq_true h₁) = q') : (∀ hp : p, q hp) = q' := by
  apply propext; apply Iff.intro
  · intro h'; exact Eq.mp h₂ (h' (of_eq_true h₁))
  · intro h'; intros; exact Eq.mpr h₂ h'

theorem of_forall_eq_false (α : Sort u) (p : α → Prop) (h : (∀ x : α, p x) = False) : ∃ x : α, ¬ p x := by simp_all

/-! dite -/

theorem dite_cond_eq_true' {α : Sort u} {c : Prop} {_ : Decidable c} {a : c → α} {b : ¬ c → α} {r : α} (h₁ : c = True) (h₂ : a (of_eq_true h₁) = r) : (dite c a b) = r := by simp [h₁, h₂]
theorem dite_cond_eq_false' {α : Sort u} {c : Prop} {_ : Decidable c} {a : c → α} {b : ¬ c → α} {r : α} (h₁ : c = False) (h₂ : b (of_eq_false h₁) = r) : (dite c a b) = r := by simp [h₁, h₂]

/-! Casts -/

theorem eqRec_heq.{u_1, u_2} {α : Sort u_2} {a : α}
        {motive : (x : α) → a = x → Sort u_1} (v : motive a (Eq.refl a)) {b : α} (h : a = b)
        : @Eq.rec α a motive v b h ≍ v := by
 subst h; rfl

theorem eqRecOn_heq.{u_1, u_2} {α : Sort u_2} {a : α}
        {motive : (x : α) → a = x → Sort u_1} {b : α} (h : a = b) (v : motive a (Eq.refl a))
        : @Eq.recOn α a motive b h v ≍ v := by
 subst h; rfl

theorem eqNDRec_heq.{u_1, u_2} {α : Sort u_2} {a : α}
        {motive : α → Sort u_1} (v : motive a) {b : α} (h : a = b)
        : @Eq.ndrec α a motive v b h ≍ v := by
 subst h; rfl

/-! decide -/

theorem of_decide_eq_true {p : Prop} {_ : Decidable p} : decide p = true → p = True := by simp
theorem of_decide_eq_false {p : Prop} {_ : Decidable p} : decide p = false → p = False := by simp
theorem decide_eq_true {p : Prop} {_ : Decidable p} : p = True → decide p = true := by simp
theorem decide_eq_false {p : Prop} {_ : Decidable p} : p = False → decide p = false := by simp

/-! Lookahead -/

theorem of_lookahead (p : Prop) (h : (¬ p) → False) : p = True := by
  simp at h; simp [h]

/-! Nat propagators -/

theorem Nat.and_congr {a b : Nat} {k₁ k₂ k : Nat} (h₁ : a = k₁) (h₂ : b = k₂) : k == k₁ &&& k₂ → a &&& b = k := by simp_all
theorem Nat.xor_congr {a b : Nat} {k₁ k₂ k : Nat} (h₁ : a = k₁) (h₂ : b = k₂) : k == k₁ ^^^ k₂ → a ^^^ b = k := by simp_all
theorem Nat.or_congr {a b : Nat} {k₁ k₂ k : Nat} (h₁ : a = k₁) (h₂ : b = k₂) : k == k₁ ||| k₂ → a ||| b = k := by simp_all
theorem Nat.shiftLeft_congr {a b : Nat} {k₁ k₂ k : Nat} (h₁ : a = k₁) (h₂ : b = k₂) : k == k₁ <<< k₂ → a <<< b = k := by simp_all
theorem Nat.shiftRight_congr {a b : Nat} {k₁ k₂ k : Nat} (h₁ : a = k₁) (h₂ : b = k₂) : k == k₁ >>> k₂ → a >>> b = k := by simp_all

/-! Literal evaluation propagators -/

theorem eval_congr₁ {α : Sort u} {β : Sort v} {f : α → β} {a a' : α} {b : β}
    (h₁ : a = a') (h₂ : f a' = b) : f a = b := by
  subst h₁; exact h₂

theorem eval_congr₂ {α₁ : Sort u} {α₂ : Sort v} {β : Sort w} {f : α₁ → α₂ → β}
    {a₁ a₁' : α₁} {a₂ a₂' : α₂} {b : β}
    (h₁ : a₁ = a₁') (h₂ : a₂ = a₂') (h₃ : f a₁' a₂' = b) : f a₁ a₂ = b := by
  subst h₁; subst h₂; exact h₃

/-
**Note**: the universe parameter order in the following theorem must match
`GetElem.getElem` since the propagators reuse its level list.
-/
theorem getElem_congr {coll : Type u} {idx : Type v} {elem : Type w} {valid : coll → idx → Prop}
    [GetElem coll idx elem valid] {as bs : coll} {i j : idx} {w₁ : valid as i} {a : elem}
    (h₁ : as = bs) (h₂ : i = j) (h₃ : ∀ w₂ : valid bs j, bs[j]'w₂ = a) : as[i]'w₁ = a := by
  subst h₁; subst h₂; exact h₃ w₁

/-! Semiring propagators -/

theorem Semiring.one_mul_congr {α} [Semiring α] {a b : α} (h : a = 1) : a*b = b := by
  simp [h, Semiring.one_mul]
theorem Semiring.zero_mul_congr {α} [Semiring α] {a b : α} (h : a = 0) : a*b = 0 := by
  simp [h, Semiring.zero_mul]
theorem Semiring.mul_one_congr {α} [Semiring α] {a b : α} (h : b = 1) : a*b = a := by
  simp [h, Semiring.mul_one]
theorem Semiring.mul_zero_congr {α} [Semiring α] {a b : α} (h : b = 0) : a*b = 0 := by
  simp [h, Semiring.mul_zero]

end Lean.Grind
```
