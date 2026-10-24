# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Extension.Variant96ad3325747f0f8d074a167c248d6edeed6edf4ba656ecc13ce81c8565b407da

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d7d6b8a83108b8307d51d07cff502be6bd37957e` · SHA-256 `2542a50f692de6135534dcc3cbfa3c0502dc456aa025eee8094548b2e741c7b8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.MonotoneOnExistsMonotoneExtension.Variant80ed0579ed1b80daf1be26526651b58a7f519b7ddf5f83ed1e893f3a8c09126d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"80ed0579ed1b80daf1be26526651b58a7f519b7ddf5f83ed1e893f3a8c09126d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.MonotoneOnExistsMonotoneExtension.Variant80ed0579ed1b80daf1be26526651b58a7f519b7ddf5f83ed1e893f3a8c09126d","mathematical_subject":"Algebra.OrderTheory","original_sha256":"80ed0579ed1b80daf1be26526651b58a7f519b7ddf5f83ed1e893f3a8c09126d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Order/Monotone/Extension.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Sébastien Gouëzel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sébastien Gouëzel, Yury Kudryashov
-/
import Mathlib.Data.Set.Monotone
import Mathlib.Order.ConditionallyCompleteLattice.Basic

/-!
# Extension of a monotone function from a set to the whole space

In this file we prove that if a function is monotone and is bounded on a set `s`, then it admits a
monotone extension to the whole space.
-/



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.MonotoneOnExistsMonotoneExtension.Variant80ed0579ed1b80daf1be26526651b58a7f519b7ddf5f83ed1e893f3a8c09126d

open Set

variable {α β : Type*} [LinearOrder α] [ConditionallyCompleteLinearOrder β] {f : α → β} {s : Set α}

/-- If a function is monotone and is bounded on a set `s`, then it admits a monotone extension to
the whole space. -/
theorem MonotoneOn.exists_monotone_extension (h : MonotoneOn f s) (hl : BddBelow (f '' s))
    (hu : BddAbove (f '' s)) : ∃ g : α → β, Monotone g ∧ EqOn f g s := by
  classical
    /- The extension is defined by `f x = f a` for `x ≤ a`, and `f x` is the supremum of the values
      of `f` to the left of `x` for `x ≥ a`. -/
    rcases hl with ⟨a, ha⟩
    have hu' : ∀ x, BddAbove (f '' (Iic x ∩ s)) := fun x =>
      hu.mono (image_subset _ inter_subset_right)
    let g : α → β := fun x => if Disjoint (Iic x) s then a else sSup (f '' (Iic x ∩ s))
    have hgs : EqOn f g s := by
      intro x hx
      simp only [g]
      have : IsGreatest (Iic x ∩ s) x := ⟨⟨right_mem_Iic, hx⟩, fun y hy => hy.1⟩
      rw [if_neg this.nonempty.not_disjoint,
        ((h.mono inter_subset_right).map_isGreatest this).csSup_eq]
    refine ⟨g, fun x y hxy => ?_, hgs⟩
    by_cases hx : Disjoint (Iic x) s <;> by_cases hy : Disjoint (Iic y) s <;>
      simp only [g, if_pos, if_neg, not_false_iff, *, refl]
    · rcases not_disjoint_iff_nonempty_inter.1 hy with ⟨z, hz⟩
      exact le_csSup_of_le (hu' _) (mem_image_of_mem _ hz) (ha <| mem_image_of_mem _ hz.2)
    · exact (hx <| hy.mono_left <| Iic_subset_Iic.2 hxy).elim
    · rw [not_disjoint_iff_nonempty_inter] at hx hy
      refine csSup_le_csSup (hu' _) (hx.image _) (image_subset _ ?_)
      exact inter_subset_inter_left _ (Iic_subset_Iic.2 hxy)

/-- If a function is antitone and is bounded on a set `s`, then it admits an antitone extension to
the whole space. -/
theorem AntitoneOn.exists_antitone_extension (h : AntitoneOn f s) (hl : BddBelow (f '' s))
    (hu : BddAbove (f '' s)) : ∃ g : α → β, Antitone g ∧ EqOn f g s :=
  h.dual_right.exists_monotone_extension hu hl
```
