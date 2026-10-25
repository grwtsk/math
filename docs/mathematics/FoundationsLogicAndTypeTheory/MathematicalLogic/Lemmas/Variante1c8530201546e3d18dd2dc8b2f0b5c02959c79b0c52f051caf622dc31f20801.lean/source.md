# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Lemmas.Variante1c8530201546e3d18dd2dc8b2f0b5c02959c79b0c52f051caf622dc31f20801

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f5ac9b54218f1ec7de32862bd3d92c3f10233b47` · SHA-256 `2632aa4464c8fe3bb15cb8db9bf80ea8e9c27b5afd8993e5a114a20eb0131eba`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.IffAssoc.Variant0780dbfa0debf0a19c9a274bb89ffb2a96ea60b8aba7784c4cec219bf96d8b3b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0780dbfa0debf0a19c9a274bb89ffb2a96ea60b8aba7784c4cec219bf96d8b3b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.IffAssoc.Variant0780dbfa0debf0a19c9a274bb89ffb2a96ea60b8aba7784c4cec219bf96d8b3b","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"0780dbfa0debf0a19c9a274bb89ffb2a96ea60b8aba7784c4cec219bf96d8b3b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Logic/Lemmas.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Logic.Basic
import Mathlib.Tactic.Convert
import Mathlib.Tactic.SplitIfs
import Mathlib.Tactic.Tauto

/-!
# More basic logic properties
A few more logic lemmas. These are in their own file, rather than `Logic.Basic`, because it is
convenient to be able to use the `tauto` or `split_ifs` tactics.

## Implementation notes
We spell those lemmas out with `dite` and `ite` rather than the `if then else` notation because this
would result in less delta-reduced statements.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.IffAssoc.Variant0780dbfa0debf0a19c9a274bb89ffb2a96ea60b8aba7784c4cec219bf96d8b3b

theorem iff_assoc {a b c : Prop} : ((a ↔ b) ↔ c) ↔ (a ↔ (b ↔ c)) := by tauto
theorem iff_left_comm {a b c : Prop} : (a ↔ (b ↔ c)) ↔ (b ↔ (a ↔ c)) := by tauto
theorem iff_right_comm {a b c : Prop} : ((a ↔ b) ↔ c) ↔ ((a ↔ c) ↔ b) := by tauto

protected alias ⟨HEq.eq, Eq.heq⟩ := heq_iff_eq

variable {α : Sort*} {p q : Prop} [Decidable p] [Decidable q] {a b c : α}

theorem dite_dite_distrib_left {a : p → α} {b : ¬p → q → α} {c : ¬p → ¬q → α} :
    (dite p a fun hp ↦ dite q (b hp) (c hp)) =
      dite q (fun hq ↦ (dite p a) fun hp ↦ b hp hq) fun hq ↦ (dite p a) fun hp ↦ c hp hq := by
  split_ifs <;> rfl

theorem dite_dite_distrib_right {a : p → q → α} {b : p → ¬q → α} {c : ¬p → α} :
    dite p (fun hp ↦ dite q (a hp) (b hp)) c =
      dite q (fun hq ↦ dite p (fun hp ↦ a hp hq) c) fun hq ↦ dite p (fun hp ↦ b hp hq) c := by
  split_ifs <;> rfl

theorem ite_dite_distrib_left {a : α} {b : q → α} {c : ¬q → α} :
    ite p a (dite q b c) = dite q (fun hq ↦ ite p a <| b hq) fun hq ↦ ite p a <| c hq :=
  dite_dite_distrib_left

theorem ite_dite_distrib_right {a : q → α} {b : ¬q → α} {c : α} :
    ite p (dite q a b) c = dite q (fun hq ↦ ite p (a hq) c) fun hq ↦ ite p (b hq) c :=
  dite_dite_distrib_right

theorem dite_ite_distrib_left {a : p → α} {b : ¬p → α} {c : ¬p → α} :
    (dite p a fun hp ↦ ite q (b hp) (c hp)) = ite q (dite p a b) (dite p a c) :=
  dite_dite_distrib_left

theorem dite_ite_distrib_right {a : p → α} {b : p → α} {c : ¬p → α} :
    dite p (fun hp ↦ ite q (a hp) (b hp)) c = ite q (dite p a c) (dite p b c) :=
  dite_dite_distrib_right

theorem ite_ite_distrib_left : ite p a (ite q b c) = ite q (ite p a b) (ite p a c) :=
  dite_dite_distrib_left

theorem ite_ite_distrib_right : ite p (ite q a b) c = ite q (ite p a c) (ite p b c) :=
  dite_dite_distrib_right

lemma Prop.forall {f : Prop → Prop} : (∀ p, f p) ↔ f True ∧ f False :=
  ⟨fun h ↦ ⟨h _, h _⟩, by rintro ⟨h₁, h₀⟩ p; by_cases hp : p <;> simp only [hp] <;> assumption⟩

lemma Prop.exists {f : Prop → Prop} : (∃ p, f p) ↔ f True ∨ f False :=
  ⟨fun ⟨p, h⟩ ↦ by refine (em p).imp ?_ ?_ <;> intro H <;> convert h <;> simp [H],
    by rintro (h | h) <;> exact ⟨_, h⟩⟩
```
