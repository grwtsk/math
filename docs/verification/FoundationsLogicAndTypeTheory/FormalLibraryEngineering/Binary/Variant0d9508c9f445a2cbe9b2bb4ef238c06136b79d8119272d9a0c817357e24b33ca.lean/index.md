# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Binary.Variant0d9508c9f445a2cbe9b2bb4ef238c06136b79d8119272d9a0c817357e24b33ca

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "431ef1d2022b1ad291481bfec8cd91c8bb229252",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binary/Variant0d9508c9f445a2cbe9b2bb4ef238c06136b79d8119272d9a0c817357e24b33ca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binary/Variant0d9508c9f445a2cbe9b2bb4ef238c06136b79d8119272d9a0c817357e24b33ca.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binary/Variant0d9508c9f445a2cbe9b2bb4ef238c06136b79d8119272d9a0c817357e24b33ca.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `431ef1d2022b1ad291481bfec8cd91c8bb229252`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binary/Variant0d9508c9f445a2cbe9b2bb4ef238c06136b79d8119272d9a0c817357e24b33ca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binary/Variant0d9508c9f445a2cbe9b2bb4ef238c06136b79d8119272d9a0c817357e24b33ca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Presentation.Syntax` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [PresentationLeaf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binary/Variant0d9508c9f445a2cbe9b2bb4ef238c06136b79d8119272d9a0c817357e24b33ca.lean/declarations/presentationleaf--14183ebe7511c2f669f21fd3.md) | 23 | `declaration-track:14183ebe7511c2f669f21fd3f1df7b3fdf5d4bd994a6b7edfc9456518c70d6bb` |
| 2 | `inductive` | [FullBinaryTree](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binary/Variant0d9508c9f445a2cbe9b2bb4ef238c06136b79d8119272d9a0c817357e24b33ca.lean/declarations/fullbinarytree--068dd2fa84b09181f7aecf61.md) | 29 | `declaration-track:068dd2fa84b09181f7aecf61d2eadafad048b044abc1903eaa006f6d0d0afee5` |
| 3 | `structure` | [Bijection](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binary/Variant0d9508c9f445a2cbe9b2bb4ef238c06136b79d8119272d9a0c817357e24b33ca.lean/declarations/bijection--8a3870b16a9d18ebdf3ba116.md) | 35 | `declaration-track:8a3870b16a9d18ebdf3ba1166e6f113631646c1e08520c14ab32606ade2773d5` |
| 4 | `def` | [toBinaryTree](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binary/Variant0d9508c9f445a2cbe9b2bb4ef238c06136b79d8119272d9a0c817357e24b33ca.lean/declarations/tobinarytree--9495e8676e31c8f857a285f8.md) | 44 | `declaration-track:9495e8676e31c8f857a285f814340c09c223603a682a807e9af18bef24521457` |
| 5 | `def` | [ofBinaryTree](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binary/Variant0d9508c9f445a2cbe9b2bb4ef238c06136b79d8119272d9a0c817357e24b33ca.lean/declarations/ofbinarytree--a6f5d96875daafa0bf46c978.md) | 50 | `declaration-track:a6f5d96875daafa0bf46c978b70c40d65ebda4c1f45e6a38ec5b74e27aec647b` |
| 6 | `theorem` | [of_toBinaryTree](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binary/Variant0d9508c9f445a2cbe9b2bb4ef238c06136b79d8119272d9a0c817357e24b33ca.lean/declarations/of-tobinarytree--3536a60b214f25d2c5dde101.md) | 56 | `result-track:3536a60b214f25d2c5dde1016ae693950cf3715197dd56922582c48bca0a29d2` |
| 7 | `theorem` | [to_ofBinaryTree](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binary/Variant0d9508c9f445a2cbe9b2bb4ef238c06136b79d8119272d9a0c817357e24b33ca.lean/declarations/to-ofbinarytree--16265685658d9b7c91709f98.md) | 66 | `result-track:16265685658d9b7c91709f98c037467c4336a3c16c5c3eabb6c970399faa44f8` |
| 8 | `def` | [equivFullBinaryTree](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binary/Variant0d9508c9f445a2cbe9b2bb4ef238c06136b79d8119272d9a0c817357e24b33ca.lean/declarations/equivfullbinarytree--4f828276b355c8b9119a9cfb.md) | 79 | `declaration-track:4f828276b355c8b9119a9cfb0301323b5df5caeb5d0c3dae83a03a542be27f63` |
| 9 | `theorem` | [node_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binary/Variant0d9508c9f445a2cbe9b2bb4ef238c06136b79d8119272d9a0c817357e24b33ca.lean/declarations/node-injective--a654efceb055a8fe89012053.md) | 88 | `result-track:a654efceb055a8fe89012053495ec80133c319907e5a2dd76fddb876044d0724` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
