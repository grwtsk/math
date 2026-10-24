# measure_gt_normThreshold_le_rpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dc7c6bec-50c9-69a3-063e-0531a2f048f0",
  "kind": "lemma",
  "lexical_name": "measure_gt_normThreshold_le_rpow",
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
  "slug": "measure-gt-normthreshold-le-rpow--c712a8e31077598347550975",
  "source": {
    "blob": "559e64cf17d595dbfc07c9242084a40ca67adfe1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 251,
    "line": 222,
    "path": "GRWTSK/Topology/GeneralTopology/Fernique/Varianta93c0f1d6e95ae69ef1a4d3fb6a5180fcc5df8e7bcf72f4d27bd5e2645f4faae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c712a8e3107759834755097520c156562f51492262f2feedfbadecfc26e4a359",
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

Occurrence: `result:dc7c6bec-50c9-69a3-063e-0531a2f048f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma measure_gt_normThreshold_le_rpow [IsProbabilityMeasure μ]
    (h_rot : (μ.prod μ).map (ContinuousLinearMap.rotation (-(π / 4))) = μ.prod μ)
    (ha_gt : 2⁻¹ < μ {x | ‖x‖ ≤ a}) (n : ℕ) :
    μ {x | normThreshold a n < ‖x‖}
      ≤ μ {x | ‖x‖ ≤ a} * ((1 - μ {x | ‖x‖ ≤ a}) / μ {x | ‖x‖ ≤ a}) ^ (2 ^ n) := by
  let c := μ {x | ‖x‖ ≤ a}
  replace hc_gt : 2⁻¹ < c := ha_gt
  have hc_pos : 0 < c := lt_of_lt_of_le (by simp) hc_gt.le
  have hc_lt_top : c < ∞ := measure_lt_top _ _
  induction n with
  | zero =>
    simp only [pow_zero, pow_one, normThreshold_zero]
    rw [ENNReal.mul_div_cancel hc_pos.ne' hc_lt_top.ne]
    refine le_of_eq ?_
    rw [← prob_compl_eq_one_sub (measurableSet_le (by fun_prop) (by fun_prop))]
    congr with x
    simp
  | succ n hn =>
    have h_mul_le : c * μ {x | normThreshold a (n + 1) < ‖x‖}
        ≤ μ {x | normThreshold a n < ‖x‖} ^ 2 :=
      measure_le_mul_measure_gt_normThreshold_le_of_map_rotation_eq_self h_rot _ _
    calc μ {x | normThreshold a (n + 1) < ‖x‖}
    _ = c⁻¹ * (c * μ {x | normThreshold a (n + 1) < ‖x‖}) := by
      rw [← mul_assoc, ENNReal.inv_mul_cancel hc_pos.ne' hc_lt_top.ne, one_mul]
    _ ≤ c⁻¹ * μ {x | normThreshold a n < ‖x‖} ^ 2 := by gcongr
    _ ≤ c⁻¹ * (c * ((1 - c) / c) ^ 2 ^ n) ^ 2 := by gcongr
    _ = c * ((1 - c) / c) ^ 2 ^ (n + 1) := by
      rw [mul_pow, ← pow_mul, ← mul_assoc, pow_two, ← mul_assoc,
        ENNReal.inv_mul_cancel hc_pos.ne' hc_lt_top.ne, one_mul, pow_add, pow_one]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Fernique/Varianta93c0f1d6e95ae69ef1a4d3fb6a5180fcc5df8e7bcf72f4d27bd5e2645f4faae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Fernique/Varianta93c0f1d6e95ae69ef1a4d3fb6a5180fcc5df8e7bcf72f4d27bd5e2645f4faae.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `559e64cf17d595dbfc07c9242084a40ca67adfe1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
