# Complete source: GRWTSK.Topology.GeneralTopology.ZeroAtInfty.Variantd5ced99155c3f3b347d822a87e2d5af88656d4fa8f20536f1fab75d84f4fd49b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6408cb60e4ebe75044da9ba692944894b50d9872` · SHA-256 `fe109d19c89cf85e2982a8e2d1d40d933bb2e29d30f68a534f370ed697553ec3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ZeroAtInftyContinuousMapClassNormLe.Variant3b4a83bf9d0a65e319a85bf48dff74836046b1802dfa4602a7c78d72c5bb5e03","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3b4a83bf9d0a65e319a85bf48dff74836046b1802dfa4602a7c78d72c5bb5e03","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ZeroAtInftyContinuousMapClassNormLe.Variant3b4a83bf9d0a65e319a85bf48dff74836046b1802dfa4602a7c78d72c5bb5e03","mathematical_subject":"Topology.GeneralTopology","original_sha256":"3b4a83bf9d0a65e319a85bf48dff74836046b1802dfa4602a7c78d72c5bb5e03","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Analysis/Normed/Group/ZeroAtInfty.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Moritz Doll. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Moritz Doll
-/

import Mathlib.Topology.ContinuousMap.ZeroAtInfty

/-!
# ZeroAtInftyContinuousMapClass in normed additive groups

In this file we give a characterization of the predicate `zero_at_infty` from
`ZeroAtInftyContinuousMapClass`. A continuous map `f` is zero at infinity if and only if
for every `ε > 0` there exists a `r : ℝ` such that for all `x : E` with `r < ‖x‖` it holds that
`‖f x‖ < ε`.
-/


namespace GRWTSK.Topology.GeneralTopology.ZeroAtInftyContinuousMapClassNormLe.Variant3b4a83bf9d0a65e319a85bf48dff74836046b1802dfa4602a7c78d72c5bb5e03

open Topology Filter

variable {E F 𝓕 : Type*}
variable [SeminormedAddGroup E] [SeminormedAddCommGroup F]
variable [FunLike 𝓕 E F] [ZeroAtInftyContinuousMapClass 𝓕 E F]

theorem ZeroAtInftyContinuousMapClass.norm_le (f : 𝓕) (ε : ℝ) (hε : 0 < ε) :
    ∃ (r : ℝ), ∀ (x : E) (_hx : r < ‖x‖), ‖f x‖ < ε := by
  have h := zero_at_infty f
  rw [tendsto_zero_iff_norm_tendsto_zero, tendsto_def] at h
  specialize h (Metric.ball 0 ε) (Metric.ball_mem_nhds 0 hε)
  rcases Metric.closedBall_compl_subset_of_mem_cocompact h 0 with ⟨r, hr⟩
  use r
  intro x hr'
  suffices x ∈ (fun x ↦ ‖f x‖) ⁻¹' Metric.ball 0 ε by aesop
  apply hr
  aesop

variable [ProperSpace E]

theorem zero_at_infty_of_norm_le (f : E → F)
    (h : ∀ (ε : ℝ) (_hε : 0 < ε), ∃ (r : ℝ), ∀ (x : E) (_hx : r < ‖x‖), ‖f x‖ < ε) :
    Tendsto f (cocompact E) (𝓝 0) := by
  rw [tendsto_zero_iff_norm_tendsto_zero]
  intro s hs
  rw [mem_map, Metric.mem_cocompact_iff_closedBall_compl_subset 0]
  rw [Metric.mem_nhds_iff] at hs
  rcases hs with ⟨ε, hε, hs⟩
  rcases h ε hε with ⟨r, hr⟩
  use r
  intro
  aesop
```
