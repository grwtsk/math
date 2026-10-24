# Complete source: GRWTSK.Algebra.Module.Variantc774fa4c47f6db1afadfd7dd2b896644402a4f11cb6ebb1c1b77185ea9f9d47e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f3671d93d8f8979588c7287a9aeef3d020137b70` · SHA-256 `2efbf798fc8128d04658e082dd7ccee64fc0c252cb411745af5322f597f792ad`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.SumIcoByParts.Variant007d70e511e7364edc9a74e791d106155f0ec7379b5d12a69beeec869e59d39e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"007d70e511e7364edc9a74e791d106155f0ec7379b5d12a69beeec869e59d39e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.SumIcoByParts.Variant007d70e511e7364edc9a74e791d106155f0ec7379b5d12a69beeec869e59d39e","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"007d70e511e7364edc9a74e791d106155f0ec7379b5d12a69beeec869e59d39e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/BigOperators/Module.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Dylan MacKenzie. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dylan MacKenzie
-/
module

public import Mathlib.Algebra.BigOperators.Intervals
public import Mathlib.Algebra.Module.Defs
public import Mathlib.Tactic.Abel

/-!
# Summation by parts
-/


namespace GRWTSK.Algebra.SumIcoByParts.Variant007d70e511e7364edc9a74e791d106155f0ec7379b5d12a69beeec869e59d39e

public section

namespace Finset
variable {R M : Type*} [Ring R] [AddCommGroup M] [Module R M] (f : ℕ → R) (g : ℕ → M) {m n : ℕ}

-- The partial sum of `g`, starting from zero
local notation "G " n:80 => ∑ i ∈ range n, g i

/-- **Summation by parts**, also known as **Abel's lemma** or an **Abel transformation** -/
theorem sum_Ico_by_parts (hmn : m < n) :
    ∑ i ∈ Ico m n, f i • g i =
      f (n - 1) • G n - f m • G m - ∑ i ∈ Ico m (n - 1), (f (i + 1) - f i) • G (i + 1) := by
  have h₁ : (∑ i ∈ Ico (m + 1) n, f i • G i) = ∑ i ∈ Ico m (n - 1), f (i + 1) • G (i + 1) := by
    rw [← Nat.sub_add_cancel (Nat.one_le_of_lt hmn), ← sum_Ico_add']
    simp only [add_tsub_cancel_right]
  have h₂ :
    (∑ i ∈ Ico (m + 1) n, f i • G (i + 1)) =
      (∑ i ∈ Ico m (n - 1), f i • G (i + 1)) + f (n - 1) • G n - f m • G (m + 1) := by
    rw [← sum_Ico_sub_bot _ hmn, ← sum_Ico_succ_sub_top _ (Nat.le_sub_one_of_lt hmn),
      Nat.sub_add_cancel (pos_of_gt hmn), sub_add_cancel]
  rw [sum_eq_sum_Ico_succ_bot hmn]
  conv in (occs := 3) (f _ • g _) => rw [← sum_range_succ_sub_sum g]
  simp_rw [smul_sub, sum_sub_distrib, h₂, h₁]
  conv_lhs => congr; rfl; rw [← add_sub, add_comm, ← add_sub, ← sum_sub_distrib]
  have : ∀ i, f i • G (i + 1) - f (i + 1) • G (i + 1) = -((f (i + 1) - f i) • G (i + 1)) := by
    intro i
    rw [sub_smul]
    abel
  simp_rw [this, sum_neg_distrib, sum_range_succ, smul_add]
  abel

theorem sum_Ioc_by_parts (hmn : m < n) :
    ∑ i ∈ Ioc m n, f i • g i =
      f n • G (n + 1) - f (m + 1) • G (m + 1)
        - ∑ i ∈ Ioc m (n - 1), (f (i + 1) - f i) • G (i + 1) := by
  simpa only [← Ico_add_one_add_one_eq_Ioc, Nat.sub_add_cancel (Nat.one_le_of_lt hmn),
    add_tsub_cancel_right] using! sum_Ico_by_parts f g (Nat.succ_lt_succ hmn)

variable (n)

/-- **Summation by parts** for ranges -/
theorem sum_range_by_parts :
    ∑ i ∈ range n, f i • g i =
      f (n - 1) • G n - ∑ i ∈ range (n - 1), (f (i + 1) - f i) • G (i + 1) := by
  by_cases hn : n = 0
  · simp [hn]
  · simp only [range_eq_Ico]
    rw [sum_Ico_by_parts f g (Nat.pos_of_ne_zero hn), sum_range_zero, smul_zero, sub_zero]
    simp only [← range_eq_Ico]

/-- **Summation by parts** for ranges, differencing the second (module) factor instead of the
first: the mirror image of `sum_range_by_parts`. -/
theorem sum_range_by_parts' :
    ∑ i ∈ range n, f i • g i =
      (∑ i ∈ range n, f i) • g (n - 1) -
        ∑ i ∈ range (n - 1), (∑ j ∈ range (i + 1), f j) • (g (i + 1) - g i) := by
  cases n with
  | zero => simp
  | succ n =>
    simp only [Nat.add_sub_cancel]
    induction n with
    | zero => simp
    | succ n ih =>
      rw [sum_range_succ (f := fun i ↦ f i • g i), ih]
      simp only [sum_range_succ, smul_sub, add_smul]
      abel

end Finset
```
