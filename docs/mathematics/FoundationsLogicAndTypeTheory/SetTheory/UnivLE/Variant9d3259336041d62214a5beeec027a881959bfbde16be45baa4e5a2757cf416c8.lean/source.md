# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.UnivLE.Variant9d3259336041d62214a5beeec027a881959bfbde16be45baa4e5a2757cf416c8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `04a3bfb0789f84ced41c53b2e436b3b6cc229253` · SHA-256 `74b222917d0675791b10933c50be1a0099127a2cf5fb19f7218ab5da528db4ce`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.SetTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.UnivLEIffCardinalLe.Variant89eaf204886c8a33abb31ca3451ede4ead8066972f9a7902c22d60f3feaa3a2e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"89eaf204886c8a33abb31ca3451ede4ead8066972f9a7902c22d60f3feaa3a2e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.SetTheory.SourceCorpus.UnivLEIffCardinalLe.Variant89eaf204886c8a33abb31ca3451ede4ead8066972f9a7902c22d60f3feaa3a2e","mathematical_subject":"Logic.SetTheory","original_sha256":"89eaf204886c8a33abb31ca3451ede4ead8066972f9a7902c22d60f3feaa3a2e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/SetTheory/Cardinal/UnivLE.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Junyan Xu. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Junyan Xu
-/
module

public import Mathlib.Basic.UnivLE
public import Mathlib.SetTheory.Ordinal.Univ

/-!
# UnivLE and cardinals
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.UnivLEIffCardinalLe.Variant89eaf204886c8a33abb31ca3451ede4ead8066972f9a7902c22d60f3feaa3a2e

public section

noncomputable section

universe u v

open Cardinal

theorem univLE_iff_cardinal_le : UnivLE.{u, v} ↔ univ.{u, v + 1} ≤ univ.{v, u + 1} := by
  simp_rw [univLE_iff, small_iff_lift_mk_lt_univ]
  contrapose!
  -- strange: simp_rw [univ_umax.{v,u}] doesn't work
  refine ⟨fun ⟨α, le⟩ ↦ ?_, fun h ↦ ?_⟩
  · rw [univ_umax.{v, u}, ← lift_le.{u + 1}, lift_univ, lift_lift] at le
    exact le.trans_lt (lift_lt_univ'.{u, v + 1} #α)
  · obtain ⟨⟨α⟩, h⟩ := lt_univ'.mp h; use α
    rw [univ_umax.{v, u}, ← lift_le.{u + 1}, lift_univ, lift_lift]
    exact h.le

theorem univLE_iff_exists_embedding : UnivLE.{u, v} ↔ Nonempty (Ordinal.{u} ↪ Ordinal.{v}) := by
  rw [univLE_iff_cardinal_le]
  exact lift_mk_le'

theorem Ordinal.univLE_of_injective {f : Ordinal.{u} → Ordinal.{v}} (h : f.Injective) :
    UnivLE.{u, v} :=
  univLE_iff_exists_embedding.2 ⟨f, h⟩

/-- Together with transitivity, this shows `UnivLE` is a total preorder. -/
theorem univLE_total : UnivLE.{u, v} ∨ UnivLE.{v, u} := by
  simp_rw [univLE_iff_cardinal_le]; apply le_total
```
