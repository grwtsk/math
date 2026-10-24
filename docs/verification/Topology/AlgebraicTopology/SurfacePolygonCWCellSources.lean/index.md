# Verification target: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCWCellSources

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ded2abeb62cf745e783f479e9f6fa082d9e57e22",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonCWCellSources.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCWCellSources.lean/index.md) · [Full source](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCWCellSources.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ded2abeb62cf745e783f479e9f6fa082d9e57e22`.

Source path: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonCWCellSources.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/SurfacePolygonCWCellSources.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.AlgebraicTopology.SurfacePolygonAdjunctionMapping`](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonAdjunctionMapping.lean/index.md) — import line 8; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [polygonZeroCell](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCWCellSources.lean/declarations/polygonzerocell--e091c5d087362486350a4a6d.md) | 28 | `declaration-track:e091c5d087362486350a4a6d4d370ca8c45b1d23ea53e184a646e1279a5f8723` |
| 2 | `theorem` | [allCorners_eq_polygonZeroCell](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCWCellSources.lean/declarations/allcorners-eq-polygonzerocell--d85c60fd1c99a3732d4e325a.md) | 33 | `result-track:d85c60fd1c99a3732d4e325a0624ddce7c5f58821365dd40fef099b48e77af3c` |
| 3 | `def` | [positiveOneCell](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCWCellSources.lean/declarations/positiveonecell--b32162f3b4329a19f238e106.md) | 43 | `declaration-track:b32162f3b4329a19f238e106452aa99030b7b09817d1209617a244891cb50fcc` |
| 4 | `theorem` | [positiveOneCell_continuous](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCWCellSources.lean/declarations/positiveonecell-continuous--ba4f70a0a3aac40208c8afd3.md) | 51 | `result-track:ba4f70a0a3aac40208c8afd352a65dd89e5a1e986cd0b9cba2d15463902d1b15` |
| 5 | `theorem` | [negativeA_eq_positiveA_reverse](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCWCellSources.lean/declarations/negativea-eq-positivea-reverse--33eb4b96777a5e4b5da12416.md) | 60 | `result-track:33eb4b96777a5e4b5da1241632f6608a535374fd3f22533cb14389bdcc9b9556` |
| 6 | `theorem` | [negativeB_eq_positiveB_reverse](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCWCellSources.lean/declarations/negativeb-eq-positiveb-reverse--2da16e57436d0f475a312112.md) | 67 | `result-track:2da16e57436d0f475a312112a2123ed90351af3a2d314cb92bc3bdd2249fd1d5` |
| 7 | `theorem` | [positiveOneCell_zero](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCWCellSources.lean/declarations/positiveonecell-zero--c03c2e1a940dae2a4c561b8c.md) | 75 | `result-track:c03c2e1a940dae2a4c561b8c4108067f61c2d73782e2cae7cadf198b17c05b87` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
