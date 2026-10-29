-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.FrequentlyModEq.Variant41794c6e630d801fd241b4e86d91cc8baac5d091a6e197e670dd9acec332473a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"41794c6e630d801fd241b4e86d91cc8baac5d091a6e197e670dd9acec332473a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.FrequentlyModEq.Variant41794c6e630d801fd241b4e86d91cc8baac5d091a6e197e670dd9acec332473a","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"41794c6e630d801fd241b4e86d91cc8baac5d091a6e197e670dd9acec332473a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Order/Filter/AtTopBot/ModEq.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Algebra.Order.Group.Nat
import Mathlib.Algebra.Order.GroupWithZero.Canonical
import Mathlib.Algebra.Order.Ring.Basic
import Mathlib.Algebra.Ring.Divisibility.Basic
import Mathlib.Algebra.Ring.Int.Defs
import Mathlib.Data.Nat.ModEq
import Mathlib.Order.Filter.AtTopBot.Basic
import Mathlib.Order.Filter.AtTopBot.Monoid

/-!
# Numbers are frequently ModEq to fixed numbers

In this file we prove that `m ≡ d [MOD n]` frequently as `m → ∞`.
-/



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.FrequentlyModEq.Variant41794c6e630d801fd241b4e86d91cc8baac5d091a6e197e670dd9acec332473a

open Filter

namespace Nat

/-- Infinitely many natural numbers are equal to `d` mod `n`. -/
theorem frequently_modEq {n : ℕ} (h : n ≠ 0) (d : ℕ) : ∃ᶠ m in atTop, m ≡ d [MOD n] :=
  ((tendsto_add_atTop_nat d).comp (tendsto_id.nsmul_atTop h.bot_lt)).frequently <|
    Frequently.of_forall fun m => by simp [Nat.modEq_iff_dvd, ← sub_sub]

theorem frequently_mod_eq {d n : ℕ} (h : d < n) : ∃ᶠ m in atTop, m % n = d := by
  simpa only [Nat.ModEq, mod_eq_of_lt h] using frequently_modEq h.ne_bot d

theorem frequently_even : ∃ᶠ m : ℕ in atTop, Even m := by
  simpa only [even_iff] using frequently_mod_eq zero_lt_two

theorem frequently_odd : ∃ᶠ m : ℕ in atTop, Odd m := by
  simpa only [odd_iff] using frequently_mod_eq one_lt_two

end Nat

theorem Filter.nonneg_of_eventually_pow_nonneg {α : Type*}
    [Ring α] [LinearOrder α] [IsStrictOrderedRing α] {a : α}
    (h : ∀ᶠ n in atTop, 0 ≤ a ^ (n : ℕ)) : 0 ≤ a :=
  let ⟨_n, ho, hn⟩ := (Nat.frequently_odd.and_eventually h).exists
  ho.pow_nonneg_iff.1 hn
