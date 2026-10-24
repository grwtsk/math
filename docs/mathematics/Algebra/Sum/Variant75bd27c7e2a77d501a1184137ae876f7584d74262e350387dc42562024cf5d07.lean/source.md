# Complete source: GRWTSK.Algebra.Sum.Variant75bd27c7e2a77d501a1184137ae876f7584d74262e350387dc42562024cf5d07

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `749d72e13fca6d1be6405bcbaf922ec1874e9b2c` · SHA-256 `3e5fa8d53b9ee040d00aae3395cd3fd4a76b77a380231671db2afb63f4bdfa7f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.SumLeSumIoc.Variant581814eb3f3f081ddcb8f1a4bfa93162cdf5078858727174775af5c20a8c448c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"581814eb3f3f081ddcb8f1a4bfa93162cdf5078858727174775af5c20a8c448c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.SumLeSumIoc.Variant581814eb3f3f081ddcb8f1a4bfa93162cdf5078858727174775af5c20a8c448c","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"581814eb3f3f081ddcb8f1a4bfa93162cdf5078858727174775af5c20a8c448c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Order/Group/Int/Sum.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Jeremy Tan. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Tan
-/
import Mathlib.Algebra.BigOperators.Group.Finset.Piecewise
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Data.Int.Interval

/-!
# Sharp bounds for sums of bounded finsets of integers

The sum of a finset of integers with cardinality `s` where all elements are at most `c` can be given
a sharper upper bound than `#s * c`, because the elements are distinct.

This file provides these sharp bounds, both in the upper-bounded and analogous lower-bounded cases.
-/



namespace GRWTSK.Algebra.SumLeSumIoc.Variant581814eb3f3f081ddcb8f1a4bfa93162cdf5078858727174775af5c20a8c448c

namespace Finset

/-- Sharp upper bound for the sum of a finset of integers that is bounded above, `Ioc` version. -/
lemma sum_le_sum_Ioc {s : Finset ℤ} {c : ℤ} (hs : ∀ x ∈ s, x ≤ c) :
    ∑ x ∈ s, x ≤ ∑ x ∈ Ioc (c - #s) c, x := by
  set r := Ioc (c - #s) c
  calc
    _ ≤ ∑ x ∈ s ∩ r, x + #(s \ r) • (c - #s) := by
      rw [← sum_inter_add_sum_diff s r _]
      gcongr
      refine sum_le_card_nsmul _ _ _ fun x mx ↦ ?_
      rw [mem_sdiff, mem_Ioc, not_and'] at mx
      have := mx.2 (hs _ mx.1); omega
    _ = ∑ x ∈ r ∩ s, x + #(r \ s) • (c - #s) := by
      rw [inter_comm, card_sdiff_comm]
      rw [Int.card_Ioc, sub_sub_cancel, Int.toNat_natCast]
    _ ≤ _ := by
      rw [← sum_inter_add_sum_diff r s _]
      gcongr
      refine card_nsmul_le_sum _ _ _ fun x mx ↦ ?_
      rw [mem_sdiff, mem_Ioc] at mx; exact mx.1.1.le

/-- Sharp upper bound for the sum of a finset of integers that is bounded above, `range` version. -/
lemma sum_le_sum_range {s : Finset ℤ} {c : ℤ} (hs : ∀ x ∈ s, x ≤ c) :
    ∑ x ∈ s, x ≤ ∑ n ∈ range #s, (c - n) := by
  convert sum_le_sum_Ioc hs
  refine sum_nbij (c - ·) ?_ ?_ ?_ (fun _ _ ↦ rfl)
  · intro x mx; rw [mem_Ioc]; dsimp only; rw [mem_range] at mx; omega
  · intro x mx y my (h : c - x = c - y); omega
  · intro x mx; simp_rw [coe_range, Set.mem_image, Set.mem_Iio]
    rw [mem_coe, mem_Ioc] at mx
    use (c - x).toNat; omega

/-- Sharp lower bound for the sum of a finset of integers that is bounded below, `Ico` version. -/
lemma sum_Ico_le_sum {s : Finset ℤ} {c : ℤ} (hs : ∀ x ∈ s, c ≤ x) :
    ∑ x ∈ Ico c (c + #s), x ≤ ∑ x ∈ s, x := by
  set r := Ico c (c + #s)
  calc
    _ ≤ ∑ x ∈ r ∩ s, x + #(r \ s) • (c + #s) := by
      rw [← sum_inter_add_sum_diff r s _]
      refine add_le_add_left (sum_le_card_nsmul _ _ _ fun x mx ↦ ?_) _
      rw [mem_sdiff, mem_Ico] at mx; exact mx.1.2.le
    _ = ∑ x ∈ s ∩ r, x + #(s \ r) • (c + #s) := by
      rw [inter_comm, card_sdiff_comm]
      rw [Int.card_Ico, add_sub_cancel_left, Int.toNat_natCast]
    _ ≤ _ := by
      rw [← sum_inter_add_sum_diff s r _]
      refine add_le_add_left (card_nsmul_le_sum _ _ _ fun x mx ↦ ?_) _
      rw [mem_sdiff, mem_Ico, not_and] at mx
      have := mx.2 (hs _ mx.1); omega

/-- Sharp lower bound for the sum of a finset of integers that is bounded below, `range` version. -/
lemma sum_range_le_sum {s : Finset ℤ} {c : ℤ} (hs : ∀ x ∈ s, c ≤ x) :
    ∑ n ∈ range #s, (c + n) ≤ ∑ x ∈ s, x := by
  convert sum_Ico_le_sum hs
  refine sum_nbij (c + ·) ?_ ?_ ?_ (fun _ _ ↦ rfl)
  · intro x mx; rw [mem_Ico]; dsimp only; rw [mem_range] at mx; omega
  · intro x mx y my (h : c + x = c + y); omega
  · intro x mx; simp_rw [coe_range, Set.mem_image, Set.mem_Iio]
    rw [mem_coe, mem_Ico] at mx
    use (x - c).toNat; omega

end Finset
```
