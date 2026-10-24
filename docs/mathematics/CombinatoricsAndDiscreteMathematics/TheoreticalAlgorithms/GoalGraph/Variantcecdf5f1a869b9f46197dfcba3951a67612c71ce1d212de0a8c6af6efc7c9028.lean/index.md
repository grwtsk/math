# GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.GoalGraph.Variantcecdf5f1a869b9f46197dfcba3951a67612c71ce1d212de0a8c6af6efc7c9028

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**29 observed declarations and anonymous commands**, 7 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GoalGraph/Variantcecdf5f1a869b9f46197dfcba3951a67612c71ce1d212de0a8c6af6efc7c9028.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5c3cc918c731775cd6ea2495175b5f7efeb3f8f1`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GoalGraph/Variantcecdf5f1a869b9f46197dfcba3951a67612c71ce1d212de0a8c6af6efc7c9028.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [GoalCellId](declarations/goalcellid--c38645933e6137a57c00d7c0.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `inductive` | [GoalCellStatus](declarations/goalcellstatus--2f55594f424be73ac5988305.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `inductive` | [OpenObligationKind](declarations/openobligationkind--23c043ba82edb43f01d8a81a.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [GoalCell](declarations/goalcell--55efae24ea09375bf11848fc.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `inductive` | [GoalEdgeKind](declarations/goaledgekind--ad15d64170bfc41166d31748.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [GoalEdge](declarations/goaledge--63d9265707cbc1b36a59528d.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [GoalGraph](declarations/goalgraph--d6e1c69a56e49594e4e66283.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [GoalSlice](declarations/goalslice--f5ec8325182b795329a89c07.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [ElaborationSnapshot](declarations/elaborationsnapshot--955ec0de3c287c736e578351.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [GoalGraph.containsCell](declarations/goalgraph-containscell--13fdcabb2a2c12847c199924.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [GoalGraph.cellIds](declarations/goalgraph-cellids--e79e961ddfc491a63ed79c30.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [GoalGraph.edgeEndpointsPresent](declarations/goalgraph-edgeendpointspresent--4bd33f334c99eee2e5d341a7.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [GoalGraph.Valid](declarations/goalgraph-valid--bbeafa7850b207a7d93d6e87.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [(anonymous)](declarations/instance--f6b0de1f0330117f961d9f64.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [verifyGoalGraph](declarations/verifygoalgraph--3b53a17b580a8e1f871906d2.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [verifyGoalGraph_sound](declarations/verifygoalgraph-sound--3ccd6b92d668779da2d476a6.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [GoalGraph.Valid.cell_ids_nodup](declarations/goalgraph-valid-cell-ids-nodup--1ee963c3d771a605c33cd56d.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [GoalGraph.Valid.edge_endpoints_present](declarations/goalgraph-valid-edge-endpoints-present--812d854d72dc7ab937cb1e73.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [GoalSlice.ValidFor](declarations/goalslice-validfor--dad04becfcea1b91cbde403a.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [(anonymous)](declarations/instance--9e141cc756901aaa14f1269e.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [verifyGoalSlice](declarations/verifygoalslice--d7aed1431165219609caaa43.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [verifyGoalSlice_sound](declarations/verifygoalslice-sound--8f7e59c6caea19595a878fd7.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [GoalSlice.ValidFor.selected_cells_present](declarations/goalslice-validfor-selected-cells-present--131572e7cbe566ad0dadbf6b.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [theoremTaskProtocolIdentityMatches](declarations/theoremtaskprotocolidentitymatches--5fa14bd0bda7bbacd9332815.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [ElaborationSnapshot.Valid](declarations/elaborationsnapshot-valid--bce4c63c657a4f0667fe9a7b.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [(anonymous)](declarations/instance--c9e0a8be6d7286d559bad47b.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [verifyElaborationSnapshot](declarations/verifyelaborationsnapshot--34f4dd34b68ee835ea4cdae0.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [verifyElaborationSnapshot_sound](declarations/verifyelaborationsnapshot-sound--70a4677280a974a0132ba9d9.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [ElaborationSnapshot.Valid.task_identity_consistent](declarations/elaborationsnapshot-valid-task-identity-consistent--1d830ed3f763b64dee443130.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
