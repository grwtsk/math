# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Congrm.Variant31d0f5fcadf06238e58131db3d8100599939d8689409c60a4e0e96cf4dd1643d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `544b11b5f9a04c25b0a586dcb2793d0fe02e6d37` · SHA-256 `451951d14b8811db13d1a5d5cef5e06e828e3d0ce9333b1f5dedd227cb3368cf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.Foo.Variantb2278d7025ecb2e345700e15ee561f622da13fd5893609d573f4929d0807775c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b2278d7025ecb2e345700e15ee561f622da13fd5893609d573f4929d0807775c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.Foo.Variantb2278d7025ecb2e345700e15ee561f622da13fd5893609d573f4929d0807775c","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"b2278d7025ecb2e345700e15ee561f622da13fd5893609d573f4929d0807775c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/test/congrm.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Nat.Basic
import Mathlib.Data.Fintype.Card
import Mathlib.Tactic.Congrm


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.Foo.Variantb2278d7025ecb2e345700e15ee561f622da13fd5893609d573f4929d0807775c

namespace Tests.Congrm

set_option autoImplicit true

section docs

/-! These are the examples from the tactic documentation -/

example {a b c d : ℕ} :
    Nat.pred a.succ * (d + (c + a.pred)) = Nat.pred b.succ * (b + (c + d.pred)) := by
  congrm Nat.pred (Nat.succ ?h1) * (?h2 + ?h3)
  case h1 =>
    guard_target = a = b
    sorry
  case h2 =>
    guard_target = d = b
    sorry
  case h3 =>
    guard_target = c + a.pred = c + d.pred
    sorry

example {a b : ℕ} (h : a = b) : (fun y : ℕ => ∀ z, a + a = z) = (fun x => ∀ z, b + a = z) := by
  congrm fun x => ∀ w, ?_ + a = w
  guard_hyp x : ℕ
  guard_hyp w : ℕ
  exact h

end docs

example (f : α → Prop) (h : ∀ a, f a ↔ True) : (∀ a : α, f a) ↔ (∀ _ : α, True) := by
  fail_if_success congrm f ?_
  congrm ∀ x, ?_
  guard_hyp x : α
  exact h x

example (f : α → Prop) (h : ∀ a, f a = True) : (∀ a : α, f a) ↔ (∀ _ : α, True) := by
  congrm ∀ x, $(h _)

example (f : α → Prop) (h : ∀ a, f a ↔ True) : (∀ a : α, f a) ↔ (∀ _ : α, True) := by
  congrm ∀ x, $(h _)

example (f : α → α → Prop) (h : ∀ a b, f a b ↔ True) :
    (∀ a b, f a b) ↔ (∀ _ _ : α, True) := by
  congrm ∀ x y, ?_
  exact h x y

example {a b : ℕ} (h : a = b) : (fun y : ℕ => y + a) = (fun x => x + b) := by
  congrm fun x => ?_
  guard_target = x + a = x + b
  rw [h]

example {a b : ℕ} (h : a = b) : (fun y : ℕ => y + a) = (fun x => x + b) := by
  congrm fun (x : ℕ) => x + ?_
  exact h

example (a b : ℕ) (h : a = b) (f : ℕ → ℕ) : f a = f b := by
  congrm f ?_
  exact h

example (a b c d : ℕ) (h : a = b) (h' : c = d) (f : ℕ → ℕ → ℕ) : f a c = f b d := by
  congrm f ?_ ?_ <;> assumption

example (a b : ℕ) (h : a = b) (f : ℕ → ℕ) : f (f a) = f (f b) := by
  congrm f (f ?_)
  exact h

example (a b c : ℕ) (h : b = c) : a = b ↔ a = c := by
  congrm _ = ?_
  exact h

example (a b c : ℕ) (h : b = c) : a = b ↔ a = c := by
  fail_if_success congrm b = ?_
  congrm a = ?_
  exact h

example {b d : ℕ} (h : b = d) : (∀ a, a = b) ↔ (∀ c, c = d) := by
  congrm ∀ a, _ = ?_
  guard_target = b = d
  exact h

example {p q r s : Prop} (pr : p ↔ r) (qs : q ↔ s) : p ∧ q ↔ r ∧ s := by
  congrm ?h1 ∧ ?h2
  case h1 => guard_target = p ↔ r; assumption
  case h2 => guard_target = q ↔ s; assumption

example {f : ℕ → Prop} :
    (∃ k, f (3 + 2 + k) ∨ f (8 + 1 + k)) ↔ ∃ k, f (1 + 4 + k) ∨ f (2 + 7 + k) := by
  congrm (∃ k, f (?_ + k) ∨ f (?_ + k))
  · guard_target =ₛ 3 + 2 = 1 + 4; simp
  · guard_target =ₛ 8 + 1 = 2 + 7; simp

example {a b : ℕ} (h : a = b) : (fun _ : ℕ => ∀ z, a + a = z) = (fun _ => ∀ z, b + a = z) := by
  congrm fun x => ∀ w, ?_ + a = w
  exact h

example (a b c : ℕ) (h : b = c) : a = b ↔ a = c := by
  fail_if_success congrm Eq ?_ ?_ ?_
  congrm _ = ?_
  exact h

example (a b c : ℕ) (h : b = c) : a = b ↔ a = c := by
  congrm _ = $h

example (f : α → Prop) (h : ∀ a, f a ↔ True) : (∀ a : α, f a) ↔ (∀ _ : α, True) := by
  fail_if_success congrm f ?_
  congrm ∀ _, ?_
  exact h _

example (α : Nat → Type) (f : (x : Nat) → α x) (h : i = j) : HEq (f i) (f j) := by
  congrm f ?_
  exact h

def foo (n : Nat) : Nat := 1 + n

@[irreducible] def foo' (n : Nat) : Nat := 1 + n

-- Unfolding
example (n m : Nat) (h : n = m) : foo (2 + n) = foo (2 + m) := by
  congrm 1 + (2 + ?_)
  exact h

-- Fails unfolding irreducible
example (n m : Nat) (h : n = m) : foo' (2 + n) = foo' (2 + m) := by
  fail_if_success congrm 1 + (2 + ?_)
  cases h
  rfl

-- Reflexive relations
example (a b : Nat) (h : a = b) : 1 + a ≤ 1 + b := by
  congrm 1 + ?_
  exact h

-- Subsingleton instances
example [Fintype α] [Fintype β] (h : α = β) : Fintype.card α = Fintype.card β := by
  congrm Fintype.card ?_
  exact h
```
