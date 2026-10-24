# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.PolygonIndexControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0f7a01300098ad69eeb5297c2edb7bc24c08840b",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/PolygonIndexControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PolygonIndexControls.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PolygonIndexControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0f7a01300098ad69eeb5297c2edb7bc24c08840b`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/PolygonIndexControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/PolygonIndexControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.PoleContourPolygonIndex`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleContourPolygonIndex.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.Checks.PoleContourWinding`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleContourWinding.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [square](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PolygonIndexControls.lean/declarations/square--7fa5667f0bfc8a2f9bb2a05f.md) | 23 | `declaration-track:7fa5667f0bfc8a2f9bb2a05fcac38ac569194b9e0b2e7e6093960322381393c5` |
| 2 | `def` | [doubleSquare](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PolygonIndexControls.lean/declarations/doublesquare--d9a9cf8f7c7d1cc475b7e9e5.md) | 24 | `declaration-track:d9a9cf8f7c7d1cc475b7e9e51bdbde842e3d9954f240c98fc0181fcece4b8a14` |
| 3 | `theorem` | [square_checked](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PolygonIndexControls.lean/declarations/square-checked--58db3cf04c28589d1bca0a82.md) | 26 | `result-track:58db3cf04c28589d1bca0a82228cc55e20476caadc0cec7e95fa816ede21499e` |
| 4 | `theorem` | [signed_finite_controls](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PolygonIndexControls.lean/declarations/signed-finite-controls--3aaf8681278ef36a6dfc22d9.md) | 28 | `result-track:3aaf8681278ef36a6dfc22d92b5bc8151a4c1ce074f9fa704c5c8c63c631f3ae` |
| 5 | `theorem` | [actual_square_winding](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PolygonIndexControls.lean/declarations/actual-square-winding--f967f5b7d5b21fda1c4cc599.md) | 33 | `result-track:f967f5b7d5b21fda1c4cc599ae84e83442daeaea77a912f9d34f7f84cf656181` |
| 6 | `theorem` | [ray_vertex_control](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PolygonIndexControls.lean/declarations/ray-vertex-control--9c7d2f42a3c9b75dfb423d8a.md) | 39 | `result-track:9c7d2f42a3c9b75dfb423d8a4c0e2fba24e13a76266cb095f05463c6e1784c64` |
| 7 | `theorem` | [tangency_and_ray_edge_controls](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PolygonIndexControls.lean/declarations/tangency-and-ray-edge-controls--189667548e5bde3d4921d20c.md) | 44 | `result-track:189667548e5bde3d4921d20c69a770f98983e1625db5e2212fcfdf119857cae0` |
| 8 | `theorem` | [accepted_zero_is_not_failure](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PolygonIndexControls.lean/declarations/accepted-zero-is-not-failure--7ee09108efa450fd4cad8002.md) | 48 | `result-track:7ee09108efa450fd4cad80023216435bbaecd1894ff67c7f1af2dfaefefe9257` |
| 9 | `theorem` | [all_edges_and_exact_lengths_required](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PolygonIndexControls.lean/declarations/all-edges-and-exact-lengths-required--40c511ffe35158545b09538e.md) | 52 | `result-track:40c511ffe35158545b09538ead770c58700769d574a97ad4cd6b25d8d0083cc0` |
| 10 | `theorem` | [zero_vertex_or_zero_crossing_rejected](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PolygonIndexControls.lean/declarations/zero-vertex-or-zero-crossing-rejected--fb6c79d3519a036a3023f505.md) | 56 | `result-track:fb6c79d3519a036a3023f50547d5f04a9ebb012b99de5e3cc7bb323acfe31e2e` |
| 11 | `def` | [diamond](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PolygonIndexControls.lean/declarations/diamond--db6e14f37d7776c2da06ecb1.md) | 62 | `declaration-track:db6e14f37d7776c2da06ecb1b1204c1667b931e5ffa376f96740f241e352f093` |
| 12 | `def` | [splitDiamond](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PolygonIndexControls.lean/declarations/splitdiamond--ef8f55b29ffedfc0a08503f3.md) | 63 | `declaration-track:ef8f55b29ffedfc0a08503f3b91885f4455fb98b0e631ed5693b90519b768cd5` |
| 13 | `theorem` | [conservative_chart_control](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PolygonIndexControls.lean/declarations/conservative-chart-control--24c00d357f21cd0da2c4f6cb.md) | 67 | `result-track:24c00d357f21cd0da2c4f6cb6aa00ac7efde7f6b8ae0e9958402c9b1eaac3d06` |
| 14 | `theorem` | [rejected_diagonal_is_nonzero](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PolygonIndexControls.lean/declarations/rejected-diagonal-is-nonzero--8e3023926a64104e09557cc9.md) | 71 | `result-track:8e3023926a64104e09557cc999a376f33a7fbe1fe346ed7158cff1714b059178` |
| 15 | `theorem` | [multiple_traversal_is_retained](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PolygonIndexControls.lean/declarations/multiple-traversal-is-retained--8884d1bea00804afbb0d8ccb.md) | 80 | `result-track:8884d1bea00804afbb0d8ccb147e68f9b50a403f75514583fb3df337169dde48` |
| 16 | `theorem` | [opposite_ray_is_not_counted](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PolygonIndexControls.lean/declarations/opposite-ray-is-not-counted--8592804c665032bbe5d41255.md) | 85 | `result-track:8592804c665032bbe5d4125567f4a04f63227420a108ff1b52552b9c57fbe057` |
| 17 | `theorem` | [small_square_evaluates](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PolygonIndexControls.lean/declarations/small-square-evaluates--6aa0064d7b36791701e62e2c.md) | 90 | `result-track:6aa0064d7b36791701e62e2c23935d6ffa6f346f5ee1b5ebfabad5d41fd928f1` |
| 18 | `theorem` | [small_square_source_index_computed](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PolygonIndexControls.lean/declarations/small-square-source-index-computed--6b064bfd69cd5d2188994741.md) | 94 | `result-track:6b064bfd69cd5d2188994741d60a4fa346525cd517728cd18e97cf2523af8cff` |
| 19 | `theorem` | [fictitious_values_still_have_no_source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PolygonIndexControls.lean/declarations/fictitious-values-still-have-no-source--ddc2c9d36e1074c8525bd32c.md) | 101 | `result-track:ddc2c9d36e1074c8525bd32ce0a8455f41e2acc1a0cca3d2ee51903a3fb34fac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
