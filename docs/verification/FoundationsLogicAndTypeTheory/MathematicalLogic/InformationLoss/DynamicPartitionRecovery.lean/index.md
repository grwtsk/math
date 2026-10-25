# Verification target: GRWTSK.Logic.InformationLoss.DynamicPartitionRecovery

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f8db7fba341afd820518a85a7ebbb5fd5a7fe06",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Logic/InformationLoss/DynamicPartitionRecovery.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/DynamicPartitionRecovery.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/DynamicPartitionRecovery.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f8db7fba341afd820518a85a7ebbb5fd5a7fe06`.

Source path: `GRWTSK/Logic/InformationLoss/DynamicPartitionRecovery.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Logic/InformationLoss/DynamicPartitionRecovery.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Logic.InformationLoss.FactorizationFiber`](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/FactorizationFiber.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DynamicRefinement](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/DynamicPartitionRecovery.lean/declarations/dynamicrefinement--a61148d9a504f70a7370b2d7.md) | 38 | `declaration-track:a61148d9a504f70a7370b2d7d917825978196862bfe33d73c3e99f54b15bd95f` |
| 2 | `def` | [DynamicRefinement.SameAt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/DynamicPartitionRecovery.lean/declarations/dynamicrefinement-sameat--cc06498041fb17befa89571b.md) | 44 | `declaration-track:cc06498041fb17befa89571bb0a6a176db14c5cf85a3b1468e69a439e42511cd` |
| 3 | `theorem` | [DynamicRefinement.sameAt_of_next](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/DynamicPartitionRecovery.lean/declarations/dynamicrefinement-sameat-of-next--9732dfccb2b8f13a679711b7.md) | 50 | `result-track:9732dfccb2b8f13a679711b7cc86a8474fe6df521394c8acf638e78e574423e0` |
| 4 | `def` | [DynamicRefinement.history](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/DynamicPartitionRecovery.lean/declarations/dynamicrefinement-history--7779ce952a799fefd1502c76.md) | 63 | `declaration-track:7779ce952a799fefd1502c76d2809b792b298f36d6bfacad80d1197fc14d21e9` |
| 5 | `theorem` | [DynamicRefinement.history_injective_of_separating](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/DynamicPartitionRecovery.lean/declarations/dynamicrefinement-history-injective-of-separating--b0eb030bc676cf93c65f2b07.md) | 69 | `result-track:b0eb030bc676cf93c65f2b07ed0fb240fbe294a5e1abba53686d3b9e19e6f6a2` |
| 6 | `theorem` | [DynamicRefinement.stage_factors_through_history](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/DynamicPartitionRecovery.lean/declarations/dynamicrefinement-stage-factors-through-history--1a12580aaf53ec8971d08d9c.md) | 82 | `result-track:1a12580aaf53ec8971d08d9c420b38795a0ff6a71357c06b58e94260983d27ab` |
| 7 | `def` | [discreteDifference](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/DynamicPartitionRecovery.lean/declarations/discretedifference--fc8f11ed0d2cda77a36d8444.md) | 92 | `declaration-track:fc8f11ed0d2cda77a36d8444e59fca89d82fa353f4d92cf4bfe63b0b1e3a941f` |
| 8 | `theorem` | [discreteDifference_constants_collide](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/DynamicPartitionRecovery.lean/declarations/discretedifference-constants-collide--bea3374425a4f460444c1be9.md) | 96 | `result-track:bea3374425a4f460444c1be9b67fc9d177ca682fa0997f41378081d70d632ef7` |
| 9 | `theorem` | [initialValue_not_factorsThrough_difference](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/DynamicPartitionRecovery.lean/declarations/initialvalue-not-factorsthrough-difference--4099a3e42faff982576154da.md) | 104 | `result-track:4099a3e42faff982576154dae220ebcf7a3489c8995e425f63aa5218811a1d6b` |
| 10 | `def` | [anchoredDifference](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/DynamicPartitionRecovery.lean/declarations/anchoreddifference--a53beba64d8acd258dba1581.md) | 113 | `declaration-track:a53beba64d8acd258dba158155511e5d762403a3bcd5a9819da51a9d551ba98b` |
| 11 | `def` | [integrateDifference](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/DynamicPartitionRecovery.lean/declarations/integratedifference--86a0a16a763a28a452b705da.md) | 117 | `declaration-track:86a0a16a763a28a452b705da86bfc7968e1813f5a5b2de8631ada872e35eb35a` |
| 12 | `theorem` | [difference_telescoping](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/DynamicPartitionRecovery.lean/declarations/difference-telescoping--8cc9cd653ffd64018eace447.md) | 121 | `result-track:8cc9cd653ffd64018eace447d3d566892218c25f01454f2d40fb91e34cb8847b` |
| 13 | `theorem` | [integrate_anchoredDifference](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/DynamicPartitionRecovery.lean/declarations/integrate-anchoreddifference--c29af399e988c70f8c9c4690.md) | 134 | `result-track:c29af399e988c70f8c9c4690f390af758fc36a62e51644d67362b324a9d009d6` |
| 14 | `theorem` | [anchoredDifference_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/DynamicPartitionRecovery.lean/declarations/anchoreddifference-injective--225a006c5abc5c513a5b689e.md) | 140 | `result-track:225a006c5abc5c513a5b689e1cf001d8ad111a828c94a1608c5940dfd35abd0d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
