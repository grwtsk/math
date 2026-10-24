# Complete source: GRWTSK.Topology.GeneralTopology.OneDim.Variante864512cc43c4ba92f40c4b2f5d708a980186fe6156547248773d576444d035f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d916989ab662813017bd300016f5537107460a65` · SHA-256 `8774e241c3cb896551a53a7e1edfa6669731be44fda4f9fbb32c4b339b922a6f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.IccMemVitaliFamilyAtRight.Variant348d67550dbac79f0aa977cc024571c38e2164d1c7f2f2393b72862ff8c381ea","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"348d67550dbac79f0aa977cc024571c38e2164d1c7f2f2393b72862ff8c381ea","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.IccMemVitaliFamilyAtRight.Variant348d67550dbac79f0aa977cc024571c38e2164d1c7f2f2393b72862ff8c381ea","mathematical_subject":"Topology.GeneralTopology","original_sha256":"348d67550dbac79f0aa977cc024571c38e2164d1c7f2f2393b72862ff8c381ea","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/MeasureTheory/Covering/OneDim.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Sébastien Gouëzel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sébastien Gouëzel
-/
import Mathlib.MeasureTheory.Covering.DensityTheorem
import Mathlib.MeasureTheory.Measure.Lebesgue.EqHaar

/-!
# Covering theorems for Lebesgue measure in one dimension

We have a general theory of covering theorems for doubling measures, developed notably
in `DensityTheorem.lean`. In this file, we expand the API for this theory in one dimension,
by showing that intervals belong to the relevant Vitali family.
-/



namespace GRWTSK.Topology.GeneralTopology.IccMemVitaliFamilyAtRight.Variant348d67550dbac79f0aa977cc024571c38e2164d1c7f2f2393b72862ff8c381ea

open Set MeasureTheory IsUnifLocDoublingMeasure Filter

open scoped Topology

namespace Real

theorem Icc_mem_vitaliFamily_at_right {x y : ℝ} (hxy : x < y) :
    Icc x y ∈ (vitaliFamily (volume : Measure ℝ) 1).setsAt x := by
  rw [Icc_eq_closedBall]
  refine closedBall_mem_vitaliFamily_of_dist_le_mul _ ?_ (by linarith)
  rw [dist_comm, Real.dist_eq, abs_of_nonneg] <;> linarith

theorem tendsto_Icc_vitaliFamily_right (x : ℝ) :
    Tendsto (fun y => Icc x y) (𝓝[>] x) ((vitaliFamily (volume : Measure ℝ) 1).filterAt x) := by
  refine (VitaliFamily.tendsto_filterAt_iff _).2 ⟨?_, ?_⟩
  · filter_upwards [self_mem_nhdsWithin] with y hy using Icc_mem_vitaliFamily_at_right hy
  · intro ε εpos
    filter_upwards [Icc_mem_nhdsGT <| show x < x + ε by linarith] with y hy
    rw [closedBall_eq_Icc]
    exact Icc_subset_Icc (by linarith) hy.2

theorem Icc_mem_vitaliFamily_at_left {x y : ℝ} (hxy : x < y) :
    Icc x y ∈ (vitaliFamily (volume : Measure ℝ) 1).setsAt y := by
  rw [Icc_eq_closedBall]
  refine closedBall_mem_vitaliFamily_of_dist_le_mul _ ?_ (by linarith)
  rw [Real.dist_eq, abs_of_nonneg] <;> linarith

theorem tendsto_Icc_vitaliFamily_left (x : ℝ) :
    Tendsto (fun y => Icc y x) (𝓝[<] x) ((vitaliFamily (volume : Measure ℝ) 1).filterAt x) := by
  refine (VitaliFamily.tendsto_filterAt_iff _).2 ⟨?_, ?_⟩
  · filter_upwards [self_mem_nhdsWithin] with y hy using Icc_mem_vitaliFamily_at_left hy
  · intro ε εpos
    filter_upwards [Icc_mem_nhdsLT <| show x - ε < x by linarith] with y hy
    rw [closedBall_eq_Icc]
    exact Icc_subset_Icc hy.1 (by linarith)

end Real
```
