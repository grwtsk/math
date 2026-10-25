# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Monad.Variantefce41e25574a988af58084a361c80ec947b98cb2546c932da09cf2da69364a8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4889ec7808bd3c0903d24eb6f7b607f521f3fcdf",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Monad/Variantefce41e25574a988af58084a361c80ec947b98cb2546c932da09cf2da69364a8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Monad/Variantefce41e25574a988af58084a361c80ec947b98cb2546c932da09cf2da69364a8.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Monad/Variantefce41e25574a988af58084a361c80ec947b98cb2546c932da09cf2da69364a8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4889ec7808bd3c0903d24eb6f7b607f521f3fcdf`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Monad/Variantefce41e25574a988af58084a361c80ec947b98cb2546c932da09cf2da69364a8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Monad/Variantefce41e25574a988af58084a361c80ec947b98cb2546c932da09cf2da69364a8.lean.json)

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
| 1 | `class` | [WPMonad](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Monad/Variantefce41e25574a988af58084a361c80ec947b98cb2546c932da09cf2da69364a8.lean/declarations/wpmonad--f9a8eae62526515931e6efeb.md) | 44 | `declaration-track:f9a8eae62526515931e6efebc9d0c83906902ad2ca866e3ce52403e8b2208652` |
| 2 | `theorem` | [WPMonad.wp_map](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Monad/Variantefce41e25574a988af58084a361c80ec947b98cb2546c932da09cf2da69364a8.lean/declarations/wpmonad-wp-map--c88a8b3bfb10b75863022cf0.md) | 52 | `result-track:c88a8b3bfb10b75863022cf048a25509da354723fd3d02c0a864e60aad6a785f` |
| 3 | `theorem` | [WPMonad.wp_seq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Monad/Variantefce41e25574a988af58084a361c80ec947b98cb2546c932da09cf2da69364a8.lean/declarations/wpmonad-wp-seq--49695a6e80f8713281db1df7.md) | 56 | `result-track:49695a6e80f8713281db1df797a9a3b368e52bd107acfd6a16410f43da0de126` |
| 4 | `instance` | [Id.instWPMonad](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Monad/Variantefce41e25574a988af58084a361c80ec947b98cb2546c932da09cf2da69364a8.lean/declarations/id-instwpmonad--67183563de4ecff00063cd7a.md) | 61 | `declaration-track:67183563de4ecff00063cd7a4d49cc5f59e064221256b82bce343ccf2e45af99` |
| 5 | `instance` | [StateT.instWPMonad](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Monad/Variantefce41e25574a988af58084a361c80ec947b98cb2546c932da09cf2da69364a8.lean/declarations/statet-instwpmonad--ee6bb082e4d053005e9bcb3e.md) | 65 | `declaration-track:ee6bb082e4d053005e9bcb3e58fe06b6776da32269ce2269ee768771a3923adf` |
| 6 | `instance` | [ReaderT.instWPMonad](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Monad/Variantefce41e25574a988af58084a361c80ec947b98cb2546c932da09cf2da69364a8.lean/declarations/readert-instwpmonad--145262d1bb6ec3fdf39c239e.md) | 69 | `declaration-track:145262d1bb6ec3fdf39c239e32129ee6d60eaea9d8803fc897570fab0ab2db31` |
| 7 | `instance` | [ExceptT.instWPMonad](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Monad/Variantefce41e25574a988af58084a361c80ec947b98cb2546c932da09cf2da69364a8.lean/declarations/exceptt-instwpmonad--ea43d645defa22ae34234c31.md) | 73 | `declaration-track:ea43d645defa22ae34234c31b3e75e2e170a5c9f4bd96e27719d36c78f4a343f` |
| 8 | `instance` | [OptionT.instWPMonad](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Monad/Variantefce41e25574a988af58084a361c80ec947b98cb2546c932da09cf2da69364a8.lean/declarations/optiont-instwpmonad--ae63a4a28ada61632b931265.md) | 84 | `declaration-track:ae63a4a28ada61632b93126520ca58e4fefccbb9e241784f58a8ebb163a078d8` |
| 9 | `instance` | [EStateM.instWPMonad](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Monad/Variantefce41e25574a988af58084a361c80ec947b98cb2546c932da09cf2da69364a8.lean/declarations/estatem-instwpmonad--90669fdd19efc8a95ce89e33.md) | 95 | `declaration-track:90669fdd19efc8a95ce89e335867d612d89d50c3fd39fbc8fb2572197a742f15` |
| 10 | `instance` | [Except.instWPMonad](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Monad/Variantefce41e25574a988af58084a361c80ec947b98cb2546c932da09cf2da69364a8.lean/declarations/except-instwpmonad--697c9994658d42672d5210f9.md) | 103 | `declaration-track:697c9994658d42672d5210f98208940b1c0d5830d8e7d42cf8ec2e81824ff943` |
| 11 | `instance` | [Option.instWPMonad](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Monad/Variantefce41e25574a988af58084a361c80ec947b98cb2546c932da09cf2da69364a8.lean/declarations/option-instwpmonad--4b7c6524ecc947e37639a129.md) | 107 | `declaration-track:4b7c6524ecc947e37639a1298983800823c47f650272a48b6c5f04b09f786b7c` |
| 12 | `instance` | [State.instWPMonad](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Monad/Variantefce41e25574a988af58084a361c80ec947b98cb2546c932da09cf2da69364a8.lean/declarations/state-instwpmonad--66770c2d0a010a2e6c7dc093.md) | 111 | `declaration-track:66770c2d0a010a2e6c7dc093974bd68ad7e23243890e49e48307af9e5b9b4e69` |
| 13 | `instance` | [Reader.instWPMonad](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Monad/Variantefce41e25574a988af58084a361c80ec947b98cb2546c932da09cf2da69364a8.lean/declarations/reader-instwpmonad--5b99ac0d6f48b41e22c4a8b9.md) | 113 | `declaration-track:5b99ac0d6f48b41e22c4a8b99bf253b515715c6994eb935a2171179e10525bf3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
