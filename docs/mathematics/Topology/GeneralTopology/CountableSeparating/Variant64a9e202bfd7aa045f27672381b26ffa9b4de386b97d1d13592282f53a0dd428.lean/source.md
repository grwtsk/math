# Complete source: GRWTSK.Topology.GeneralTopology.CountableSeparating.Variant64a9e202bfd7aa045f27672381b26ffa9b4de386b97d1d13592282f53a0dd428

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `82ec7e07ed4102a255a1b61aff5f6faccc523603` · SHA-256 `c9ffebc76ec7f01902a2dbf2741e971c28701f0b9eda918a5cd37c4b7d20e86d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.OfForallEventuallyLtIff.Variantb1223fc24c749c5380fedc8f9ce1097e093b5a1a0fbba31ec97f52bfc5eff8a4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b1223fc24c749c5380fedc8f9ce1097e093b5a1a0fbba31ec97f52bfc5eff8a4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.OfForallEventuallyLtIff.Variantb1223fc24c749c5380fedc8f9ce1097e093b5a1a0fbba31ec97f52bfc5eff8a4","mathematical_subject":"Topology.GeneralTopology","original_sha256":"b1223fc24c749c5380fedc8f9ce1097e093b5a1a0fbba31ec97f52bfc5eff8a4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Order/CountableSeparating.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Topology.Order.Basic
import Mathlib.Order.Filter.CountableSeparatingOn

/-!
# Countably many infinite intervals separate points

In this file we prove that in a linear order with second countable order topology,
the points can be separated by countably many infinite intervals.
We prove 4 versions of this statement (one for each of the infinite intervals),
as well as provide convenience corollaries about `Filter.EventuallyEq`.
-/


namespace GRWTSK.Topology.GeneralTopology.OfForallEventuallyLtIff.Variantb1223fc24c749c5380fedc8f9ce1097e093b5a1a0fbba31ec97f52bfc5eff8a4

open Set

variable {X : Type*} [TopologicalSpace X] [LinearOrder X]
  [OrderTopology X] [SecondCountableTopology X]

namespace HasCountableSeparatingOn

variable {s : Set X}

instance range_Iio : HasCountableSeparatingOn X (· ∈ range Iio) s := by
  constructor
  rcases TopologicalSpace.exists_countable_dense X with ⟨s, hsc, hsd⟩
  set t := s ∪ {x | ∃ y, y ⋖ x}
  refine ⟨Iio '' t, .image ?_ _, ?_, ?_⟩
  · exact hsc.union countable_setOf_covBy_left
  · exact image_subset_range _ _
  · rintro x - y - h
    by_contra! hne
    wlog hlt : x < y generalizing x y
    · refine this y x ?_ hne.symm (hne.lt_or_lt.resolve_left hlt)
      simpa only [iff_comm] using h
    cases (Ioo x y).eq_empty_or_nonempty with
    | inl he =>
      specialize h (Iio y) (mem_image_of_mem _ (.inr ⟨x, hlt, by simpa using Set.ext_iff.mp he⟩))
      simp [hlt.not_le] at h
    | inr hne =>
      rcases hsd.inter_open_nonempty _ isOpen_Ioo hne with ⟨z, ⟨hxz, hzy⟩, hzs⟩
      simpa [hxz, hzy.not_lt] using h (Iio z) (mem_image_of_mem _ (.inl hzs))

instance range_Ioi : HasCountableSeparatingOn X (· ∈ range Ioi) s :=
  .range_Iio (X := Xᵒᵈ)

instance range_Iic : HasCountableSeparatingOn X (· ∈ range Iic) s :=
  let ⟨t, htc, ht_sub, ht⟩ := (range_Ioi (X := X) (s := s)).1
  ⟨compl '' t, htc.image _, by simpa [← compl_inj_iff (x := Ioi _)] using ht_sub,
    by simpa [not_iff_not]⟩

instance range_Ici : HasCountableSeparatingOn X (· ∈ range Ici) s :=
  range_Iic (X := Xᵒᵈ)

end HasCountableSeparatingOn

namespace Filter.EventuallyEq

variable {α : Type*} {l : Filter α} [CountableInterFilter l] {f g : α → X}

lemma of_forall_eventually_lt_iff (h : ∀ x, ∀ᶠ a in l, f a < x ↔ g a < x) : f =ᶠ[l] g :=
  of_forall_separating_preimage (· ∈ range Iio) <| forall_mem_range.2 <| fun x ↦ .set_eq (h x)

lemma of_forall_eventually_le_iff (h : ∀ x, ∀ᶠ a in l, f a ≤ x ↔ g a ≤ x) : f =ᶠ[l] g :=
  of_forall_separating_preimage (· ∈ range Iic) <| forall_mem_range.2 <| fun x ↦ .set_eq (h x)

lemma of_forall_eventually_gt_iff (h : ∀ x, ∀ᶠ a in l, x < f a ↔ x < g a) : f =ᶠ[l] g :=
  of_forall_eventually_lt_iff (X := Xᵒᵈ) h

lemma of_forall_eventually_ge_iff (h : ∀ x, ∀ᶠ a in l, x ≤ f a ↔ x ≤ g a) : f =ᶠ[l] g :=
  of_forall_eventually_le_iff (X := Xᵒᵈ) h

end Filter.EventuallyEq
```
