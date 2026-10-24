# Complete source: GRWTSK.Topology.GeneralTopology.NormedSpace.Variant1a49af899f736dea816b4b03f89d61dcf8e8e0651413d8e37580b4ebf87cd9ad

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5776f39296405f9b750ec40e2000aa91a5e19450` · SHA-256 `a4b83f08bc7dd83c227d13538f431bd52bae41af83f7710a9af3a27a080cf07f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.FunctionIsFixedPtTendstoBirkhoffAverage.Variant9f83b6f634f6547558ed014e0ee4a40566f0adb7d340d4ea0e9d91cf60b1577d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9f83b6f634f6547558ed014e0ee4a40566f0adb7d340d4ea0e9d91cf60b1577d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.FunctionIsFixedPtTendstoBirkhoffAverage.Variant9f83b6f634f6547558ed014e0ee4a40566f0adb7d340d4ea0e9d91cf60b1577d","mathematical_subject":"Topology.GeneralTopology","original_sha256":"9f83b6f634f6547558ed014e0ee4a40566f0adb7d340d4ea0e9d91cf60b1577d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Dynamics/BirkhoffSum/NormedSpace.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Analysis.RCLike.Basic
import Mathlib.Dynamics.BirkhoffSum.Average

/-!
# Birkhoff average in a normed space

In this file we prove some lemmas about the Birkhoff average (`birkhoffAverage`)
of a function which takes values in a normed space over `ℝ` or `ℂ`.

At the time of writing, all lemmas in this file
are motivated by the proof of the von Neumann Mean Ergodic Theorem,
see `LinearIsometry.tendsto_birkhoffAverage_orthogonalProjection`.
-/


namespace GRWTSK.Topology.GeneralTopology.FunctionIsFixedPtTendstoBirkhoffAverage.Variant9f83b6f634f6547558ed014e0ee4a40566f0adb7d340d4ea0e9d91cf60b1577d

open Function Set Filter
open scoped Topology ENNReal Uniformity

section

variable {α E : Type*}

/-- The Birkhoff averages of a function `g` over the orbit of a fixed point `x` of `f`
tend to `g x` as `N → ∞`. In fact, they are equal to `g x` for all `N ≠ 0`,
see `Function.IsFixedPt.birkhoffAverage_eq`.

TODO: add a version for a periodic orbit. -/
theorem Function.IsFixedPt.tendsto_birkhoffAverage
    (R : Type*) [DivisionSemiring R] [CharZero R]
    [AddCommMonoid E] [TopologicalSpace E] [Module R E]
    {f : α → α} {x : α} (h : f.IsFixedPt x) (g : α → E) :
    Tendsto (birkhoffAverage R f g · x) atTop (𝓝 (g x)) :=
  tendsto_const_nhds.congr' <| (eventually_ne_atTop 0).mono fun _n hn ↦
    (h.birkhoffAverage_eq R g hn).symm

variable [NormedAddCommGroup E]

theorem dist_birkhoffSum_apply_birkhoffSum (f : α → α) (g : α → E) (n : ℕ) (x : α) :
    dist (birkhoffSum f g n (f x)) (birkhoffSum f g n x) = dist (g (f^[n] x)) (g x) := by
  simp only [dist_eq_norm, birkhoffSum_apply_sub_birkhoffSum]

theorem dist_birkhoffSum_birkhoffSum_le (f : α → α) (g : α → E) (n : ℕ) (x y : α) :
    dist (birkhoffSum f g n x) (birkhoffSum f g n y) ≤
      ∑ k ∈ Finset.range n, dist (g (f^[k] x)) (g (f^[k] y)) :=
  dist_sum_sum_le _ _ _

variable (𝕜 : Type*) [RCLike 𝕜] [NormedSpace 𝕜 E]

theorem dist_birkhoffAverage_birkhoffAverage (f : α → α) (g : α → E) (n : ℕ) (x y : α) :
    dist (birkhoffAverage 𝕜 f g n x) (birkhoffAverage 𝕜 f g n y) =
      dist (birkhoffSum f g n x) (birkhoffSum f g n y) / n := by
  simp [birkhoffAverage, dist_smul₀, div_eq_inv_mul]

theorem dist_birkhoffAverage_birkhoffAverage_le (f : α → α) (g : α → E) (n : ℕ) (x y : α) :
    dist (birkhoffAverage 𝕜 f g n x) (birkhoffAverage 𝕜 f g n y) ≤
      (∑ k ∈ Finset.range n, dist (g (f^[k] x)) (g (f^[k] y))) / n :=
  (dist_birkhoffAverage_birkhoffAverage _ _ _ _ _ _).trans_le <| by
    gcongr; apply dist_birkhoffSum_birkhoffSum_le

theorem dist_birkhoffAverage_apply_birkhoffAverage (f : α → α) (g : α → E) (n : ℕ) (x : α) :
    dist (birkhoffAverage 𝕜 f g n (f x)) (birkhoffAverage 𝕜 f g n x) =
      dist (g (f^[n] x)) (g x) / n := by
  simp [dist_birkhoffAverage_birkhoffAverage, dist_birkhoffSum_apply_birkhoffSum]

/-- If a function `g` is bounded along the positive orbit of `x` under `f`,
then the difference between Birkhoff averages of `g`
along the orbit of `f x` and along the orbit of `x`
tends to zero.

See also `tendsto_birkhoffAverage_apply_sub_birkhoffAverage'`. -/
theorem tendsto_birkhoffAverage_apply_sub_birkhoffAverage {f : α → α} {g : α → E} {x : α}
    (h : Bornology.IsBounded (range (g <| f^[·] x))) :
    Tendsto (fun n ↦ birkhoffAverage 𝕜 f g n (f x) - birkhoffAverage 𝕜 f g n x) atTop (𝓝 0) := by
  rcases Metric.isBounded_range_iff.1 h with ⟨C, hC⟩
  have : Tendsto (fun n : ℕ ↦ C / n) atTop (𝓝 0) :=
    tendsto_const_nhds.div_atTop tendsto_natCast_atTop_atTop
  refine squeeze_zero_norm (fun n ↦ ?_) this
  rw [← dist_eq_norm, dist_birkhoffAverage_apply_birkhoffAverage]
  gcongr
  exact hC n 0

/-- If a function `g` is bounded,
then the difference between Birkhoff averages of `g`
along the orbit of `f x` and along the orbit of `x`
tends to zero.

See also `tendsto_birkhoffAverage_apply_sub_birkhoffAverage`. -/
theorem tendsto_birkhoffAverage_apply_sub_birkhoffAverage' {g : α → E}
    (h : Bornology.IsBounded (range g)) (f : α → α) (x : α) :
    Tendsto (fun n ↦ birkhoffAverage 𝕜 f g n (f x) - birkhoffAverage 𝕜 f g n x) atTop (𝓝 0) :=
  tendsto_birkhoffAverage_apply_sub_birkhoffAverage _ <| h.subset <| range_comp_subset_range _ _

end

variable (𝕜 : Type*) {X E : Type*}
  [PseudoEMetricSpace X] [RCLike 𝕜] [NormedAddCommGroup E] [NormedSpace 𝕜 E]
  {f : X → X} {g : X → E} {l : X → E}

/-- If `f` is a non-strictly contracting map (i.e., it is Lipschitz with constant `1`)
and `g` is a uniformly continuous, then the Birkhoff averages of `g` along orbits of `f`
is a uniformly equicontinuous family of functions. -/
theorem uniformEquicontinuous_birkhoffAverage (hf : LipschitzWith 1 f) (hg : UniformContinuous g) :
    UniformEquicontinuous (birkhoffAverage 𝕜 f g) := by
  refine Metric.uniformity_basis_dist_le.uniformEquicontinuous_iff_right.2 fun ε hε ↦ ?_
  rcases (uniformity_basis_edist_le.uniformContinuous_iff Metric.uniformity_basis_dist_le).1 hg ε hε
    with ⟨δ, hδ₀, hδε⟩
  refine mem_uniformity_edist.2 ⟨δ, hδ₀, fun {x y} h n ↦ ?_⟩
  calc
    dist (birkhoffAverage 𝕜 f g n x) (birkhoffAverage 𝕜 f g n y)
      ≤ (∑ k ∈ Finset.range n, dist (g (f^[k] x)) (g (f^[k] y))) / n :=
      dist_birkhoffAverage_birkhoffAverage_le ..
    _ ≤ (∑ _k ∈ Finset.range n, ε) / n := by
      gcongr
      refine hδε _ _ ?_
      simpa using (hf.iterate _).edist_le_mul_of_le h.le
    _ = n * ε / n := by simp
    _ ≤ ε := by
      rcases eq_or_ne n 0 with hn | hn <;> field_simp [hn, hε.le, mul_div_cancel_left₀]

/-- If `f : X → X` is a non-strictly contracting map (i.e., it is Lipschitz with constant `1`),
`g : X → E` is a uniformly continuous, and `l : X → E` is a continuous function,
then the set of points `x`
such that the Birkhoff average of `g` along the orbit of `x` tends to `l x`
is a closed set. -/
theorem isClosed_setOf_tendsto_birkhoffAverage
    (hf : LipschitzWith 1 f) (hg : UniformContinuous g) (hl : Continuous l) :
    IsClosed {x | Tendsto (birkhoffAverage 𝕜 f g · x) atTop (𝓝 (l x))} :=
  (uniformEquicontinuous_birkhoffAverage 𝕜 hf hg).equicontinuous.isClosed_setOf_tendsto hl
```
