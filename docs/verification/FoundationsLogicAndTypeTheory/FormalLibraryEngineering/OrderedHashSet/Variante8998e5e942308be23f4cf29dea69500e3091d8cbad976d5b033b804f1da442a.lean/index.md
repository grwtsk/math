# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OrderedHashSet.Variante8998e5e942308be23f4cf29dea69500e3091d8cbad976d5b033b804f1da442a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4e7447396b741f14350ce827fdf2a0bf058095b2",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OrderedHashSet/Variante8998e5e942308be23f4cf29dea69500e3091d8cbad976d5b033b804f1da442a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OrderedHashSet/Variante8998e5e942308be23f4cf29dea69500e3091d8cbad976d5b033b804f1da442a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OrderedHashSet/Variante8998e5e942308be23f4cf29dea69500e3091d8cbad976d5b033b804f1da442a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4e7447396b741f14350ce827fdf2a0bf058095b2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OrderedHashSet/Variante8998e5e942308be23f4cf29dea69500e3091d8cbad976d5b033b804f1da442a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OrderedHashSet/Variante8998e5e942308be23f4cf29dea69500e3091d8cbad976d5b033b804f1da442a.lean.json)

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
| 1 | `structure` | [OrderedHashSet](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OrderedHashSet/Variante8998e5e942308be23f4cf29dea69500e3091d8cbad976d5b033b804f1da442a.lean/declarations/orderedhashset--217cb1c196bbb800f06bc133.md) | 20 | `declaration-track:217cb1c196bbb800f06bc1337b85e8cc4806bb99d4b9bae791174c166e0fae11` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OrderedHashSet/Variante8998e5e942308be23f4cf29dea69500e3091d8cbad976d5b033b804f1da442a.lean/declarations/instance--4e95c2fea2ba9e5cb4ba5597.md) | 29 | `declaration-track:4e95c2fea2ba9e5cb4ba55979dfcf0f915845eff73b63cb705d1667c3b17927b` |
| 3 | `def` | [emptyWithCapacity](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OrderedHashSet/Variante8998e5e942308be23f4cf29dea69500e3091d8cbad976d5b033b804f1da442a.lean/declarations/emptywithcapacity--bc8c6c346f2207c800f6c72b.md) | 32 | `declaration-track:bc8c6c346f2207c800f6c72b03371b7b747ba478e2a435f09d83627d5e92db4c` |
| 4 | `def` | [insert](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OrderedHashSet/Variante8998e5e942308be23f4cf29dea69500e3091d8cbad976d5b033b804f1da442a.lean/declarations/insert--5fcaf727d53401a1c9c2e6db.md) | 36 | `declaration-track:5fcaf727d53401a1c9c2e6db175532cc98f8c98d1d5ab3ade9dc13fe6a1759e7` |
| 5 | `def` | [insertMany](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OrderedHashSet/Variante8998e5e942308be23f4cf29dea69500e3091d8cbad976d5b033b804f1da442a.lean/declarations/insertmany--ab8e22a57255231946c6c0b0.md) | 44 | `declaration-track:ab8e22a57255231946c6c0b0de9cb2856ad869c750e94a1b6d2acf44b1a53ae0` |
| 6 | `def` | [ofArray](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OrderedHashSet/Variante8998e5e942308be23f4cf29dea69500e3091d8cbad976d5b033b804f1da442a.lean/declarations/ofarray--1844e39a5c7de504ca95959b.md) | 51 | `declaration-track:1844e39a5c7de504ca95959b0ce7739bfe042feb8579852200bb2509d0254b5a` |
| 7 | `def` | [contains](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OrderedHashSet/Variante8998e5e942308be23f4cf29dea69500e3091d8cbad976d5b033b804f1da442a.lean/declarations/contains--5fd3bfd050585484b9a30986.md) | 54 | `declaration-track:5fd3bfd050585484b9a30986edc700a55d87bc049e12db4211d1ef6c3489ac47` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OrderedHashSet/Variante8998e5e942308be23f4cf29dea69500e3091d8cbad976d5b033b804f1da442a.lean/declarations/instance--5a1a5c3c7742bdc2b58d942a.md) | 57 | `declaration-track:5a1a5c3c7742bdc2b58d942ac0f0f0c68cb77ee116e36894ad8bbca1d3fd7d71` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OrderedHashSet/Variante8998e5e942308be23f4cf29dea69500e3091d8cbad976d5b033b804f1da442a.lean/declarations/instance--f1e315ac6d2f025d7624b2d2.md) | 60 | `declaration-track:f1e315ac6d2f025d7624b2d29e804a1d9a9027fe79179232a8ebe23073649df2` |
| 10 | `def` | [foldlM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OrderedHashSet/Variante8998e5e942308be23f4cf29dea69500e3091d8cbad976d5b033b804f1da442a.lean/declarations/foldlm--017494a8418e88c4594d9bc0.md) | 64 | `declaration-track:017494a8418e88c4594d9bc0bdd18a03307ecc142beec48e40384449f34cba73` |
| 11 | `def` | [foldl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OrderedHashSet/Variante8998e5e942308be23f4cf29dea69500e3091d8cbad976d5b033b804f1da442a.lean/declarations/foldl--7a9d0fbbbd0534ff0f9cdc11.md) | 68 | `declaration-track:7a9d0fbbbd0534ff0f9cdc11e3e11c650b341b3f92772c0252ae81a3c3032aae` |
| 12 | `def` | [foldrM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OrderedHashSet/Variante8998e5e942308be23f4cf29dea69500e3091d8cbad976d5b033b804f1da442a.lean/declarations/foldrm--b1ef5dcf03e1196ef5596383.md) | 72 | `declaration-track:b1ef5dcf03e1196ef55963832536fdf7e80e1b64081f4912e767bc371514ee79` |
| 13 | `def` | [foldr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OrderedHashSet/Variante8998e5e942308be23f4cf29dea69500e3091d8cbad976d5b033b804f1da442a.lean/declarations/foldr--983b5e1d2d30e212e0691fba.md) | 76 | `declaration-track:983b5e1d2d30e212e0691fba44ad380504d6186da223864b31959b3fcbdb2bc6` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OrderedHashSet/Variante8998e5e942308be23f4cf29dea69500e3091d8cbad976d5b033b804f1da442a.lean/declarations/instance--aff137b0981874fe7343c543.md) | 79 | `declaration-track:aff137b0981874fe7343c54399b17eb31249143d33998cf80f95cd91c75356a9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
