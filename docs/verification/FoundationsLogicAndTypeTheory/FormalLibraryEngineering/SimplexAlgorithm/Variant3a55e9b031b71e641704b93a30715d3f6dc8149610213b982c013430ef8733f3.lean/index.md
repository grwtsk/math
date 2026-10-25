# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SimplexAlgorithm.Variant3a55e9b031b71e641704b93a30715d3f6dc8149610213b982c013430ef8733f3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4ecfb36c3cab1580f9efa49bf7818f7f3ea60653",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimplexAlgorithm/Variant3a55e9b031b71e641704b93a30715d3f6dc8149610213b982c013430ef8733f3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimplexAlgorithm/Variant3a55e9b031b71e641704b93a30715d3f6dc8149610213b982c013430ef8733f3.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimplexAlgorithm/Variant3a55e9b031b71e641704b93a30715d3f6dc8149610213b982c013430ef8733f3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4ecfb36c3cab1580f9efa49bf7818f7f3ea60653`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimplexAlgorithm/Variant3a55e9b031b71e641704b93a30715d3f6dc8149610213b982c013430ef8733f3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimplexAlgorithm/Variant3a55e9b031b71e641704b93a30715d3f6dc8149610213b982c013430ef8733f3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Linarith.Oracle.SimplexAlgorithm.Datatypes` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [SimplexAlgorithmException](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimplexAlgorithm/Variant3a55e9b031b71e641704b93a30715d3f6dc8149610213b982c013430ef8733f3.lean/declarations/simplexalgorithmexception--6bb5ef4aa4e7d957e057a587.md) | 18 | `declaration-track:6bb5ef4aa4e7d957e057a587a2e1de98d3131a1803c3167c5e05b8f4a4af74ae` |
| 2 | `abbrev` | [SimplexAlgorithmM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimplexAlgorithm/Variant3a55e9b031b71e641704b93a30715d3f6dc8149610213b982c013430ef8733f3.lean/declarations/simplexalgorithmm--0afd662098656639c16e0355.md) | 23 | `declaration-track:0afd662098656639c16e035540d48906dc54b617a29b84023313194dbb16f1cd` |
| 3 | `def` | [doPivotOperation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimplexAlgorithm/Variant3a55e9b031b71e641704b93a30715d3f6dc8149610213b982c013430ef8733f3.lean/declarations/dopivotoperation--f84282b3c8de7567360b447c.md) | 33 | `declaration-track:f84282b3c8de7567360b447c0a08315d2a33fc01ddd4dc5166deafb58ec638f0` |
| 4 | `def` | [checkSuccess](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimplexAlgorithm/Variant3a55e9b031b71e641704b93a30715d3f6dc8149610213b982c013430ef8733f3.lean/declarations/checksuccess--1707e74203cd423b2fc4854d.md) | 60 | `declaration-track:1707e74203cd423b2fc4854def5e2ecb594c4b04471f40b292c31a418778386d` |
| 5 | `def` | [chooseEnteringVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimplexAlgorithm/Variant3a55e9b031b71e641704b93a30715d3f6dc8149610213b982c013430ef8733f3.lean/declarations/chooseenteringvar--5c54798ae052f5fc7b835f2b.md) | 69 | `declaration-track:5c54798ae052f5fc7b835f2b7e82efedd18f43c7e4e4384e8efb7ccd95a9ac8a` |
| 6 | `def` | [chooseExitingVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimplexAlgorithm/Variant3a55e9b031b71e641704b93a30715d3f6dc8149610213b982c013430ef8733f3.lean/declarations/chooseexitingvar--62709b607ad2ad45571360fc.md) | 87 | `declaration-track:62709b607ad2ad45571360fcb4970b4fcfb7570abd648d08c6abcf7bc7e63f97` |
| 7 | `def` | [choosePivots](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimplexAlgorithm/Variant3a55e9b031b71e641704b93a30715d3f6dc8149610213b982c013430ef8733f3.lean/declarations/choosepivots--52719cee1ce0d45027f50e95.md) | 108 | `declaration-track:52719cee1ce0d45027f50e9580a71f21c331d909ae7577a40f757805f4c42a08` |
| 8 | `def` | [runSimplexAlgorithm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimplexAlgorithm/Variant3a55e9b031b71e641704b93a30715d3f6dc8149610213b982c013430ef8733f3.lean/declarations/runsimplexalgorithm--8053de966d3a0cf6bfd1b660.md) | 117 | `declaration-track:8053de966d3a0cf6bfd1b6602f125b16df721dc5f22a0dcbbb6939bf10a3390b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
