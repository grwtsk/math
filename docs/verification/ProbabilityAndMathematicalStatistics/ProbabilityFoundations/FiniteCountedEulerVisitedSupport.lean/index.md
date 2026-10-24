# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteCountedEulerVisitedSupport

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d460cf5f73177927ee5fc0faaef41e2d8884fb5",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerVisitedSupport.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerVisitedSupport.lean/index.md) · [Full source](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerVisitedSupport.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d460cf5f73177927ee5fc0faaef41e2d8884fb5`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerVisitedSupport.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerVisitedSupport.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteCountedEulerWalkConcat`](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerWalkConcat.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [CountedWalk.vertexSupport](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerVisitedSupport.lean/declarations/countedwalk-vertexsupport--0b0e036c28a787ed5dce2950.md) | 23 | `declaration-track:0b0e036c28a787ed5dce2950842bc116a1dbd1c816ac606852a3213a259151b7` |
| 2 | `theorem` | [CountedWalk.finish_mem_vertexSupport](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerVisitedSupport.lean/declarations/countedwalk-finish-mem-vertexsupport--2e5519855e250acd51e9f225.md) | 32 | `result-track:2e5519855e250acd51e9f2256f8710c9b9f1013185c47b3d859100d92551349e` |
| 3 | `theorem` | [CountedWalk.start_mem_vertexSupport](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerVisitedSupport.lean/declarations/countedwalk-start-mem-vertexsupport--e1e2178141cbbf3a6118dea8.md) | 43 | `result-track:e1e2178141cbbf3a6118dea8b7069cbe53746ddfcfa1210c71601bc4df8d2e87` |
| 4 | `theorem` | [CountedWalk.visits_of_mem_vertexSupport](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerVisitedSupport.lean/declarations/countedwalk-visits-of-mem-vertexsupport--492202c14e639fa41a32214a.md) | 55 | `result-track:492202c14e639fa41a32214a9822df8ba18bfa1a3f48a68894ab60d4fb9e2342` |
| 5 | `theorem` | [CountedWalk.used_edge_internal](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerVisitedSupport.lean/declarations/countedwalk-used-edge-internal--3a090aa885f95a98cfa8eed1.md) | 76 | `result-track:3a090aa885f95a98cfa8eed1a43b2e7a0e0fac4d74e71d16c8af3d392210937a` |
| 6 | `theorem` | [FreshCountedTrail.exists_edge_meeting_vertexSupport](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerVisitedSupport.lean/declarations/freshcountedtrail-exists-edge-meeting-vertexsupport--a8b70df50c8128105d300ca8.md) | 103 | `result-track:a8b70df50c8128105d300ca8f82db0926a1f19bb145192308690d4c91455caf3` |
| 7 | `theorem` | [FreshCountedTrail.used_internal_vertexSupport](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerVisitedSupport.lean/declarations/freshcountedtrail-used-internal-vertexsupport--bb0213fac28f4f95b0743270.md) | 117 | `result-track:bb0213fac28f4f95b0743270239cab59e19bf19616d33f55935ea6dd464b5b87` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
