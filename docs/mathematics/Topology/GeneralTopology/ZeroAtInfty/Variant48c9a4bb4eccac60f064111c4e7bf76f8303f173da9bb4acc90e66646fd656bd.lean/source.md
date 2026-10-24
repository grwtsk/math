# Complete source: GRWTSK.Topology.GeneralTopology.ZeroAtInfty.Variant48c9a4bb4eccac60f064111c4e7bf76f8303f173da9bb4acc90e66646fd656bd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d37df8b081accba446e78bca373b9debb591377b` · SHA-256 `427704a52c2b7d457aa77b8b32dfc4943c096c2e11d65ee8a38262ce185d3708`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ZeroAtInftyContinuousMapClassNormLe.Variant9e64768fcd25f44c1d5b6c96e1bc3c6b2cd9d8c88e709035f854c4074636251c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9e64768fcd25f44c1d5b6c96e1bc3c6b2cd9d8c88e709035f854c4074636251c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ZeroAtInftyContinuousMapClassNormLe.Variant9e64768fcd25f44c1d5b6c96e1bc3c6b2cd9d8c88e709035f854c4074636251c","mathematical_subject":"Topology.GeneralTopology","original_sha256":"9e64768fcd25f44c1d5b6c96e1bc3c6b2cd9d8c88e709035f854c4074636251c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Analysis/Normed/Group/ZeroAtInfty.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Moritz Doll. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Moritz Doll
-/
module

public import Mathlib.Topology.ContinuousMap.ZeroAtInfty

/-!
# ZeroAtInftyContinuousMapClass in normed additive groups

In this file we give a characterization of the predicate `zero_at_infty` from
`ZeroAtInftyContinuousMapClass`. A continuous map `f` is zero at infinity if and only if
for every `ε > 0` there exists a `r : ℝ` such that for all `x : E` with `r < ‖x‖` it holds that
`‖f x‖ < ε`.
-/


namespace GRWTSK.Topology.GeneralTopology.ZeroAtInftyContinuousMapClassNormLe.Variant9e64768fcd25f44c1d5b6c96e1bc3c6b2cd9d8c88e709035f854c4074636251c

public section

open Filter

open scoped Topology

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
  suffices x ∈ (fun x ↦ ‖f x‖) ⁻¹' Metric.ball 0 ε by simp_all
  apply hr
  simp_all

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
