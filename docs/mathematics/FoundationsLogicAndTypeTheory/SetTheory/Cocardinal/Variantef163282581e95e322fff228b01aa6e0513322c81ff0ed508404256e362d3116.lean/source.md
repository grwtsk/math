# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Cocardinal.Variantef163282581e95e322fff228b01aa6e0513322c81ff0ed508404256e362d3116

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b1b2e0fcb59c5f9d744ef2cde2b138faf6d815fb` · SHA-256 `db13adebf216d49ce6a19d47e39c5133870eb32e5f18d5945f22671af3e1cc53`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.SetTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Cocardinal.Variant2128caa7bd469863d688311894dbc3fdd9ed66a52f216f8f3aaae30579537cc0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2128caa7bd469863d688311894dbc3fdd9ed66a52f216f8f3aaae30579537cc0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.SetTheory.SourceCorpus.Cocardinal.Variant2128caa7bd469863d688311894dbc3fdd9ed66a52f216f8f3aaae30579537cc0","mathematical_subject":"Logic.SetTheory","original_sha256":"2128caa7bd469863d688311894dbc3fdd9ed66a52f216f8f3aaae30579537cc0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Order/Filter/Cocardinal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","same_file_root_reference_mapping","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Josha Dekker. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Josha Dekker
-/
import Mathlib.Order.Filter.Cofinite
import Mathlib.Order.Filter.CountableInter
import Mathlib.Order.Filter.CardinalInter
import Mathlib.SetTheory.Cardinal.Arithmetic
import Mathlib.SetTheory.Cardinal.Cofinality

/-!
# The cocardinal filter

In this file we define `Filter.cocardinal hc`: the filter of sets with cardinality less than
  a regular cardinal `c` that satisfies `Cardinal.aleph0 < c`.
  Such filters are `CardinalInterFilter` with cardinality `c`.

-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Cocardinal.Variant2128caa7bd469863d688311894dbc3fdd9ed66a52f216f8f3aaae30579537cc0

open Set Filter Cardinal

universe u
variable {α : Type u} {c : Cardinal.{u}} {hreg : c.IsRegular}

namespace Filter

variable (α) in
/-- The filter defined by all sets that have a complement with at most cardinality `c`. For a union
of `c` sets of `c` elements to have `c` elements, we need that `c` is a regular cardinal. -/
def cocardinal (hreg : c.IsRegular) : Filter α := by
  apply ofCardinalUnion {s | Cardinal.mk s < c} (lt_of_lt_of_le (nat_lt_aleph0 2) hreg.aleph0_le)
  · refine fun s hS hSc ↦ lt_of_le_of_lt (mk_sUnion_le _) <| mul_lt_of_lt hreg.aleph0_le hS ?_
    exact iSup_lt_of_isRegular hreg hS fun i ↦ hSc i i.property
  · exact fun _ hSc _ ht ↦ lt_of_le_of_lt (mk_le_mk_of_subset ht) hSc

@[simp]
theorem mem_cocardinal {s : Set α} :
    s ∈ cocardinal α hreg ↔ Cardinal.mk (sᶜ : Set α) < c := Iff.rfl

@[simp] lemma cocardinal_aleph0_eq_cofinite :
    cocardinal (α := α) isRegular_aleph0 = cofinite := by
  aesop

instance instCardinalInterFilter_cocardinal : CardinalInterFilter (cocardinal (α := α) hreg) c where
  cardinal_sInter_mem S hS hSs := by
    rw [mem_cocardinal, Set.compl_sInter]
    apply lt_of_le_of_lt (mk_sUnion_le _)
    apply mul_lt_of_lt hreg.aleph0_le (lt_of_le_of_lt mk_image_le hS)
    apply iSup_lt_of_isRegular hreg <| lt_of_le_of_lt mk_image_le hS
    aesop

@[simp]
theorem eventually_cocardinal {p : α → Prop} :
    (∀ᶠ x in cocardinal α hreg, p x) ↔ #{ x | ¬p x } < c := Iff.rfl

theorem hasBasis_cocardinal : HasBasis (cocardinal α hreg) {s : Set α | #s < c} compl :=
  ⟨fun s =>
    ⟨fun h => ⟨sᶜ, h, (compl_compl s).subset⟩, fun ⟨_t, htf, hts⟩ => by
      have : #↑sᶜ < c := by
        apply lt_of_le_of_lt _ htf
        rw [compl_subset_comm] at hts
        apply Cardinal.mk_le_mk_of_subset hts
      simp_all only [mem_cocardinal] ⟩⟩

theorem frequently_cocardinal {p : α → Prop} :
    (∃ᶠ x in cocardinal α hreg, p x) ↔ c ≤ # { x | p x } := by
  simp only [Filter.Frequently, eventually_cocardinal, not_not,coe_setOf, not_lt]

lemma frequently_cocardinal_mem {s : Set α} :
    (∃ᶠ x in cocardinal α hreg, x ∈ s) ↔ c ≤ #s := frequently_cocardinal

@[simp]
lemma cocardinal_inf_principal_neBot_iff {s : Set α} :
    (cocardinal α hreg ⊓ 𝓟 s).NeBot ↔ c ≤ #s :=
  frequently_mem_iff_neBot.symm.trans frequently_cocardinal

theorem compl_mem_cocardinal_of_card_lt {s : Set α} (hs : #s < c) :
    sᶜ ∈ cocardinal α hreg :=
  mem_cocardinal.2 <| (compl_compl s).symm ▸ hs

theorem _root_.GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Cocardinal.Variant2128caa7bd469863d688311894dbc3fdd9ed66a52f216f8f3aaae30579537cc0.Set.Finite.compl_mem_cocardinal {s : Set α} (hs : s.Finite) :
    sᶜ ∈ cocardinal α hreg :=
  compl_mem_cocardinal_of_card_lt <| lt_of_lt_of_le (Finite.lt_aleph0 hs) (hreg.aleph0_le)

theorem eventually_cocardinal_notMem_of_card_lt {s : Set α} (hs : #s < c) :
    ∀ᶠ x in cocardinal α hreg, x ∉ s :=
  compl_mem_cocardinal_of_card_lt hs

@[deprecated (since := "2025-05-24")]
alias eventually_cocardinal_nmem_of_card_lt := eventually_cocardinal_notMem_of_card_lt

theorem _root_.GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Cocardinal.Variant2128caa7bd469863d688311894dbc3fdd9ed66a52f216f8f3aaae30579537cc0.Finset.eventually_cocardinal_notMem (s : Finset α) :
    ∀ᶠ x in cocardinal α hreg, x ∉ s :=
  eventually_cocardinal_notMem_of_card_lt <| (finset_card_lt_aleph0 s).trans_le (hreg.aleph0_le)

@[deprecated (since := "2025-05-24")]
alias _root_.Finset.eventually_cocardinal_nmem := _root_.GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Cocardinal.Variant2128caa7bd469863d688311894dbc3fdd9ed66a52f216f8f3aaae30579537cc0.Finset.eventually_cocardinal_notMem

theorem eventually_cocardinal_ne (x : α) : ∀ᶠ a in cocardinal α hreg, a ≠ x := by
  simpa [Set.finite_singleton x] using hreg.nat_lt 1

/-- The filter defined by all sets that have countable complements. -/
abbrev cocountable : Filter α := cocardinal α Cardinal.isRegular_aleph_one

theorem mem_cocountable {s : Set α} :
    s ∈ cocountable ↔ (sᶜ : Set α).Countable := by
  rw [Cardinal.countable_iff_lt_aleph_one, mem_cocardinal]

end Filter
```
