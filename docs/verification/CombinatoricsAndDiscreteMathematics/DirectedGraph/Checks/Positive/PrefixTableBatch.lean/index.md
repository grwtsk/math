# Verification target: GRWTSK.Combinatorics.DirectedGraph.Checks.Positive.PrefixTableBatch

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d2b80f55f781c501465b05846f5ef2ce5a18ce3e",
  "lexical_observation_count": 77,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Combinatorics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/index.md) · [Full source](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d2b80f55f781c501465b05846f5ef2ce5a18ce3e`.

Source path: `GRWTSK/Combinatorics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Combinatorics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Combinatorics.DirectedGraph.PrefixTableBatch`](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableBatch.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [original](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/original--e494497fafda4bbb66a80a19.md) | 17 | `declaration-track:e494497fafda4bbb66a80a191a6c2c2d229133427a40e660322c7b1f604b7f7e` |
| 2 | `def` | [swapIndex](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/swapindex--1b70e8cc7cb980cbd4217b76.md) | 22 | `declaration-track:1b70e8cc7cb980cbd4217b76f370e66a042c6dbcde71e1ed9cacc639feb2ecb0` |
| 3 | `def` | [updated](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/updated--fa46cdb816849080067a86ed.md) | 24 | `declaration-track:fa46cdb816849080067a86ed066987cd4dd054c177e98675af91324a853bf88b` |
| 4 | `def` | [translation](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/translation--3ba911f1f592407ccb0bf20b.md) | 29 | `declaration-track:3ba911f1f592407ccb0bf20ba9a979c28dfd39fd0fc1bcdce912c0115b109309` |
| 5 | `theorem` | [translation_bijective](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/translation-bijective--a8e8498d07bcba9c619dcdc3.md) | 35 | `result-track:a8e8498d07bcba9c619dcdc32de5fc523f2ffde91bc1170548d0ec9c7c2f0ed6` |
| 6 | `def` | [vertexA](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/vertexa--7e195988e540c08c8995ff9c.md) | 37 | `declaration-track:7e195988e540c08c8995ff9cd5b98c5137155bfe565a4e367524218927b372cb` |
| 7 | `def` | [vertexB](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/vertexb--139c55eb02346247a663ce67.md) | 38 | `declaration-track:139c55eb02346247a663ce676d5a19f5274b52113f3da70b5e3a449ca070a6fa` |
| 8 | `def` | [id0](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/id0--d2583a5644f41d6f0b66cdf0.md) | 39 | `declaration-track:d2583a5644f41d6f0b66cdf0ec42ca9d34dec76f78ed9ccf6ff19eb9050807a6` |
| 9 | `def` | [id1](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/id1--cd4540d8e7f428d0abce6bf6.md) | 40 | `declaration-track:cd4540d8e7f428d0abce6bf6eb6a189bc3f68f233f6a8ec27ae8f986fdc0b693` |
| 10 | `def` | [new0](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/new0--8aa2466e98d79d5cd907274a.md) | 41 | `declaration-track:8aa2466e98d79d5cd907274aff3ebcc827ba5ad2f3bbaf35073501a460a02f47` |
| 11 | `def` | [new1](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/new1--fd9cb1e53468e60a204f840e.md) | 42 | `declaration-track:fd9cb1e53468e60a204f840ea6a44ec94a13006be9b7df41656302e68d3a9c86` |
| 12 | `def` | [new2](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/new2--6105d57b2e84ab177425fa8e.md) | 43 | `declaration-track:6105d57b2e84ab177425fa8ede624a2017b7aa257d64a73be9bc5324ba588488` |
| 13 | `def` | [oldTag0](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/oldtag0--29f50b1bff030d5cb32ab80c.md) | 45 | `declaration-track:29f50b1bff030d5cb32ab80c32b59b0be0e4f35266e33186490deacc0f8b6606` |
| 14 | `def` | [oldTag1](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/oldtag1--3f373fa9673f0fec7c75b68b.md) | 46 | `declaration-track:3f373fa9673f0fec7c75b68b1f4296bfbf392398ef841e11a7dc247552dc482f` |
| 15 | `def` | [newTag0](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/newtag0--981248cd14fa54243bcc73e8.md) | 47 | `declaration-track:981248cd14fa54243bcc73e8e546736cb95a1c65943d486640216e2e930276fa` |
| 16 | `def` | [newTag1](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/newtag1--9b147a2079046d44ad00924e.md) | 48 | `declaration-track:9b147a2079046d44ad00924e03121056d033e04f95f9a4aa51464c9b5ff3df3c` |
| 17 | `def` | [newTag2](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/newtag2--3c472e1839b6d9d858e7af8c.md) | 49 | `declaration-track:3c472e1839b6d9d858e7af8c07e20d5869b3165d27d7ec7bb948e05c6e410f9b` |
| 18 | `instance` | [oldTagDecidableEq](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/oldtagdecidableeq--b355ecd168d97c4ca52fba3c.md) | 51 | `declaration-track:b355ecd168d97c4ca52fba3cdd1fe95a9dc4ad21cd44d68de09448964994cf99` |
| 19 | `instance` | [newTagDecidableEq](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/newtagdecidableeq--e80df4714797fb55fa9b2dd3.md) | 54 | `declaration-track:e80df4714797fb55fa9b2dd3c89c96b562a6ca07453fed38278353804b4e8b1b` |
| 20 | `theorem` | [old_tags_distinct](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/old-tags-distinct--6b62488548c170cc7f05f718.md) | 57 | `result-track:6b62488548c170cc7f05f71838755313148f24dd18ce14d7522917a007f3e56c` |
| 21 | `def` | [arrow0](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/arrow0--61a57eb4d1b6f8755498cd16.md) | 64 | `declaration-track:61a57eb4d1b6f8755498cd1677814ba864602ba28a04b976a25f0693817a7f34` |
| 22 | `def` | [arrow1](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/arrow1--0696c9441c09311176520e74.md) | 65 | `declaration-track:0696c9441c09311176520e74f45b55e6adeac6f9f3359971b29011ad58975ffb` |
| 23 | `def` | [single0](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/single0--9f663f5ca2ec2df3723e8066.md) | 66 | `declaration-track:9f663f5ca2ec2df3723e8066ce6cf2aa1eeca631ca1681480fde94cdcf5b4972` |
| 24 | `def` | [single1](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/single1--08eaa78ce4f475c8cce4c1e8.md) | 67 | `declaration-track:08eaa78ce4f475c8cce4c1e86db9e819119137096afa41cd79d3fb616a4c7f92` |
| 25 | `def` | [seedRows](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/seedrows--36cdc24f1a81f70ad159c9b9.md) | 69 | `declaration-track:36cdc24f1a81f70ad159c9b93c477d40199da2a8733300dad31311c3bd8b854b` |
| 26 | `def` | [seed](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/seed--e2f0ca93dd38c26b5e62e487.md) | 72 | `declaration-track:e2f0ca93dd38c26b5e62e487fd53493c59b3ca6080bd15cf2ca54e4ca3ea1db1` |
| 27 | `def` | [before](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/before--331776740945d2e7ddae95c6.md) | 75 | `declaration-track:331776740945d2e7ddae95c6b2f7ed98f32394df459bdd2d9c6ab64d311c2259` |
| 28 | `theorem` | [seed_inventory](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/seed-inventory--698ed5909bfc65d2a2cc49bd.md) | 78 | `result-track:698ed5909bfc65d2a2cc49bd34658b8215a8e8b23ee0ed6dcedd73c2b1054d16` |
| 29 | `theorem` | [before_dictionary](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/before-dictionary--713502a211d54b2e62450a8e.md) | 83 | `result-track:713502a211d54b2e62450a8e7e910a0ffab8f582b1bbeecc9c21b544ea084891` |
| 30 | `theorem` | [before_wellFormed](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/before-wellformed--6b6483beb8b20f828bb1e4b7.md) | 89 | `result-track:6b6483beb8b20f828bb1e4b7ad4290640342361fae6d2c1fffbbf4e719d4e854` |
| 31 | `theorem` | [before_nodes](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/before-nodes--78ae17386ffec0de949521ea.md) | 98 | `result-track:78ae17386ffec0de949521eacf1383ad1e409a75f8a538a303645889826064e5` |
| 32 | `theorem` | [before_actual_decode](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/before-actual-decode--15ca17001ae3a7c1341bd045.md) | 103 | `result-track:15ca17001ae3a7c1341bd045da806693e4ec24f173eb45044609fddfcfd2202c` |
| 33 | `def` | [id2](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/id2--05cc2333143aec080d22f305.md) | 110 | `declaration-track:05cc2333143aec080d22f305de1c44edeb9296705e73282c471915a77a3b56c9` |
| 34 | `def` | [oldTag2](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/oldtag2--d66b9a30716579e9564e56c7.md) | 111 | `declaration-track:d66b9a30716579e9564e56c7f1ae0784c9f447400ac725492dcfc4ec77b180e7` |
| 35 | `def` | [arrow2](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/arrow2--ea84b9b6752044bb6d165bb0.md) | 113 | `declaration-track:ea84b9b6752044bb6d165bb09bdb5244e8a7890d8b3cc509ca522207cfd3d786` |
| 36 | `def` | [returnPath](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/returnpath--408e0a0dece47fbe915fc209.md) | 114 | `declaration-track:408e0a0dece47fbe915fc209dc404c8109ad7067609df6ba57b53d4ca998bf79` |
| 37 | `def` | [returnRows](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/returnrows--043ba4255cb39e96b53ec65a.md) | 116 | `declaration-track:043ba4255cb39e96b53ec65ac774ca274adea98150823f6ea12f10eee60b2d16` |
| 38 | `def` | [parallelRows](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/parallelrows--6bf5992de03020e2149b1fd7.md) | 119 | `declaration-track:6bf5992de03020e2149b1fd71a311810bfdf5ac3abbbae584c1581b7097a05c9` |
| 39 | `def` | [firstState](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/firststate--5ca8e0f5a781072699f75748.md) | 122 | `declaration-track:5ca8e0f5a781072699f757481f828e2eddec3921c7b6824cd94bad670c7b6014` |
| 40 | `def` | [secondState](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/secondstate--454ad6426235e48d9744877a.md) | 123 | `declaration-track:454ad6426235e48d9744877aeb21be6d5f4c13a3bb94a3c71179ef5072797698` |
| 41 | `theorem` | [return_trace](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/return-trace--9121db9f77dc9a79c2ea11ec.md) | 125 | `result-track:9121db9f77dc9a79c2ea11ec403e1fe2859cf70409361954f0897e85b3d4369d` |
| 42 | `theorem` | [return_inventory](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/return-inventory--696729b8e502e28ab6692b6d.md) | 130 | `result-track:696729b8e502e28ab6692b6d091ad1c1d607809b92972d48c1537a5917f58511` |
| 43 | `theorem` | [first_dictionary](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/first-dictionary--1c0b69d924c93c75530591cc.md) | 136 | `result-track:1c0b69d924c93c75530591cc4419d79b09521de988f60c18a8096f45657fca63` |
| 44 | `theorem` | [first_wellFormed](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/first-wellformed--7d16ce3c0a3cd9578b9eaf7a.md) | 146 | `result-track:7d16ce3c0a3cd9578b9eaf7ad9d9e4397ad0ef6c0a2f27b197d556451855d672` |
| 45 | `theorem` | [second_wellFormed](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/second-wellformed--dc885c9b016878c9043b0ca1.md) | 149 | `result-track:dc885c9b016878c9043b0ca1cc7b7e5c21335889cafeab6a22777045bbef726e` |
| 46 | `theorem` | [first_nodes](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/first-nodes--2aae375430061712e2f03d7b.md) | 152 | `result-track:2aae375430061712e2f03d7b5498bca90c2d3dce36d33cd8128d49b5cc925fa4` |
| 47 | `theorem` | [first_references](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/first-references--83694a81a0b11bab011d2b29.md) | 160 | `result-track:83694a81a0b11bab011d2b294772f1e2be2282ae509d10f3803c5c6027ca8b27` |
| 48 | `theorem` | [first_actual_decode](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/first-actual-decode--5db14a4d7d5c685a8435c481.md) | 175 | `result-track:5db14a4d7d5c685a8435c481c0cdf3f1b2ed3e2c036b0de0087d3dbee6bb1ed9` |
| 49 | `theorem` | [second_actual_decode](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/second-actual-decode--b50f53f818e1d2f211d2c741.md) | 188 | `result-track:b50f53f818e1d2f211d2c741a55431ab2fce8b8ae5fdc4baa9680db76d0f44c3` |
| 50 | `def` | [thirdRows](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/thirdrows--457d9352488f151f05e67b99.md) | 199 | `declaration-track:457d9352488f151f05e67b9964737ae7ece5e23019971bd7d6b8ae6a6576c9a0` |
| 51 | `def` | [threeBatches](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/threebatches--6f3903874da22d71bce6554d.md) | 201 | `declaration-track:6f3903874da22d71bce6554d363f8764c2863fb49820010b9930fbac91aae292` |
| 52 | `def` | [forward](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/forward--2c80138961b70c47331ea63f.md) | 204 | `declaration-track:2c80138961b70c47331ea63f8f1ec867ad54c893bf16387a8c20a29ed29ed067` |
| 53 | `def` | [backward](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/backward--e552cf294176d0ba45e70909.md) | 205 | `declaration-track:e552cf294176d0ba45e709092b1f9714d928b3b982042b72129857ca7bb20a34` |
| 54 | `theorem` | [forward_as_updates](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/forward-as-updates--6ef7a569fe16a7abd411305e.md) | 207 | `result-track:6ef7a569fe16a7abd411305ef691a9533ccb9583ebbefebe28f53bf72592f97d` |
| 55 | `theorem` | [forward_wellFormed](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/forward-wellformed--08dc54251ac823b640cf76ac.md) | 209 | `result-track:08dc54251ac823b640cf76ac0bc49712f8a355a6820bc8e4a469a3f7d3fb2ef6` |
| 56 | `theorem` | [forward_actual_decode](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/forward-actual-decode--6cbab597470f40ed73321594.md) | 211 | `result-track:6cbab597470f40ed7332159407be2b177aa2161e44ae3f73c1f31a4157b866ec` |
| 57 | `theorem` | [backward_actual_decode](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/backward-actual-decode--c723a196a033bda25c745782.md) | 221 | `result-track:c723a196a033bda25c745782defc674730e2296c934231172c2f62395b2e8637` |
| 58 | `theorem` | [actual_reverse_order_changes_histories](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/actual-reverse-order-changes-histories--bccf722616431cdc62b309f5.md) | 235 | `result-track:bccf722616431cdc62b309f502acf35d1c2549e305fe31a38920fd9a2e175f0f` |
| 59 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/example--76427c81d310c594bf27a8d6.md) | 245 | `declaration-track:76427c81d310c594bf27a8d63cb6ba5da744454ad5d03b8e35888b91f43d3221` |
| 60 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/example--5cb660721956fe1be00a2fd0.md) | 248 | `declaration-track:5cb660721956fe1be00a2fd019e7d5e35bc46d7f671d69d7d89f94c8541fb73b` |
| 61 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/example--748b8d8b010d6b0af8b1af4a.md) | 254 | `declaration-track:748b8d8b010d6b0af8b1af4a27c62bd4eb1bbad7a7df30e18e31a521cbb9488c` |
| 62 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/example--32da011cce490546ad56b534.md) | 256 | `declaration-track:32da011cce490546ad56b534b1527bea05650f3294f0e4de31fc946295efaf07` |
| 63 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/example--a73ed5d295781dc8eb707a84.md) | 260 | `declaration-track:a73ed5d295781dc8eb707a84336f1dd9811d4d03299e0a8b406bd1d3171ca3d5` |
| 64 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/example--3be09bce271a1de2e9a9c6f9.md) | 271 | `declaration-track:3be09bce271a1de2e9a9c6f9dbd488721cecdc15c030e2713651c887b4bc9d99` |
| 65 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/example--419823569d3885cc1415a4a7.md) | 276 | `declaration-track:419823569d3885cc1415a4a7d78e07610d6c448befda775aa8b5ec0ddc6fb350` |
| 66 | `def` | [singletonRows](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/singletonrows--6bcc6c06e3df9af88a3865c6.md) | 285 | `declaration-track:6bcc6c06e3df9af88a3865c61d3d06311b1d48c5bfc3576d772fac584d953004` |
| 67 | `def` | [invalid](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/invalid--5fd680299b1a9fd7882acac7.md) | 288 | `declaration-track:5fd680299b1a9fd7882acac7e3564dd9c907d49382a43ba9a3502c5e22cd4a5c` |
| 68 | `def` | [repaired](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/repaired--82ae005e0918f4e1f8c40abd.md) | 291 | `declaration-track:82ae005e0918f4e1f8c40abdfb2248f17bfd912d243ebfc45a27493c1666cfb6` |
| 69 | `def` | [good](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/good--8a7ac8dac02b14a690e625d5.md) | 292 | `declaration-track:8a7ac8dac02b14a690e625d52738790b835938d781eb604218ebd44cc8789b4b` |
| 70 | `theorem` | [invalid_actual_decode](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/invalid-actual-decode--5642f1fec5390c4838f48792.md) | 294 | `result-track:5642f1fec5390c4838f48792b6de987dd88563e234724ec634b9c6e38f19ae88` |
| 71 | `theorem` | [invalid_not_wellFormed](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/invalid-not-wellformed--7efa4cc12b4345cc32c3be12.md) | 296 | `result-track:7efa4cc12b4345cc32c3be124b06bd0341b576b684faa53cf53e4f4d30d4c0ef` |
| 72 | `theorem` | [repaired_dictionary](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/repaired-dictionary--1d3cedb4bfe5b1eb98aa9759.md) | 302 | `result-track:1d3cedb4bfe5b1eb98aa97591d6a6601f1c48eb4964a56a00ad9f98a19648673` |
| 73 | `theorem` | [good_wellFormed](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/good-wellformed--909c51825c3695286b472da6.md) | 310 | `result-track:909c51825c3695286b472da6702e83e7cc9b18a6da6b26ebe7da5c2f130ef077` |
| 74 | `theorem` | [repaired_references](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/repaired-references--215c3efb46e2b236d1087cc2.md) | 312 | `result-track:215c3efb46e2b236d1087cc246bc6262d6999f842a619c3c6bd6575b9215c5ec` |
| 75 | `theorem` | [repaired_wellFormed](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/repaired-wellformed--997b84450808d6beb1df68e0.md) | 323 | `result-track:997b84450808d6beb1df68e075ef6e7072f523afe539edf1f1f942266f82f6c4` |
| 76 | `theorem` | [repaired_actual_decode](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/repaired-actual-decode--e39ab916214109899f0cd4b7.md) | 340 | `result-track:e39ab916214109899f0cd4b736b1fc8dbd6408f1e49906310506b261ac66e759` |
| 77 | `theorem` | [actual_missing_invariant_failure](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean/declarations/actual-missing-invariant-failure--af8b2289d72771b3a313777b.md) | 349 | `result-track:af8b2289d72771b3a313777bb64ba3c7c825d0c5fbee72281e3605cf72cf736e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
