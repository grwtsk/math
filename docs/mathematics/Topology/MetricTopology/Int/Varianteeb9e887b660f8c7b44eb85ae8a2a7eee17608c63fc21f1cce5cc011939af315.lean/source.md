# Complete source: GRWTSK.Topology.MetricTopology.Int.Varianteeb9e887b660f8c7b44eb85ae8a2a7eee17608c63fc21f1cce5cc011939af315

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4c66cf6ea80ffbff6a51794300a35fb818d653fb` · SHA-256 `bf626e55afd6f738b801b2eac57197f98e676623c408f7d4f487c307452fa6fd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.MetricTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.MetricTopology.DistEq.Variant7f459fe3653cdd7351788f53e8c04cb39fd7676751b39caebb3e6d762af4633b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7f459fe3653cdd7351788f53e8c04cb39fd7676751b39caebb3e6d762af4633b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.MetricSpaces.SourceCorpus.DistEq.Variant7f459fe3653cdd7351788f53e8c04cb39fd7676751b39caebb3e6d762af4633b","mathematical_subject":"Topology.MetricSpaces","original_sha256":"7f459fe3653cdd7351788f53e8c04cb39fd7676751b39caebb3e6d762af4633b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Instances/Int.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Mario Carneiro
-/
import Mathlib.Data.Int.Interval
import Mathlib.Data.Int.ConditionallyCompleteOrder
import Mathlib.Topology.Instances.Discrete
import Mathlib.Topology.MetricSpace.Bounded
import Mathlib.Order.Filter.AtTopBot.Archimedean
import Mathlib.Topology.MetricSpace.Basic

/-!
# Topology on the integers

The structure of a metric space on `ℤ` is introduced in this file, induced from `ℝ`.
-/



namespace GRWTSK.Topology.MetricTopology.DistEq.Variant7f459fe3653cdd7351788f53e8c04cb39fd7676751b39caebb3e6d762af4633b

noncomputable section

open Filter Metric Set Topology

namespace Int

instance : Dist ℤ :=
  ⟨fun x y => dist (x : ℝ) y⟩

theorem dist_eq (x y : ℤ) : dist x y = |(x : ℝ) - y| := rfl

theorem dist_eq' (m n : ℤ) : dist m n = |m - n| := by rw [dist_eq]; norm_cast

@[norm_cast, simp]
theorem dist_cast_real (x y : ℤ) : dist (x : ℝ) y = dist x y :=
  rfl

theorem pairwise_one_le_dist : Pairwise fun m n : ℤ => 1 ≤ dist m n := by
  intro m n hne
  rw [dist_eq]; norm_cast; rwa [← zero_add (1 : ℤ), Int.add_one_le_iff, abs_pos, sub_ne_zero]

theorem isUniformEmbedding_coe_real : IsUniformEmbedding ((↑) : ℤ → ℝ) :=
  isUniformEmbedding_bot_of_pairwise_le_dist zero_lt_one pairwise_one_le_dist

theorem isClosedEmbedding_coe_real : IsClosedEmbedding ((↑) : ℤ → ℝ) :=
  isClosedEmbedding_of_pairwise_le_dist zero_lt_one pairwise_one_le_dist

instance : MetricSpace ℤ := Int.isUniformEmbedding_coe_real.comapMetricSpace _

theorem preimage_ball (x : ℤ) (r : ℝ) : (↑) ⁻¹' ball (x : ℝ) r = ball x r := rfl

theorem preimage_closedBall (x : ℤ) (r : ℝ) : (↑) ⁻¹' closedBall (x : ℝ) r = closedBall x r := rfl

theorem ball_eq_Ioo (x : ℤ) (r : ℝ) : ball x r = Ioo ⌊↑x - r⌋ ⌈↑x + r⌉ := by
  rw [← preimage_ball, Real.ball_eq_Ioo, preimage_Ioo]

theorem closedBall_eq_Icc (x : ℤ) (r : ℝ) : closedBall x r = Icc ⌈↑x - r⌉ ⌊↑x + r⌋ := by
  rw [← preimage_closedBall, Real.closedBall_eq_Icc, preimage_Icc]

instance : ProperSpace ℤ :=
  ⟨fun x r => by
    rw [closedBall_eq_Icc]
    exact (Set.finite_Icc _ _).isCompact⟩

@[simp]
theorem cobounded_eq : Bornology.cobounded ℤ = atBot ⊔ atTop := by
  simp_rw [← comap_dist_right_atTop (0 : ℤ), dist_eq', sub_zero,
    ← comap_abs_atTop, ← @Int.comap_cast_atTop ℝ, comap_comap]; rfl


@[simp]
theorem cofinite_eq : (cofinite : Filter ℤ) = atBot ⊔ atTop := by
  rw [← cocompact_eq_cofinite, cocompact_eq_atBot_atTop]

end Int
```
