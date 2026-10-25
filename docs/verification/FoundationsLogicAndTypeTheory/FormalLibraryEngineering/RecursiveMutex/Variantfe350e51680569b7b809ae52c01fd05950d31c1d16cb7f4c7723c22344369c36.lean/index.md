# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RecursiveMutex.Variantfe350e51680569b7b809ae52c01fd05950d31c1d16cb7f4c7723c22344369c36

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9f00431a1e676d1c15ee3fb0c488ba37e912f1d2",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveMutex/Variantfe350e51680569b7b809ae52c01fd05950d31c1d16cb7f4c7723c22344369c36.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveMutex/Variantfe350e51680569b7b809ae52c01fd05950d31c1d16cb7f4c7723c22344369c36.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveMutex/Variantfe350e51680569b7b809ae52c01fd05950d31c1d16cb7f4c7723c22344369c36.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9f00431a1e676d1c15ee3fb0c488ba37e912f1d2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveMutex/Variantfe350e51680569b7b809ae52c01fd05950d31c1d16cb7f4c7723c22344369c36.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveMutex/Variantfe350e51680569b7b809ae52c01fd05950d31c1d16cb7f4c7723c22344369c36.lean.json)

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
| 1 | `opaque` | [RecursiveMutexImpl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveMutex/Variantfe350e51680569b7b809ae52c01fd05950d31c1d16cb7f4c7723c22344369c36.lean/declarations/recursivemuteximpl--b2f9e6ccc13de5208a11ab8e.md) | 23 | `declaration-track:b2f9e6ccc13de5208a11ab8ece73ab5d5e17c35e716f227637bca275526b357f` |
| 2 | `def` | [BaseRecursiveMutex](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveMutex/Variantfe350e51680569b7b809ae52c01fd05950d31c1d16cb7f4c7723c22344369c36.lean/declarations/baserecursivemutex--2522e7582e7eb54d90d07e79.md) | 30 | `declaration-track:2522e7582e7eb54d90d07e7928e63f15d925757081b1062d46cb307117d2239d` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveMutex/Variantfe350e51680569b7b809ae52c01fd05950d31c1d16cb7f4c7723c22344369c36.lean/declarations/instance--121635696b87a14d5b530ab2.md) | 32 | `declaration-track:121635696b87a14d5b530ab2aeb2b62cabb5b3199c86dd5ff4a8ef5a90794d93` |
| 4 | `opaque` | [BaseRecursiveMutex.new](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveMutex/Variantfe350e51680569b7b809ae52c01fd05950d31c1d16cb7f4c7723c22344369c36.lean/declarations/baserecursivemutex-new--2a1c1168ea5c4ece9b3d7793.md) | 36 | `declaration-track:2a1c1168ea5c4ece9b3d77939f5073dc7bcb251d11708516b3cbeacdf483cad5` |
| 5 | `opaque` | [BaseRecursiveMutex.lock](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveMutex/Variantfe350e51680569b7b809ae52c01fd05950d31c1d16cb7f4c7723c22344369c36.lean/declarations/baserecursivemutex-lock--2d64639bb91f715a25e0d0ed.md) | 43 | `declaration-track:2d64639bb91f715a25e0d0ed30ad8060c827e3f6589ae2a57b9a7cab2e3d7360` |
| 6 | `opaque` | [BaseRecursiveMutex.tryLock](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveMutex/Variantfe350e51680569b7b809ae52c01fd05950d31c1d16cb7f4c7723c22344369c36.lean/declarations/baserecursivemutex-trylock--79c5fd2be29b704aec56c66a.md) | 53 | `declaration-track:79c5fd2be29b704aec56c66a09f610deb535bef778343c74f6982051ac4da194` |
| 7 | `opaque` | [BaseRecursiveMutex.unlock](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveMutex/Variantfe350e51680569b7b809ae52c01fd05950d31c1d16cb7f4c7723c22344369c36.lean/declarations/baserecursivemutex-unlock--2754b3f2d5484358ecce4775.md) | 63 | `declaration-track:2754b3f2d5484358ecce4775fff3c9d12a26479f8ca3256426b811b1f4281f74` |
| 8 | `structure` | [RecursiveMutex](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveMutex/Variantfe350e51680569b7b809ae52c01fd05950d31c1d16cb7f4c7723c22344369c36.lean/declarations/recursivemutex--2fc1f79e91c458fd794c3fa6.md) | 72 | `declaration-track:2fc1f79e91c458fd794c3fa64389702511980ed4d83691be42dae764ece6e617` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveMutex/Variantfe350e51680569b7b809ae52c01fd05950d31c1d16cb7f4c7723c22344369c36.lean/declarations/instance--39591c4dbc2707b7ccb184b3.md) | 77 | `declaration-track:39591c4dbc2707b7ccb184b33de2d99096cfb50c2b7c9952948820cf92b1bac8` |
| 10 | `def` | [RecursiveMutex.new](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveMutex/Variantfe350e51680569b7b809ae52c01fd05950d31c1d16cb7f4c7723c22344369c36.lean/declarations/recursivemutex-new--367d0f923c9dafe9911c9842.md) | 80 | `declaration-track:367d0f923c9dafe9911c9842cdb5c2920b6cf1945a8064cbac9eaa64716ec6e2` |
| 11 | `def` | [RecursiveMutex.atomically](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveMutex/Variantfe350e51680569b7b809ae52c01fd05950d31c1d16cb7f4c7723c22344369c36.lean/declarations/recursivemutex-atomically--0049d59dec47704ed287aa96.md) | 89 | `declaration-track:0049d59dec47704ed287aa969f6e7ed70dd1ab93bed350fc5bfa55fa4117cc0c` |
| 12 | `def` | [RecursiveMutex.tryAtomically](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveMutex/Variantfe350e51680569b7b809ae52c01fd05950d31c1d16cb7f4c7723c22344369c36.lean/declarations/recursivemutex-tryatomically--c398c175db3e720f40f9aa2f.md) | 104 | `declaration-track:c398c175db3e720f40f9aa2fe2cc3ea32e0ed395bc42446e93f4272e2c852780` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
