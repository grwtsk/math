# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Max.Variantf9381a30f98377e15faa35c02d19d3fa0d6576c1709460ed699f4616e4d2539e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a6735d1f9cdcb1f6a9f78925a565d9ab7b48781b",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Max/Variantf9381a30f98377e15faa35c02d19d3fa0d6576c1709460ed699f4616e4d2539e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Variantf9381a30f98377e15faa35c02d19d3fa0d6576c1709460ed699f4616e4d2539e.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Variantf9381a30f98377e15faa35c02d19d3fa0d6576c1709460ed699f4616e4d2539e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a6735d1f9cdcb1f6a9f78925a565d9ab7b48781b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Max/Variantf9381a30f98377e15faa35c02d19d3fa0d6576c1709460ed699f4616e4d2539e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Max/Variantf9381a30f98377e15faa35c02d19d3fa0d6576c1709460ed699f4616e4d2539e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [max](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Variantf9381a30f98377e15faa35c02d19d3fa0d6576c1709460ed699f4616e4d2539e.lean/declarations/max--f5bbfee33785e3d5df0600cc.md) | 38 | `declaration-track:f5bbfee33785e3d5df0600cc351390d6d42d1c33667f4b7c205ff0e044ee9afc` |
| 2 | `theorem` | [max_eq_sup_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Variantf9381a30f98377e15faa35c02d19d3fa0d6576c1709460ed699f4616e4d2539e.lean/declarations/max-eq-sup-coe--b29bcaad654dac050ec99c9f.md) | 42 | `result-track:b29bcaad654dac050ec99c9f11e38d5c72920200c23553272ee6341fe9c7d5ff` |
| 3 | `theorem` | [max_eq_sup_withBot](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Variantf9381a30f98377e15faa35c02d19d3fa0d6576c1709460ed699f4616e4d2539e.lean/declarations/max-eq-sup-withbot--ec6d15446a4eabf1fe8a99b3.md) | 46 | `result-track:ec6d15446a4eabf1fe8a99b35126abaf8b341e499298f65bf2c0cbd09754a10d` |
| 4 | `theorem` | [max_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Variantf9381a30f98377e15faa35c02d19d3fa0d6576c1709460ed699f4616e4d2539e.lean/declarations/max-empty--420a8ce707af0f25ccc2e94c.md) | 50 | `result-track:420a8ce707af0f25ccc2e94cedd29ff0e4bc231781c67b13d8d4bec890547f36` |
| 5 | `theorem` | [max_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Variantf9381a30f98377e15faa35c02d19d3fa0d6576c1709460ed699f4616e4d2539e.lean/declarations/max-insert--11a5732ab814b4210d8eb7d1.md) | 54 | `result-track:11a5732ab814b4210d8eb7d18daf61e38506e638524f0b44285e5924faf1d8d1` |
| 6 | `theorem` | [max_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Variantf9381a30f98377e15faa35c02d19d3fa0d6576c1709460ed699f4616e4d2539e.lean/declarations/max-singleton--e57a652c123a8662645d0827.md) | 58 | `result-track:e57a652c123a8662645d0827d06b96a884d39f042186b07e709cca7b90e7458e` |
| 7 | `lemma` | [max_pair](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Variantf9381a30f98377e15faa35c02d19d3fa0d6576c1709460ed699f4616e4d2539e.lean/declarations/max-pair--85a39585825bb61e37dc5f44.md) | 63 | `result-track:85a39585825bb61e37dc5f4469ef9dd7ba4e369743255347504a707e0560da47` |
| 8 | `theorem` | [max_of_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Variantf9381a30f98377e15faa35c02d19d3fa0d6576c1709460ed699f4616e4d2539e.lean/declarations/max-of-mem--3aa92dc028ed6d9443b79607.md) | 68 | `result-track:3aa92dc028ed6d9443b796070d51ee73a220d79a3d94a99c47d5d89a981ab466` |
| 9 | `theorem` | [max_of_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Variantf9381a30f98377e15faa35c02d19d3fa0d6576c1709460ed699f4616e4d2539e.lean/declarations/max-of-nonempty--fef10245464e92e01c34cfcf.md) | 72 | `result-track:fef10245464e92e01c34cfcf19eaeb0cfa1adc0fe55de352d17b0482f98150df` |
| 10 | `theorem` | [max_eq_bot](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Variantf9381a30f98377e15faa35c02d19d3fa0d6576c1709460ed699f4616e4d2539e.lean/declarations/max-eq-bot--2257ab60d9e3e1485a02af3d.md) | 77 | `result-track:2257ab60d9e3e1485a02af3d605db6d966ffd65265395f4301424c212089e878` |
| 11 | `theorem` | [mem_of_max](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Variantf9381a30f98377e15faa35c02d19d3fa0d6576c1709460ed699f4616e4d2539e.lean/declarations/mem-of-max--25f5eb5cb82c746a0860e720.md) | 84 | `result-track:25f5eb5cb82c746a0860e720335f76889b8add5c9064cf68a9c3a8cc604e0dea` |
| 12 | `theorem` | [le_max](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Variantf9381a30f98377e15faa35c02d19d3fa0d6576c1709460ed699f4616e4d2539e.lean/declarations/le-max--7e8bbb6185721bd6c5e30f9d.md) | 93 | `result-track:7e8bbb6185721bd6c5e30f9d7208e24842279bf00a728627569c2d470bc3c6fe` |
| 13 | `theorem` | [notMem_of_max_lt_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Variantf9381a30f98377e15faa35c02d19d3fa0d6576c1709460ed699f4616e4d2539e.lean/declarations/notmem-of-max-lt-coe--e6c44ab7297db02f9d0adba0.md) | 97 | `result-track:e6c44ab7297db02f9d0adba05e7babcc4e7f24d19864e76620d244ddd84457df` |
| 14 | `theorem` | [le_max_of_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Variantf9381a30f98377e15faa35c02d19d3fa0d6576c1709460ed699f4616e4d2539e.lean/declarations/le-max-of-eq--3d8d8eda94021bb29f691bee.md) | 101 | `result-track:3d8d8eda94021bb29f691bee9bd298ca82b88a7bf0af46a8201bb58e05779eff` |
| 15 | `theorem` | [notMem_of_max_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Variantf9381a30f98377e15faa35c02d19d3fa0d6576c1709460ed699f4616e4d2539e.lean/declarations/notmem-of-max-lt--cfa2091387c5a32fe3fd2c3b.md) | 105 | `result-track:cfa2091387c5a32fe3fd2c3bba9d0f85404906a5a2f212a7078bb7e9bb9a0d58` |
| 16 | `theorem` | [max_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Variantf9381a30f98377e15faa35c02d19d3fa0d6576c1709460ed699f4616e4d2539e.lean/declarations/max-union--9ebd1b3cf60a7c6446a8496b.md) | 109 | `result-track:9ebd1b3cf60a7c6446a8496bd5412a2592c1776a405f498aac83b34855df2d3c` |
| 17 | `theorem` | [max_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Variantf9381a30f98377e15faa35c02d19d3fa0d6576c1709460ed699f4616e4d2539e.lean/declarations/max-mono--d1a5ba1260c9f254bbda2538.md) | 112 | `result-track:d1a5ba1260c9f254bbda2538a6d0b11cafda73167cb54849e38f5d0ba2883372` |
| 18 | `theorem` | [max_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Variantf9381a30f98377e15faa35c02d19d3fa0d6576c1709460ed699f4616e4d2539e.lean/declarations/max-le--597c575d480b1c329637ff1a.md) | 116 | `result-track:597c575d480b1c329637ff1a137b76db461ddabbba6112b9faef28c59a115b56` |
| 19 | `lemma` | [max_le_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Variantf9381a30f98377e15faa35c02d19d3fa0d6576c1709460ed699f4616e4d2539e.lean/declarations/max-le-iff--8364aaa8e6ed34aca2889f38.md) | 121 | `result-track:8364aaa8e6ed34aca2889f382f15bb00832e37ca088512069966b77d3f7f1586` |
| 20 | `lemma` | [max_eq_top](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Variantf9381a30f98377e15faa35c02d19d3fa0d6576c1709460ed699f4616e4d2539e.lean/declarations/max-eq-top--0d4af4e0259d63890b55f06a.md) | 125 | `result-track:0d4af4e0259d63890b55f06aa191f9c79b438f6c76504c6a7ca86402fc154303` |
| 21 | `def` | [max'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Variantf9381a30f98377e15faa35c02d19d3fa0d6576c1709460ed699f4616e4d2539e.lean/declarations/max--6f916ec7276be92ade610f23.md) | 135 | `declaration-track:6f916ec7276be92ade610f23fc567c38604c1d1c6d8a0bebf1e2d2a84e11255b` |
| 22 | `theorem` | [max'_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Variantf9381a30f98377e15faa35c02d19d3fa0d6576c1709460ed699f4616e4d2539e.lean/declarations/max-mem--c558fe8385c947bff8218451.md) | 141 | `result-track:c558fe8385c947bff821845162219925261bf8946cff4246777ec3f2d58a433d` |
| 23 | `theorem` | [le_max'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Variantf9381a30f98377e15faa35c02d19d3fa0d6576c1709460ed699f4616e4d2539e.lean/declarations/le-max--27ba206786976b02223d59b4.md) | 145 | `result-track:27ba206786976b02223d59b47635e3c9613b2047285e192c13a0c2f3e1975ea7` |
| 24 | `theorem` | [max'_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Variantf9381a30f98377e15faa35c02d19d3fa0d6576c1709460ed699f4616e4d2539e.lean/declarations/max-le--e6669b4e0f15866da27937db.md) | 149 | `result-track:e6669b4e0f15866da27937db505fb21712e25e1a06bf24f5bab50dbad4dd1d66` |
| 25 | `theorem` | [isGreatest_max'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Variantf9381a30f98377e15faa35c02d19d3fa0d6576c1709460ed699f4616e4d2539e.lean/declarations/isgreatest-max--d2c56b031644ff6f5a1279e8.md) | 153 | `result-track:d2c56b031644ff6f5a1279e84bc88181da51fa1eb50b1d65aa18ab824e2c3ea6` |
| 26 | `theorem` | [max'_le_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Variantf9381a30f98377e15faa35c02d19d3fa0d6576c1709460ed699f4616e4d2539e.lean/declarations/max-le-iff--b447473bff44876080dd63b0.md) | 157 | `result-track:b447473bff44876080dd63b0f6f173bf4d99307b17e14fbe2d217ff8c4f09e93` |
| 27 | `theorem` | [max'_lt_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Variantf9381a30f98377e15faa35c02d19d3fa0d6576c1709460ed699f4616e4d2539e.lean/declarations/max-lt-iff--86721bced4a26f9765e43e75.md) | 161 | `result-track:86721bced4a26f9765e43e75b9b298fcd4da7d665b5e73075b331af1a8ba6758` |
| 28 | `theorem` | [max'_eq_sup'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Variantf9381a30f98377e15faa35c02d19d3fa0d6576c1709460ed699f4616e4d2539e.lean/declarations/max-eq-sup--259d808925643bd68eb9053a.md) | 165 | `result-track:259d808925643bd68eb9053aaed4984a64fb57badac03f130da5e73dc3a0d8e4` |
| 29 | `theorem` | [max'_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Variantf9381a30f98377e15faa35c02d19d3fa0d6576c1709460ed699f4616e4d2539e.lean/declarations/max-singleton--748cdc45b249928936658e95.md) | 169 | `result-track:748cdc45b249928936658e95fd6bbb6e1cddd789bef7abda98e7d2314b806f1f` |
| 30 | `lemma` | [max'_eq_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Variantf9381a30f98377e15faa35c02d19d3fa0d6576c1709460ed699f4616e4d2539e.lean/declarations/max-eq-iff--b7549dd6d9ad08e232b1aa10.md) | 172 | `result-track:b7549dd6d9ad08e232b1aa100fad1824b7fdeaabe54f25756bba5a3c49f5a0a7` |
| 31 | `theorem` | [min'_le_max'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Variantf9381a30f98377e15faa35c02d19d3fa0d6576c1709460ed699f4616e4d2539e.lean/declarations/min-le-max--dd347ddc190a76ca375fa3de.md) | 175 | `result-track:dd347ddc190a76ca375fa3deb85207af87781f43b2a49ebc48e742b8909726c5` |
| 32 | `theorem` | [min'_lt_max'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Variantf9381a30f98377e15faa35c02d19d3fa0d6576c1709460ed699f4616e4d2539e.lean/declarations/min-lt-max--a03025d03e0f6914ef17d3bb.md) | 177 | `result-track:a03025d03e0f6914ef17d3bbbaf1b71a66a34662db5f91272aca40570190d3a2` |
| 33 | `theorem` | [min'_lt_max'_of_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Variantf9381a30f98377e15faa35c02d19d3fa0d6576c1709460ed699f4616e4d2539e.lean/declarations/min-lt-max-of-card--e2de989021213304da57dc56.md) | 184 | `result-track:e2de989021213304da57dc56b3ceb5a9af94e9462c1b5e88d4adbae242bd68ef` |
| 34 | `theorem` | [max'_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Variantf9381a30f98377e15faa35c02d19d3fa0d6576c1709460ed699f4616e4d2539e.lean/declarations/max-union--5cfb7e0c6736656ef6ae27ee.md) | 190 | `result-track:5cfb7e0c6736656ef6ae27ee42309198d4640a4b5bc074279e1e7808f41ea3e7` |
| 35 | `theorem` | [map_ofDual_max](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Variantf9381a30f98377e15faa35c02d19d3fa0d6576c1709460ed699f4616e4d2539e.lean/declarations/map-ofdual-max--c89b71f2b725ee1a5329143d.md) | 194 | `result-track:c89b71f2b725ee1a5329143d353a1347013524a610a4f665109bc6d15076fc2b` |
| 36 | `theorem` | [map_toDual_max](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Variantf9381a30f98377e15faa35c02d19d3fa0d6576c1709460ed699f4616e4d2539e.lean/declarations/map-todual-max--4f5fa255998bd030cb1f87fb.md) | 199 | `result-track:4f5fa255998bd030cb1f87fba4e0ade23eb214a93716cbbb4dd8cd395b961277` |
| 37 | `theorem` | [ofDual_max'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Variantf9381a30f98377e15faa35c02d19d3fa0d6576c1709460ed699f4616e4d2539e.lean/declarations/ofdual-max--47514116652fe42cfab5ea71.md) | 204 | `result-track:47514116652fe42cfab5ea71972bbf0e5bfbdf20f40a306960090eedd88dcdbd` |
| 38 | `theorem` | [toDual_max'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Variantf9381a30f98377e15faa35c02d19d3fa0d6576c1709460ed699f4616e4d2539e.lean/declarations/todual-max--ce76e9e47181d476d0a746af.md) | 209 | `result-track:ce76e9e47181d476d0a746af2d1a5b852283e5ca8b98a5a050591ed754e04d41` |
| 39 | `theorem` | [max'_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Variantf9381a30f98377e15faa35c02d19d3fa0d6576c1709460ed699f4616e4d2539e.lean/declarations/max-subset--e9005f48494b6e952da7442b.md) | 214 | `result-track:e9005f48494b6e952da7442b84ecded4d04f77e949e672b4be9b108caf67af92` |
| 40 | `theorem` | [max'_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Variantf9381a30f98377e15faa35c02d19d3fa0d6576c1709460ed699f4616e4d2539e.lean/declarations/max-insert--d5ed4bd68580d2bf32adfaac.md) | 218 | `result-track:d5ed4bd68580d2bf32adfaaceed0a817e0c40d63db34bfb7c3d83900a6ce9a5c` |
| 41 | `lemma` | [max'_pair](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Variantf9381a30f98377e15faa35c02d19d3fa0d6576c1709460ed699f4616e4d2539e.lean/declarations/max-pair--e11800077ee0c0f711ab5df6.md) | 225 | `result-track:e11800077ee0c0f711ab5df6070a45e3edb83e070152a57e594965759be4578a` |
| 42 | `theorem` | [lt_max'_of_mem_erase_max'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Variantf9381a30f98377e15faa35c02d19d3fa0d6576c1709460ed699f4616e4d2539e.lean/declarations/lt-max-of-mem-erase-max--98a51f4045857bb7e006613c.md) | 230 | `result-track:98a51f4045857bb7e006613ce8235849e587584259583b104b01b5079ad26d01` |
| 43 | `theorem` | [max'_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Variantf9381a30f98377e15faa35c02d19d3fa0d6576c1709460ed699f4616e4d2539e.lean/declarations/max-image--288dd407d6bdaa6dc1d7a838.md) | 236 | `result-track:288dd407d6bdaa6dc1d7a838bdbc89b49cc95ea42e675693176a285b2937001e` |
| 44 | `lemma` | [_root_.Monotone.map_finset_max'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Variantf9381a30f98377e15faa35c02d19d3fa0d6576c1709460ed699f4616e4d2539e.lean/declarations/root-monotone-map-finset-max--da76cac2a85239a4d3c67c34.md) | 246 | `result-track:da76cac2a85239a4d3c67c34bda8f59b23ffc4233da40af89252751196c264db` |
| 45 | `theorem` | [coe_max'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Variantf9381a30f98377e15faa35c02d19d3fa0d6576c1709460ed699f4616e4d2539e.lean/declarations/coe-max--3ebe3ddbd2409d7ed6484d88.md) | 251 | `result-track:3ebe3ddbd2409d7ed6484d880da5cf4b49eb0841760657afb424e33e5a796aaf` |
| 46 | `theorem` | [max_mem_image_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Variantf9381a30f98377e15faa35c02d19d3fa0d6576c1709460ed699f4616e4d2539e.lean/declarations/max-mem-image-coe--cf832183377e745861f92acc.md) | 255 | `result-track:cf832183377e745861f92acc0028aa9b71499cee11a769d9c26ea43d4dccece5` |
| 47 | `theorem` | [max_mem_insert_bot_image_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Variantf9381a30f98377e15faa35c02d19d3fa0d6576c1709460ed699f4616e4d2539e.lean/declarations/max-mem-insert-bot-image-coe--4eb0975d26f94353d1bd45e7.md) | 260 | `result-track:4eb0975d26f94353d1bd45e745f661d6427231e606cc418b92039a82aace5aa7` |
| 48 | `theorem` | [max'_erase_ne_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Variantf9381a30f98377e15faa35c02d19d3fa0d6576c1709460ed699f4616e4d2539e.lean/declarations/max-erase-ne-self--459ae7f77cec103b260efd78.md) | 265 | `result-track:459ae7f77cec103b260efd78c831afbde74bea694c28f2f487a67c80028f8427` |
| 49 | `theorem` | [max_erase_ne_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Variantf9381a30f98377e15faa35c02d19d3fa0d6576c1709460ed699f4616e4d2539e.lean/declarations/max-erase-ne-self--1aa909be1933743a3b5010c5.md) | 269 | `result-track:1aa909be1933743a3b5010c5b7247df4cef139765be2d5410dd37b67ea175ecf` |
| 50 | `theorem` | [exists_next_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Variantf9381a30f98377e15faa35c02d19d3fa0d6576c1709460ed699f4616e4d2539e.lean/declarations/exists-next-right--274f377e6fa0d5089cc34d0e.md) | 277 | `result-track:274f377e6fa0d5089cc34d0e7423997f8971d1c7e033921df576781dab940ea0` |
| 51 | `theorem` | [card_le_of_interleaved](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Variantf9381a30f98377e15faa35c02d19d3fa0d6576c1709460ed699f4616e4d2539e.lean/declarations/card-le-of-interleaved--818ca337696031e37bf6efaa.md) | 284 | `result-track:818ca337696031e37bf6efaa855a27e543c6822cb68b7da95749d86413b532d0` |
| 52 | `theorem` | [card_le_sdiff_of_interleaved](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Variantf9381a30f98377e15faa35c02d19d3fa0d6576c1709460ed699f4616e4d2539e.lean/declarations/card-le-sdiff-of-interleaved--4663c75a221e49bad07b324c.md) | 311 | `result-track:4663c75a221e49bad07b324cdc8d08fb3cfe9b909ae5b080080696dda763b586` |
| 53 | `theorem` | [induction_on_max](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Variantf9381a30f98377e15faa35c02d19d3fa0d6576c1709460ed699f4616e4d2539e.lean/declarations/induction-on-max--4f4a50d7dea61f7ca6c9c00b.md) | 336 | `result-track:4f4a50d7dea61f7ca6c9c00bac10084130932dea38fd7e7e81df34b89cab840c` |
| 54 | `theorem` | [induction_on_max_value](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Variantf9381a30f98377e15faa35c02d19d3fa0d6576c1709460ed699f4616e4d2539e.lean/declarations/induction-on-max-value--553e2df00c3501d104ac0c6d.md) | 365 | `result-track:553e2df00c3501d104ac0c6ddc082edf81f9376aea8e6b55a19e16393d91549f` |
| 55 | `theorem` | [exists_max_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Variantf9381a30f98377e15faa35c02d19d3fa0d6576c1709460ed699f4616e4d2539e.lean/declarations/exists-max-image--09f8bb452625d37168af7094.md) | 387 | `result-track:09f8bb452625d37168af709415af82e645ff21a03b5341e68ffbaaa89853dc36` |
| 56 | `theorem` | [isGLB_iff_isLeast](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Variantf9381a30f98377e15faa35c02d19d3fa0d6576c1709460ed699f4616e4d2539e.lean/declarations/isglb-iff-isleast--3ec37cf199b8ca2c6dd9008d.md) | 396 | `result-track:3ec37cf199b8ca2c6dd9008d98b7636b21cb7df907223453119336d6e34f75cd` |
| 57 | `theorem` | [isGLB_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Variantf9381a30f98377e15faa35c02d19d3fa0d6576c1709460ed699f4616e4d2539e.lean/declarations/isglb-mem--27849199e75f9f4d302f8cc5.md) | 406 | `result-track:27849199e75f9f4d302f8cc59e704e193df3a0f81532175ca8446b1dab26eddc` |
| 58 | `theorem` | [Multiset.exists_max_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Variantf9381a30f98377e15faa35c02d19d3fa0d6576c1709460ed699f4616e4d2539e.lean/declarations/multiset-exists-max-image--3027e1a80380e16e3d063cff.md) | 414 | `result-track:3027e1a80380e16e3d063cff2f4c9eb7b1d69828b51c349632f084f80b304ab8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
