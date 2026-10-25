# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DiscrTree.Variantac67ae909f9239877bf2ea624dc7adf0c5ca00ad9c4b7c1512b9574882b1bc93

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aff9e64e8c48ff0fb7e12b2642a9ef5b1c87547e",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Variantac67ae909f9239877bf2ea624dc7adf0c5ca00ad9c4b7c1512b9574882b1bc93.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Variantac67ae909f9239877bf2ea624dc7adf0c5ca00ad9c4b7c1512b9574882b1bc93.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Variantac67ae909f9239877bf2ea624dc7adf0c5ca00ad9c4b7c1512b9574882b1bc93.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aff9e64e8c48ff0fb7e12b2642a9ef5b1c87547e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Variantac67ae909f9239877bf2ea624dc7adf0c5ca00ad9c4b7c1512b9574882b1bc93.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Variantac67ae909f9239877bf2ea624dc7adf0c5ca00ad9c4b7c1512b9574882b1bc93.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.DiscrTree` — import line 12; external provider; requires a separately pinned dependency.
- `Std.Data.Array.Merge` — import line 13; external provider; requires a separately pinned dependency.
- `Std.Data.Ord` — import line 14; external provider; requires a separately pinned dependency.
- `Std.Lean.Meta.Expr` — import line 15; external provider; requires a separately pinned dependency.
- `Std.Lean.PersistentHashMap` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cmp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Variantac67ae909f9239877bf2ea624dc7adf0c5ca00ad9c4b7c1512b9574882b1bc93.lean/declarations/cmp--a3f1d3e4e2458b98ed89be46.md) | 29 | `declaration-track:a3f1d3e4e2458b98ed89be460aef5aedfb8e97c9198cce4cf6cfbd14525db8b1` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Variantac67ae909f9239877bf2ea624dc7adf0c5ca00ad9c4b7c1512b9574882b1bc93.lean/declarations/instance--3fb3a537555e925abb648453.md) | 37 | `declaration-track:3fb3a537555e925abb648453c160fdeab8bbccdac923340260a2e9bad8ed6d3a` |
| 3 | `def` | [foldMUnsafe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Variantac67ae909f9239877bf2ea624dc7adf0c5ca00ad9c4b7c1512b9574882b1bc93.lean/declarations/foldmunsafe--550f7f5c7a4e5a72e7369601.md) | 46 | `declaration-track:550f7f5c7a4e5a72e73696010b8d58be68e47010c0e88cc37ecbbbe17b07845c` |
| 4 | `opaque` | [foldM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Variantac67ae909f9239877bf2ea624dc7adf0c5ca00ad9c4b7c1512b9574882b1bc93.lean/declarations/foldm--763117974a73a60442952d1d.md) | 57 | `declaration-track:763117974a73a60442952d1d0976aa65733ecc4c497c9388bb54a1d015fd794f` |
| 5 | `def` | [fold](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Variantac67ae909f9239877bf2ea624dc7adf0c5ca00ad9c4b7c1512b9574882b1bc93.lean/declarations/fold--4ea9e4e37eb764ff8d0f8f81.md) | 65 | `declaration-track:4ea9e4e37eb764ff8d0f8f81e5b2bfab567d00dfcae512f7c22eb56ea63f7e9e` |
| 6 | `def` | [foldValuesMUnsafe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Variantac67ae909f9239877bf2ea624dc7adf0c5ca00ad9c4b7c1512b9574882b1bc93.lean/declarations/foldvaluesmunsafe--67a3d27c11a9e32ca06f79c0.md) | 70 | `declaration-track:67a3d27c11a9e32ca06f79c0c57cceff1d59bc6df737d0aefbd34830cdc9354d` |
| 7 | `opaque` | [foldValuesM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Variantac67ae909f9239877bf2ea624dc7adf0c5ca00ad9c4b7c1512b9574882b1bc93.lean/declarations/foldvaluesm--c561854ec30669bcf11f5672.md) | 79 | `declaration-track:c561854ec30669bcf11f56723e2cf8b42416d7fcc6923b68274769c66e140001` |
| 8 | `def` | [foldValues](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Variantac67ae909f9239877bf2ea624dc7adf0c5ca00ad9c4b7c1512b9574882b1bc93.lean/declarations/foldvalues--915d07ffcdef9708981e970a.md) | 85 | `declaration-track:915d07ffcdef9708981e970a1e44e01d118704654870f30f9f0196992ab675f6` |
| 9 | `def` | [size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Variantac67ae909f9239877bf2ea624dc7adf0c5ca00ad9c4b7c1512b9574882b1bc93.lean/declarations/size--5f8be137bbcc5b8ca14166c8.md) | 91 | `declaration-track:5f8be137bbcc5b8ca14166c8ceb6f3e568dadc59a06aac2df6426aadb25c8811` |
| 10 | `def` | [mergePreservingDuplicates](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Variantac67ae909f9239877bf2ea624dc7adf0c5ca00ad9c4b7c1512b9574882b1bc93.lean/declarations/mergepreservingduplicates--5b84d1e6ec7eadb9db3a8021.md) | 98 | `declaration-track:5b84d1e6ec7eadb9db3a8021894b0aaedbfbd94b4cc01ad324521af5170b6593` |
| 11 | `def` | [foldM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Variantac67ae909f9239877bf2ea624dc7adf0c5ca00ad9c4b7c1512b9574882b1bc93.lean/declarations/foldm--4492588d3229997e837634e3.md) | 116 | `declaration-track:4492588d3229997e837634e3e1d05d000c98d03e028f5bb24ad35e4387d25308` |
| 12 | `def` | [fold](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Variantac67ae909f9239877bf2ea624dc7adf0c5ca00ad9c4b7c1512b9574882b1bc93.lean/declarations/fold--133c7c61cbd5cff48d8a203c.md) | 124 | `declaration-track:133c7c61cbd5cff48d8a203cd3a7b9b59c23442e09d4df5e8fb59ab224994e4f` |
| 13 | `def` | [foldValuesM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Variantac67ae909f9239877bf2ea624dc7adf0c5ca00ad9c4b7c1512b9574882b1bc93.lean/declarations/foldvaluesm--dd5183040ea4ae9a36808d18.md) | 131 | `declaration-track:dd5183040ea4ae9a36808d1813f50a4634f102cb4ad809632471c16fa9c28650` |
| 14 | `def` | [foldValues](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Variantac67ae909f9239877bf2ea624dc7adf0c5ca00ad9c4b7c1512b9574882b1bc93.lean/declarations/foldvalues--868300146eea69b5e25a2fc2.md) | 139 | `declaration-track:868300146eea69b5e25a2fc25b1fb138908c9d85e7d9c825eb3e6c6b1df926d0` |
| 15 | `def` | [values](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Variantac67ae909f9239877bf2ea624dc7adf0c5ca00ad9c4b7c1512b9574882b1bc93.lean/declarations/values--5ff59e5d494921f751b1f66f.md) | 146 | `declaration-track:5ff59e5d494921f751b1f66f00d64969e69076bb1eac8f8d1ddea4578b303df9` |
| 16 | `def` | [toArray](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Variantac67ae909f9239877bf2ea624dc7adf0c5ca00ad9c4b7c1512b9574882b1bc93.lean/declarations/toarray--bf41ffec28c042004070dc01.md) | 153 | `declaration-track:bf41ffec28c042004070dc01fbe1273591a294bda739f87a407c3189a1617453` |
| 17 | `def` | [size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Variantac67ae909f9239877bf2ea624dc7adf0c5ca00ad9c4b7c1512b9574882b1bc93.lean/declarations/size--438fd79a1537d6644df67828.md) | 160 | `declaration-track:438fd79a1537d6644df678289e1bb7f371d00e1a18cd765f1c2d034064cd8896` |
| 18 | `def` | [mergePreservingDuplicates](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Variantac67ae909f9239877bf2ea624dc7adf0c5ca00ad9c4b7c1512b9574882b1bc93.lean/declarations/mergepreservingduplicates--2fbbcf5b6ccb129093d50050.md) | 167 | `declaration-track:2fbbcf5b6ccb129093d50050efbce083bc5286b50921ac9db77209d0cc9374d3` |
| 19 | `def` | [insertIfSpecific](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Variantac67ae909f9239877bf2ea624dc7adf0c5ca00ad9c4b7c1512b9574882b1bc93.lean/declarations/insertifspecific--77744097bd928a80d229159a.md) | 175 | `declaration-track:77744097bd928a80d229159a74101a182daef75616f7a10b3673a4f5b53cec9e` |
| 20 | `def` | [Trie.mapArraysM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Variantac67ae909f9239877bf2ea624dc7adf0c5ca00ad9c4b7c1512b9574882b1bc93.lean/declarations/trie-maparraysm--d5c7ee500b3bef3b0673065f.md) | 185 | `declaration-track:d5c7ee500b3bef3b0673065f799c4464d127681c4a57bea7355a730f74406fdf` |
| 21 | `def` | [mapArraysM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Variantac67ae909f9239877bf2ea624dc7adf0c5ca00ad9c4b7c1512b9574882b1bc93.lean/declarations/maparraysm--aba21f6c2642c4ea0e3342ac.md) | 192 | `declaration-track:aba21f6c2642c4ea0e3342aca5714b774b71c083bf66b636bb74516e5b322c70` |
| 22 | `def` | [mapArrays](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Variantac67ae909f9239877bf2ea624dc7adf0c5ca00ad9c4b7c1512b9574882b1bc93.lean/declarations/maparrays--9d50778e7ccaf8e93cf1bb86.md) | 196 | `declaration-track:9d50778e7ccaf8e93cf1bb8630ac7d139af94d83e31875eda0a325075503f9af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
