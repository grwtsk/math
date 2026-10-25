# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lemmas.Variantbd26f6a4cb17112427b161624ec79bada25e58220832829a9030368660d31af6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `30cfc622e1d7a39aeb2b22a0dab3cd3c664181f1` · SHA-256 `46a2af7189d7dd18abb808d648728fe6f4e5600f03053a4dacd1242e5a31b596`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IffAssoc.Variant6a4a0910a3ec4fd068dadea602780d776688452676ae8572d1eff7544e7be22e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6a4a0910a3ec4fd068dadea602780d776688452676ae8572d1eff7544e7be22e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.IffAssoc.Variant6a4a0910a3ec4fd068dadea602780d776688452676ae8572d1eff7544e7be22e","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"6a4a0910a3ec4fd068dadea602780d776688452676ae8572d1eff7544e7be22e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Basic/Logic/Lemmas.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
module

public import Mathlib.Basic.Logic.Basic
public import Mathlib.Tactic.Convert
public import Mathlib.Tactic.SplitIfs
public import Mathlib.Tactic.Tauto

/-!
# More basic logic properties

A few more logic lemmas. These are in their own file, rather than `Mathlib/Basic/Logic/Basic.lean`,
because it is convenient to be able to use the `tauto` or `split_ifs` tactics.

## Implementation notes

We spell these lemmas out with `dite` and `ite` rather than the `if then else` notation because this
would result in less delta-reduced statements.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IffAssoc.Variant6a4a0910a3ec4fd068dadea602780d776688452676ae8572d1eff7544e7be22e

public section

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
  ⟨fun ⟨p, h⟩ ↦ by refine (em p).imp ?_ ?_ <;> intro H <;> convert! h <;> simp [H],
    by rintro (h | h) <;> exact ⟨_, h⟩⟩
```
