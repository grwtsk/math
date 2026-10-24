# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteCountedEulerOrderBridge

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bffcabe68e6155dbf868a654cb317fe690a72cfe",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerOrderBridge.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerOrderBridge.lean/index.md) · [Full source](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerOrderBridge.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bffcabe68e6155dbf868a654cb317fe690a72cfe`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerOrderBridge.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerOrderBridge.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteCountedEulerConnectedProgress`](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerConnectedProgress.lean/index.md) — import line 3; pinned internal source present.
- [`GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteCyclicEdgeCertificate`](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCyclicEdgeCertificate.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [CountedWalk.chronologicalEdges](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerOrderBridge.lean/declarations/countedwalk-chronologicaledges--2b60a0bc877069ec13b6ae7f.md) | 23 | `declaration-track:2b60a0bc877069ec13b6ae7f8e71b73ad440f8dc428da997f872ba84b5cf1221` |
| 2 | `theorem` | [CountedWalk.chronologicalEdges_toFinset](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerOrderBridge.lean/declarations/countedwalk-chronologicaledges-tofinset--a90b66815439aeb101f3d317.md) | 30 | `result-track:a90b66815439aeb101f3d31765d9555d907f57707eb1454f26d4a8ce274482e4` |
| 3 | `theorem` | [FreshCountedTrail.chronologicalEdges_nodup](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerOrderBridge.lean/declarations/freshcountedtrail-chronologicaledges-nodup--c4713ed88f1b70e7d9a6d9b7.md) | 38 | `result-track:c4713ed88f1b70e7d9a6d9b776d32659f70b9e6f465138ffa033f2fb09738e4e` |
| 4 | `theorem` | [FreshCountedTrail.complete_chronologicalEdges](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerOrderBridge.lean/declarations/freshcountedtrail-complete-chronologicaledges--dc7282070790f123a4e4d8a5.md) | 47 | `result-track:dc7282070790f123a4e4d8a5c2e9f55334a84d686020967c58f89c7c5f67b29f` |
| 5 | `theorem` | [FreshCountedTrail.complete_chronological_card](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerOrderBridge.lean/declarations/freshcountedtrail-complete-chronological-card--c6958e98355970e3c0fc9293.md) | 58 | `result-track:c6958e98355970e3c0fc92930f61045595ec4e933dba9256bc22ad9bfef948f3` |
| 6 | `theorem` | [CountedWalk.concat_chronologicalEdges](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerOrderBridge.lean/declarations/countedwalk-concat-chronologicaledges--b87601b43f5c01b0ecbfb276.md) | 74 | `result-track:b87601b43f5c01b0ecbfb276ff486c05df888b79faee12235010d945e8b4a9ab` |
| 7 | `theorem` | [CountedWalk.append_chronologicalEdges](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerOrderBridge.lean/declarations/countedwalk-append-chronologicaledges--d2b76f030db280cb5e422e01.md) | 87 | `result-track:d2b76f030db280cb5e422e01df694cc196c1768a8e65b44ad2845b83e358878f` |
| 8 | `def` | [CountedWalk.chronologicalVertices](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerOrderBridge.lean/declarations/countedwalk-chronologicalvertices--11a776353801b25bbea45bd4.md) | 102 | `declaration-track:11a776353801b25bbea45bd48ef35829c0a3497f115dd12d76361250e4bf6d9f` |
| 9 | `theorem` | [CountedWalk.append_chronologicalVertices](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerOrderBridge.lean/declarations/countedwalk-append-chronologicalvertices--c1503e69d60f30b75605103e.md) | 113 | `result-track:c1503e69d60f30b75605103e85c3edcb1cc081b6e5a5b1309dd1f380801c8c6c` |
| 10 | `theorem` | [CountedWalk.chronologicalVertices_length](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerOrderBridge.lean/declarations/countedwalk-chronologicalvertices-length--464c9e31790ce84f2a1937b2.md) | 124 | `result-track:464c9e31790ce84f2a1937b216500cc1e6f92a7d411dfda6cb79c16cc8dea617` |
| 11 | `theorem` | [CountedWalk.chronologicalVertices_head](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerOrderBridge.lean/declarations/countedwalk-chronologicalvertices-head--8231644645cb816272915cff.md) | 142 | `result-track:8231644645cb816272915cfffd771888ba30fd305092c04df09ddff408f41a84` |
| 12 | `theorem` | [CountedWalk.chronologicalVertices_last](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerOrderBridge.lean/declarations/countedwalk-chronologicalvertices-last--b6ce9a6eea443a2eec89b4f1.md) | 161 | `result-track:b6ce9a6eea443a2eec89b4f1701632072d7656649426e956dbb4056cdce02a24` |
| 13 | `theorem` | [CountedWalk.closed_chronological_seam](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerOrderBridge.lean/declarations/countedwalk-closed-chronological-seam--10849ebd890c0a93f40f64cd.md) | 177 | `result-track:10849ebd890c0a93f40f64cdc352e4c7f793020c2d8760515989a204cd0ad735` |
| 14 | `theorem` | [FreshCountedTrail.chronologicalEdges_nonempty](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerOrderBridge.lean/declarations/freshcountedtrail-chronologicaledges-nonempty--11c628d06dcd7e7a4d9d7573.md) | 190 | `result-track:11c628d06dcd7e7a4d9d7573bc442c1b6567a63f45e1b649f815e891cd0daa57` |
| 15 | `theorem` | [CountedWalk.chronologicalEdges_reverse](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerOrderBridge.lean/declarations/countedwalk-chronologicaledges-reverse--ec07df9a5c9b7f3244f24687.md) | 208 | `result-track:ec07df9a5c9b7f3244f24687182b9666af6808fb169d8a8dddf76ddfe9700e3d` |
| 16 | `theorem` | [CountedWalk.append_last_two_vertices](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerOrderBridge.lean/declarations/countedwalk-append-last-two-vertices--ab846788fe3fb14c13a1434c.md) | 219 | `result-track:ab846788fe3fb14c13a1434ca0f48cf779dffbb5af4d86e143b253fd9c00cd18` |
| 17 | `theorem` | [CountedWalk.closed_trace_endpoint](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerOrderBridge.lean/declarations/countedwalk-closed-trace-endpoint--8eb2ede1c5782e94921795b9.md) | 239 | `result-track:8eb2ede1c5782e94921795b9c513705d5752833b5356561a5f21966590c17b4f` |
| 18 | `theorem` | [CountedWalk.chronologicalVertices_nonempty](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerOrderBridge.lean/declarations/countedwalk-chronologicalvertices-nonempty--d1c248022e91ef26bb64f36a.md) | 249 | `result-track:d1c248022e91ef26bb64f36abddf5f086218f85d5d4c296bfb337e7e2118b009` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
