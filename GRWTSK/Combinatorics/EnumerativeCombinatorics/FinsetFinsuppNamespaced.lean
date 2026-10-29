-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.Finsupp.Variant341d5348edbc5103263a90c4b1eec7c6056d6a9facf41f2c38bc5e83ffe306ca","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"341d5348edbc5103263a90c4b1eec7c6056d6a9facf41f2c38bc5e83ffe306ca","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.Finsupp.Variant341d5348edbc5103263a90c4b1eec7c6056d6a9facf41f2c38bc5e83ffe306ca","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"341d5348edbc5103263a90c4b1eec7c6056d6a9facf41f2c38bc5e83ffe306ca","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Finset/Finsupp.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Algebra.BigOperators.Finsupp.Basic
import Mathlib.Data.Finsupp.Indicator
import Mathlib.Data.Fintype.BigOperators
import Mathlib.Algebra.Group.Pointwise.Finset.Basic

/-!
# Finitely supported product of finsets

This file defines the finitely supported product of finsets as a `Finset (ι →₀ α)`.

## Main declarations

* `Finset.finsupp`: Finitely supported product of finsets. `s.finset t` is the product of the `t i`
  over all `i ∈ s`.
* `Finsupp.pi`: `f.pi` is the finset of `Finsupp`s whose `i`-th value lies in `f i`. This is the
  special case of `Finset.finsupp` where we take the product of the `f i` over the support of `f`.

## Implementation notes

We make heavy use of the fact that `0 : Finset α` is `{0}`. This scalar actions convention turns out
to be precisely what we want here too.
-/



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.Finsupp.Variant341d5348edbc5103263a90c4b1eec7c6056d6a9facf41f2c38bc5e83ffe306ca

noncomputable section

open Finsupp

open Pointwise

variable {ι α : Type*} [Zero α] {s : Finset ι} {f : ι →₀ α}

namespace Finset

open scoped Classical in
/-- Finitely supported product of finsets. -/
protected def finsupp (s : Finset ι) (t : ι → Finset α) : Finset (ι →₀ α) :=
  (s.pi t).map ⟨indicator s, indicator_injective s⟩

theorem mem_finsupp_iff {t : ι → Finset α} :
    f ∈ s.finsupp t ↔ f.support ⊆ s ∧ ∀ i ∈ s, f i ∈ t i := by
  classical
  refine mem_map.trans ⟨?_, ?_⟩
  · rintro ⟨f, hf, rfl⟩
    refine ⟨support_indicator_subset _ _, fun i hi => ?_⟩
    convert mem_pi.1 hf i hi
    exact indicator_of_mem hi _
  · refine fun h => ⟨fun i _ => f i, mem_pi.2 h.2, ?_⟩
    ext i
    exact ite_eq_left_iff.2 fun hi => (notMem_support_iff.1 fun H => hi <| h.1 H).symm

/-- When `t` is supported on `s`, `f ∈ s.finsupp t` precisely means that `f` is pointwise in `t`. -/
@[simp]
theorem mem_finsupp_iff_of_support_subset {t : ι →₀ Finset α} (ht : t.support ⊆ s) :
    f ∈ s.finsupp t ↔ ∀ i, f i ∈ t i := by
  refine
    mem_finsupp_iff.trans
      (forall_and.symm.trans <|
        forall_congr' fun i =>
          ⟨fun h => ?_, fun h =>
            ⟨fun hi => ht <| mem_support_iff.2 fun H => mem_support_iff.1 hi ?_, fun _ => h⟩⟩)
  · by_cases hi : i ∈ s
    · exact h.2 hi
    · rw [notMem_support_iff.1 (mt h.1 hi), notMem_support_iff.1 fun H => hi <| ht H]
      exact zero_mem_zero
  · rwa [H, mem_zero] at h

@[simp]
theorem card_finsupp (s : Finset ι) (t : ι → Finset α) : #(s.finsupp t) = ∏ i ∈ s, #(t i) := by
  classical exact (card_map _).trans <| card_pi _ _

end Finset

open Finset

namespace Finsupp

/-- Given a finitely supported function `f : ι →₀ Finset α`, one can define the finset
`f.pi` of all finitely supported functions whose value at `i` is in `f i` for all `i`. -/
def pi (f : ι →₀ Finset α) : Finset (ι →₀ α) :=
  f.support.finsupp f

@[simp]
theorem mem_pi {f : ι →₀ Finset α} {g : ι →₀ α} : g ∈ f.pi ↔ ∀ i, g i ∈ f i :=
  mem_finsupp_iff_of_support_subset <| Subset.refl _

@[simp]
theorem card_pi (f : ι →₀ Finset α) : #f.pi = f.prod fun i ↦ #(f i) := by
  rw [pi, card_finsupp]
  exact Finset.prod_congr rfl fun i _ => by simp only [Pi.natCast_apply, Nat.cast_id]

end Finsupp
