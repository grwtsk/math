# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.UnivLE.Variant65395dc11dcc1b3ec477a4f1e0aa632e8b1c412c591dceb3c6bada2cc47967d7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a7b6e46a34fcfe1ec4e7ac2b7532c42a207c1e7d` · SHA-256 `b28bf869ce3fab213d20f165a2b5bcdc42b5af96fbfd2ead8951151c0535748a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.SetTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.UnivLEIffCardinalLe.Variant3119296fa328617056790e599c41c5122e3b458872c02c1d0797ab384561d7e2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3119296fa328617056790e599c41c5122e3b458872c02c1d0797ab384561d7e2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.SetTheory.SourceCorpus.UnivLEIffCardinalLe.Variant3119296fa328617056790e599c41c5122e3b458872c02c1d0797ab384561d7e2","mathematical_subject":"Logic.SetTheory","original_sha256":"3119296fa328617056790e599c41c5122e3b458872c02c1d0797ab384561d7e2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/SetTheory/Cardinal/UnivLE.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Junyan Xu. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Junyan Xu
-/
import Mathlib.Logic.UnivLE
import Mathlib.SetTheory.Ordinal.Basic

/-!
# UnivLE and cardinals
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.UnivLEIffCardinalLe.Variant3119296fa328617056790e599c41c5122e3b458872c02c1d0797ab384561d7e2

noncomputable section

universe u v

open Cardinal

theorem univLE_iff_cardinal_le : UnivLE.{u, v} ↔ univ.{u, v+1} ≤ univ.{v, u+1} := by
  rw [← not_iff_not, univLE_iff]; simp_rw [small_iff_lift_mk_lt_univ]; push_neg
  -- strange: simp_rw [univ_umax.{v,u}] doesn't work
  refine ⟨fun ⟨α, le⟩ ↦ ?_, fun h ↦ ?_⟩
  · rw [univ_umax.{v,u}, ← lift_le.{u+1}, lift_univ, lift_lift] at le
    exact le.trans_lt (lift_lt_univ'.{u,v+1} #α)
  · obtain ⟨⟨α⟩, h⟩ := lt_univ'.mp h; use α
    rw [univ_umax.{v,u}, ← lift_le.{u+1}, lift_univ, lift_lift]
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
