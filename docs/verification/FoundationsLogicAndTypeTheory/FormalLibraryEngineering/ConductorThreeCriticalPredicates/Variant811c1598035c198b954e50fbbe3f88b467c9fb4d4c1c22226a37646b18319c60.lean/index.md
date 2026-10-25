# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ConductorThreeCriticalPredicates.Variant811c1598035c198b954e50fbbe3f88b467c9fb4d4c1c22226a37646b18319c60

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9c927e6b52b60c2980b6f6bf87b7317fa7e1bb27",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCriticalPredicates/Variant811c1598035c198b954e50fbbe3f88b467c9fb4d4c1c22226a37646b18319c60.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCriticalPredicates/Variant811c1598035c198b954e50fbbe3f88b467c9fb4d4c1c22226a37646b18319c60.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCriticalPredicates/Variant811c1598035c198b954e50fbbe3f88b467c9fb4d4c1c22226a37646b18319c60.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9c927e6b52b60c2980b6f6bf87b7317fa7e1bb27`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCriticalPredicates/Variant811c1598035c198b954e50fbbe3f88b467c9fb4d4c1c22226a37646b18319c60.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCriticalPredicates/Variant811c1598035c198b954e50fbbe3f88b467c9fb4d4c1c22226a37646b18319c60.lean.json)

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
| 1 | `def` | [twistedPsiCriticalRate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCriticalPredicates/Variant811c1598035c198b954e50fbbe3f88b467c9fb4d4c1c22226a37646b18319c60.lean/declarations/twistedpsicriticalrate--7fdd46e64c65e30e36219d9b.md) | 29 | `declaration-track:7fdd46e64c65e30e36219d9b757aea87d69fbd40b25d6b33b168f6e0116fe4ea` |
| 2 | `def` | [residueDifferenceCriticalRate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCriticalPredicates/Variant811c1598035c198b954e50fbbe3f88b467c9fb4d4c1c22226a37646b18319c60.lean/declarations/residuedifferencecriticalrate--8c40ded2faeeef928f1420ce.md) | 34 | `declaration-track:8c40ded2faeeef928f1420cecb7e3338218b9bf2ac6cdd8265371a4c42235c3e` |
| 3 | `theorem` | [twistedPsiCriticalRate_nonneg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCriticalPredicates/Variant811c1598035c198b954e50fbbe3f88b467c9fb4d4c1c22226a37646b18319c60.lean/declarations/twistedpsicriticalrate-nonneg--ab3acd9c7ee70e6b1414c6e7.md) | 38 | `result-track:ab3acd9c7ee70e6b1414c6e73f07e4199e4d1fc3422efef7f5262c2e9ee23e12` |
| 4 | `theorem` | [residueDifferenceCriticalRate_nonneg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCriticalPredicates/Variant811c1598035c198b954e50fbbe3f88b467c9fb4d4c1c22226a37646b18319c60.lean/declarations/residuedifferencecriticalrate-nonneg--ea5682a3f845eb5d711ac9e8.md) | 44 | `result-track:ea5682a3f845eb5d711ac9e8706fc848aaf770d2f83ec4dbdad27fcdf0bf9350` |
| 5 | `theorem` | [one_le_residueDifferenceCriticalRate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCriticalPredicates/Variant811c1598035c198b954e50fbbe3f88b467c9fb4d4c1c22226a37646b18319c60.lean/declarations/one-le-residuedifferencecriticalrate--4116ba0be480b8422dc0b28a.md) | 52 | `result-track:4116ba0be480b8422dc0b28aceb018006db0cbd5aac80ea89a59f3b303c98322` |
| 6 | `def` | [TwistedPsiCriticalBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCriticalPredicates/Variant811c1598035c198b954e50fbbe3f88b467c9fb4d4c1c22226a37646b18319c60.lean/declarations/twistedpsicriticalbound--bc76f84bc3c34874d4c73fdf.md) | 65 | `declaration-track:bc76f84bc3c34874d4c73fdfafc77ee5e2b6165e111f54b5ef2ee76e0f7f15e6` |
| 7 | `def` | [TwistedThetaCriticalBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCriticalPredicates/Variant811c1598035c198b954e50fbbe3f88b467c9fb4d4c1c22226a37646b18319c60.lean/declarations/twistedthetacriticalbound--0e2f7c70f9cdfe4f9359cca1.md) | 73 | `declaration-track:0e2f7c70f9cdfe4f9359cca1dbcfd2663caad76c0772142455b99618861c91c0` |
| 8 | `def` | [PrimeCharacterCriticalBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCriticalPredicates/Variant811c1598035c198b954e50fbbe3f88b467c9fb4d4c1c22226a37646b18319c60.lean/declarations/primecharactercriticalbound--b510a80a22a1aa0d2bc8db74.md) | 80 | `declaration-track:b510a80a22a1aa0d2bc8db744f62336b6c1cd67127a94b4356acc7fd066f928a` |
| 9 | `def` | [ResidueDifferenceCriticalBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCriticalPredicates/Variant811c1598035c198b954e50fbbe3f88b467c9fb4d4c1c22226a37646b18319c60.lean/declarations/residuedifferencecriticalbound--334095f2f71c2013657fef5e.md) | 88 | `declaration-track:334095f2f71c2013657fef5e93c00c6ded1318433283edda28d9a2574f55c707` |
| 10 | `theorem` | [residueDifferenceCriticalBound_iff_hasSqrtLogCountDifferenceBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCriticalPredicates/Variant811c1598035c198b954e50fbbe3f88b467c9fb4d4c1c22226a37646b18319c60.lean/declarations/residuedifferencecriticalbound-iff-hassqrtlogcountdifferencebound--b2a61ccbf678060d6bcff300.md) | 94 | `result-track:b2a61ccbf678060d6bcff300e1fbcbc97d36991a89cec35d21bebd36fc0eb520` |
| 11 | `theorem` | [primeCharacterCriticalBound_iff_residueDifferenceCriticalBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCriticalPredicates/Variant811c1598035c198b954e50fbbe3f88b467c9fb4d4c1c22226a37646b18319c60.lean/declarations/primecharactercriticalbound-iff-residuedifferencecriticalbound--64ec174f0b7407a9143dd61f.md) | 103 | `result-track:64ec174f0b7407a9143dd61f75c9d1d4f9d3cc91897f63bcb79e7afd00b33ce5` |
| 12 | `theorem` | [conductorThreePsi_sub_theta_abs_le_two_criticalRate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCriticalPredicates/Variant811c1598035c198b954e50fbbe3f88b467c9fb4d4c1c22226a37646b18319c60.lean/declarations/conductorthreepsi-sub-theta-abs-le-two-criticalrate--971590e755b13986b5e6aeba.md) | 160 | `result-track:971590e755b13986b5e6aeba22e492ec4a12274e04e94ed087b4b5224cf8df73` |
| 13 | `theorem` | [twistedPsiCriticalBound_iff_twistedThetaCriticalBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCriticalPredicates/Variant811c1598035c198b954e50fbbe3f88b467c9fb4d4c1c22226a37646b18319c60.lean/declarations/twistedpsicriticalbound-iff-twistedthetacriticalbound--40d773d545ea775efb353b5c.md) | 186 | `result-track:40d773d545ea775efb353b5c98178b3aaa4d29a3d7974e0d3198a6bd17e1f03e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
