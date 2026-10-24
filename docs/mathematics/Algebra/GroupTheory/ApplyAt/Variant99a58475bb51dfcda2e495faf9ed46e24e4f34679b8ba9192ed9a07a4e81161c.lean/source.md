# Complete source: GRWTSK.Algebra.GroupTheory.ApplyAt.Variant99a58475bb51dfcda2e495faf9ed46e24e4f34679b8ba9192ed9a07a4e81161c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `918d847077e66911b1ef0265d9861c55fd74fced` · SHA-256 `24221192bc8b83f96ab6103ce93dfd5429857f5fd4dd9fba0ef929271486667b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.Group.Variant9f98126ee6fa1e7551f7295e84ef39f1f12c800e02dc3fba719562fb964df1b8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9f98126ee6fa1e7551f7295e84ef39f1f12c800e02dc3fba719562fb964df1b8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.Group.Variant9f98126ee6fa1e7551f7295e84ef39f1f12c800e02dc3fba719562fb964df1b8","mathematical_subject":"Algebra.Groups","original_sha256":"9f98126ee6fa1e7551f7295e84ef39f1f12c800e02dc3fba719562fb964df1b8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/MathlibTest/Tactic/ApplyAt.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Algebra.Group.Basic
import Mathlib.Basic.Real.Basic
import Mathlib.Tactic.ApplyAt


namespace GRWTSK.Algebra.GroupTheory.Group.Variant9f98126ee6fa1e7551f7295e84ef39f1f12c800e02dc3fba719562fb964df1b8

example {α β : Type*} (f : α → β) (a : α) : β := by
  apply f at a
  guard_hyp a :ₛ β
  exact a

/-- `apply at` cannot clear mvarid if still used. -/
example {α : Type} (γ : α → Type) (a : α) (f : α → γ a) : γ a := by
  apply f at a
  rename_i a₂
  guard_hyp a :ₛ γ a₂
  exact a

example {α β : Type*} (f : α → β) (a b : α) (h : a = b) : f a = f b := by
  apply congr_arg f at h
  guard_hyp h :ₛ f a = f b
  exact h

example (a b : ℕ) (h : a + 1 = b + 1) : a = b := by
  apply Nat.succ.inj at h
  guard_hyp h :ₛ a = b
  exact h

example {G : Type*} [Group G] (a b c : G) (h : a * c = b * c) : a = b := by
  apply mul_right_cancel at h
  guard_hyp h :ₛ a = b
  exact h

example {G : Type*} [Monoid G] (a b c : G) (h : a * c = b * c)
    (hh : ∀ x y z : G, x * z = y * z → x = y): a = b := by
  apply mul_right_cancel at h
  guard_hyp h :ₛ a = b
  · exact h
  · guard_target = IsRightCancelMul G
    constructor
    intro a b c
    apply hh

example {α β γ δ : Type*} (f : α → β → γ → δ) (a : α) (b : β) (g : γ) : δ := by
  apply f at g
  guard_hyp g :ₛ δ
  assumption'

example {α γ : Type*} {β : α → Type*} {a : α}
    (f : {a : α} → β a → γ) (b : β a) : γ := by
  apply f at b
  guard_hyp b :ₛ γ
  exact b

example {α β γ δ : Type*} (f : {_ : α} → β → {_ : γ} → δ) (g : γ) (a : α) (b : β) :
    δ := by
  apply f at g
  guard_hyp g :ₛ δ
  assumption'

example {α β γ δ : Type*} (f : {_ : α} → {_ : β} → (g : γ) → δ) (g : γ) (a : α) (b : β) :
    δ := by
  apply f at g
  guard_hyp g :ₛ δ
  assumption'

/--
error: Failed to find γ as the type of a parameter of α → β.
-/
#guard_msgs in
example {α β γ : Type*} (f : α → β) (_g : γ) : β × γ  := by
  apply f at _g

/--
error: Failed: α is not the type of a function.
-/
#guard_msgs in
example {α β : Type*} (a : α) (_b : β) : α × β := by
  apply a at _b

example {α β γ : Type*} (f : α → β) (g : γ) (a : α) : β × γ  := by
  fail_if_success apply f at g
  apply f at a
  guard_hyp a :ₛ β
  exact (a, g)

example {α β : Type*} (a : α) (b : β) : α × β := by
  fail_if_success apply a at b
  exact (a, b)

example {α β : Type*} (a : α) (b : β) : α × β := by
  fail_if_success apply a at b
  exact (a, b)

-- testing field notation
example {A B : Prop} (h : A ↔ B) : A → B := by
  intro hA
  apply h.mp at hA
  assumption

example (a : ℝ) (h3 : a + 1 = 0) : a = -1 := by
  apply (congrArg (fun x => x - 1)) at h3
  simp at h3
  assumption

example (a b : ℝ) (h : -a * b = 0) : a = 0 ∨ b = 0 := by
  apply (congrArg (fun x => x / 1)) at h
  simp at h
  assumption

/-- `apply H at h` when type of `H h` depends on proof of `h` (https://github.com/leanprover-community/mathlib4/issues/20623) -/
example (h : True) : True := by
  have H (h : True) : h = h := rfl
  apply H at h
  simp at h
  exact h

/-- `apply H at h` when type of `H h` depends on proof of `h` (https://github.com/leanprover-community/mathlib4/issues/20623) -/
example (a : List Nat) (k : Nat) (hk : k < a.length) : True := by
  have H (k : Nat) {xs ys : List Nat} (hk: k < xs.length)
    (h : xs = ys) : xs[k] = ys[k]'(h ▸ hk) := h ▸ rfl
  have h : a = a.map id := by simp
  apply H k hk at h
  simp at h
  exact h
```
