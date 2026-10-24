# Complete source: GRWTSK.Topology.MetricTopology.Equicontinuity.Variant7ec539313e3f262a6e5405467ee9f8bf39f27cd74074ad2d6da761c8aab36796

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `739d79e612d3dbbae5b489fb5940984a34bf1a2e` · SHA-256 `58e0ad0c94fee495048bf75219960ebf330561a758065c1608dcd8c92db400b2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.MetricTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.MetricTopology.EquicontinuousAtIffRight.Variant851b68847074317e1c8e3bf98bd81fae61494990e542ca54a2eb416e27ac1450","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"851b68847074317e1c8e3bf98bd81fae61494990e542ca54a2eb416e27ac1450","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.MetricSpaces.SourceCorpus.EquicontinuousAtIffRight.Variant851b68847074317e1c8e3bf98bd81fae61494990e542ca54a2eb416e27ac1450","mathematical_subject":"Topology.MetricSpaces","original_sha256":"851b68847074317e1c8e3bf98bd81fae61494990e542ca54a2eb416e27ac1450","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/MetricSpace/Equicontinuity.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Anatole Dedecker. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Anatole Dedecker
-/
import Mathlib.Topology.UniformSpace.Equicontinuity
import Mathlib.Topology.MetricSpace.Pseudo.Lemmas

/-!
# Equicontinuity in metric spaces

This files contains various facts about (uniform) equicontinuity in metric spaces. Most
importantly, we prove the usual characterization of equicontinuity of `F` at `x₀` in the case of
(pseudo) metric spaces: `∀ ε > 0, ∃ δ > 0, ∀ x, dist x x₀ < δ → ∀ i, dist (F i x₀) (F i x) < ε`,
and we prove that functions sharing a common (local or global) continuity modulus are
(locally or uniformly) equicontinuous.

## Main statements

* `Metric.equicontinuousAt_iff`: characterization of equicontinuity for families of functions
  between (pseudo) metric spaces.
* `Metric.equicontinuousAt_of_continuity_modulus`: convenient way to prove equicontinuity at a
  point of a family of functions to a (pseudo) metric space by showing that they share a common
  *local* continuity modulus.
* `Metric.uniformEquicontinuous_of_continuity_modulus`: convenient way to prove uniform
  equicontinuity of a family of functions to a (pseudo) metric space by showing that they share a
  common *global* continuity modulus.

## Tags

equicontinuity, continuity modulus
-/



namespace GRWTSK.Topology.MetricTopology.EquicontinuousAtIffRight.Variant851b68847074317e1c8e3bf98bd81fae61494990e542ca54a2eb416e27ac1450

open Filter Topology Uniformity

variable {α β ι : Type*} [PseudoMetricSpace α]

namespace Metric

/-- Characterization of equicontinuity for families of functions taking values in a (pseudo) metric
space. -/
theorem equicontinuousAt_iff_right {ι : Type*} [TopologicalSpace β] {F : ι → β → α} {x₀ : β} :
    EquicontinuousAt F x₀ ↔ ∀ ε > 0, ∀ᶠ x in 𝓝 x₀, ∀ i, dist (F i x₀) (F i x) < ε :=
  uniformity_basis_dist.equicontinuousAt_iff_right

/-- Characterization of equicontinuity for families of functions between (pseudo) metric spaces. -/
theorem equicontinuousAt_iff {ι : Type*} [PseudoMetricSpace β] {F : ι → β → α} {x₀ : β} :
    EquicontinuousAt F x₀ ↔ ∀ ε > 0, ∃ δ > 0, ∀ x, dist x x₀ < δ → ∀ i, dist (F i x₀) (F i x) < ε :=
  nhds_basis_ball.equicontinuousAt_iff uniformity_basis_dist

/-- Reformulation of `equicontinuousAt_iff_pair` for families of functions taking values in a
(pseudo) metric space. -/
protected theorem equicontinuousAt_iff_pair {ι : Type*} [TopologicalSpace β] {F : ι → β → α}
    {x₀ : β} :
    EquicontinuousAt F x₀ ↔
      ∀ ε > 0, ∃ U ∈ 𝓝 x₀, ∀ x ∈ U, ∀ x' ∈ U, ∀ i, dist (F i x) (F i x') < ε := by
  rw [equicontinuousAt_iff_pair]
  constructor <;> intro H
  · intro ε hε
    exact H _ (dist_mem_uniformity hε)
  · intro U hU
    rcases mem_uniformity_dist.mp hU with ⟨ε, hε, hεU⟩
    refine Exists.imp (fun V => And.imp_right fun h => ?_) (H _ hε)
    exact fun x hx x' hx' i => hεU (h _ hx _ hx' i)

/-- Characterization of uniform equicontinuity for families of functions taking values in a
(pseudo) metric space. -/
theorem uniformEquicontinuous_iff_right {ι : Type*} [UniformSpace β] {F : ι → β → α} :
    UniformEquicontinuous F ↔ ∀ ε > 0, ∀ᶠ xy : β × β in 𝓤 β, ∀ i, dist (F i xy.1) (F i xy.2) < ε :=
  uniformity_basis_dist.uniformEquicontinuous_iff_right

/-- Characterization of uniform equicontinuity for families of functions between
(pseudo) metric spaces. -/
theorem uniformEquicontinuous_iff {ι : Type*} [PseudoMetricSpace β] {F : ι → β → α} :
    UniformEquicontinuous F ↔
      ∀ ε > 0, ∃ δ > 0, ∀ x y, dist x y < δ → ∀ i, dist (F i x) (F i y) < ε :=
  uniformity_basis_dist.uniformEquicontinuous_iff uniformity_basis_dist

/-- For a family of functions to a (pseudo) metric spaces, a convenient way to prove
equicontinuity at a point is to show that all of the functions share a common *local* continuity
modulus. -/
theorem equicontinuousAt_of_continuity_modulus {ι : Type*} [TopologicalSpace β] {x₀ : β}
    (b : β → ℝ) (b_lim : Tendsto b (𝓝 x₀) (𝓝 0)) (F : ι → β → α)
    (H : ∀ᶠ x in 𝓝 x₀, ∀ i, dist (F i x₀) (F i x) ≤ b x) : EquicontinuousAt F x₀ := by
  rw [Metric.equicontinuousAt_iff_right]
  intro ε ε0
  -- Porting note: Lean 3 didn't need `Filter.mem_map.mp` here
  filter_upwards [Filter.mem_map.mp <| b_lim (Iio_mem_nhds ε0), H] using
    fun x hx₁ hx₂ i => (hx₂ i).trans_lt hx₁

/-- For a family of functions between (pseudo) metric spaces, a convenient way to prove
uniform equicontinuity is to show that all of the functions share a common *global* continuity
modulus. -/
theorem uniformEquicontinuous_of_continuity_modulus {ι : Type*} [PseudoMetricSpace β] (b : ℝ → ℝ)
    (b_lim : Tendsto b (𝓝 0) (𝓝 0)) (F : ι → β → α)
    (H : ∀ (x y : β) (i), dist (F i x) (F i y) ≤ b (dist x y)) : UniformEquicontinuous F := by
  rw [Metric.uniformEquicontinuous_iff]
  intro ε ε0
  rcases tendsto_nhds_nhds.1 b_lim ε ε0 with ⟨δ, δ0, hδ⟩
  refine ⟨δ, δ0, fun x y hxy i => ?_⟩
  calc
    dist (F i x) (F i y) ≤ b (dist x y) := H x y i
    _ ≤ |b (dist x y)| := le_abs_self _
    _ = dist (b (dist x y)) 0 := by simp [Real.dist_eq]
    _ < ε := hδ (by simpa only [Real.dist_eq, tsub_zero, abs_dist] using hxy)

/-- For a family of functions between (pseudo) metric spaces, a convenient way to prove
equicontinuity is to show that all of the functions share a common *global* continuity modulus. -/
theorem equicontinuous_of_continuity_modulus {ι : Type*} [PseudoMetricSpace β] (b : ℝ → ℝ)
    (b_lim : Tendsto b (𝓝 0) (𝓝 0)) (F : ι → β → α)
    (H : ∀ (x y : β) (i), dist (F i x) (F i y) ≤ b (dist x y)) : Equicontinuous F :=
  (uniformEquicontinuous_of_continuity_modulus b b_lim F H).equicontinuous

end Metric
```
