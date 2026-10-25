# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lemmas.Variant8a253a7c5ad249f103e47b06a7ba2453a6f3d129ca51117769e34bff8858eabf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f80e104e6b801b369038dd98c61db52c51856d08` · SHA-256 `923380c0e23b823e2f604a92391d0e12b8d41539f219b093d486685c535fc0e9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OneLeDite.Varianta98117956a8a9b634113e018d3e10866671fc71800c496f48749fddddf1eeea2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a98117956a8a9b634113e018d3e10866671fc71800c496f48749fddddf1eeea2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.OneLeDite.Varianta98117956a8a9b634113e018d3e10866671fc71800c496f48749fddddf1eeea2","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"a98117956a8a9b634113e018d3e10866671fc71800c496f48749fddddf1eeea2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Notation/Lemmas.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Yael Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yael Dillies
-/
import Batteries.Tactic.Init
import Mathlib.Tactic.ToAdditive
import Mathlib.Tactic.Lemma
import Mathlib.Tactic.TypeStar
import Mathlib.Util.AssertExists

/-! # Lemmas about inequalities with `1`. -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OneLeDite.Varianta98117956a8a9b634113e018d3e10866671fc71800c496f48749fddddf1eeea2

assert_not_exists Monoid

variable {α : Type*}

section dite
variable [One α] {p : Prop} [Decidable p] {a : p → α} {b : ¬ p → α}

@[to_additive dite_nonneg]
lemma one_le_dite [LE α] (ha : ∀ h, 1 ≤ a h) (hb : ∀ h, 1 ≤ b h) : 1 ≤ dite p a b := by
  split; exacts [ha ‹_›, hb ‹_›]

@[to_additive]
lemma dite_le_one [LE α] (ha : ∀ h, a h ≤ 1) (hb : ∀ h, b h ≤ 1) : dite p a b ≤ 1 := by
  split; exacts [ha ‹_›, hb ‹_›]

@[to_additive dite_pos]
lemma one_lt_dite [LT α] (ha : ∀ h, 1 < a h) (hb : ∀ h, 1 < b h) : 1 < dite p a b := by
  split; exacts [ha ‹_›, hb ‹_›]

@[to_additive]
lemma dite_lt_one [LT α] (ha : ∀ h, a h < 1) (hb : ∀ h, b h < 1) : dite p a b < 1 := by
  split; exacts [ha ‹_›, hb ‹_›]

end dite

section
variable [One α] {p : Prop} [Decidable p] {a b : α}

@[to_additive ite_nonneg]
lemma one_le_ite [LE α] (ha : 1 ≤ a) (hb : 1 ≤ b) : 1 ≤ ite p a b := by split <;> assumption

@[to_additive]
lemma ite_le_one [LE α] (ha : a ≤ 1) (hb : b ≤ 1) : ite p a b ≤ 1 := by split <;> assumption

@[to_additive ite_pos]
lemma one_lt_ite [LT α] (ha : 1 < a) (hb : 1 < b) : 1 < ite p a b := by split <;> assumption

@[to_additive]
lemma ite_lt_one [LT α] (ha : a < 1) (hb : b < 1) : ite p a b < 1 := by split <;> assumption

end
```
