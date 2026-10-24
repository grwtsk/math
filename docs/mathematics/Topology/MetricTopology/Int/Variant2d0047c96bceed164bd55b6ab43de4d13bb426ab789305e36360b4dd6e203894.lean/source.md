# Complete source: GRWTSK.Topology.MetricTopology.Int.Variant2d0047c96bceed164bd55b6ab43de4d13bb426ab789305e36360b4dd6e203894

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d94a03cf1c092a9640ebc0df3a70c0f031397ab6` · SHA-256 `6b90db74b3bc215e1fb165059f5a317ed41ae843c34647f7a67f6ac24307a88d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.MetricTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.MetricTopology.DistEq.Variant698b6dfbc82e533807266e55ff7685ddf2f2c1c7c898f5102c9e4dab9cc9694c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"698b6dfbc82e533807266e55ff7685ddf2f2c1c7c898f5102c9e4dab9cc9694c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.MetricSpaces.SourceCorpus.DistEq.Variant698b6dfbc82e533807266e55ff7685ddf2f2c1c7c898f5102c9e4dab9cc9694c","mathematical_subject":"Topology.MetricSpaces","original_sha256":"698b6dfbc82e533807266e55ff7685ddf2f2c1c7c898f5102c9e4dab9cc9694c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Topology/Instances/Int.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Mario Carneiro
-/
module

public import Mathlib.Data.Int.Interval
public import Mathlib.Data.Int.ConditionallyCompleteOrder
public import Mathlib.Topology.Instances.Discrete
public import Mathlib.Topology.MetricSpace.Bounded
public import Mathlib.Topology.MetricSpace.Basic
public import Mathlib.Topology.Order.Bornology

/-!
# Topology on the integers

The structure of a metric space on `ℤ` is introduced in this file, induced from `ℝ`.
-/


namespace GRWTSK.Topology.MetricTopology.DistEq.Variant698b6dfbc82e533807266e55ff7685ddf2f2c1c7c898f5102c9e4dab9cc9694c

public section


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

instance : IsOrderBornology ℤ :=
  .of_isCompactIcc 0 (by simp [Int.closedBall_eq_Icc]) (by simp [Int.closedBall_eq_Icc])

@[deprecated (since := "2026-04-07")]
alias cobounded_eq := IsOrderBornology.cobounded_eq

@[simp]
theorem cofinite_eq : (cofinite : Filter ℤ) = atBot ⊔ atTop := by
  rw [← cocompact_eq_cofinite, cocompact_eq_atBot_atTop]

end Int
```
