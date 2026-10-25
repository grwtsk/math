# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Simpa.Variant31cc68b932ca19256b144e53e1e5451e64cc8c878eeb169d6a32c2721d7e614b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `013928098e7789aa27ac235b2465b7ccdaedab61` · SHA-256 `73b3bd9fb7bce6a0bd5058a0960ee494ac9bf25c007fadd6f68f78bef0c9e75a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Inv.Variantacdd18cd30508697e70e453b24a16e2bb5e01ee0d094d500b7827bab42a63ab6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"acdd18cd30508697e70e453b24a16e2bb5e01ee0d094d500b7827bab42a63ab6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Inv.Variantacdd18cd30508697e70e453b24a16e2bb5e01ee0d094d500b7827bab42a63ab6","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"acdd18cd30508697e70e453b24a16e2bb5e01ee0d094d500b7827bab42a63ab6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/test/simpa.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Arthur Paulino. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Arthur Paulino, Gabriel Ebner
-/
import Std.Tactic.Simpa
import Std.Tactic.ShowTerm
import Std.Tactic.GuardMsgs


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Inv.Variantacdd18cd30508697e70e453b24a16e2bb5e01ee0d094d500b7827bab42a63ab6

set_option linter.missingDocs false

example {P : Prop} (p : P) : P := by simpa

example {P : Prop} (p : False) : P := by simp at p

def foo (n : α) := [n]

section unnecessarySimpa

-- TODO: check that these lint in the test harness
example : foo n = [n] := by
  simpa only [foo]

example (h : foo n ≠ [n]) : False := by
  simpa [foo] using h

end unnecessarySimpa

example (p : Nat → Prop) (h : p (a + b)) : p (b + a) := by
  have : a + b = b + a := Nat.add_comm _ _
  simpa [this] using h

def Injective (f : α → β) : Prop := ∀ ⦃a₁ a₂⦄, f a₁ = f a₂ → a₁ = a₂

namespace div_left_inj_issue

class Inv (α : Type u) where
  inv : α → α

class Group (α) extends Mul α, Div α, Inv α

variable [Group G]

axiom div_eq_mul_inv (a b : G) : a / b = a * Inv.inv b

axiom mul_left_injective (a : G) : Injective (· * a)

theorem div_left_injective (b : G) : Injective fun a => a / b := by
  simpa only [div_eq_mul_inv] using fun a a' h => mul_left_injective (Inv.inv b) h

end div_left_inj_issue

namespace Prod

theorem mk.inj_iff {a₁ a₂ : α} {b₁ b₂ : β} : (a₁, b₁) = (a₂, b₂) ↔ a₁ = a₂ ∧ b₁ = b₂ :=
  Iff.of_eq (mk.injEq _ _ _ _)

theorem mk.inj_left {α β : Type _} (a : α) : Injective (Prod.mk a : β → α × β) := by
  intro b₁ b₂ h
  simpa only [true_and, Prod.mk.inj_iff, eq_self] using h

end Prod

theorem implicit_lambda (h : ∀ {x : Nat}, a = x) : a = 2 := by
  simpa using h

theorem implicit_lambda2 (h : a = 2) : ∀ {x : Nat}, a = 2 := by
  simpa using h

theorem no_implicit_lambda (h : ∀ {x : Nat}, a = x) : ∀ {x : Nat}, a = x := by
  simpa using @h

theorem thm : (a : Int) ≤ b - c ↔ a + b ≤ c := sorry

theorem thm2 : (b : Int) - c ≤ (a - b) - (a - c) := sorry

example : (b - c : Int) + (a - b) + a ≤ c := by
  simpa only [thm] using thm2

example : (b - c : Int) + (a - b) + a ≤ c := by
  simpa only [thm] using @thm2

example (P : Bool) (h : ¬ ¬ P) : P := by
  have : ¬ ¬ P := h
  simpa

/-- info: Try this: simpa only using h -/
#guard_msgs in
example (p : Prop) (h : p) : p := by simpa? using h

/-- info: Try this: simpa only [and_true] using h -/
#guard_msgs in
example (p : Prop) (h : p ∧ True) : p := by simpa? using h
```
