# measure_le_mul_measure_gt_le_of_map_rotation_eq_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:985c7ccb-f5ce-a493-09d0-12a1422f6d22",
  "kind": "lemma",
  "lexical_name": "measure_le_mul_measure_gt_le_of_map_rotation_eq_self",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "measure-le-mul-measure-gt-le-of-map-rotation-eq-self--09232ef9703f1d5cc46ad4c6",
  "source": {
    "blob": "559e64cf17d595dbfc07c9242084a40ca67adfe1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 125,
    "path": "GRWTSK/Topology/GeneralTopology/Fernique/Varianta93c0f1d6e95ae69ef1a4d3fb6a5180fcc5df8e7bcf72f4d27bd5e2645f4faae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09232ef9703f1d5cc46ad4c683eb12ee8603d32b3debde038c9f36ddf9fcb041",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Fernique/Varianta93c0f1d6e95ae69ef1a4d3fb6a5180fcc5df8e7bcf72f4d27bd5e2645f4faae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:985c7ccb-f5ce-a493-09d0-12a1422f6d22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma measure_le_mul_measure_gt_le_of_map_rotation_eq_self [SFinite μ]
    (h : (μ.prod μ).map (ContinuousLinearMap.rotation (-(π / 4))) = μ.prod μ)
    (a b : ℝ) :
    μ {x | ‖x‖ ≤ a} * μ {x | b < ‖x‖} ≤ μ {x | (b - a) / √2 < ‖x‖} ^ 2 := by
  calc μ {x | ‖x‖ ≤ a} * μ {x | b < ‖x‖}
  _ = (μ.prod μ) ({x | ‖x‖ ≤ a} ×ˢ {y | b < ‖y‖}) := by rw [Measure.prod_prod]
    -- This is the measure of two bands in the plane (draw a picture!)
  _ = (μ.prod μ) {p | ‖p.1‖ ≤ a ∧ b < ‖p.2‖} := rfl
  _ = ((μ.prod μ).map (ContinuousLinearMap.rotation (-(π / 4)))) {p | ‖p.1‖ ≤ a ∧ b < ‖p.2‖} := by
    -- We can rotate the bands since `μ.prod μ` is invariant under rotation
    rw [h]
  _ = (μ.prod μ) {p | ‖p.1 - p.2‖ / √2 ≤ a ∧ b < ‖p.1 + p.2‖ / √2} := by
    rw [Measure.map_apply (by fun_prop)]
    swap
    · refine MeasurableSet.inter ?_ ?_
      · change MeasurableSet {p : E × E | ‖p.1‖ ≤ a}
        exact measurableSet_le (by fun_prop) (by fun_prop)
      · change MeasurableSet {p : E × E | b < ‖p.2‖}
        exact measurableSet_lt (by fun_prop) (by fun_prop)
    congr 1
    simp only [Set.preimage_ofPred_eq, ContinuousLinearMap.rotation_apply, Real.cos_neg,
      Real.cos_pi_div_four, Real.sin_neg, Real.sin_pi_div_four, neg_smul, neg_neg]
    have h_twos : ‖2⁻¹ * √2‖ = (√2)⁻¹ := by
      simp only [norm_mul, norm_inv, Real.norm_ofNat, Real.norm_eq_abs]
      rw [abs_of_nonneg (by positivity)]
      nth_rw 1 [← Real.sq_sqrt (by simp : (0 : ℝ) ≤ 2)]
      rw [pow_two, mul_inv, mul_assoc, inv_mul_cancel₀ (by positivity), mul_one]
    congr! with p
    · rw [← sub_eq_add_neg, ← smul_sub, norm_smul, div_eq_inv_mul, div_eq_inv_mul, h_twos]
    · rw [← smul_add, norm_smul, div_eq_inv_mul, div_eq_inv_mul, h_twos]
  _ ≤ (μ.prod μ) {p | (b - a) / √2 < ‖p.1‖ ∧ (b - a) / √2 < ‖p.2‖} := by
    -- The rotated bands are contained in quadrants.
    refine measure_mono fun p ↦ ?_
    simp only [Set.mem_ofPred_eq, and_imp]
    intro hp1 hp2
    suffices (b - a) / √2 < min ‖p.1‖ ‖p.2‖ from lt_min_iff.mp this
    calc (b - a) / √2
    _ < (‖p.1 + p.2‖ - ‖p.1 - p.2‖) / 2 := by
      suffices b - a < ‖p.1 + p.2‖ / √2 - ‖p.1 - p.2‖ / √2 by
        calc (b - a) / √2 < (‖p.1 + p.2‖ / √2 - ‖p.1 - p.2‖ / √2) / √2 := by gcongr
        _ = (‖p.1 + p.2‖ - ‖p.1 - p.2‖) / 2 := by
          field_simp; rw [Real.sq_sqrt (by positivity)]; ring
      calc b - a < ‖p.1 + p.2‖ / √2 - a := by gcongr
      _ ≤ ‖p.1 + p.2‖ / √2 - ‖p.1 - p.2‖ / √2 := by gcongr
    _ ≤ min ‖p.1‖ ‖p.2‖ := by
      have := norm_add_sub_norm_sub_le_two_mul_min p.1 p.2
      linarith
  _ = (μ.prod μ) ({x | (b - a) / √2 < ‖x‖} ×ˢ {y | (b - a) / √2 < ‖y‖}) := rfl
  _ ≤ μ {x | (b - a) / √2 < ‖x‖} ^ 2 := by rw [Measure.prod_prod, pow_two]

namespace Fernique

/-- A sequence of real thresholds that will be used to cut the space into annuli.
Chosen such that for a rotation invariant measure, an application of lemma
`measure_le_mul_measure_gt_le_of_map_rotation_eq_self` gives
`μ {x | ‖x‖ ≤ a} * μ {x | normThreshold a (n + 1) < ‖x‖} ≤ μ {x | normThreshold a n < ‖x‖} ^ 2`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Fernique/Varianta93c0f1d6e95ae69ef1a4d3fb6a5180fcc5df8e7bcf72f4d27bd5e2645f4faae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Fernique/Varianta93c0f1d6e95ae69ef1a4d3fb6a5180fcc5df8e7bcf72f4d27bd5e2645f4faae.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `559e64cf17d595dbfc07c9242084a40ca67adfe1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
