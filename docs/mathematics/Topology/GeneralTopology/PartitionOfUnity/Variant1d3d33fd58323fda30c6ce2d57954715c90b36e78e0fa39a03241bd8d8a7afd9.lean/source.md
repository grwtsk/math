# Complete source: GRWTSK.Topology.GeneralTopology.PartitionOfUnity.Variant1d3d33fd58323fda30c6ce2d57954715c90b36e78e0fa39a03241bd8d8a7afd9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4a604553b8223a504f7afc75b965896d2acfda89` · SHA-256 `1ded6a0eade765629ae6762369e13dc39badf3ded44cf108f5d4f655dacef663`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.EventuallyNhdsZeroForallClosedEBallSubset.Varianta2e5fa99ba03e3356882c93708a581036a332260d0cca985a4a57a33e79b825f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a2e5fa99ba03e3356882c93708a581036a332260d0cca985a4a57a33e79b825f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.EventuallyNhdsZeroForallClosedEBallSubset.Varianta2e5fa99ba03e3356882c93708a581036a332260d0cca985a4a57a33e79b825f","mathematical_subject":"Topology.GeneralTopology","original_sha256":"a2e5fa99ba03e3356882c93708a581036a332260d0cca985a4a57a33e79b825f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Topology/MetricSpace/PartitionOfUnity.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
module

public import Mathlib.Topology.EMetricSpace.Paracompact
public import Mathlib.Topology.Instances.ENNReal.Lemmas
public import Mathlib.Analysis.Convex.PartitionOfUnity

/-!
# Lemmas about (e)metric spaces that need partition of unity

The main lemma in this file (see `Metric.exists_continuous_real_forall_closedBall_subset`) says the
following. Let `X` be a metric space. Let `K : ι → Set X` be a locally finite family of closed sets,
let `U : ι → Set X` be a family of open sets such that `K i ⊆ U i` for all `i`. Then there exists a
positive continuous function `δ : C(X, ℝ)` such that for any `i` and `x ∈ K i`, we have
`Metric.closedBall x (δ x) ⊆ U i`. We also formulate versions of this lemma for extended metric
spaces and for different codomains (`ℝ`, `ℝ≥0`, and `ℝ≥0∞`).

We also prove a few auxiliary lemmas to be used later in a proof of the smooth version of this
lemma.

## Tags

metric space, partition of unity, locally finite
-/


namespace GRWTSK.Topology.GeneralTopology.EventuallyNhdsZeroForallClosedEBallSubset.Varianta2e5fa99ba03e3356882c93708a581036a332260d0cca985a4a57a33e79b825f

public section

open ENNReal NNReal Filter Set TopologicalSpace Metric

open scoped Topology

variable {ι X : Type*}

namespace Metric

variable [EMetricSpace X] {K : ι → Set X} {U : ι → Set X}

/-- Let `K : ι → Set X` be a locally finite family of closed sets in an emetric space. Let
`U : ι → Set X` be a family of open sets such that `K i ⊆ U i` for all `i`. Then for any point
`x : X`, for sufficiently small `r : ℝ≥0∞` and for `y` sufficiently close to `x`, for all `i`, if
`y ∈ K i`, then `Metric.closedEBall y r ⊆ U i`. -/
theorem eventually_nhds_zero_forall_closedEBall_subset (hK : ∀ i, IsClosed (K i))
    (hU : ∀ i, IsOpen (U i)) (hKU : ∀ i, K i ⊆ U i) (hfin : LocallyFinite K) (x : X) :
    ∀ᶠ p : ℝ≥0∞ × X in 𝓝 0 ×ˢ 𝓝 x, ∀ i, p.2 ∈ K i → closedEBall p.2 p.1 ⊆ U i := by
  suffices ∀ i, x ∈ K i → ∀ᶠ p : ℝ≥0∞ × X in 𝓝 0 ×ˢ 𝓝 x, closedEBall p.2 p.1 ⊆ U i by
    apply mp_mem ((eventually_all_finite (hfin.point_finite x)).2 this)
      (mp_mem (@tendsto_snd ℝ≥0∞ _ (𝓝 0) _ _ (hfin.iInter_compl_mem_nhds hK x)) _)
    apply univ_mem'
    rintro ⟨r, y⟩ hxy hyU i hi
    simp only [mem_iInter, mem_compl_iff, not_imp_not, mem_preimage] at hxy
    exact hyU _ (hxy _ hi)
  intro i hi
  rcases nhds_basis_closedEBall.mem_iff.1 ((hU i).mem_nhds <| hKU i hi) with ⟨R, hR₀, hR⟩
  rcases ENNReal.lt_iff_exists_nnreal_btwn.mp hR₀ with ⟨r, hr₀, hrR⟩
  filter_upwards [prod_mem_prod (eventually_lt_nhds hr₀)
      (closedEBall_mem_nhds x (tsub_pos_iff_lt.2 hrR))] with p hp z hz
  apply hR
  calc
    edist z x ≤ edist z p.2 + edist p.2 x := edist_triangle _ _ _
    _ ≤ p.1 + (R - p.1) := add_le_add hz <| le_trans hp.2 <| tsub_le_tsub_left hp.1.out.le _
    _ = R := add_tsub_cancel_of_le (lt_trans (by exact hp.1) hrR).le

/-- Auxiliary lemma for `exists_continuous_real_forall_closedEBall_subset`
and its smooth counterpart. -/
theorem exists_forall_closedEBall_subset_aux₁ (hK : ∀ i, IsClosed (K i))
    (hU : ∀ i, IsOpen (U i)) (hKU : ∀ i, K i ⊆ U i) (hfin : LocallyFinite K) (x : X) :
    ∃ r : ℝ, ∀ᶠ y in 𝓝 x,
      r ∈ Ioi (0 : ℝ) ∩ ENNReal.ofReal ⁻¹' ⋂ (i) (_ : y ∈ K i), { r | closedEBall y r ⊆ U i } := by
  have := (ENNReal.continuous_ofReal.tendsto' 0 0 ENNReal.ofReal_zero).eventually
    (eventually_nhds_zero_forall_closedEBall_subset hK hU hKU hfin x).curry
  rcases this.exists_gt with ⟨r, hr0, hr⟩
  refine ⟨r, hr.mono fun y hy => ⟨hr0, ?_⟩⟩
  rwa [mem_preimage, mem_iInter₂]

/-- Auxiliary lemma for `exists_continuous_real_forall_closedEBall_subset`
and its smooth counterpart. -/
theorem exists_forall_closedEBall_subset_aux₂ (y : X) :
    Convex ℝ
      (Ioi (0 : ℝ) ∩ ENNReal.ofReal ⁻¹' ⋂ (i) (_ : y ∈ K i), { r | closedEBall y r ⊆ U i }) :=
  (convex_Ioi _).inter <| OrdConnected.convex <| OrdConnected.preimage_ennreal_ofReal <|
    ordConnected_iInter fun i => ordConnected_iInter fun (_ : y ∈ K i) =>
      ordConnected_setOfPred_closedEBall_subset y (U i)

/-- Let `X` be an extended metric space. Let `K : ι → Set X` be a locally finite family of closed
sets, let `U : ι → Set X` be a family of open sets such that `K i ⊆ U i` for all `i`. Then there
exists a positive continuous function `δ : C(X, ℝ)` such that for any `i` and `x ∈ K i`,
we have `Metric.closedEBall x (ENNReal.ofReal (δ x)) ⊆ U i`. -/
theorem exists_continuous_real_forall_closedEBall_subset (hK : ∀ i, IsClosed (K i))
    (hU : ∀ i, IsOpen (U i)) (hKU : ∀ i, K i ⊆ U i) (hfin : LocallyFinite K) :
    ∃ δ : C(X, ℝ), (∀ x, 0 < δ x) ∧
      ∀ (i), ∀ x ∈ K i, closedEBall x (ENNReal.ofReal <| δ x) ⊆ U i := by
  simpa only [mem_inter_iff, forall_and, mem_preimage, mem_iInter, @forall_comm ι X] using!
    exists_continuous_forall_mem_convex_of_local_const exists_forall_closedEBall_subset_aux₂
      (exists_forall_closedEBall_subset_aux₁ hK hU hKU hfin)

/-- Let `X` be an extended metric space. Let `K : ι → Set X` be a locally finite family of closed
sets, let `U : ι → Set X` be a family of open sets such that `K i ⊆ U i` for all `i`. Then there
exists a positive continuous function `δ : C(X, ℝ≥0)` such that for any `i` and `x ∈ K i`,
we have `Metric.closedEBall x (δ x) ⊆ U i`. -/
theorem exists_continuous_nnreal_forall_closedEBall_subset (hK : ∀ i, IsClosed (K i))
    (hU : ∀ i, IsOpen (U i)) (hKU : ∀ i, K i ⊆ U i) (hfin : LocallyFinite K) :
    ∃ δ : C(X, ℝ≥0), (∀ x, 0 < δ x) ∧ ∀ (i), ∀ x ∈ K i, closedEBall x (δ x) ⊆ U i := by
  rcases exists_continuous_real_forall_closedEBall_subset hK hU hKU hfin with ⟨δ, hδ₀, hδ⟩
  lift δ to C(X, ℝ≥0) using fun x => (hδ₀ x).le
  refine ⟨δ, hδ₀, fun i x hi => ?_⟩
  simpa only [← ENNReal.ofReal_coe_nnreal] using! hδ i x hi

/-- Let `X` be an extended metric space. Let `K : ι → Set X` be a locally finite family of closed
sets, let `U : ι → Set X` be a family of open sets such that `K i ⊆ U i` for all `i`. Then there
exists a positive continuous function `δ : C(X, ℝ≥0∞)` such that for any `i` and `x ∈ K i`,
we have `Metric.closedEBall x (δ x) ⊆ U i`. -/
theorem exists_continuous_ennreal_forall_closedEBall_subset (hK : ∀ i, IsClosed (K i))
    (hU : ∀ i, IsOpen (U i)) (hKU : ∀ i, K i ⊆ U i) (hfin : LocallyFinite K) :
    ∃ δ : C(X, ℝ≥0∞), (∀ x, 0 < δ x) ∧ ∀ (i), ∀ x ∈ K i, closedEBall x (δ x) ⊆ U i :=
  let ⟨δ, hδ₀, hδ⟩ := exists_continuous_nnreal_forall_closedEBall_subset hK hU hKU hfin
  ⟨ContinuousMap.comp ⟨Coe.coe, ENNReal.continuous_coe⟩ δ, fun x => ENNReal.coe_pos.2 (hδ₀ x), hδ⟩

end Metric

namespace Metric

variable [MetricSpace X] {K : ι → Set X} {U : ι → Set X}

/-- Let `X` be a metric space. Let `K : ι → Set X` be a locally finite family of closed sets, let
`U : ι → Set X` be a family of open sets such that `K i ⊆ U i` for all `i`. Then there exists a
positive continuous function `δ : C(X, ℝ≥0)` such that for any `i` and `x ∈ K i`, we have
`Metric.closedBall x (δ x) ⊆ U i`. -/
theorem exists_continuous_nnreal_forall_closedBall_subset (hK : ∀ i, IsClosed (K i))
    (hU : ∀ i, IsOpen (U i)) (hKU : ∀ i, K i ⊆ U i) (hfin : LocallyFinite K) :
    ∃ δ : C(X, ℝ≥0), (∀ x, 0 < δ x) ∧ ∀ (i), ∀ x ∈ K i, closedBall x (δ x) ⊆ U i := by
  rcases Metric.exists_continuous_nnreal_forall_closedEBall_subset hK hU hKU hfin with ⟨δ, hδ0, hδ⟩
  refine ⟨δ, hδ0, fun i x hx => ?_⟩
  rw [← Metric.closedEBall_coe]
  exact hδ i x hx

/-- Let `X` be a metric space. Let `K : ι → Set X` be a locally finite family of closed sets, let
`U : ι → Set X` be a family of open sets such that `K i ⊆ U i` for all `i`. Then there exists a
positive continuous function `δ : C(X, ℝ)` such that for any `i` and `x ∈ K i`, we have
`Metric.closedBall x (δ x) ⊆ U i`. -/
theorem exists_continuous_real_forall_closedBall_subset (hK : ∀ i, IsClosed (K i))
    (hU : ∀ i, IsOpen (U i)) (hKU : ∀ i, K i ⊆ U i) (hfin : LocallyFinite K) :
    ∃ δ : C(X, ℝ), (∀ x, 0 < δ x) ∧ ∀ (i), ∀ x ∈ K i, closedBall x (δ x) ⊆ U i :=
  let ⟨δ, hδ₀, hδ⟩ := exists_continuous_nnreal_forall_closedBall_subset hK hU hKU hfin
  ⟨ContinuousMap.comp ⟨Coe.coe, NNReal.continuous_coe⟩ δ, hδ₀, hδ⟩

end Metric
```
