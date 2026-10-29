-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.Imo1977Q6Nat.Variant94c6dbff095c5b0ea17a400531c9b99fff0ce8cd73a2b3d9f57ad54dc495f576","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"94c6dbff095c5b0ea17a400531c9b99fff0ce8cd73a2b3d9f57ad54dc495f576","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Imo1977Q6Nat.Variant94c6dbff095c5b0ea17a400531c9b99fff0ce8cd73a2b3d9f57ad54dc495f576","mathematical_subject":"Foundations.Unclassified","original_sha256":"94c6dbff095c5b0ea17a400531c9b99fff0ce8cd73a2b3d9f57ad54dc495f576","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Archive/Imo/Imo1977Q6.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Tian Chen. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Tian Chen
-/
import Mathlib.Data.PNat.Basic

/-!
# IMO 1977 Q6

Suppose `f : ℕ+ → ℕ+` satisfies `f(f(n)) < f(n + 1)` for all `n`.
Prove that `f(n) = n` for all `n`.

We first prove the problem statement for `f : ℕ → ℕ`
then we use it to prove the statement for positive naturals.
-/



namespace GRWTSK.FoundationsLogicAndTypeTheory.Imo1977Q6Nat.Variant94c6dbff095c5b0ea17a400531c9b99fff0ce8cd73a2b3d9f57ad54dc495f576

namespace Imo1977Q6

theorem imo1977_q6_nat (f : ℕ → ℕ) (h : ∀ n, f (f n) < f (n + 1)) : ∀ n, f n = n := by
  have h' : ∀ k n : ℕ, k ≤ n → k ≤ f n := by
    intro k
    induction' k with k h_ind
    · intros; exact Nat.zero_le _
    · intro n hk
      apply Nat.succ_le_of_lt
      calc
        k ≤ f (f (n - 1)) := h_ind _ (h_ind (n - 1) (le_tsub_of_add_le_right hk))
        _ < f n := tsub_add_cancel_of_le (le_trans (Nat.succ_le_succ (Nat.zero_le _)) hk) ▸ h _
  have hf : ∀ n, n ≤ f n := fun n => h' n n rfl.le
  have hf_mono : StrictMono f := strictMono_nat_of_lt_succ fun _ => lt_of_le_of_lt (hf _) (h _)
  intro
  exact Nat.eq_of_le_of_lt_succ (hf _) (hf_mono.lt_iff_lt.mp (h _))

end Imo1977Q6

open Imo1977Q6

theorem imo1977_q6 (f : ℕ+ → ℕ+) (h : ∀ n, f (f n) < f (n + 1)) : ∀ n, f n = n := by
  intro n
  have := by
    refine imo1977_q6_nat (fun m => if 0 < m then f m.toPNat' else 0) ?_ n
    intro x; cases x
    · simp
    · simpa using h _
  simpa
