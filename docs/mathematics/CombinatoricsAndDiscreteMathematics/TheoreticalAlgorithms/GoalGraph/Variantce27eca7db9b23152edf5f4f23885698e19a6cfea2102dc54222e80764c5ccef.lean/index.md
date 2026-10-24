# GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.GoalGraph.Variantce27eca7db9b23152edf5f4f23885698e19a6cfea2102dc54222e80764c5ccef

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**29 observed declarations and anonymous commands**, 7 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GoalGraph/Variantce27eca7db9b23152edf5f4f23885698e19a6cfea2102dc54222e80764c5ccef.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `364d6b679f835eb424ed800e683fc585eadc940c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GoalGraph/Variantce27eca7db9b23152edf5f4f23885698e19a6cfea2102dc54222e80764c5ccef.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [GoalCellId](declarations/goalcellid--a5bb1b5d1048b2c72522b1ea.md) | 18 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `inductive` | [GoalCellStatus](declarations/goalcellstatus--6d5c5d0735bc003626e35352.md) | 22 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `inductive` | [OpenObligationKind](declarations/openobligationkind--7df26ca6877ed22ced61e258.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [GoalCell](declarations/goalcell--d8960fa652bb176b7930614b.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `inductive` | [GoalEdgeKind](declarations/goaledgekind--a2bdee8ce2f1570f020d2bc7.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [GoalEdge](declarations/goaledge--a4ece8f1202102f319557793.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [GoalGraph](declarations/goalgraph--238b49661eb113b3aa3cdc66.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [GoalSlice](declarations/goalslice--c674853096f00bbed5006d51.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [ElaborationSnapshot](declarations/elaborationsnapshot--0ca4cb263e6932d351f79622.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [GoalGraph.containsCell](declarations/goalgraph-containscell--def1cb4429bae7450ad919d3.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [GoalGraph.cellIds](declarations/goalgraph-cellids--8662b654007e0f23991a965e.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [GoalGraph.edgeEndpointsPresent](declarations/goalgraph-edgeendpointspresent--c94d5941d4b33c7b4cd7dc31.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [GoalGraph.Valid](declarations/goalgraph-valid--6bc8328efc6c78782d7cf97f.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [(anonymous)](declarations/instance--cfd63aa377c15fec9d5e635f.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [verifyGoalGraph](declarations/verifygoalgraph--d261e1c65c5bc64dd7e58dd3.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [verifyGoalGraph_sound](declarations/verifygoalgraph-sound--13552cf324d9ade8ebd451bd.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [GoalGraph.Valid.cell_ids_nodup](declarations/goalgraph-valid-cell-ids-nodup--bc16cc5c195b8ecfb27126be.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [GoalGraph.Valid.edge_endpoints_present](declarations/goalgraph-valid-edge-endpoints-present--e6fe1ec4d65e924f06aa2d8a.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [GoalSlice.ValidFor](declarations/goalslice-validfor--6fe53291ae826aa85f63e963.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [(anonymous)](declarations/instance--b671106e1c65cc6068b73024.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [verifyGoalSlice](declarations/verifygoalslice--25d8b8f24625f54e6f3f1e23.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [verifyGoalSlice_sound](declarations/verifygoalslice-sound--be61c4c3594ea63d36178269.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [GoalSlice.ValidFor.selected_cells_present](declarations/goalslice-validfor-selected-cells-present--5e75262f823d32e45d7e524a.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [theoremTaskProtocolIdentityMatches](declarations/theoremtaskprotocolidentitymatches--cb607c2fb01271b1e1b839ca.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [ElaborationSnapshot.Valid](declarations/elaborationsnapshot-valid--38d1b5141b87f1037a4ef0a3.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [(anonymous)](declarations/instance--25d3f79bd02e92d7ff7c0a6d.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [verifyElaborationSnapshot](declarations/verifyelaborationsnapshot--fd68b928a7c693aeff2e76f5.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [verifyElaborationSnapshot_sound](declarations/verifyelaborationsnapshot-sound--692124f7a047c610ee1d77a9.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [ElaborationSnapshot.Valid.task_identity_consistent](declarations/elaborationsnapshot-valid-task-identity-consistent--cc96f7fc4f11fb03e7c63e87.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
