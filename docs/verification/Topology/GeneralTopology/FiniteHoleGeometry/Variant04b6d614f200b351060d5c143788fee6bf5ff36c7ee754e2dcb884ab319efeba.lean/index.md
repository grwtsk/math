# Verification target: GRWTSK.Topology.GeneralTopology.FiniteHoleGeometry.Variant04b6d614f200b351060d5c143788fee6bf5ff36c7ee754e2dcb884ab319efeba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "090e31c115d6262f66b6e8490d81f9fdc1dc1f2c",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/FiniteHoleGeometry/Variant04b6d614f200b351060d5c143788fee6bf5ff36c7ee754e2dcb884ab319efeba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/FiniteHoleGeometry/Variant04b6d614f200b351060d5c143788fee6bf5ff36c7ee754e2dcb884ab319efeba.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/FiniteHoleGeometry/Variant04b6d614f200b351060d5c143788fee6bf5ff36c7ee754e2dcb884ab319efeba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `090e31c115d6262f66b6e8490d81f9fdc1dc1f2c`.

Source path: `GRWTSK/Topology/GeneralTopology/FiniteHoleGeometry/Variant04b6d614f200b351060d5c143788fee6bf5ff36c7ee754e2dcb884ab319efeba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/FiniteHoleGeometry/Variant04b6d614f200b351060d5c143788fee6bf5ff36c7ee754e2dcb884ab319efeba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [openRectangle](../../../../../mathematics/Topology/GeneralTopology/FiniteHoleGeometry/Variant04b6d614f200b351060d5c143788fee6bf5ff36c7ee754e2dcb884ab319efeba.lean/declarations/openrectangle--ec7415f9698c6a13f5d27c83.md) | 31 | `declaration-track:ec7415f9698c6a13f5d27c83f108b84dff18b49c4deaa2707277b5b1b399abb4` |
| 2 | `theorem` | [isOpen_openRectangle](../../../../../mathematics/Topology/GeneralTopology/FiniteHoleGeometry/Variant04b6d614f200b351060d5c143788fee6bf5ff36c7ee754e2dcb884ab319efeba.lean/declarations/isopen-openrectangle--33137bbcf3356a7dcf643a3b.md) | 35 | `result-track:33137bbcf3356a7dcf643a3b947b16dd828fabc8b82e49d20e75c0e5922ffc08` |
| 3 | `theorem` | [closedBall_subset_openRectangle_of_coordinateMargin](../../../../../mathematics/Topology/GeneralTopology/FiniteHoleGeometry/Variant04b6d614f200b351060d5c143788fee6bf5ff36c7ee754e2dcb884ab319efeba.lean/declarations/closedball-subset-openrectangle-of-coordinatemargin--977b3b0de0979629914d73aa.md) | 41 | `result-track:977b3b0de0979629914d73aa81ea3bf15ca2976c9797104773f989d2b4e34cef` |
| 4 | `def` | [rectangleBoundary](../../../../../mathematics/Topology/GeneralTopology/FiniteHoleGeometry/Variant04b6d614f200b351060d5c143788fee6bf5ff36c7ee754e2dcb884ab319efeba.lean/declarations/rectangleboundary--df9beac2a30311c56f424463.md) | 67 | `declaration-track:df9beac2a30311c56f424463461fcc99cfb71d2aec86b0c202524b3568b77b3b` |
| 5 | `structure` | [RectangleHoleConfiguration](../../../../../mathematics/Topology/GeneralTopology/FiniteHoleGeometry/Variant04b6d614f200b351060d5c143788fee6bf5ff36c7ee754e2dcb884ab319efeba.lean/declarations/rectangleholeconfiguration--20b83c1fd7f28908dc0add1a.md) | 72 | `declaration-track:20b83c1fd7f28908dc0add1a4a43f7b95edb5ced6ae14c736c22f1ac69ec28e5` |
| 6 | `theorem` | [hole_center_mem_rectangle](../../../../../mathematics/Topology/GeneralTopology/FiniteHoleGeometry/Variant04b6d614f200b351060d5c143788fee6bf5ff36c7ee754e2dcb884ab319efeba.lean/declarations/hole-center-mem-rectangle--c93895009c52a538ace29ae7.md) | 86 | `result-track:c93895009c52a538ace29ae71d76559e6309bbe20c0011add7ccfbf98f949565` |
| 7 | `theorem` | [hole_circle_subset_rectangle](../../../../../mathematics/Topology/GeneralTopology/FiniteHoleGeometry/Variant04b6d614f200b351060d5c143788fee6bf5ff36c7ee754e2dcb884ab319efeba.lean/declarations/hole-circle-subset-rectangle--db97bc381bde33f629674d4e.md) | 94 | `result-track:db97bc381bde33f629674d4e2d1238a2c29dcdccf24f9f9dd5e0578e6f56f7a9` |
| 8 | `theorem` | [hole_circle_disjoint_rectangle_boundary](../../../../../mathematics/Topology/GeneralTopology/FiniteHoleGeometry/Variant04b6d614f200b351060d5c143788fee6bf5ff36c7ee754e2dcb884ab319efeba.lean/declarations/hole-circle-disjoint-rectangle-boundary--d4ec62f7bdde80e080de88b9.md) | 101 | `result-track:d4ec62f7bdde80e080de88b97e0183f062e9ecc6c090b2e9f24714d16aa4b6ec` |
| 9 | `theorem` | [hole_closedBalls_disjoint](../../../../../mathematics/Topology/GeneralTopology/FiniteHoleGeometry/Variant04b6d614f200b351060d5c143788fee6bf5ff36c7ee754e2dcb884ab319efeba.lean/declarations/hole-closedballs-disjoint--6a864198fe7be3823e75ab30.md) | 110 | `result-track:6a864198fe7be3823e75ab3012b485d41d4c83cb7989d4e977fc9a915603a18f` |
| 10 | `theorem` | [hole_circles_pairwise_disjoint](../../../../../mathematics/Topology/GeneralTopology/FiniteHoleGeometry/Variant04b6d614f200b351060d5c143788fee6bf5ff36c7ee754e2dcb884ab319efeba.lean/declarations/hole-circles-pairwise-disjoint--922207441ae2118038cc8db7.md) | 119 | `result-track:922207441ae2118038cc8db7674650e585966d61eb7c7fd3717708e07fe4aaed` |
| 11 | `theorem` | [hole_center_ne_other_center](../../../../../mathematics/Topology/GeneralTopology/FiniteHoleGeometry/Variant04b6d614f200b351060d5c143788fee6bf5ff36c7ee754e2dcb884ab319efeba.lean/declarations/hole-center-ne-other-center--bc5d8e9b8cc926b034966f7b.md) | 125 | `result-track:bc5d8e9b8cc926b034966f7b7c5c8a585b4945e455038cc97612b9bf48885ea1` |
| 12 | `def` | [finiteHoleUnion](../../../../../mathematics/Topology/GeneralTopology/FiniteHoleGeometry/Variant04b6d614f200b351060d5c143788fee6bf5ff36c7ee754e2dcb884ab319efeba.lean/declarations/finiteholeunion--f05c48c828a39b05a985292b.md) | 134 | `declaration-track:f05c48c828a39b05a985292b254beaf81792d57e8680e3a19e91e39f7cfcce61` |
| 13 | `theorem` | [finiteHoleUnion_isClosed](../../../../../mathematics/Topology/GeneralTopology/FiniteHoleGeometry/Variant04b6d614f200b351060d5c143788fee6bf5ff36c7ee754e2dcb884ab319efeba.lean/declarations/finiteholeunion-isclosed--1d06c70314010208623e129c.md) | 138 | `result-track:1d06c70314010208623e129c4b40671a49e3f97fb9182f42053426e1d3337811` |
| 14 | `def` | [puncturedRectangle](../../../../../mathematics/Topology/GeneralTopology/FiniteHoleGeometry/Variant04b6d614f200b351060d5c143788fee6bf5ff36c7ee754e2dcb884ab319efeba.lean/declarations/puncturedrectangle--76732e96b985a15200ff9b75.md) | 144 | `declaration-track:76732e96b985a15200ff9b75b02ec65f2e5049ec6422853cdf4bd9101e446925` |
| 15 | `theorem` | [puncturedRectangle_isOpen](../../../../../mathematics/Topology/GeneralTopology/FiniteHoleGeometry/Variant04b6d614f200b351060d5c143788fee6bf5ff36c7ee754e2dcb884ab319efeba.lean/declarations/puncturedrectangle-isopen--dbabd6b1615153abb763df55.md) | 148 | `result-track:dbabd6b1615153abb763df55745798736d6068570570cec8f0dda7b5d0768ab4` |
| 16 | `def` | [empty](../../../../../mathematics/Topology/GeneralTopology/FiniteHoleGeometry/Variant04b6d614f200b351060d5c143788fee6bf5ff36c7ee754e2dcb884ab319efeba.lean/declarations/empty--9dd4d3b8f6e7489ca3221354.md) | 154 | `declaration-track:9dd4d3b8f6e7489ca32213543c649f981ef137a524382d7dd392f3c90e728bcd` |
| 17 | `def` | [singleton](../../../../../mathematics/Topology/GeneralTopology/FiniteHoleGeometry/Variant04b6d614f200b351060d5c143788fee6bf5ff36c7ee754e2dcb884ab319efeba.lean/declarations/singleton--02dec4a229c7203e42c26475.md) | 162 | `declaration-track:02dec4a229c7203e42c26475dfdf5439310664698bdbdddfcc2d2d0f99621923` |
| 18 | `def` | [pair](../../../../../mathematics/Topology/GeneralTopology/FiniteHoleGeometry/Variant04b6d614f200b351060d5c143788fee6bf5ff36c7ee754e2dcb884ab319efeba.lean/declarations/pair--ab798b396f2d70e7179f701a.md) | 177 | `declaration-track:ab798b396f2d70e7179f701a2b844e4b1002fece0c4f0f67925b9ccfd6bf5189` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
