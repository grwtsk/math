# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Union.Variante4eba6398886cfdf0ac4dc3e5a5b0b3f01fa4437fe9e5e4c6ce786e786e360d0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dde40f6650f247118e64dda1a1582ca16e777cce",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variante4eba6398886cfdf0ac4dc3e5a5b0b3f01fa4437fe9e5e4c6ce786e786e360d0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variante4eba6398886cfdf0ac4dc3e5a5b0b3f01fa4437fe9e5e4c6ce786e786e360d0.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variante4eba6398886cfdf0ac4dc3e5a5b0b3f01fa4437fe9e5e4c6ce786e786e360d0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dde40f6650f247118e64dda1a1582ca16e777cce`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variante4eba6398886cfdf0ac4dc3e5a5b0b3f01fa4437fe9e5e4c6ce786e786e360d0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variante4eba6398886cfdf0ac4dc3e5a5b0b3f01fa4437fe9e5e4c6ce786e786e360d0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Fold` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Bind` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SetNotation` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [disjiUnion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variante4eba6398886cfdf0ac4dc3e5a5b0b3f01fa4437fe9e5e4c6ce786e786e360d0.lean/declarations/disjiunion--d66105432cae66ab0b70937f.md) | 47 | `declaration-track:d66105432cae66ab0b70937fafbcda7db0d201173f3f7285674ae57267601ad1` |
| 2 | `lemma` | [disjiUnion_val](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variante4eba6398886cfdf0ac4dc3e5a5b0b3f01fa4437fe9e5e4c6ce786e786e360d0.lean/declarations/disjiunion-val--14f4ce1a9699baf17fe10cc6.md) | 52 | `result-track:14f4ce1a9699baf17fe10cc684b44b5d2f9e69007c24fd661bcf31ef1a5a2623` |
| 3 | `lemma` | [disjiUnion_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variante4eba6398886cfdf0ac4dc3e5a5b0b3f01fa4437fe9e5e4c6ce786e786e360d0.lean/declarations/disjiunion-empty--10747ec005e32258010a548c.md) | 55 | `result-track:10747ec005e32258010a548c897078d1c455a40b848c093d0af2cbbe16572ad1` |
| 4 | `lemma` | [mem_disjiUnion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variante4eba6398886cfdf0ac4dc3e5a5b0b3f01fa4437fe9e5e4c6ce786e786e360d0.lean/declarations/mem-disjiunion--9bb1ddd1bbf1fd107ff40684.md) | 57 | `result-track:9bb1ddd1bbf1fd107ff40684b3978e1d81a8c60368a20e2bcb6bb6663c6a111f` |
| 5 | `lemma` | [coe_disjiUnion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variante4eba6398886cfdf0ac4dc3e5a5b0b3f01fa4437fe9e5e4c6ce786e786e360d0.lean/declarations/coe-disjiunion--7ee4a18883c80d963dfa2218.md) | 61 | `result-track:7ee4a18883c80d963dfa221820aeb9e20789eaeb96c58cfc111022cb761d4a15` |
| 6 | `lemma` | [disjiUnion_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variante4eba6398886cfdf0ac4dc3e5a5b0b3f01fa4437fe9e5e4c6ce786e786e360d0.lean/declarations/disjiunion-cons--e8ef62d3ae4b489e8d187bf2.md) | 64 | `result-track:e8ef62d3ae4b489e8d187bf21366e419eb8bbab0e4314051d95c9b25f6de5769` |
| 7 | `lemma` | [singleton_disjiUnion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variante4eba6398886cfdf0ac4dc3e5a5b0b3f01fa4437fe9e5e4c6ce786e786e360d0.lean/declarations/singleton-disjiunion--8a58b6c6a4c2c47e5b302b1c.md) | 73 | `result-track:8a58b6c6a4c2c47e5b302b1c754622c153bc367714e95f77d5737df48e90eba3` |
| 8 | `lemma` | [disjiUnion_disjiUnion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variante4eba6398886cfdf0ac4dc3e5a5b0b3f01fa4437fe9e5e4c6ce786e786e360d0.lean/declarations/disjiunion-disjiunion--98115639c74bb337a188dbd8.md) | 76 | `result-track:98115639c74bb337a188dbd8ba511ed5a0b6605720d8b47818dc25a7e1f4c9ad` |
| 9 | `lemma` | [sUnion_disjiUnion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variante4eba6398886cfdf0ac4dc3e5a5b0b3f01fa4437fe9e5e4c6ce786e786e360d0.lean/declarations/sunion-disjiunion--9dc810e59eddc8a5ba40f1a7.md) | 92 | `result-track:9dc810e59eddc8a5ba40f1a7d5157fcd64d19cdccfeae692e2fde3cf70cab897` |
| 10 | `lemma` | [pairwiseDisjoint_fibers](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variante4eba6398886cfdf0ac4dc3e5a5b0b3f01fa4437fe9e5e4c6ce786e786e360d0.lean/declarations/pairwisedisjoint-fibers--bfe82a03678e3338152fc3bd.md) | 103 | `result-track:bfe82a03678e3338152fc3bdfd581cb9c21ec1cf513fb1e6f88d67cbd2e05a24` |
| 11 | `lemma` | [disjiUnion_filter_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variante4eba6398886cfdf0ac4dc3e5a5b0b3f01fa4437fe9e5e4c6ce786e786e360d0.lean/declarations/disjiunion-filter-eq--8583d695639a5bc65ae512b6.md) | 107 | `result-track:8583d695639a5bc65ae512b6723243062aaa29e2246e1d9f46253cfb3bd81fc2` |
| 12 | `lemma` | [disjiUnion_filter_eq_of_maps_to](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variante4eba6398886cfdf0ac4dc3e5a5b0b3f01fa4437fe9e5e4c6ce786e786e360d0.lean/declarations/disjiunion-filter-eq-of-maps-to--201a704faf07150cea2e325a.md) | 112 | `result-track:201a704faf07150cea2e325ac4b84c9e770fb5e5b48a4c9435172ae2e94e892d` |
| 13 | `theorem` | [map_disjiUnion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variante4eba6398886cfdf0ac4dc3e5a5b0b3f01fa4437fe9e5e4c6ce786e786e360d0.lean/declarations/map-disjiunion--ef0bab5a2ea5634be04a79bc.md) | 118 | `result-track:ef0bab5a2ea5634be04a79bc1a08c771de12330951b0fadc725c58b0d7ca5d9b` |
| 14 | `theorem` | [disjiUnion_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variante4eba6398886cfdf0ac4dc3e5a5b0b3f01fa4437fe9e5e4c6ce786e786e360d0.lean/declarations/disjiunion-map--242724e635d3dfec69ec20ed.md) | 124 | `result-track:242724e635d3dfec69ec20edb3e5674600cd0bcf9be73fa7da2a75030f8745c0` |
| 15 | `theorem` | [fold_disjiUnion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variante4eba6398886cfdf0ac4dc3e5a5b0b3f01fa4437fe9e5e4c6ce786e786e360d0.lean/declarations/fold-disjiunion--00ddcc096c94bb0251bc3a38.md) | 131 | `result-track:00ddcc096c94bb0251bc3a38a339bd5a3af8c2193223f207f5f8538d31d4a7d9` |
| 16 | `def` | [biUnion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variante4eba6398886cfdf0ac4dc3e5a5b0b3f01fa4437fe9e5e4c6ce786e786e360d0.lean/declarations/biunion--50f1789b46d497d838161a6b.md) | 143 | `declaration-track:50f1789b46d497d838161a6bd4208e895fd325e24ca5f0edc8c56bce63f94f08` |
| 17 | `lemma` | [biUnion_val](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variante4eba6398886cfdf0ac4dc3e5a5b0b3f01fa4437fe9e5e4c6ce786e786e360d0.lean/declarations/biunion-val--63a040ad58276dfe7b575446.md) | 146 | `result-track:63a040ad58276dfe7b5754462e328aed42fac79f2e6b8562ab78392d76fe8b96` |
| 18 | `lemma` | [biUnion_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variante4eba6398886cfdf0ac4dc3e5a5b0b3f01fa4437fe9e5e4c6ce786e786e360d0.lean/declarations/biunion-empty--38942a26226aa1058f7dd4c2.md) | 149 | `result-track:38942a26226aa1058f7dd4c273baf27e4192c47aabedd411a01231f6278ccd07` |
| 19 | `lemma` | [mem_biUnion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variante4eba6398886cfdf0ac4dc3e5a5b0b3f01fa4437fe9e5e4c6ce786e786e360d0.lean/declarations/mem-biunion--65aa6e0d2e7d81f4829a4f25.md) | 151 | `result-track:65aa6e0d2e7d81f4829a4f257decee0ccd00365cd149e59f10888a36af37758c` |
| 20 | `lemma` | [coe_biUnion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variante4eba6398886cfdf0ac4dc3e5a5b0b3f01fa4437fe9e5e4c6ce786e786e360d0.lean/declarations/coe-biunion--fa177187ce3bd3083a4b924c.md) | 155 | `result-track:fa177187ce3bd3083a4b924c7b25cc78f22b0e8504b7bdb2a3dce3c8602d5b5a` |
| 21 | `lemma` | [biUnion_insert](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variante4eba6398886cfdf0ac4dc3e5a5b0b3f01fa4437fe9e5e4c6ce786e786e360d0.lean/declarations/biunion-insert--8279b9403f38b9802e2d0852.md) | 159 | `result-track:8279b9403f38b9802e2d0852233546f5d9c15dfb14a1c3470c59a4c38a99d5dc` |
| 22 | `lemma` | [biUnion_congr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variante4eba6398886cfdf0ac4dc3e5a5b0b3f01fa4437fe9e5e4c6ce786e786e360d0.lean/declarations/biunion-congr--220e7ca8e0fc01d5774cdda3.md) | 162 | `result-track:220e7ca8e0fc01d5774cdda371e3c5254eef7b5f0cbd6adfe04f706497543ed7` |
| 23 | `lemma` | [disjiUnion_eq_biUnion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variante4eba6398886cfdf0ac4dc3e5a5b0b3f01fa4437fe9e5e4c6ce786e786e360d0.lean/declarations/disjiunion-eq-biunion--c5637ffc5275d06cff81752e.md) | 167 | `result-track:c5637ffc5275d06cff81752e19f7db07476ce16b1d01871444b39b0fa056dda3` |
| 24 | `lemma` | [biUnion_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variante4eba6398886cfdf0ac4dc3e5a5b0b3f01fa4437fe9e5e4c6ce786e786e360d0.lean/declarations/biunion-subset--a519a2591cd7715aade5c93a.md) | 170 | `result-track:a519a2591cd7715aade5c93a5c2bd124597a8ccb815a9c66be91f37f549ad13a` |
| 25 | `lemma` | [singleton_biUnion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variante4eba6398886cfdf0ac4dc3e5a5b0b3f01fa4437fe9e5e4c6ce786e786e360d0.lean/declarations/singleton-biunion--f59e420f4184d84172bffc8e.md) | 175 | `result-track:f59e420f4184d84172bffc8e5785f5958a17ce951b7cc74597d992e8cf2ed16b` |
| 26 | `lemma` | [biUnion_inter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variante4eba6398886cfdf0ac4dc3e5a5b0b3f01fa4437fe9e5e4c6ce786e786e360d0.lean/declarations/biunion-inter--af5c1655a60de2f18b881f0e.md) | 178 | `result-track:af5c1655a60de2f18b881f0e536548054bba2758a843e1511290adbbd8596303` |
| 27 | `lemma` | [inter_biUnion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variante4eba6398886cfdf0ac4dc3e5a5b0b3f01fa4437fe9e5e4c6ce786e786e360d0.lean/declarations/inter-biunion--a01910c8ea608cee0dfb6261.md) | 184 | `result-track:a01910c8ea608cee0dfb6261d06a079e3b63a1e2c365441bcfee5cabc154df23` |
| 28 | `lemma` | [biUnion_biUnion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variante4eba6398886cfdf0ac4dc3e5a5b0b3f01fa4437fe9e5e4c6ce786e786e360d0.lean/declarations/biunion-biunion--ccd06d5dce57e6c9fc153c62.md) | 189 | `result-track:ccd06d5dce57e6c9fc153c62685a846e24631e731bdaca4fb8b3976fc00323d9` |
| 29 | `lemma` | [bind_toFinset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variante4eba6398886cfdf0ac4dc3e5a5b0b3f01fa4437fe9e5e4c6ce786e786e360d0.lean/declarations/bind-tofinset--93e6912445b826d6cb5d560b.md) | 196 | `result-track:93e6912445b826d6cb5d560b54aa0006dc89a8d4858277e18d8af4dc36158d63` |
| 30 | `lemma` | [biUnion_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variante4eba6398886cfdf0ac4dc3e5a5b0b3f01fa4437fe9e5e4c6ce786e786e360d0.lean/declarations/biunion-mono--d66623e8dd804dd470adf8a5.md) | 200 | `result-track:d66623e8dd804dd470adf8a5e3e5141f1e0170f0744fae2bed8aaef14785936b` |
| 31 | `lemma` | [biUnion_subset_biUnion_of_subset_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variante4eba6398886cfdf0ac4dc3e5a5b0b3f01fa4437fe9e5e4c6ce786e786e360d0.lean/declarations/biunion-subset-biunion-of-subset-left--4706ba218318420f36f73a85.md) | 205 | `result-track:4706ba218318420f36f73a85080aca4fcdcc3185510c4513799713b6e1a26a05` |
| 32 | `lemma` | [subset_biUnion_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variante4eba6398886cfdf0ac4dc3e5a5b0b3f01fa4437fe9e5e4c6ce786e786e360d0.lean/declarations/subset-biunion-of-mem--331cbce53d9ed8e2b659b6fd.md) | 209 | `result-track:331cbce53d9ed8e2b659b6fdc65065637f83ba8556f03c354ad9948b2169659a` |
| 33 | `lemma` | [biUnion_subset_iff_forall_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variante4eba6398886cfdf0ac4dc3e5a5b0b3f01fa4437fe9e5e4c6ce786e786e360d0.lean/declarations/biunion-subset-iff-forall-subset--e5d999565884cea6017e5d2d.md) | 214 | `result-track:e5d999565884cea6017e5d2dc73e0498b434e9300bdd19315981138522fc6bf4` |
| 34 | `lemma` | [biUnion_singleton_eq_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variante4eba6398886cfdf0ac4dc3e5a5b0b3f01fa4437fe9e5e4c6ce786e786e360d0.lean/declarations/biunion-singleton-eq-self--14010c651b050c8afd007f96.md) | 221 | `result-track:14010c651b050c8afd007f96f5c84ef45b5ba55d25b192a1581d8ab91563c5be` |
| 35 | `lemma` | [filter_biUnion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variante4eba6398886cfdf0ac4dc3e5a5b0b3f01fa4437fe9e5e4c6ce786e786e360d0.lean/declarations/filter-biunion--843d16e0c69de74039002e32.md) | 224 | `result-track:843d16e0c69de74039002e32dac8001b4dba83e2a6cdfe45380c85827e68ef4a` |
| 36 | `lemma` | [biUnion_filter_eq_of_maps_to](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variante4eba6398886cfdf0ac4dc3e5a5b0b3f01fa4437fe9e5e4c6ce786e786e360d0.lean/declarations/biunion-filter-eq-of-maps-to--94e2c0f5a888654e8da3ac91.md) | 234 | `result-track:94e2c0f5a888654e8da3ac91c272a089b3bd33c661687df83145be48a71f8a31` |
| 37 | `lemma` | [erase_biUnion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variante4eba6398886cfdf0ac4dc3e5a5b0b3f01fa4437fe9e5e4c6ce786e786e360d0.lean/declarations/erase-biunion--57b0b503cda7e4c3e12256ba.md) | 238 | `result-track:57b0b503cda7e4c3e12256baacbfe2d90ef0f7cde76a8718513b1dcb3aea47b4` |
| 38 | `lemma` | [biUnion_nonempty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variante4eba6398886cfdf0ac4dc3e5a5b0b3f01fa4437fe9e5e4c6ce786e786e360d0.lean/declarations/biunion-nonempty--c5628dbdee6c0511d3ded055.md) | 245 | `result-track:c5628dbdee6c0511d3ded055d2cd08a1102e62bd591ada7d1f23bba99ac63682` |
| 39 | `lemma` | [Nonempty.biUnion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variante4eba6398886cfdf0ac4dc3e5a5b0b3f01fa4437fe9e5e4c6ce786e786e360d0.lean/declarations/nonempty-biunion--c0d9a6cbfd121d636e510062.md) | 250 | `result-track:c0d9a6cbfd121d636e510062b74a367dd2ad7cbf13c200b44f7265ce32d366e0` |
| 40 | `lemma` | [disjoint_biUnion_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variante4eba6398886cfdf0ac4dc3e5a5b0b3f01fa4437fe9e5e4c6ce786e786e360d0.lean/declarations/disjoint-biunion-left--c0d118407ebe92349e2f4c09.md) | 253 | `result-track:c0d118407ebe92349e2f4c090ef253da728334ac367a1b04f463c68da3cea96e` |
| 41 | `lemma` | [disjoint_biUnion_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variante4eba6398886cfdf0ac4dc3e5a5b0b3f01fa4437fe9e5e4c6ce786e786e360d0.lean/declarations/disjoint-biunion-right--edee91df6f106c588f45b97c.md) | 261 | `result-track:edee91df6f106c588f45b97c4de26069c7648e3751ac224ea610bb661dfc52b1` |
| 42 | `theorem` | [image_biUnion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variante4eba6398886cfdf0ac4dc3e5a5b0b3f01fa4437fe9e5e4c6ce786e786e360d0.lean/declarations/image-biunion--a086f6dbec7397874b229fb5.md) | 265 | `result-track:a086f6dbec7397874b229fb5c50f2801bce96a341fe0ecf63ca4066483393e01` |
| 43 | `theorem` | [biUnion_image](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variante4eba6398886cfdf0ac4dc3e5a5b0b3f01fa4437fe9e5e4c6ce786e786e360d0.lean/declarations/biunion-image--14f9ef143687fe7b30fbb597.md) | 270 | `result-track:14f9ef143687fe7b30fbb5978ccaa9303b1ef8b63c683881bca4ecc3acb76154` |
| 44 | `theorem` | [image_biUnion_filter_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variante4eba6398886cfdf0ac4dc3e5a5b0b3f01fa4437fe9e5e4c6ce786e786e360d0.lean/declarations/image-biunion-filter-eq--55254fff0ef850ef4094f291.md) | 275 | `result-track:55254fff0ef850ef4094f2915622c8293b3e6c7567e60848a6adc071b90a1490` |
| 45 | `theorem` | [biUnion_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variante4eba6398886cfdf0ac4dc3e5a5b0b3f01fa4437fe9e5e4c6ce786e786e360d0.lean/declarations/biunion-singleton--ba41258c8c2eb5746ddb1fbe.md) | 279 | `result-track:ba41258c8c2eb5746ddb1fbecdea56dabdd8a62cce41360d8dee4658348a6b9f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
