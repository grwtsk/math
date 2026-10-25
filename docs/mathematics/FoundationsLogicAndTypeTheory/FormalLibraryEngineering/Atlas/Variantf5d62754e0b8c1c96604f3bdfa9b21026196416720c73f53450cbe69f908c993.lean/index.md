# GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Atlas.Variantf5d62754e0b8c1c96604f3bdfa9b21026196416720c73f53450cbe69f908c993

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 17 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variantf5d62754e0b8c1c96604f3bdfa9b21026196416720c73f53450cbe69f908c993.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2a1f36623963069de48ee616c31dc3d1f51e1f75`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variantf5d62754e0b8c1c96604f3bdfa9b21026196416720c73f53450cbe69f908c993.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [AtlasTheory](declarations/atlastheory--d6af6a5f270bb408bf41f83e.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [FiniteAtlas](declarations/finiteatlas--48d1f257f5804469d8892cc4.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [PaperChart](declarations/paperchart--155718891cd78a2e73f3fd33.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [FiniteAtlas.closure_sound](declarations/finiteatlas-closure-sound--2df74a81e673e564900799a6.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [attachChart](declarations/attachchart--d20c309654026bd8cfb49544.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [attachChart_extends_facts](declarations/attachchart-extends-facts--227e40ae834433714ffe87ba.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [attachChart_preserves_old_closure](declarations/attachchart-preserves-old-closure--956ab278cdd3e473cd3e1ce6.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [attachChart_extends_nodes](declarations/attachchart-extends-nodes--a917c17442f6c3572be8a7af.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [attachChart_extends_bridges](declarations/attachchart-extends-bridges--4ac74e29d01ada6ec24b0e55.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [attachChart_preserves_bridge_interpretation](declarations/attachchart-preserves-bridge-interpretation--975882cfe2d64e164e39a349.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [attachChart_preserves_targets](declarations/attachchart-preserves-targets--e174e2d5cd5c7cff2a12f38c.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [attachChart_order_independent](declarations/attachchart-order-independent--1d7b4482361ec7bc236bb874.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `structure` | [TargetedAtlas](declarations/targetedatlas--1938c09d9968081326c3feb1.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [TargetedAtlas.CompatibleChart](declarations/targetedatlas-compatiblechart--e4920a21e46e3ed555dc8bce.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [(anonymous)](declarations/instance--f190d0a1b896eefa88fd5243.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [attachTargetedChart](declarations/attachtargetedchart--795dc05790fc441617a5a8f6.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [tryAttachTargetedChart](declarations/tryattachtargetedchart--ae775e326e8068e03e5f1a46.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [tryAttachTargetedChart_eq_none_iff](declarations/tryattachtargetedchart-eq-none-iff--582b6b8cbc4d3a56e51caa87.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [attachTargetedChart_preserves_target_family](declarations/attachtargetedchart-preserves-target-family--73f87b39df7725c00f9be04a.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [attachTargetedChart_preserves_leaf_targets](declarations/attachtargetedchart-preserves-leaf-targets--5542e2adffd438dc02198761.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `structure` | [TargetConflict](declarations/targetconflict--865dbc444b6f01d42bb6abb8.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [TargetConflict.blocks_compatibility](declarations/targetconflict-blocks-compatibility--3141553d39e65a325aaefd37.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [TargetConflict.blocks_attachment](declarations/targetconflict-blocks-attachment--29f2816250f0dedecd053e13.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `structure` | [ChartConflict](declarations/chartconflict--702ffd004d08064390a51324.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [ChartConflict.blocks_admission](declarations/chartconflict-blocks-admission--fbd7877ef57c19c50b6713bf.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [ChartConflict.not_accepted](declarations/chartconflict-not-accepted--6c7b366ce2b1cebf7fdfd848.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [chartResidual](declarations/chartresidual--1bfd06b3ccb62360f346bc0f.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [chartRank](declarations/chartrank--0aa4c73b3ec2e2998ba4578b.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [chartTransferGain](declarations/charttransfergain--3dd697a2fb3a296a2260c549.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [chart_residual_antitone](declarations/chart-residual-antitone--683034300cd29e1d07d100d9.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [chart_burden_antitone](declarations/chart-burden-antitone--8637ae70367c259ac83d8904.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
