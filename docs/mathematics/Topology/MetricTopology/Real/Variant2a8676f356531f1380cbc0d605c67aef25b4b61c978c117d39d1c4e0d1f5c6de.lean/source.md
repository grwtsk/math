# Complete source: GRWTSK.Topology.MetricTopology.Real.Variant2a8676f356531f1380cbc0d605c67aef25b4b61c978c117d39d1c4e0d1f5c6de

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6b06f232fd7ccebaac009ce420d4ad0c0f1abef2` · SHA-256 `4e2e59844fdd7fa5b6ddfa77d8f44d18b86825d136323122df9620d408d1bc91`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.MetricTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.MetricTopology.DistLeftLeOfMemUIcc.Variant143efe8ed0bbdd0e6e33d0bd23cf7e3c88ed46eed3a02394fbcc57de3a56c812","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"143efe8ed0bbdd0e6e33d0bd23cf7e3c88ed46eed3a02394fbcc57de3a56c812","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.MetricSpaces.SourceCorpus.DistLeftLeOfMemUIcc.Variant143efe8ed0bbdd0e6e33d0bd23cf7e3c88ed46eed3a02394fbcc57de3a56c812","mathematical_subject":"Topology.MetricSpaces","original_sha256":"143efe8ed0bbdd0e6e33d0bd23cf7e3c88ed46eed3a02394fbcc57de3a56c812","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Topology/MetricSpace/Pseudo/Real.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2015 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad, Robert Y. Lewis, Johannes Hölzl, Mario Carneiro, Sébastien Gouëzel
-/
module

public import Mathlib.Algebra.Order.Group.Pointwise.Interval
public import Mathlib.Topology.MetricSpace.Pseudo.Pi

/-!
# Lemmas about distances between points in intervals in `ℝ`.
-/


namespace GRWTSK.Topology.MetricTopology.DistLeftLeOfMemUIcc.Variant143efe8ed0bbdd0e6e33d0bd23cf7e3c88ed46eed3a02394fbcc57de3a56c812

public section

open Set
open scoped NNReal Topology

namespace Real

variable {ι : Type*}

lemma dist_left_le_of_mem_uIcc {x y z : ℝ} (h : y ∈ uIcc x z) : dist x y ≤ dist x z := by
  simpa only [dist_comm x] using! abs_sub_left_of_mem_uIcc h

lemma dist_right_le_of_mem_uIcc {x y z : ℝ} (h : y ∈ uIcc x z) : dist y z ≤ dist x z := by
  simpa only [dist_comm _ z] using! abs_sub_right_of_mem_uIcc h

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
