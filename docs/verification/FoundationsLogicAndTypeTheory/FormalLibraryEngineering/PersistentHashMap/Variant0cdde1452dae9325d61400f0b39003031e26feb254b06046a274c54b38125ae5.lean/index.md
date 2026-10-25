# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PersistentHashMap.Variant0cdde1452dae9325d61400f0b39003031e26feb254b06046a274c54b38125ae5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba3e08f65e0e1534492497b512690c6e4e63abb3",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant0cdde1452dae9325d61400f0b39003031e26feb254b06046a274c54b38125ae5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant0cdde1452dae9325d61400f0b39003031e26feb254b06046a274c54b38125ae5.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant0cdde1452dae9325d61400f0b39003031e26feb254b06046a274c54b38125ae5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba3e08f65e0e1534492497b512690c6e4e63abb3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant0cdde1452dae9325d61400f0b39003031e26feb254b06046a274c54b38125ae5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant0cdde1452dae9325d61400f0b39003031e26feb254b06046a274c54b38125ae5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Iterators.Consumers` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.Slice.Array.Lemmas` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.Array.Mem` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.List.TakeDrop` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Zipper](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant0cdde1452dae9325d61400f0b39003031e26feb254b06046a274c54b38125ae5.lean/declarations/zipper--1eb66f1314ee81046284bb28.md) | 35 | `declaration-track:1eb66f1314ee81046284bb2849138c75720f2daf5ab892aacf3ae54955c35227` |
| 2 | `def` | [Zipper.prependNode](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant0cdde1452dae9325d61400f0b39003031e26feb254b06046a274c54b38125ae5.lean/declarations/zipper-prependnode--8ee3b8d24ddd8683fde05223.md) | 44 | `declaration-track:8ee3b8d24ddd8683fde05223a91a12535f7b2694a9a8d1d30a5b07d7b5e2dd4b` |
| 3 | `def` | [Zipper.step](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant0cdde1452dae9325d61400f0b39003031e26feb254b06046a274c54b38125ae5.lean/declarations/zipper-step--353d02a3176278698185574d.md) | 50 | `declaration-track:353d02a3176278698185574daee5cb0fccb5bc85aa57fc2f5d793dce6c6295c0` |
| 4 | `instance` | [instIterator](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant0cdde1452dae9325d61400f0b39003031e26feb254b06046a274c54b38125ae5.lean/declarations/institerator--1720dd548b449a8b90a233d8.md) | 68 | `declaration-track:1720dd548b449a8b90a233d8ffcc159b67a1a6a3eee4d10efc6703c252b8c291` |
| 5 | `def` | [Node.measure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant0cdde1452dae9325d61400f0b39003031e26feb254b06046a274c54b38125ae5.lean/declarations/node-measure--c1e7e2dbf51af2a495501046.md) | 73 | `declaration-track:c1e7e2dbf51af2a49550104676fa62523faa2020a947af82a0b962704cc09597` |
| 6 | `def` | [Entry.measure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant0cdde1452dae9325d61400f0b39003031e26feb254b06046a274c54b38125ae5.lean/declarations/entry-measure--590ffd56b6cf5c60767a752b.md) | 96 | `declaration-track:590ffd56b6cf5c60767a752b4c0dbecf4463efb482fa09aa9fd142c0baebca5b` |
| 7 | `def` | [subarrayMeasure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant0cdde1452dae9325d61400f0b39003031e26feb254b06046a274c54b38125ae5.lean/declarations/subarraymeasure--f00662a97999cab495472a8d.md) | 103 | `declaration-track:f00662a97999cab495472a8d09c41cee69ed27ab670aafb5f729c71c4964abac` |
| 8 | `def` | [Zipper.measure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant0cdde1452dae9325d61400f0b39003031e26feb254b06046a274c54b38125ae5.lean/declarations/zipper-measure--b7c6da6e58aac9156c563785.md) | 107 | `declaration-track:b7c6da6e58aac9156c563785cedafe399a87ba7fddae651bde2f7fcbf70caff7` |
| 9 | `theorem` | [subarrayMeasure_cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant0cdde1452dae9325d61400f0b39003031e26feb254b06046a274c54b38125ae5.lean/declarations/subarraymeasure-cons--8d8cb67d2e8ffda37c4c43bd.md) | 112 | `result-track:8d8cb67d2e8ffda37c4c43bd721788af254907ac30bc0b9dada5fa38374ea9e8` |
| 10 | `theorem` | [measureEntries_eq_list_sum](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant0cdde1452dae9325d61400f0b39003031e26feb254b06046a274c54b38125ae5.lean/declarations/measureentries-eq-list-sum--70c2b8a0aa36f42e2feb4869.md) | 121 | `result-track:70c2b8a0aa36f42e2feb4869b416f982fdacd070366fc201d2fbe76f055db757` |
| 11 | `theorem` | [subarrayMeasure_toSubarray_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant0cdde1452dae9325d61400f0b39003031e26feb254b06046a274c54b38125ae5.lean/declarations/subarraymeasure-tosubarray-eq--d2a99c875d79fd493260468e.md) | 138 | `result-track:d2a99c875d79fd493260468ef598153eaf7c9de1eb296b4044ab877f0e5cc05e` |
| 12 | `def` | [instFinitenessRelation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant0cdde1452dae9325d61400f0b39003031e26feb254b06046a274c54b38125ae5.lean/declarations/instfinitenessrelation--d63dd72623e80ed869edc9b0.md) | 150 | `declaration-track:d63dd72623e80ed869edc9b0d80338e9346bff8dbd605f8a1e3413e812285528` |
| 13 | `instance` | [instFinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant0cdde1452dae9325d61400f0b39003031e26feb254b06046a274c54b38125ae5.lean/declarations/instfinite--3d41817856d2638ea2ac6c6c.md) | 201 | `declaration-track:3d41817856d2638ea2ac6c6ca45592c2e875f5cf30ae47595d9ef0ee05929c0f` |
| 14 | `instance` | [instIteratorLoop](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant0cdde1452dae9325d61400f0b39003031e26feb254b06046a274c54b38125ae5.lean/declarations/institeratorloop--d0d6fc4cfe60b60166c3b8a6.md) | 205 | `declaration-track:d0d6fc4cfe60b60166c3b8a691d1136f374e4ea327d0e3bd8091a783a9b73cab` |
| 15 | `def` | [iter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant0cdde1452dae9325d61400f0b39003031e26feb254b06046a274c54b38125ae5.lean/declarations/iter--ea137351ae9050850fae4c5f.md) | 219 | `declaration-track:ea137351ae9050850fae4c5fbc0d62190532983690b379f82d1deab28571eed5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
