-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ProperSpaceOfNontriviallyNormedFieldOfWeaklyLocallyCompactSpace.Variant7f6181973dcb89ec6ccd2b7641c1ea07481a1510f0fa70bc69b8ecf5eec79832","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7f6181973dcb89ec6ccd2b7641c1ea07481a1510f0fa70bc69b8ecf5eec79832","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ProperSpaceOfNontriviallyNormedFieldOfWeaklyLocallyCompactSpace.Variant7f6181973dcb89ec6ccd2b7641c1ea07481a1510f0fa70bc69b8ecf5eec79832","mathematical_subject":"Topology.GeneralTopology","original_sha256":"7f6181973dcb89ec6ccd2b7641c1ea07481a1510f0fa70bc69b8ecf5eec79832","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Analysis/Normed/Field/ProperSpace.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Yakov Pechersky. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yakov Pechersky
-/

import Mathlib.Analysis.Normed.Field.Lemmas
import Mathlib.Analysis.SpecificLimits.Basic
import Mathlib.Topology.MetricSpace.ProperSpace

/-!
# Proper nontrivally normed fields

Nontrivially normed fields are `ProperSpaces` when they are `WeaklyLocallyCompact`.

## Main results

* `ProperSpace.of_nontriviallyNormedField_of_weaklyLocallyCompactSpace`

## Implementation details

This is a special case of `ProperSpace.of_locallyCompactSpace` from
`Mathlib/Analysis/Normed/Module/FiniteDimension.lean`, specialized to be on the field itself
with a proof that requires fewer imports.
-/


namespace GRWTSK.Topology.GeneralTopology.ProperSpaceOfNontriviallyNormedFieldOfWeaklyLocallyCompactSpace.Variant7f6181973dcb89ec6ccd2b7641c1ea07481a1510f0fa70bc69b8ecf5eec79832

assert_not_exists FiniteDimensional

open Metric Filter

/-- A weakly locally compact normed field is proper.
This is a specialization of `ProperSpace.of_locallyCompactSpace`
which holds for `NormedSpace`s but requires more imports. -/
lemma ProperSpace.of_nontriviallyNormedField_of_weaklyLocallyCompactSpace
    (𝕜 : Type*) [NontriviallyNormedField 𝕜] [WeaklyLocallyCompactSpace 𝕜] :
    ProperSpace 𝕜 := by
  rcases exists_isCompact_closedBall (0 : 𝕜) with ⟨r, rpos, hr⟩
  rcases NormedField.exists_one_lt_norm 𝕜 with ⟨c, hc⟩
  have hC n : IsCompact (closedBall (0 : 𝕜) (‖c‖^n * r)) := by
    have : c ^ n ≠ 0 := pow_ne_zero _ <| fun h ↦ by simp [h, zero_le_one.not_lt] at hc
    convert hr.smul (c ^ n)
    ext
    simp only [mem_closedBall, dist_zero_right, Set.mem_smul_set_iff_inv_smul_mem₀ this,
      smul_eq_mul, norm_mul, norm_inv, norm_pow,
      inv_mul_le_iff₀ (by simpa only [norm_pow] using norm_pos_iff.mpr this)]
  have hTop : Tendsto (fun n ↦ ‖c‖^n * r) atTop atTop :=
    Tendsto.atTop_mul_const rpos (tendsto_pow_atTop_atTop_of_one_lt hc)
  exact .of_seq_closedBall hTop (Eventually.of_forall hC)
