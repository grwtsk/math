# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Impl.Variantbb7570239a6aba62a513a791dbeea72a0c3fc721b90ddfa9d959350ab6a8bbb8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "45a614232e9f6e8dd3bb837139440fd61fdcdb60",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variantbb7570239a6aba62a513a791dbeea72a0c3fc721b90ddfa9d959350ab6a8bbb8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variantbb7570239a6aba62a513a791dbeea72a0c3fc721b90ddfa9d959350ab6a8bbb8.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variantbb7570239a6aba62a513a791dbeea72a0c3fc721b90ddfa9d959350ab6a8bbb8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `45a614232e9f6e8dd3bb837139440fd61fdcdb60`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variantbb7570239a6aba62a513a791dbeea72a0c3fc721b90ddfa9d959350ab6a8bbb8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variantbb7570239a6aba62a513a791dbeea72a0c3fc721b90ddfa9d959350ab6a8bbb8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Array.Bootstrap` — import line 10; external provider; requires a separately pinned dependency.
- `Init.Data.Bool` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Data.List.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.Option.Lemmas` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [setTR](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variantbb7570239a6aba62a513a791dbeea72a0c3fc721b90ddfa9d959350ab6a8bbb8.lean/declarations/settr--6a5c781b3bf230129c762e76.md) | 70 | `declaration-track:6a5c781b3bf230129c762e76214207cd31ebb24cb9cf42d6563967dd0d3bbfd8` |
| 2 | `theorem` | [set_eq_setTR](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variantbb7570239a6aba62a513a791dbeea72a0c3fc721b90ddfa9d959350ab6a8bbb8.lean/declarations/set-eq-settr--33c5c7d49b9f8e60161592e2.md) | 78 | `result-track:33c5c7d49b9f8e60161592e27c224926c0cf7c430120b6e9880cbc611c809d34` |
| 3 | `def` | [filterMapTR](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variantbb7570239a6aba62a513a791dbeea72a0c3fc721b90ddfa9d959350ab6a8bbb8.lean/declarations/filtermaptr--75b5f8902066deb7ab19b8f5.md) | 105 | `declaration-track:75b5f8902066deb7ab19b8f535d50c8286db33991e0b03fd518dc7d8d44a2e84` |
| 4 | `theorem` | [filterMap_eq_filterMapTR](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variantbb7570239a6aba62a513a791dbeea72a0c3fc721b90ddfa9d959350ab6a8bbb8.lean/declarations/filtermap-eq-filtermaptr--2241dae6e7aac71179db796a.md) | 113 | `result-track:2241dae6e7aac71179db796aca368bf7e99aa75b59b4dbab02d176b132dc1a35` |
| 5 | `def` | [reduceOption](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variantbb7570239a6aba62a513a791dbeea72a0c3fc721b90ddfa9d959350ab6a8bbb8.lean/declarations/reduceoption--aa34707c3164312b11e2aab6.md) | 126 | `declaration-track:aa34707c3164312b11e2aab60b315b3a4d59a7bf3d246494da20f452e879207b` |
| 6 | `def` | [foldrTR](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variantbb7570239a6aba62a513a791dbeea72a0c3fc721b90ddfa9d959350ab6a8bbb8.lean/declarations/foldrtr--4eac838e66e949b4b21c93a0.md) | 142 | `declaration-track:4eac838e66e949b4b21c93a0b8cb48c81a5601a0d0c0d9f343f7fcdadb43ea27` |
| 7 | `theorem` | [foldr_eq_foldrTR](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variantbb7570239a6aba62a513a791dbeea72a0c3fc721b90ddfa9d959350ab6a8bbb8.lean/declarations/foldr-eq-foldrtr--72d04899ce55770e4a57a663.md) | 144 | `result-track:72d04899ce55770e4a57a663a2d31ce79e73a14fce0c63fe06a7d77738f2b0f6` |
| 8 | `def` | [flatMapTR](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variantbb7570239a6aba62a513a791dbeea72a0c3fc721b90ddfa9d959350ab6a8bbb8.lean/declarations/flatmaptr--60e60119d69aa2636c3a5442.md) | 159 | `declaration-track:60e60119d69aa2636c3a5442a38a0dc26f108235fe2489616109a542b51a3a58` |
| 9 | `theorem` | [flatMap_eq_flatMapTR](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variantbb7570239a6aba62a513a791dbeea72a0c3fc721b90ddfa9d959350ab6a8bbb8.lean/declarations/flatmap-eq-flatmaptr--940d45701cf95b03595361fb.md) | 165 | `result-track:940d45701cf95b03595361fba2271c671f33b616b580a2d2df499eb61de09429` |
| 10 | `def` | [flattenTR](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variantbb7570239a6aba62a513a791dbeea72a0c3fc721b90ddfa9d959350ab6a8bbb8.lean/declarations/flattentr--c9d19e61c77433129fcbebcf.md) | 183 | `declaration-track:c9d19e61c77433129fcbebcffcca6c96f3037e58ba88a2c08ab381d1cbac9a41` |
| 11 | `theorem` | [flatten_eq_flattenTR](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variantbb7570239a6aba62a513a791dbeea72a0c3fc721b90ddfa9d959350ab6a8bbb8.lean/declarations/flatten-eq-flattentr--6490ba5effa01afa128a481a.md) | 185 | `result-track:6490ba5effa01afa128a481ac941018b5c528d5bb628d28f7e3ebce492ed4dec` |
| 12 | `def` | [takeTR](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variantbb7570239a6aba62a513a791dbeea72a0c3fc721b90ddfa9d959350ab6a8bbb8.lean/declarations/taketr--39f1ccee9668643fde45436c.md) | 202 | `declaration-track:39f1ccee9668643fde45436c6370a32cf142ce4de208242bc1a1457685b55d00` |
| 13 | `theorem` | [take_eq_takeTR](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variantbb7570239a6aba62a513a791dbeea72a0c3fc721b90ddfa9d959350ab6a8bbb8.lean/declarations/take-eq-taketr--b1acbc456306aa9a2c82ae93.md) | 210 | `result-track:b1acbc456306aa9a2c82ae93d38012bdb873249b3e2b7f75182b4fff2a8dfa42` |
| 14 | `def` | [takeWhileTR](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variantbb7570239a6aba62a513a791dbeea72a0c3fc721b90ddfa9d959350ab6a8bbb8.lean/declarations/takewhiletr--f1ad46e33869bef406081433.md) | 234 | `declaration-track:f1ad46e33869bef406081433ec716ea40c8c3568a1f65c29754bebb0baa1cf78` |
| 15 | `theorem` | [takeWhile_eq_takeWhileTR](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variantbb7570239a6aba62a513a791dbeea72a0c3fc721b90ddfa9d959350ab6a8bbb8.lean/declarations/takewhile-eq-takewhiletr--003ff3d0a8e75ceeaad0e61a.md) | 241 | `result-track:003ff3d0a8e75ceeaad0e61a5558ab21ce922ec97b6f985f8db659ca8cd11175` |
| 16 | `def` | [dropLastTR](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variantbb7570239a6aba62a513a791dbeea72a0c3fc721b90ddfa9d959350ab6a8bbb8.lean/declarations/droplasttr--9d078e76014c33bd85a8a22e.md) | 266 | `declaration-track:9d078e76014c33bd85a8a22e06c2f9693b66d99dcb03d9630d2b8652a3c226aa` |
| 17 | `theorem` | [dropLast_eq_dropLastTR](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variantbb7570239a6aba62a513a791dbeea72a0c3fc721b90ddfa9d959350ab6a8bbb8.lean/declarations/droplast-eq-droplasttr--8618bed5b523d1f3bd59e43f.md) | 268 | `result-track:8618bed5b523d1f3bd59e43f40247a2eb1a01793da1cafc83ab73e901573e6dd` |
| 18 | `def` | [findRev?TR](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variantbb7570239a6aba62a513a791dbeea72a0c3fc721b90ddfa9d959350ab6a8bbb8.lean/declarations/findrev-tr--09696fe5af30ec286316c916.md) | 274 | `declaration-track:09696fe5af30ec286316c91655a38a497fcfa9e09cf6847455149cc2c17f1c44` |
| 19 | `theorem` | [find?_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variantbb7570239a6aba62a513a791dbeea72a0c3fc721b90ddfa9d959350ab6a8bbb8.lean/declarations/find-singleton--70f0c21100c3162b15dde2ce.md) | 276 | `result-track:70f0c21100c3162b15dde2ceb9d3f3d9d2fe9f1d85d1f213cb6b7372c943c101` |
| 20 | `theorem` | [find?_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variantbb7570239a6aba62a513a791dbeea72a0c3fc721b90ddfa9d959350ab6a8bbb8.lean/declarations/find-append--4ceb346a2986557ad677bb08.md) | 280 | `result-track:4ceb346a2986557ad677bb083e192fa586d510e36c84265fb4fe74f7f3ca187d` |
| 21 | `theorem` | [findRev?_eq_findRev?TR](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variantbb7570239a6aba62a513a791dbeea72a0c3fc721b90ddfa9d959350ab6a8bbb8.lean/declarations/findrev-eq-findrev-tr--3fd882b1950141f556642039.md) | 287 | `result-track:3fd882b1950141f556642039dc8524bb7927d581d13c0f110c6a0a054583b30b` |
| 22 | `theorem` | [findRev?_eq_find?_reverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variantbb7570239a6aba62a513a791dbeea72a0c3fc721b90ddfa9d959350ab6a8bbb8.lean/declarations/findrev-eq-find-reverse--179a4ad744c9ae56461f2a20.md) | 295 | `result-track:179a4ad744c9ae56461f2a20601aa85e526c14582433b5578fe6401da9cb11aa` |
| 23 | `def` | [findSomeRev?TR](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variantbb7570239a6aba62a513a791dbeea72a0c3fc721b90ddfa9d959350ab6a8bbb8.lean/declarations/findsomerev-tr--cbaddb657e3d9568c9121e35.md) | 300 | `declaration-track:cbaddb657e3d9568c9121e35f62ef134490590c48e1f79577989f3b32f12972f` |
| 24 | `theorem` | [findSome?_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variantbb7570239a6aba62a513a791dbeea72a0c3fc721b90ddfa9d959350ab6a8bbb8.lean/declarations/findsome-singleton--daed10b278f89c7dc209e9a1.md) | 302 | `result-track:daed10b278f89c7dc209e9a1945da6df410f625ecee27ac7ea15958762abbc8e` |
| 25 | `theorem` | [findSome?_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variantbb7570239a6aba62a513a791dbeea72a0c3fc721b90ddfa9d959350ab6a8bbb8.lean/declarations/findsome-append--6d91a50b3d317ac1642822be.md) | 307 | `result-track:6d91a50b3d317ac1642822bec805ceda4aeb261d29af5dace8cf0dc8780ea385` |
| 26 | `theorem` | [findSomeRev?_eq_findSomeRev?TR](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variantbb7570239a6aba62a513a791dbeea72a0c3fc721b90ddfa9d959350ab6a8bbb8.lean/declarations/findsomerev-eq-findsomerev-tr--992f7378990e5efa5b267eb3.md) | 314 | `result-track:992f7378990e5efa5b267eb31a3112c007da0fa1c6a43e7f976faa394696f03b` |
| 27 | `theorem` | [findSomeRev?_eq_findSome?_reverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variantbb7570239a6aba62a513a791dbeea72a0c3fc721b90ddfa9d959350ab6a8bbb8.lean/declarations/findsomerev-eq-findsome-reverse--75f0b30188a7f7fb8a9dc207.md) | 323 | `result-track:75f0b30188a7f7fb8a9dc207e5ec8a84f89c0ed1de80740f6f640f0df89d90fb` |
| 28 | `def` | [replaceTR](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variantbb7570239a6aba62a513a791dbeea72a0c3fc721b90ddfa9d959350ab6a8bbb8.lean/declarations/replacetr--c974402948ad942240bf88b1.md) | 341 | `declaration-track:c974402948ad942240bf88b1e22b1896a162f892aef5a8a477bfb62664605e64` |
| 29 | `theorem` | [replace_eq_replaceTR](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variantbb7570239a6aba62a513a791dbeea72a0c3fc721b90ddfa9d959350ab6a8bbb8.lean/declarations/replace-eq-replacetr--e3445bc4de3de0a80988bade.md) | 348 | `result-track:e3445bc4de3de0a80988bade5d18d7da8a39a105a643c8531c2082a8987872c5` |
| 30 | `def` | [modifyTR](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variantbb7570239a6aba62a513a791dbeea72a0c3fc721b90ddfa9d959350ab6a8bbb8.lean/declarations/modifytr--ba675ee4553198f394a6131a.md) | 373 | `declaration-track:ba675ee4553198f394a6131a25aa99c9dc0680c7f96b8645866c08fc92f085d9` |
| 31 | `theorem` | [modifyTR_go_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variantbb7570239a6aba62a513a791dbeea72a0c3fc721b90ddfa9d959350ab6a8bbb8.lean/declarations/modifytr-go-eq--8c504962bcef4a2e97879c52.md) | 380 | `result-track:8c504962bcef4a2e97879c522a91cce8765c52ccbf498c231562ecc7c2c81f3c` |
| 32 | `theorem` | [modify_eq_modifyTR](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variantbb7570239a6aba62a513a791dbeea72a0c3fc721b90ddfa9d959350ab6a8bbb8.lean/declarations/modify-eq-modifytr--f2fed80bdba8a002b5ad2724.md) | 385 | `result-track:f2fed80bdba8a002b5ad2724f5116b69806105af3a252740124940e44c3054c2` |
| 33 | `def` | [insertIdxTR](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variantbb7570239a6aba62a513a791dbeea72a0c3fc721b90ddfa9d959350ab6a8bbb8.lean/declarations/insertidxtr--2d0642e3121614b4d8eccc1b.md) | 405 | `declaration-track:2d0642e3121614b4d8eccc1bc3fb69c2c3529ad978aa6822d19398c3bcce9601` |
| 34 | `theorem` | [insertIdxTR_go_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variantbb7570239a6aba62a513a791dbeea72a0c3fc721b90ddfa9d959350ab6a8bbb8.lean/declarations/insertidxtr-go-eq--232652c3d2145db1259ffcf6.md) | 412 | `result-track:232652c3d2145db1259ffcf627dab39b107f9ac8b5961968ff8758cb02de3aaa` |
| 35 | `theorem` | [insertIdx_eq_insertIdxTR](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variantbb7570239a6aba62a513a791dbeea72a0c3fc721b90ddfa9d959350ab6a8bbb8.lean/declarations/insertidx-eq-insertidxtr--702ab0746fbf687c976cc97a.md) | 416 | `result-track:702ab0746fbf687c976cc97aee4a580b096be7c45b8825b17fcc0647ce096fd0` |
| 36 | `def` | [eraseTR](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variantbb7570239a6aba62a513a791dbeea72a0c3fc721b90ddfa9d959350ab6a8bbb8.lean/declarations/erasetr--f9f5ed34c34e92316c1ad04f.md) | 433 | `declaration-track:f9f5ed34c34e92316c1ad04f4ac7472fa885e7d59f29f42873d5e21676604c17` |
| 37 | `theorem` | [erase_eq_eraseTR](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variantbb7570239a6aba62a513a791dbeea72a0c3fc721b90ddfa9d959350ab6a8bbb8.lean/declarations/erase-eq-erasetr--803cdd4ae6ae290081ce6e79.md) | 440 | `result-track:803cdd4ae6ae290081ce6e79f28093a5a31ee11d8fd36ee4aff9bb7d9514b4f9` |
| 38 | `def` | [erasePTR](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variantbb7570239a6aba62a513a791dbeea72a0c3fc721b90ddfa9d959350ab6a8bbb8.lean/declarations/eraseptr--25453db0490d8bd73f28a91c.md) | 463 | `declaration-track:25453db0490d8bd73f28a91c5ad38c64cfac0f3d9e6f54b158a4a94321ed9cfb` |
| 39 | `theorem` | [eraseP_eq_erasePTR](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variantbb7570239a6aba62a513a791dbeea72a0c3fc721b90ddfa9d959350ab6a8bbb8.lean/declarations/erasep-eq-eraseptr--dc19d1dbfdfb0679085e0454.md) | 470 | `result-track:dc19d1dbfdfb0679085e0454cd054acf971acb47a16e94cc9d45f3d44ac1ea5f` |
| 40 | `def` | [eraseIdxTR](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variantbb7570239a6aba62a513a791dbeea72a0c3fc721b90ddfa9d959350ab6a8bbb8.lean/declarations/eraseidxtr--d06f1f9ad6e0d29d85661ce9.md) | 496 | `declaration-track:d06f1f9ad6e0d29d85661ce98dce811ef7e3ba9d4560e75beda6fec02ab96dbe` |
| 41 | `theorem` | [eraseIdx_eq_eraseIdxTR](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variantbb7570239a6aba62a513a791dbeea72a0c3fc721b90ddfa9d959350ab6a8bbb8.lean/declarations/eraseidx-eq-eraseidxtr--16e0d1d227235fae045646f3.md) | 504 | `result-track:16e0d1d227235fae045646f379feb29183d769f2454a5fa5895b27c3d04f87bf` |
| 42 | `def` | [zipWithTR](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variantbb7570239a6aba62a513a791dbeea72a0c3fc721b90ddfa9d959350ab6a8bbb8.lean/declarations/zipwithtr--1d30a344b9ab8e355f0e123e.md) | 533 | `declaration-track:1d30a344b9ab8e355f0e123e79f58563b22fc2240458e0aeb91a9846dd37e5ff` |
| 43 | `theorem` | [zipWith_eq_zipWithTR](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variantbb7570239a6aba62a513a791dbeea72a0c3fc721b90ddfa9d959350ab6a8bbb8.lean/declarations/zipwith-eq-zipwithtr--17334c776a8c24252edd9e71.md) | 539 | `result-track:17334c776a8c24252edd9e71674a2331cd11f3e53f175847725970fc26fbf9a4` |
| 44 | `def` | [zipIdxTR](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variantbb7570239a6aba62a513a791dbeea72a0c3fc721b90ddfa9d959350ab6a8bbb8.lean/declarations/zipidxtr--ff891fd746f6d40d70de5ba3.md) | 560 | `declaration-track:ff891fd746f6d40d70de5ba3488d3236a8764ef2704c305b548e1107a520d936` |
| 45 | `theorem` | [zipIdx_eq_zipIdxTR](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variantbb7570239a6aba62a513a791dbeea72a0c3fc721b90ddfa9d959350ab6a8bbb8.lean/declarations/zipidx-eq-zipidxtr--46a485fd0d9843da7fe9443e.md) | 564 | `result-track:46a485fd0d9843da7fe9443e3e4af9f71b10af14ac483f87fbd66880c55f4b83` |
| 46 | `def` | [intercalateTR](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variantbb7570239a6aba62a513a791dbeea72a0c3fc721b90ddfa9d959350ab6a8bbb8.lean/declarations/intercalatetr--7f5f7e2ba8633fed3d2dbe5d.md) | 595 | `declaration-track:7f5f7e2ba8633fed3d2dbe5d24665abdac807b0b65474cef0f2054d9a3ef769f` |
| 47 | `theorem` | [intercalate_eq_intercalateTR](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variantbb7570239a6aba62a513a791dbeea72a0c3fc721b90ddfa9d959350ab6a8bbb8.lean/declarations/intercalate-eq-intercalatetr--c7c2fa10e1ee80e9c042f9c6.md) | 607 | `result-track:c7c2fa10e1ee80e9c042f9c604c0514eabe541734ffdb1ada97cee1cdc22d863` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
