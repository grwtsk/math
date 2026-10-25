# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UnionFind.Variant164686d9c136a8b01b82c58491f26657d4b9831e9b0669453b64e23ead8ca4a1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6c46d6db35bd10c1cc54fb5786389335624f8e66",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnionFind/Variant164686d9c136a8b01b82c58491f26657d4b9831e9b0669453b64e23ead8ca4a1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnionFind/Variant164686d9c136a8b01b82c58491f26657d4b9831e9b0669453b64e23ead8ca4a1.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnionFind/Variant164686d9c136a8b01b82c58491f26657d4b9831e9b0669453b64e23ead8ca4a1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6c46d6db35bd10c1cc54fb5786389335624f8e66`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnionFind/Variant164686d9c136a8b01b82c58491f26657d4b9831e9b0669453b64e23ead8ca4a1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnionFind/Variant164686d9c136a8b01b82c58491f26657d4b9831e9b0669453b64e23ead8ca4a1.lean.json)

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
| 1 | `structure` | [UnionFind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnionFind/Variant164686d9c136a8b01b82c58491f26657d4b9831e9b0669453b64e23ead8ca4a1.lean/declarations/unionfind--18cd58a159c49b5dfe55b85d.md) | 22 | `declaration-track:18cd58a159c49b5dfe55b85d799b8f1ed610f5d21ec9c1fff7ebdcab382fff9b` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnionFind/Variant164686d9c136a8b01b82c58491f26657d4b9831e9b0669453b64e23ead8ca4a1.lean/declarations/instance--b8babe6c5df94569c14b8b45.md) | 33 | `declaration-track:b8babe6c5df94569c14b8b45e5168727ea0366d16027105682351b64973818f7` |
| 3 | `def` | [size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnionFind/Variant164686d9c136a8b01b82c58491f26657d4b9831e9b0669453b64e23ead8ca4a1.lean/declarations/size--79bb1cf24f8c0ea3bc28f5d7.md) | 36 | `declaration-track:79bb1cf24f8c0ea3bc28f5d7dd3763f5085d4481452948e67a3750e40bc63266` |
| 4 | `def` | [add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnionFind/Variant164686d9c136a8b01b82c58491f26657d4b9831e9b0669453b64e23ead8ca4a1.lean/declarations/add--f6bdee7cdc34919d515a10ed.md) | 39 | `declaration-track:f6bdee7cdc34919d515a10ed2f05933196af48e89a1fb13ae6bd645175b24b90` |
| 5 | `def` | [addArray](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnionFind/Variant164686d9c136a8b01b82c58491f26657d4b9831e9b0669453b64e23ead8ca4a1.lean/declarations/addarray--82da8d6af8b192dccde39c13.md) | 47 | `declaration-track:82da8d6af8b192dccde39c136331cc4d481851032fecd730a1c0ac4c91c4a5ec` |
| 6 | `def` | [ofArray](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnionFind/Variant164686d9c136a8b01b82c58491f26657d4b9831e9b0669453b64e23ead8ca4a1.lean/declarations/ofarray--1977293ab1d96ff7cbd4fcc8.md) | 50 | `declaration-track:1977293ab1d96ff7cbd4fcc8074eb0811f4be60bac7d7234f8914cf96b5edb16` |
| 7 | `def` | [findRepUnsafe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnionFind/Variant164686d9c136a8b01b82c58491f26657d4b9831e9b0669453b64e23ead8ca4a1.lean/declarations/findrepunsafe--a8d6a32693c8f630c3fcbdc0.md) | 53 | `declaration-track:a8d6a32693c8f630c3fcbdc0acde0c589a7dcfa9878fe2aeffe5f16947b44e30` |
| 8 | `opaque` | [findRep](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnionFind/Variant164686d9c136a8b01b82c58491f26657d4b9831e9b0669453b64e23ead8ca4a1.lean/declarations/findrep--8fa858ca3ba8b7530e012728.md) | 63 | `declaration-track:8fa858ca3ba8b7530e01272849d2783cdbd500cc071090f2f0632d23cdd7ee8d` |
| 9 | `def` | [find?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnionFind/Variant164686d9c136a8b01b82c58491f26657d4b9831e9b0669453b64e23ead8ca4a1.lean/declarations/find--e93e34b6c7f8fedf9e0eb3b4.md) | 65 | `declaration-track:e93e34b6c7f8fedf9e0eb3b41135b4edecb359846f51fc8defa6d4f68d17a0ee` |
| 10 | `def` | [mergeUnsafe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnionFind/Variant164686d9c136a8b01b82c58491f26657d4b9831e9b0669453b64e23ead8ca4a1.lean/declarations/mergeunsafe--ab68a7dd7df4ccdb13482cb8.md) | 72 | `declaration-track:ab68a7dd7df4ccdb13482cb8242928c55ae4e0eb04ea9b36ca8cd9f103e24d4c` |
| 11 | `opaque` | [merge](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnionFind/Variant164686d9c136a8b01b82c58491f26657d4b9831e9b0669453b64e23ead8ca4a1.lean/declarations/merge--2e0db65b29c0d5ea3d35e19d.md) | 95 | `declaration-track:2e0db65b29c0d5ea3d35e19dc6895825db149e0edda82646ecc89ebf04eeefb3` |
| 12 | `def` | [sets](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnionFind/Variant164686d9c136a8b01b82c58491f26657d4b9831e9b0669453b64e23ead8ca4a1.lean/declarations/sets--640cb29e9b5f8a4450d6d972.md) | 97 | `declaration-track:640cb29e9b5f8a4450d6d972c0ece5b9c5a46c3147c950d7f84e35242e0a1922` |
| 13 | `def` | [cluster](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnionFind/Variant164686d9c136a8b01b82c58491f26657d4b9831e9b0669453b64e23ead8ca4a1.lean/declarations/cluster--b06b376d7370c3d5eb0e137b.md) | 113 | `declaration-track:b06b376d7370c3d5eb0e137b986ec9240abfca016d1187e74e2b43a45b367ed7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
