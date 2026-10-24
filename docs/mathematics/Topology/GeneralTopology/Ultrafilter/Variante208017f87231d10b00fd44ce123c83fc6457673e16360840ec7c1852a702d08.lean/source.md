# Complete source: GRWTSK.Topology.GeneralTopology.Ultrafilter.Variante208017f87231d10b00fd44ce123c83fc6457673e16360840ec7c1852a702d08

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `377bb1385ac7f748543a45dfd41ba63d8328eb9b` · SHA-256 `6ce3b45257a5659cff0bcf9118d2ca1557e7ccb49272de7eaefd6cce98a92f87`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.UltrafilterClusterPtIff.Variante711829f90e78502088240c9c9b7a41421f05b7bcc0af8821a05e92ce231cb55","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e711829f90e78502088240c9c9b7a41421f05b7bcc0af8821a05e92ce231cb55","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.UltrafilterClusterPtIff.Variante711829f90e78502088240c9c9b7a41421f05b7bcc0af8821a05e92ce231cb55","mathematical_subject":"Topology.GeneralTopology","original_sha256":"e711829f90e78502088240c9c9b7a41421f05b7bcc0af8821a05e92ce231cb55","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Ultrafilter.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Mario Carneiro, Jeremy Avigad
-/
import Mathlib.Order.Filter.Ultrafilter.Basic
import Mathlib.Topology.Continuous

/-! # Characterization of basic topological properties in terms of ultrafilters -/


namespace GRWTSK.Topology.GeneralTopology.UltrafilterClusterPtIff.Variante711829f90e78502088240c9c9b7a41421f05b7bcc0af8821a05e92ce231cb55

open Set Filter Topology

universe u v w x

variable {X : Type u} {Y : Type v} {ι : Sort w} {α β : Type*} {x : X} {s s₁ s₂ t : Set X}
    {p p₁ p₂ : X → Prop} [TopologicalSpace X] [TopologicalSpace Y] {F : Filter α} {u : α → X}

theorem Ultrafilter.clusterPt_iff {f : Ultrafilter X} : ClusterPt x f ↔ ↑f ≤ 𝓝 x :=
  ⟨f.le_of_inf_neBot', fun h => ClusterPt.of_le_nhds h⟩

theorem clusterPt_iff_ultrafilter {f : Filter X} : ClusterPt x f ↔
    ∃ u : Ultrafilter X, u ≤ f ∧ u ≤ 𝓝 x := by
  simp_rw [ClusterPt, ← le_inf_iff, exists_ultrafilter_iff, inf_comm]

theorem mapClusterPt_iff_ultrafilter :
    MapClusterPt x F u ↔ ∃ U : Ultrafilter α, U ≤ F ∧ Tendsto u U (𝓝 x) := by
  simp_rw [MapClusterPt, ClusterPt, ← Filter.push_pull', map_neBot_iff, tendsto_iff_comap,
    ← le_inf_iff, exists_ultrafilter_iff, inf_comm]

theorem isOpen_iff_ultrafilter :
    IsOpen s ↔ ∀ x ∈ s, ∀ (l : Ultrafilter X), ↑l ≤ 𝓝 x → s ∈ l := by
  simp_rw [isOpen_iff_mem_nhds, ← mem_iff_ultrafilter]

/-- `x` belongs to the closure of `s` if and only if some ultrafilter
  supported on `s` converges to `x`. -/
theorem mem_closure_iff_ultrafilter :
    x ∈ closure s ↔ ∃ u : Ultrafilter X, s ∈ u ∧ ↑u ≤ 𝓝 x := by
  simp [closure_eq_cluster_pts, ClusterPt, ← exists_ultrafilter_iff, and_comm]

theorem isClosed_iff_ultrafilter : IsClosed s ↔
    ∀ x, ∀ u : Ultrafilter X, ↑u ≤ 𝓝 x → s ∈ u → x ∈ s := by
  simp [isClosed_iff_clusterPt, ClusterPt, ← exists_ultrafilter_iff]

variable {f : X → Y}

theorem continuousAt_iff_ultrafilter :
    ContinuousAt f x ↔ ∀ g : Ultrafilter X, ↑g ≤ 𝓝 x → Tendsto f g (𝓝 (f x)) :=
  tendsto_iff_ultrafilter f (𝓝 x) (𝓝 (f x))

theorem continuous_iff_ultrafilter :
    Continuous f ↔ ∀ (x) (g : Ultrafilter X), ↑g ≤ 𝓝 x → Tendsto f g (𝓝 (f x)) := by
  simp only [continuous_iff_continuousAt, continuousAt_iff_ultrafilter]
```
