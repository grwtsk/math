# Complete source: GRWTSK.NumberTheory.AdditiveNumberTheory.RuzsaCovering.Variante3b4ee5e2c380472578c745200d09e4ab0bce02a451e6456c2526b25f421baf8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1fb91c1ebf95847c328da72a3ea5c1f4a810714c` · SHA-256 `80f52e0a321ed45bd6af39f0fb81f593fd7f84e3ef0f31e44a609a317259a9d0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AdditiveNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AdditiveNumberTheory.RuzsaCoveringMul.Variant70ad5e4513596c64dfe9d9225112357583c851b8fb8c486ad5f8f95383132e36","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"70ad5e4513596c64dfe9d9225112357583c851b8fb8c486ad5f8f95383132e36","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.AdditiveCombinatorics.SourceCorpus.RuzsaCoveringMul.Variant70ad5e4513596c64dfe9d9225112357583c851b8fb8c486ad5f8f95383132e36","mathematical_subject":"Combinatorics.AdditiveCombinatorics","original_sha256":"70ad5e4513596c64dfe9d9225112357583c851b8fb8c486ad5f8f95383132e36","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Combinatorics/Additive/RuzsaCovering.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Algebra.Group.Action.Pointwise.Finset
import Mathlib.Data.Real.Basic
import Mathlib.Order.Preorder.Finite
import Mathlib.SetTheory.Cardinal.Finite
import Mathlib.Tactic.Positivity.Finset

/-!
# Ruzsa's covering lemma

This file proves the Ruzsa covering lemma. This says that, for `A`, `B` finsets, we can cover `A`
with at most `#(A + B) / #B` copies of `B - B`.
-/


namespace GRWTSK.NumberTheory.AdditiveNumberTheory.RuzsaCoveringMul.Variant70ad5e4513596c64dfe9d9225112357583c851b8fb8c486ad5f8f95383132e36

open scoped Pointwise

variable {G : Type*} [Group G] {K : ℝ}

namespace Finset
variable [DecidableEq G] {A B : Finset G}

/-- **Ruzsa's covering lemma**. -/
@[to_additive "**Ruzsa's covering lemma**"]
theorem ruzsa_covering_mul (hB : B.Nonempty) (hK : #(A * B) ≤ K * #B) :
    ∃ F ⊆ A, #F ≤ K ∧ A ⊆ F * (B / B) := by
  haveI : ∀ F, Decidable ((F : Set G).PairwiseDisjoint (· • B)) := fun F ↦ Classical.dec _
  set C := {F ∈ A.powerset | F.toSet.PairwiseDisjoint (· • B)}
  obtain ⟨F, hFmax⟩ := C.exists_maximal <| filter_nonempty_iff.2
    ⟨∅, empty_mem_powerset _, by rw [coe_empty]; exact Set.pairwiseDisjoint_empty⟩
  simp only [C, mem_filter, mem_powerset] at hFmax
  obtain ⟨hFA, hF⟩ := hFmax.1
  refine ⟨F, hFA, le_of_mul_le_mul_right ?_ (by positivity : (0 : ℝ) < #B), fun a ha ↦ ?_⟩
  · calc
      (#F * #B : ℝ) = #(F * B) := by
        rw [card_mul_iff.2 <| pairwiseDisjoint_smul_iff.1 hF, Nat.cast_mul]
      _ ≤ #(A * B) := by gcongr
      _ ≤ K * #B := hK
  by_cases hau : a ∈ F
  · exact subset_mul_left _ hB.one_mem_div hau
  by_cases H : ∀ b ∈ F, Disjoint (a • B) (b • B)
  · refine (hFmax.not_gt ?_ <| ssubset_insert hau).elim
    rw [insert_subset_iff, coe_insert]
    exact ⟨⟨ha, hFA⟩, hF.insert fun _ hb _ ↦ H _ hb⟩
  push_neg at H
  simp_rw [not_disjoint_iff, ← inv_smul_mem_iff] at H
  obtain ⟨b, hb, c, hc₁, hc₂⟩ := H
  exact mem_mul.2 ⟨b, hb, b⁻¹ * a, mem_div.2 ⟨_, hc₂, _, hc₁, by simp⟩, by simp⟩

-- `alias` doesn't add the deprecation suggestion to the `to_additive` version
-- see https://github.com/leanprover-community/mathlib4/issues/19424
@[to_additive]
alias exists_subset_mul_div := ruzsa_covering_mul
attribute [deprecated ruzsa_covering_mul (since := "2024-11-26")] exists_subset_mul_div
attribute [deprecated ruzsa_covering_add (since := "2024-11-26")] exists_subset_add_sub

end Finset

namespace Set
variable {A B : Set G}

/-- **Ruzsa's covering lemma** for sets. See also `Finset.ruzsa_covering_mul`. -/
@[to_additive "**Ruzsa's covering lemma** for sets. See also `Finset.ruzsa_covering_add`."]
lemma ruzsa_covering_mul (hA : A.Finite) (hB : B.Finite) (hB₀ : B.Nonempty)
    (hK : Nat.card (A * B) ≤ K * Nat.card B) :
    ∃ F ⊆ A, Nat.card F ≤ K ∧ A ⊆ F * (B / B) ∧ F.Finite := by
  lift A to Finset G using hA
  lift B to Finset G using hB
  classical
  obtain ⟨F, hFA, hF, hAF⟩ := Finset.ruzsa_covering_mul hB₀ (by simpa [← Finset.coe_mul] using hK)
  exact ⟨F, by norm_cast; simp [*]⟩

-- `alias` doesn't add the deprecation suggestion to the `to_additive` version
-- see https://github.com/leanprover-community/mathlib4/issues/19424
@[to_additive]
alias exists_subset_mul_div := ruzsa_covering_mul
attribute [deprecated ruzsa_covering_mul (since := "2024-11-26")] exists_subset_mul_div
attribute [deprecated ruzsa_covering_add (since := "2024-11-26")] exists_subset_add_sub

end Set
```
