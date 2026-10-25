# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TacticState.Variantaca2291287516db2491c648170b3d169139488d029800de3e0bfe2e02e24e851

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e74e54a3f1c2c3dfdadfcb6549f1845a82cb8f86",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticState/Variantaca2291287516db2491c648170b3d169139488d029800de3e0bfe2e02e24e851.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticState/Variantaca2291287516db2491c648170b3d169139488d029800de3e0bfe2e02e24e851.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticState/Variantaca2291287516db2491c648170b3d169139488d029800de3e0bfe2e02e24e851.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e74e54a3f1c2c3dfdadfcb6549f1845a82cb8f86`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticState/Variantaca2291287516db2491c648170b3d169139488d029800de3e0bfe2e02e24e851.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticState/Variantaca2291287516db2491c648170b3d169139488d029800de3e0bfe2e02e24e851.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Lean.Meta.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Lean.Meta.CollectMVars` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TacticState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticState/Variantaca2291287516db2491c648170b3d169139488d029800de3e0bfe2e02e24e851.lean/declarations/tacticstate--980264500909126b19b8c5d4.md) | 20 | `declaration-track:980264500909126b19b8c5d4d106cff3e6674d43336e2b599de9a1a8e7a6064d` |
| 2 | `def` | [mkInitial](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticState/Variantaca2291287516db2491c648170b3d169139488d029800de3e0bfe2e02e24e851.lean/declarations/mkinitial--a169e293daad884f298fac71.md) | 27 | `declaration-track:a169e293daad884f298fac71636388054dfa8eb94d2ef2ca38df61d1c0d57840` |
| 3 | `def` | [throwUnknownGoalError](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticState/Variantaca2291287516db2491c648170b3d169139488d029800de3e0bfe2e02e24e851.lean/declarations/throwunknowngoalerror--8c9313bd939ffc13a0b21fac.md) | 33 | `declaration-track:8c9313bd939ffc13a0b21facc54833834d26be7deb16b70de8d71a54e585b9b8` |
| 4 | `def` | [getVisibleGoalIndex?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticState/Variantaca2291287516db2491c648170b3d169139488d029800de3e0bfe2e02e24e851.lean/declarations/getvisiblegoalindex--a95d1598d272f153205c5a54.md) | 36 | `declaration-track:a95d1598d272f153205c5a541f28c016a4b4d0336b4356b7f3a84658ae443b08` |
| 5 | `def` | [getVisibleGoalIndex](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticState/Variantaca2291287516db2491c648170b3d169139488d029800de3e0bfe2e02e24e851.lean/declarations/getvisiblegoalindex--f9b7cd0e68b64002e223af1e.md) | 39 | `declaration-track:f9b7cd0e68b64002e223af1efc65d4209f3977b7ef02ba5c653e3a21b3dca46a` |
| 6 | `def` | [getMainGoal?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticState/Variantaca2291287516db2491c648170b3d169139488d029800de3e0bfe2e02e24e851.lean/declarations/getmaingoal--162bb79740f2595d215b532c.md) | 45 | `declaration-track:162bb79740f2595d215b532c42f0df8429f26e7de0bf9819e9a36985f4d2f26d` |
| 7 | `def` | [visibleGoalsHaveMVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticState/Variantaca2291287516db2491c648170b3d169139488d029800de3e0bfe2e02e24e851.lean/declarations/visiblegoalshavemvars--4420c856bd4c8c6c20f299c0.md) | 48 | `declaration-track:4420c856bd4c8c6c20f299c092897b14986857c02d455f9cc8340d7c900bd6aa` |
| 8 | `def` | [solveVisibleGoals](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticState/Variantaca2291287516db2491c648170b3d169139488d029800de3e0bfe2e02e24e851.lean/declarations/solvevisiblegoals--7ab48d471738935ff662919b.md) | 51 | `declaration-track:7ab48d471738935ff662919bbeef146d34f0b6d334384761cdddf135daa1a793` |
| 9 | `def` | [replaceWithArray](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticState/Variantaca2291287516db2491c648170b3d169139488d029800de3e0bfe2e02e24e851.lean/declarations/replacewitharray--e44d501a6506d2ec875c98a8.md) | 54 | `declaration-track:e44d501a6506d2ec875c98a83d2178f712d37ed99ac4ffd4c217eeb46a5ddd6a` |
| 10 | `def` | [eraseSolvedGoals](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticState/Variantaca2291287516db2491c648170b3d169139488d029800de3e0bfe2e02e24e851.lean/declarations/erasesolvedgoals--6c2ae2a766004f273fa782d6.md) | 66 | `declaration-track:6c2ae2a766004f273fa782d65c06ac42c900a45108595504f411f64ad1830849` |
| 11 | `def` | [applyTactic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticState/Variantaca2291287516db2491c648170b3d169139488d029800de3e0bfe2e02e24e851.lean/declarations/applytactic--20e124d7a9b776ad0e37ece0.md) | 77 | `declaration-track:20e124d7a9b776ad0e37ece004bacab295c02cf4c19ca0c63d5b164e1e04d875` |
| 12 | `def` | [focus](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticState/Variantaca2291287516db2491c648170b3d169139488d029800de3e0bfe2e02e24e851.lean/declarations/focus--ba47246bddfe851a2e82fa9c.md) | 88 | `declaration-track:ba47246bddfe851a2e82fa9cde8c6bd1b15464b158198479ddb22484aa1b07c8` |
| 13 | `def` | [onGoalM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticState/Variantaca2291287516db2491c648170b3d169139488d029800de3e0bfe2e02e24e851.lean/declarations/ongoalm--a9779b7221b62db36a8c4632.md) | 98 | `declaration-track:a9779b7221b62db36a8c4632099665a6ed199bc4187a9f2664830f7da2559a79` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
