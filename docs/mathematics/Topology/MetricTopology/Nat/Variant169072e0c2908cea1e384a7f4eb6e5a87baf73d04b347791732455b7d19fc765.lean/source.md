# Complete source: GRWTSK.Topology.MetricTopology.Nat.Variant169072e0c2908cea1e384a7f4eb6e5a87baf73d04b347791732455b7d19fc765

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ed3df965ce241fbe7b26fa8d0d01c882124e619b` · SHA-256 `022244b611a9d30bfc96b7f34e3a99111aba42f91152eb651b31bea0384b4411`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.MetricTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.MetricTopology.DistEq.Variant470977f8b53891993ee066f0b1283e9c8f1c66095f01e487df6308e503a4361b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"470977f8b53891993ee066f0b1283e9c8f1c66095f01e487df6308e503a4361b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.MetricSpaces.SourceCorpus.DistEq.Variant470977f8b53891993ee066f0b1283e9c8f1c66095f01e487df6308e503a4361b","mathematical_subject":"Topology.MetricSpaces","original_sha256":"470977f8b53891993ee066f0b1283e9c8f1c66095f01e487df6308e503a4361b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Instances/Nat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Mario Carneiro
-/
import Mathlib.Topology.Instances.Int
import Mathlib.Data.Nat.Lattice

/-!
# Topology on the natural numbers

The structure of a metric space on `ℕ` is introduced in this file, induced from `ℝ`.
-/


namespace GRWTSK.Topology.MetricTopology.DistEq.Variant470977f8b53891993ee066f0b1283e9c8f1c66095f01e487df6308e503a4361b

noncomputable section

open Filter Metric Set Topology

namespace Nat

noncomputable instance : Dist ℕ :=
  ⟨fun x y => dist (x : ℝ) y⟩

theorem dist_eq (x y : ℕ) : dist x y = |(x : ℝ) - y| := rfl

theorem dist_coe_int (x y : ℕ) : dist (x : ℤ) (y : ℤ) = dist x y := rfl

@[norm_cast, simp]
theorem dist_cast_real (x y : ℕ) : dist (x : ℝ) y = dist x y := rfl

theorem pairwise_one_le_dist : Pairwise fun m n : ℕ => 1 ≤ dist m n := fun _ _ hne =>
  Int.pairwise_one_le_dist <| mod_cast hne

theorem isUniformEmbedding_coe_real : IsUniformEmbedding ((↑) : ℕ → ℝ) :=
  isUniformEmbedding_bot_of_pairwise_le_dist zero_lt_one pairwise_one_le_dist

theorem isClosedEmbedding_coe_real : IsClosedEmbedding ((↑) : ℕ → ℝ) :=
  isClosedEmbedding_of_pairwise_le_dist zero_lt_one pairwise_one_le_dist

instance : MetricSpace ℕ := Nat.isUniformEmbedding_coe_real.comapMetricSpace _

theorem preimage_ball (x : ℕ) (r : ℝ) : (↑) ⁻¹' ball (x : ℝ) r = ball x r := rfl

theorem preimage_closedBall (x : ℕ) (r : ℝ) : (↑) ⁻¹' closedBall (x : ℝ) r = closedBall x r := rfl

theorem closedBall_eq_Icc (x : ℕ) (r : ℝ) : closedBall x r = Icc ⌈↑x - r⌉₊ ⌊↑x + r⌋₊ := by
  rcases le_or_lt 0 r with (hr | hr)
  · rw [← preimage_closedBall, Real.closedBall_eq_Icc, preimage_Icc]
    positivity
  · rw [closedBall_eq_empty.2 hr, Icc_eq_empty_of_lt]
    calc ⌊(x : ℝ) + r⌋₊ ≤ ⌊(x : ℝ)⌋₊ := floor_mono <| by linarith
    _ < ⌈↑x - r⌉₊ := by
      rw [floor_natCast, Nat.lt_ceil]
      linarith

instance : ProperSpace ℕ :=
  ⟨fun x r => by
    rw [closedBall_eq_Icc]
    exact (Set.finite_Icc _ _).isCompact⟩

instance : NoncompactSpace ℕ :=
  noncompactSpace_of_neBot <| by simp [Filter.atTop_neBot]

end Nat
```
