# Complete source: GRWTSK.Topology.MetricTopology.Real.Variant4cb8b7e8d43f357ceb8a8164493a7c425930aead7c8bad4b4d8151947311cf99

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7e7246b82e8a821f22e1586a2f2ac9e710d94012` · SHA-256 `9fe2cf9c0d86e4cce0637e8c39cc85dae7ba5f555d73fd3e65b5c7fa63222ec0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.MetricTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.MetricTopology.DistLeftLeOfMemUIcc.Variant912d11266d30641fe10bdadce41b57c5a46d202d94f8239f195665b7df7a52bb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"912d11266d30641fe10bdadce41b57c5a46d202d94f8239f195665b7df7a52bb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.MetricSpaces.SourceCorpus.DistLeftLeOfMemUIcc.Variant912d11266d30641fe10bdadce41b57c5a46d202d94f8239f195665b7df7a52bb","mathematical_subject":"Topology.MetricSpaces","original_sha256":"912d11266d30641fe10bdadce41b57c5a46d202d94f8239f195665b7df7a52bb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/MetricSpace/Pseudo/Real.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2015, 2017 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad, Robert Y. Lewis, Johannes Hölzl, Mario Carneiro, Sébastien Gouëzel
-/
import Mathlib.Algebra.Order.Group.Pointwise.Interval
import Mathlib.Topology.MetricSpace.Pseudo.Pi

/-!
# Lemmas about distances between points in intervals in `ℝ`.
-/


namespace GRWTSK.Topology.MetricTopology.DistLeftLeOfMemUIcc.Variant912d11266d30641fe10bdadce41b57c5a46d202d94f8239f195665b7df7a52bb

open Bornology Filter Metric Set
open scoped NNReal Topology

namespace Real

variable {ι : Type*}

lemma dist_left_le_of_mem_uIcc {x y z : ℝ} (h : y ∈ uIcc x z) : dist x y ≤ dist x z := by
  simpa only [dist_comm x] using abs_sub_left_of_mem_uIcc h

lemma dist_right_le_of_mem_uIcc {x y z : ℝ} (h : y ∈ uIcc x z) : dist y z ≤ dist x z := by
  simpa only [dist_comm _ z] using abs_sub_right_of_mem_uIcc h

lemma dist_le_of_mem_uIcc {x y x' y' : ℝ} (hx : x ∈ uIcc x' y') (hy : y ∈ uIcc x' y') :
    dist x y ≤ dist x' y' :=
  abs_sub_le_of_uIcc_subset_uIcc <| uIcc_subset_uIcc (by rwa [uIcc_comm]) (by rwa [uIcc_comm])

lemma dist_le_of_mem_Icc {x y x' y' : ℝ} (hx : x ∈ Icc x' y') (hy : y ∈ Icc x' y') :
    dist x y ≤ y' - x' := by
  simpa only [Real.dist_eq, abs_of_nonpos (sub_nonpos.2 <| hx.1.trans hx.2), neg_sub] using
    Real.dist_le_of_mem_uIcc (Icc_subset_uIcc hx) (Icc_subset_uIcc hy)

lemma dist_le_of_mem_Icc_01 {x y : ℝ} (hx : x ∈ Icc (0 : ℝ) 1) (hy : y ∈ Icc (0 : ℝ) 1) :
    dist x y ≤ 1 := by simpa only [sub_zero] using Real.dist_le_of_mem_Icc hx hy

variable [Fintype ι] {x y x' y' : ι → ℝ}

lemma dist_le_of_mem_pi_Icc (hx : x ∈ Icc x' y') (hy : y ∈ Icc x' y') : dist x y ≤ dist x' y' := by
  refine (dist_pi_le_iff dist_nonneg).2 fun b =>
    (Real.dist_le_of_mem_uIcc ?_ ?_).trans (dist_le_pi_dist x' y' b) <;> refine Icc_subset_uIcc ?_
  exacts [⟨hx.1 _, hx.2 _⟩, ⟨hy.1 _, hy.2 _⟩]

end Real
```
