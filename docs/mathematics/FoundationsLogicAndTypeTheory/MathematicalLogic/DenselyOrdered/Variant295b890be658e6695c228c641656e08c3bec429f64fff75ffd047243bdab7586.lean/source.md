# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.DenselyOrdered.Variant295b890be658e6695c228c641656e08c3bec429f64fff75ffd047243bdab7586

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c9bcb249f6c07bd9b34f80298271a986b42f1dc4` · SHA-256 `1e392ff57d23f2d854f32f37c9f9a184129d79888fb8a78df39bb6512f943db3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.LocallyFiniteOrderDenselyOrderedIffSubsingleton.Variant348d8b07ad557695b69ec76fdefd08cbf9aa14217951c30feb2a46d5e0db1ea8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"348d8b07ad557695b69ec76fdefd08cbf9aa14217951c30feb2a46d5e0db1ea8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.LocallyFiniteOrderDenselyOrderedIffSubsingleton.Variant348d8b07ad557695b69ec76fdefd08cbf9aa14217951c30feb2a46d5e0db1ea8","mathematical_subject":"Logic.Foundations","original_sha256":"348d8b07ad557695b69ec76fdefd08cbf9aa14217951c30feb2a46d5e0db1ea8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Order/Interval/Finset/DenselyOrdered.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","root_references_require_identity_review","same_file_root_reference_mapping","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Yakov Pechersky. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yakov Pechersky
-/
module

public import Mathlib.Order.Interval.Finset.Basic

/-!
# Linear locally finite orders are densely ordered iff they are trivial

## Main results
* `LocallyFiniteOrder.denselyOrdered_iff_subsingleton`:
  A linear locally finite order is densely ordered if and only if it is a subsingleton.

-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.LocallyFiniteOrderDenselyOrderedIffSubsingleton.Variant348d8b07ad557695b69ec76fdefd08cbf9aa14217951c30feb2a46d5e0db1ea8

public section

variable {X : Type*} [LinearOrder X] [LocallyFiniteOrder X]

lemma LocallyFiniteOrder.denselyOrdered_iff_subsingleton :
    DenselyOrdered X ↔ Subsingleton X := by
  refine ⟨fun H ↦ ?_, fun h ↦ h.instDenselyOrdered⟩
  rw [← not_nontrivial_iff_subsingleton, nontrivial_iff_lt]
  rintro ⟨a, b, hab⟩
  exact not_lt_of_denselyOrdered_of_locallyFinite a b hab

lemma denselyOrdered_set_iff_subsingleton {s : Set X} :
    DenselyOrdered s ↔ s.Subsingleton := by
  classical
  simp [LocallyFiniteOrder.denselyOrdered_iff_subsingleton]

@[to_dual]
lemma WithBot.denselyOrdered_set_iff_subsingleton {s : Set (WithBot X)} :
    DenselyOrdered s ↔ s.Subsingleton := by
  refine ⟨fun H ↦ ?_, fun h ↦ h.denselyOrdered⟩
  rw [← Set.subsingleton_coe, ← not_nontrivial_iff_subsingleton, nontrivial_iff_lt]
  suffices DenselyOrdered (WithBot.some ⁻¹' s) by
    rintro ⟨x, y, H⟩
    rw [_root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.LocallyFiniteOrderDenselyOrderedIffSubsingleton.Variant348d8b07ad557695b69ec76fdefd08cbf9aa14217951c30feb2a46d5e0db1ea8.denselyOrdered_set_iff_subsingleton] at this
    obtain ⟨z, hz, hz'⟩ := exists_between H
    have hz0 : (⊥ : WithBot X) < z := by simp [(Subtype.coe_lt_coe.mpr hz).trans_le']
    replace hz' : WithBot.unbot z.val hz0.ne' < WithBot.unbot y (hz0.trans hz').ne' := by
      rwa [← WithBot.coe_lt_coe, WithBot.coe_unbot, WithBot.coe_unbot]
    refine absurd (this ?_ ?_) hz'.ne <;>
    simp
  constructor
  simp only [Subtype.exists, Set.mem_preimage, Subtype.forall, Subtype.mk_lt_mk, exists_and_right,
    exists_prop]
  intro x hx y hy hxy
  have : (⟨_, hx⟩ : s) < ⟨_, hy⟩ := by simp [hxy]
  obtain ⟨z, hz, hz'⟩ := exists_between this
  simp only [← Subtype.coe_lt_coe] at hz hz'
  refine ⟨WithBot.unbot z (hz.trans_le' (by simp)).ne', ⟨?_, ?_⟩, ?_⟩
  · simp
  · rw [← WithBot.coe_lt_coe]
    simp [hz.trans_le]
  · rw [← WithBot.coe_lt_coe]
    simp [hz'.trans_le']
```
