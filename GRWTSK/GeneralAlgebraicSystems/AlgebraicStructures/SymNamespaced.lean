-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.SumSym2FilterNotIsDiag.Variant2cd9ba2933a27806a0afd593a4bfd11842014254001e15aa0cdd0b893f9c0ed1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2cd9ba2933a27806a0afd593a4bfd11842014254001e15aa0cdd0b893f9c0ed1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.SumSym2FilterNotIsDiag.Variant2cd9ba2933a27806a0afd593a4bfd11842014254001e15aa0cdd0b893f9c0ed1","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"2cd9ba2933a27806a0afd593a4bfd11842014254001e15aa0cdd0b893f9c0ed1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/BigOperators/Sym.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.Data.Finset.Sym
import Mathlib.Data.Sym.Sym2.Order
import Mathlib.Algebra.BigOperators.Group.Finset.Basic

/-!
# Lemmas on `Finset.sum` and `Finset.prod` involving `Finset.sym2` or `Finset.sym`.
-/


namespace GRWTSK.Algebra.SumSym2FilterNotIsDiag.Variant2cd9ba2933a27806a0afd593a4bfd11842014254001e15aa0cdd0b893f9c0ed1

namespace Finset

open Multiset

theorem sum_sym2_filter_not_isDiag {ι α} [LinearOrder ι] [AddCommMonoid α]
    (s : Finset ι) (p : Sym2 ι → α) :
    ∑ i ∈ s.sym2 with ¬ i.IsDiag, p i = ∑ i ∈ s.offDiag with i.1 < i.2, p s(i.1, i.2) := by
  rw [Finset.offDiag_filter_lt_eq_filter_le]
  conv_rhs => rw [← Finset.sum_subtype_eq_sum_filter]
  refine (Finset.sum_equiv Sym2.sortEquiv.symm ?_ ?_).symm
  all_goals aesop

theorem sum_count_of_mem_sym {α} [DecidableEq α] {m : ℕ} {k : Sym α m} {s : Finset α}
    (hk : k ∈ s.sym m) : (∑ i ∈ s, count i k) = m := by
  simp_rw [← k.prop, ← toFinset_sum_count_eq, eq_comm]
  refine sum_subset_zero_on_sdiff (fun _ _ ↦ ?_) ?_ (fun _ _ ↦ rfl)
  all_goals aesop

end Finset
