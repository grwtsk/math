# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExprTraverse.Variant6a0ee724b29cd3556f281e2f69e73fd18a2437bb427007eec0ea32345b1fc1e1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7426c2675a3279111a5d5125dacfe6e42b0e7795",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprTraverse/Variant6a0ee724b29cd3556f281e2f69e73fd18a2437bb427007eec0ea32345b1fc1e1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprTraverse/Variant6a0ee724b29cd3556f281e2f69e73fd18a2437bb427007eec0ea32345b1fc1e1.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprTraverse/Variant6a0ee724b29cd3556f281e2f69e73fd18a2437bb427007eec0ea32345b1fc1e1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7426c2675a3279111a5d5125dacfe6e42b0e7795`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprTraverse/Variant6a0ee724b29cd3556f281e2f69e73fd18a2437bb427007eec0ea32345b1fc1e1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprTraverse/Variant6a0ee724b29cd3556f281e2f69e73fd18a2437bb427007eec0ea32345b1fc1e1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [forgetPos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprTraverse/Variant6a0ee724b29cd3556f281e2f69e73fd18a2437bb427007eec0ea32345b1fc1e1.lean/declarations/forgetpos--24cb882401f978eb7059e102.md) | 21 | `declaration-track:24cb882401f978eb7059e10237f658f439cf3f11ecf5652441b2e965fcdaffed` |
| 2 | `def` | [traverseLambdaWithPos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprTraverse/Variant6a0ee724b29cd3556f281e2f69e73fd18a2437bb427007eec0ea32345b1fc1e1.lean/declarations/traverselambdawithpos--e0387f87ba8ca9a6bd68ae16.md) | 25 | `declaration-track:e0387f87ba8ca9a6bd68ae16a6b004ddcc675a97035e8f34adb3a66f06a17af7` |
| 3 | `def` | [traverseForallWithPos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprTraverse/Variant6a0ee724b29cd3556f281e2f69e73fd18a2437bb427007eec0ea32345b1fc1e1.lean/declarations/traverseforallwithpos--8c51440e5f181a83c99ba3de.md) | 37 | `declaration-track:8c51440e5f181a83c99ba3dee8fb3f959399145d7f1f1d756f7b7812d761022f` |
| 4 | `def` | [traverseLetWithPos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprTraverse/Variant6a0ee724b29cd3556f281e2f69e73fd18a2437bb427007eec0ea32345b1fc1e1.lean/declarations/traverseletwithpos--af92c89985e61f81db35c63e.md) | 49 | `declaration-track:af92c89985e61f81db35c63ece5f508388b679c329d887b641979386e4c940e6` |
| 5 | `def` | [traverseChildrenWithPos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprTraverse/Variant6a0ee724b29cd3556f281e2f69e73fd18a2437bb427007eec0ea32345b1fc1e1.lean/declarations/traversechildrenwithpos--180a96b4d26232f038b06980.md) | 65 | `declaration-track:180a96b4d26232f038b069804da7c27a11a26beeeebea820dd6588652fe60b2d` |
| 6 | `def` | [traverseLambda](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprTraverse/Variant6a0ee724b29cd3556f281e2f69e73fd18a2437bb427007eec0ea32345b1fc1e1.lean/declarations/traverselambda--7c9d489c594e7cfd91642d8b.md) | 79 | `declaration-track:7c9d489c594e7cfd91642d8b032f9680b762208c379a17228d201a4f8efbd673` |
| 7 | `def` | [traverseForall](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprTraverse/Variant6a0ee724b29cd3556f281e2f69e73fd18a2437bb427007eec0ea32345b1fc1e1.lean/declarations/traverseforall--6a4e5662748d27ff7277756c.md) | 85 | `declaration-track:6a4e5662748d27ff7277756ca3b5739e95fc9d21d5e286f4d3bda48bd9b74dd1` |
| 8 | `def` | [traverseLet](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprTraverse/Variant6a0ee724b29cd3556f281e2f69e73fd18a2437bb427007eec0ea32345b1fc1e1.lean/declarations/traverselet--cb4b278357f3c1e482b5b097.md) | 88 | `declaration-track:cb4b278357f3c1e482b5b097a8c6bf3c955253f3b01f328b905745cff6013a7e` |
| 9 | `def` | [traverseChildren](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprTraverse/Variant6a0ee724b29cd3556f281e2f69e73fd18a2437bb427007eec0ea32345b1fc1e1.lean/declarations/traversechildren--4074b0139d9f612394c264a5.md) | 98 | `declaration-track:4074b0139d9f612394c264a53ee544beb4e6a538125226c5d9a3e65e856dbeb6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
