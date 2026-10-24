# Verification target: GRWTSK.AlgebraicGeometry.AnalyticAffineTopology

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b9ebdd15d5b44ab0cbddd128442ef010691e13b1",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/AlgebraicGeometry/AnalyticAffineTopology.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../mathematics/AlgebraicGeometry/AnalyticAffineTopology.lean/index.md) · [Full source](../../../mathematics/AlgebraicGeometry/AnalyticAffineTopology.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b9ebdd15d5b44ab0cbddd128442ef010691e13b1`.

Source path: `GRWTSK/AlgebraicGeometry/AnalyticAffineTopology.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/AlgebraicGeometry/AnalyticAffineTopology.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.AlgebraicGeometry.AnalyticAffineBridge`](../../../mathematics/AlgebraicGeometry/AnalyticAffineBridge.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.Analysis.Complex.HolomorphicEvaluationTopology`](../../../mathematics/Analysis/Complex/HolomorphicEvaluationTopology.lean/index.md) — import line 2; pinned internal source present.
- `Mathlib.Algebra.Polynomial.Eval.Defs` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pointMap_continuous](../../../mathematics/AlgebraicGeometry/AnalyticAffineTopology.lean/declarations/pointmap-continuous--fcb37dfdd5cb29fa536592fa.md) | 22 | `result-track:fcb37dfdd5cb29fa536592fafb50852347f280dcb4e1aa5b0d0a08835f759c26` |
| 2 | `def` | [continuousPointMap](../../../mathematics/AlgebraicGeometry/AnalyticAffineTopology.lean/declarations/continuouspointmap--da6573192712ee8873b9da49.md) | 28 | `declaration-track:da6573192712ee8873b9da49355c1aed202094ba2dda5a13e133c9a0bf867420` |
| 3 | `theorem` | [continuousPointMap_apply](../../../mathematics/AlgebraicGeometry/AnalyticAffineTopology.lean/declarations/continuouspointmap-apply--75bd90ec3ba1bbfb70f454aa.md) | 35 | `result-track:75bd90ec3ba1bbfb70f454aa8a5218ac8ff53ef7b8eb6d880681d4ad035f027a` |
| 4 | `def` | [constantRingHom](../../../mathematics/AlgebraicGeometry/AnalyticAffineTopology.lean/declarations/constantringhom--187a5188ff757c5f2521f8f0.md) | 44 | `declaration-track:187a5188ff757c5f2521f8f0a4fc235fabeb070485fe71c3f732f42443c86dde` |
| 5 | `def` | [coordinateRingMap](../../../mathematics/AlgebraicGeometry/AnalyticAffineTopology.lean/declarations/coordinateringmap--25ca26cc68c03ec80d3c3ff0.md) | 63 | `declaration-track:25ca26cc68c03ec80d3c3ff0662dd0e479118d6756a25dc623818e4c5295c48a` |
| 6 | `theorem` | [coordinateRingMap_C](../../../mathematics/AlgebraicGeometry/AnalyticAffineTopology.lean/declarations/coordinateringmap-c--3072b13b2d599ea724d97771.md) | 68 | `result-track:3072b13b2d599ea724d977714116d03b9dc26fa9071f6f498655f9a556d236ec` |
| 7 | `theorem` | [coordinateRingMap_X](../../../mathematics/AlgebraicGeometry/AnalyticAffineTopology.lean/declarations/coordinateringmap-x--8f882b0baa7978055f56a5c0.md) | 75 | `result-track:8f882b0baa7978055f56a5c04bb6e658e26fb4f2494b2dd8d7c3bd12cb5e9077` |
| 8 | `theorem` | [coordinateRingMap_eval](../../../mathematics/AlgebraicGeometry/AnalyticAffineTopology.lean/declarations/coordinateringmap-eval--c53b937873f92f164a4ae4dc.md) | 81 | `result-track:c53b937873f92f164a4ae4dcd23427023027a713011b2c9e6de59f2ed005d148` |
| 9 | `theorem` | [restriction_coordinateRingMap](../../../mathematics/AlgebraicGeometry/AnalyticAffineTopology.lean/declarations/restriction-coordinateringmap--3b5a3ff9824aa7c1bcb73373.md) | 94 | `result-track:3b5a3ff9824aa7c1bcb7337375edb44a9a01782dced66852971f2473d1f3cd97` |
| 10 | `def` | [bridge](../../../mathematics/AlgebraicGeometry/AnalyticAffineTopology.lean/declarations/bridge--d305ba1c33f0aae0de2c9112.md) | 105 | `declaration-track:d305ba1c33f0aae0de2c9112c77553a2f5392d90b2d694554f42484c3119d784` |
| 11 | `theorem` | [bridge_pointMap_continuous](../../../mathematics/AlgebraicGeometry/AnalyticAffineTopology.lean/declarations/bridge-pointmap-continuous--17b7a8ea61191fd4ce1e88d9.md) | 109 | `result-track:17b7a8ea61191fd4ce1e88d9a252bb8ca3c7421690b880b83bdbd322567fcb14` |
| 12 | `theorem` | [bridge_pointMap_asIdeal](../../../mathematics/AlgebraicGeometry/AnalyticAffineTopology.lean/declarations/bridge-pointmap-asideal--a95162e4d9f357e8e34f579c.md) | 113 | `result-track:a95162e4d9f357e8e34f579cd0f73b8ab79688cb9615185a88f12c082656deea` |
| 13 | `def` | [constantBridge](../../../mathematics/AlgebraicGeometry/AnalyticAffineTopology.lean/declarations/constantbridge--c7fa7b31563babae4718e3f0.md) | 125 | `declaration-track:c7fa7b31563babae4718e3f0af9a66d5b622d47a1fe7cb01f88aab36c08475d3` |
| 14 | `theorem` | [constantBridge_pointMap_eq](../../../mathematics/AlgebraicGeometry/AnalyticAffineTopology.lean/declarations/constantbridge-pointmap-eq--d33ad66bd83f80864c849833.md) | 129 | `result-track:d33ad66bd83f80864c849833958ad9ee672b49b4ac53f3c06dac6807fab52d12` |
| 15 | `theorem` | [constantBridge_whole_not_injective](../../../mathematics/AlgebraicGeometry/AnalyticAffineTopology.lean/declarations/constantbridge-whole-not-injective--71eabd08f5302c1d2e2e9e37.md) | 136 | `result-track:71eabd08f5302c1d2e2e9e3754b7503857bfb3819d98de4120cd82f5942706ee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
