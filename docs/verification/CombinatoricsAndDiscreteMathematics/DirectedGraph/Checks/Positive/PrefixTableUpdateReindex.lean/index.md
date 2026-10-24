# Verification target: GRWTSK.Combinatorics.DirectedGraph.Checks.Positive.PrefixTableUpdateReindex

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ae0a4942fc811e1f3cdb4ac80750ffbb4127ea50",
  "lexical_observation_count": 62,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Combinatorics/DirectedGraph/Checks/Positive/PrefixTableUpdateReindex.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableUpdateReindex.lean/index.md) · [Full source](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableUpdateReindex.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ae0a4942fc811e1f3cdb4ac80750ffbb4127ea50`.

Source path: `GRWTSK/Combinatorics/DirectedGraph/Checks/Positive/PrefixTableUpdateReindex.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Combinatorics/DirectedGraph/Checks/Positive/PrefixTableUpdateReindex.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Combinatorics.DirectedGraph.PrefixTableUpdateReindex`](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableUpdateReindex.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [original](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableUpdateReindex.lean/declarations/original--f6360c04b9870f1ec5f42fbd.md) | 16 | `declaration-track:f6360c04b9870f1ec5f42fbda34d285cd6e2891c5f6dfaedb75d76af06912a1e` |
| 2 | `def` | [swapIndex](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableUpdateReindex.lean/declarations/swapindex--cb154965b38ccad5063ff52f.md) | 21 | `declaration-track:cb154965b38ccad5063ff52fd3c837be2e9d114104e9bfaf9a18366ca8f8844a` |
| 3 | `def` | [updated](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableUpdateReindex.lean/declarations/updated--dfe117752d73899b33221ff3.md) | 23 | `declaration-track:dfe117752d73899b33221ff318ad95d652f5c4fdb2630e7b5dbadc8a635f6f61` |
| 4 | `def` | [translation](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableUpdateReindex.lean/declarations/translation--a84218a1b1058bb081fa8f9b.md) | 28 | `declaration-track:a84218a1b1058bb081fa8f9b179c646fc382e8a1b66e59e5515e1c23161b9571` |
| 5 | `theorem` | [translation_bijective](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableUpdateReindex.lean/declarations/translation-bijective--1172d97c2509ace76cb7f17e.md) | 34 | `result-track:1172d97c2509ace76cb7f17e219f43e215620173a4626beb8522b6510c24ca91` |
| 6 | `def` | [vertexA](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableUpdateReindex.lean/declarations/vertexa--6018c6223031f93fac2c92f7.md) | 36 | `declaration-track:6018c6223031f93fac2c92f7b10c4a30d78b80545d11d7e0a4fc0471b9c09b2c` |
| 7 | `def` | [vertexB](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableUpdateReindex.lean/declarations/vertexb--a1b3a318cabccb02b96a2a59.md) | 37 | `declaration-track:a1b3a318cabccb02b96a2a5965df09bfcad50b2b1a3e5e083c3795c5fdca1dee` |
| 8 | `def` | [id0](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableUpdateReindex.lean/declarations/id0--fddf8a43bcd386945e360579.md) | 38 | `declaration-track:fddf8a43bcd386945e36057964d58527489e74300261d098459d7083d3faf932` |
| 9 | `def` | [id1](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableUpdateReindex.lean/declarations/id1--8d225584c4c7ff37e947175b.md) | 39 | `declaration-track:8d225584c4c7ff37e947175b22c56ea44c1414e07ec99f05d5e0476885f1dd4a` |
| 10 | `def` | [new0](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableUpdateReindex.lean/declarations/new0--b9ce65e9d33a6f386381eca8.md) | 40 | `declaration-track:b9ce65e9d33a6f386381eca84639b9f11d024a1c674c96158d55f586b8b2b46d` |
| 11 | `def` | [new1](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableUpdateReindex.lean/declarations/new1--40efa67e1091af4b6fd31c24.md) | 41 | `declaration-track:40efa67e1091af4b6fd31c249d9614a9f85c4b5283255d7d4e35818de3410160` |
| 12 | `def` | [new2](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableUpdateReindex.lean/declarations/new2--1cc04736c41a41dbc7d8265d.md) | 42 | `declaration-track:1cc04736c41a41dbc7d8265d5512383a334298a61442c15660a0f59ca8d13aa2` |
| 13 | `def` | [oldTag0](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableUpdateReindex.lean/declarations/oldtag0--0da79cd6f43082e67be761b1.md) | 44 | `declaration-track:0da79cd6f43082e67be761b11257b590331612360b42d39b0d6c721ec4f88820` |
| 14 | `def` | [oldTag1](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableUpdateReindex.lean/declarations/oldtag1--ec8f0a2fe477e0ff166c565c.md) | 45 | `declaration-track:ec8f0a2fe477e0ff166c565c87c703d2765c5963967297b9fa7689e0908fa415` |
| 15 | `def` | [newTag0](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableUpdateReindex.lean/declarations/newtag0--e8ade4d448f1a3a3f14e93b4.md) | 46 | `declaration-track:e8ade4d448f1a3a3f14e93b4daa62872bb4d4b6ececa4f854433ecb197aa82ee` |
| 16 | `def` | [newTag1](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableUpdateReindex.lean/declarations/newtag1--1bd99d7b49b82ff1d4038d66.md) | 47 | `declaration-track:1bd99d7b49b82ff1d4038d66c5360e0aaa1766c4074997dcda7ca87aa398ec8c` |
| 17 | `def` | [newTag2](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableUpdateReindex.lean/declarations/newtag2--371de3a366df20c40cab0203.md) | 48 | `declaration-track:371de3a366df20c40cab0203da7c808f6aa731dfb75893bad0bdfc029918e055` |
| 18 | `instance` | [oldTagDecidableEq](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableUpdateReindex.lean/declarations/oldtagdecidableeq--e081f35e9ce59479b9ef6a37.md) | 50 | `declaration-track:e081f35e9ce59479b9ef6a378df477b49220ecab7d9fc835da213e1dfa6f6e82` |
| 19 | `instance` | [newTagDecidableEq](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableUpdateReindex.lean/declarations/newtagdecidableeq--57891644730f352a67ef96b3.md) | 53 | `declaration-track:57891644730f352a67ef96b33359c363de34a41076956238fe6575e5c4768ecc` |
| 20 | `theorem` | [old_tags_distinct](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableUpdateReindex.lean/declarations/old-tags-distinct--26762400e636234f87c563ea.md) | 56 | `result-track:26762400e636234f87c563eadd47a280d1ab424e605901cf8422710283150523` |
| 21 | `def` | [arrow0](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableUpdateReindex.lean/declarations/arrow0--1104a35520643440d1769a6e.md) | 63 | `declaration-track:1104a35520643440d1769a6e40ebb3098d7b9d32f40553bfd201cef222d530b0` |
| 22 | `def` | [arrow1](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableUpdateReindex.lean/declarations/arrow1--5cc29179ff14ea5c5c6577ab.md) | 64 | `declaration-track:5cc29179ff14ea5c5c6577ab59c6ffaac66b3a56cecc2a943ce2cbd9d787a59d` |
| 23 | `def` | [single0](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableUpdateReindex.lean/declarations/single0--ae784a66fc1e3a47ba013266.md) | 65 | `declaration-track:ae784a66fc1e3a47ba013266fbb825c020ee4324c0163c5286de3469b27bc9d3` |
| 24 | `def` | [single1](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableUpdateReindex.lean/declarations/single1--9360674a493c4f8450a0170a.md) | 66 | `declaration-track:9360674a493c4f8450a0170af8890cbfdf8d9b42b25fff8834ba09ac855c5718` |
| 25 | `def` | [seedRows](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableUpdateReindex.lean/declarations/seedrows--ac77b483b23336f4f1cf4f95.md) | 68 | `declaration-track:ac77b483b23336f4f1cf4f95a24efde7e3dfc086aa5c3c27a395619f82620918` |
| 26 | `def` | [seed](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableUpdateReindex.lean/declarations/seed--a4219a30c1bd874636cec8b3.md) | 71 | `declaration-track:a4219a30c1bd874636cec8b324e3093b1990c051f018b18a44bacbbc72621066` |
| 27 | `def` | [before](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableUpdateReindex.lean/declarations/before--50f243adc186bbc499d600fd.md) | 74 | `declaration-track:50f243adc186bbc499d600fd8ea0e3bcf1b4562c1825f0b596c0ff809801ed62` |
| 28 | `theorem` | [seed_inventory](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableUpdateReindex.lean/declarations/seed-inventory--34ee1c495a87354c65c975dc.md) | 77 | `result-track:34ee1c495a87354c65c975dc5e40604aa70585ccce5f851fb54c4976bcc35adc` |
| 29 | `theorem` | [before_dictionary](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableUpdateReindex.lean/declarations/before-dictionary--c8e1c226d03f86d3265591f9.md) | 82 | `result-track:c8e1c226d03f86d3265591f90b1e4175c9ea13bc8236d6002b67cd1400a61c6a` |
| 30 | `theorem` | [before_wellFormed](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableUpdateReindex.lean/declarations/before-wellformed--c0e7e368c9fcc6ac1c48363c.md) | 88 | `result-track:c0e7e368c9fcc6ac1c48363c8e5bd381088eb664d842a7910d4a2e62751d1275` |
| 31 | `theorem` | [before_nodes](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableUpdateReindex.lean/declarations/before-nodes--1eeb0306d891e6fed84687a2.md) | 97 | `result-track:1eeb0306d891e6fed84687a275cca092432c59be4b462cff30f3f01c5764e8b6` |
| 32 | `theorem` | [before_actual_decode](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableUpdateReindex.lean/declarations/before-actual-decode--e5b633c4901f5626ab328d19.md) | 102 | `result-track:e5b633c4901f5626ab328d197b2deeb947153288efdc6a85ea3ebd06ba19f14c` |
| 33 | `def` | [id2](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableUpdateReindex.lean/declarations/id2--40e07cb5b6d4d09d5d5d7a79.md) | 109 | `declaration-track:40e07cb5b6d4d09d5d5d7a79c1ecf770c504ece7db0c2e04bae3d63b92a2af79` |
| 34 | `def` | [oldTag2](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableUpdateReindex.lean/declarations/oldtag2--cab26f0792d7e31440b2fc91.md) | 110 | `declaration-track:cab26f0792d7e31440b2fc91e95c12cfccad33d7f8f735aa1fb0165d2aa4367e` |
| 35 | `def` | [arrow2](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableUpdateReindex.lean/declarations/arrow2--05cf5b54a3495f6a349cfbb4.md) | 112 | `declaration-track:05cf5b54a3495f6a349cfbb41647db648207cfea565fd956167f4146c33bb9e4` |
| 36 | `def` | [returnPath](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableUpdateReindex.lean/declarations/returnpath--f06ecbba40cf44e0e5fc6efe.md) | 113 | `declaration-track:f06ecbba40cf44e0e5fc6efee17a2e008cbfcf08ed6997b851d08b37d0016fba` |
| 37 | `def` | [returnRows](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableUpdateReindex.lean/declarations/returnrows--b78cf504b793c4dc20cbf396.md) | 115 | `declaration-track:b78cf504b793c4dc20cbf396a5b63b839892a707d4af1bcf216d43152c2a2024` |
| 38 | `def` | [parallelRows](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableUpdateReindex.lean/declarations/parallelrows--5f2072009c713dcf0e0387c1.md) | 118 | `declaration-track:5f2072009c713dcf0e0387c1d027d0a3e90ec5540b4f0d227aa4396787eb7b2c` |
| 39 | `def` | [firstState](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableUpdateReindex.lean/declarations/firststate--d5d420339346bfe6c70ec076.md) | 121 | `declaration-track:d5d420339346bfe6c70ec076f4347daae5eada36fbb16da102c4b1d7c4b34c9f` |
| 40 | `def` | [secondState](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableUpdateReindex.lean/declarations/secondstate--189d7b20d4f4aa25aa39f5af.md) | 122 | `declaration-track:189d7b20d4f4aa25aa39f5af953cd8091f007b1c956c769f890e2bdd7b4f10fc` |
| 41 | `theorem` | [return_trace](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableUpdateReindex.lean/declarations/return-trace--6bd99d6c0167c789aebc4fb4.md) | 124 | `result-track:6bd99d6c0167c789aebc4fb447c60fb6ecffdad510b1bbb1038cff219fd999ad` |
| 42 | `theorem` | [return_inventory](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableUpdateReindex.lean/declarations/return-inventory--91cb047f8816c47cdae960d7.md) | 129 | `result-track:91cb047f8816c47cdae960d73407be8bda3a79bb5443cec4b1ae3948f609b9a9` |
| 43 | `theorem` | [first_dictionary](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableUpdateReindex.lean/declarations/first-dictionary--9e7aec3da25fa32b0c952604.md) | 135 | `result-track:9e7aec3da25fa32b0c952604e9f4f97e6384fb99ff828bfb0ddc4ef0a745fdd5` |
| 44 | `theorem` | [first_wellFormed](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableUpdateReindex.lean/declarations/first-wellformed--0ff870596b978b102a765d8a.md) | 145 | `result-track:0ff870596b978b102a765d8a0520b81ecc3d609cb3f677e1ce9962a2fbca58ef` |
| 45 | `theorem` | [second_wellFormed](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableUpdateReindex.lean/declarations/second-wellformed--c73811b8078d260d99d282f0.md) | 148 | `result-track:c73811b8078d260d99d282f0163617ac111c5b89513daf476e2c1e372b32f50b` |
| 46 | `theorem` | [first_nodes](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableUpdateReindex.lean/declarations/first-nodes--3e7a800d6a8f159c18365ddf.md) | 151 | `result-track:3e7a800d6a8f159c18365ddf6e233deafaad12004db4ceb415c780bbf542b724` |
| 47 | `theorem` | [first_references](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableUpdateReindex.lean/declarations/first-references--1f45cce4cc21d57f389a3c64.md) | 159 | `result-track:1f45cce4cc21d57f389a3c6483b0fa9c1ceda48c6f041bca46c57bd30a0ebab7` |
| 48 | `theorem` | [first_actual_decode](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableUpdateReindex.lean/declarations/first-actual-decode--20ee3a85a9c0d7965c2b7a52.md) | 174 | `result-track:20ee3a85a9c0d7965c2b7a526e392ca1d3ad04c80a0abf30b8071ba0a0ee1288` |
| 49 | `theorem` | [second_actual_decode](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableUpdateReindex.lean/declarations/second-actual-decode--47750337a93cd52cdc8d6728.md) | 187 | `result-track:47750337a93cd52cdc8d6728f18215cae7a6dac0b509d17382f03a05a2ac9093` |
| 50 | `theorem` | [actual_all_fields_commute](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableUpdateReindex.lean/declarations/actual-all-fields-commute--cfd194544e7ee2cdf1405177.md) | 198 | `result-track:cfd194544e7ee2cdf140517731cc68a07454d19a3fea2f47971fbcc96856bc64` |
| 51 | `theorem` | [actual_new_decode](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableUpdateReindex.lean/declarations/actual-new-decode--ba108c228aff704a0815cc42.md) | 206 | `result-track:ba108c228aff704a0815cc42c3dcfcb6f2fe864bf5adc308fd3488283f9fbb4b` |
| 52 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableUpdateReindex.lean/declarations/example--c4c5f77a338608e2f94385e2.md) | 220 | `declaration-track:c4c5f77a338608e2f94385e23fec5bdeb76177058953761309b292cb28bd3938` |
| 53 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableUpdateReindex.lean/declarations/example--9aa9e7c7a9358ad6943f897a.md) | 227 | `declaration-track:9aa9e7c7a9358ad6943f897a504cade9708a1fcef855eabb8391be585dfaeb19` |
| 54 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableUpdateReindex.lean/declarations/example--014333c99c7ed91e4708c01f.md) | 231 | `declaration-track:014333c99c7ed91e4708c01fe7c55c8089445085cada77a43633003e169bec5a` |
| 55 | `def` | [collapseIndex](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableUpdateReindex.lean/declarations/collapseindex--15670c8798c3b7f455722868.md) | 234 | `declaration-track:15670c8798c3b7f4557228686dad6b6d0e41e7d1a4b6ac48acd080ac84d68c18` |
| 56 | `def` | [collapse](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableUpdateReindex.lean/declarations/collapse--319476263378344321de3323.md) | 237 | `declaration-track:319476263378344321de3323dfc8c0c3145e9d43d2b8983abe9ec1674a17c556` |
| 57 | `theorem` | [collapse_not_injective](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableUpdateReindex.lean/declarations/collapse-not-injective--94606d400e807881e8286b71.md) | 255 | `result-track:94606d400e807881e8286b71b7806e0d3da6875e8976512876c3f4d47a135b6f` |
| 58 | `theorem` | [mapped_seed_dictionary](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableUpdateReindex.lean/declarations/mapped-seed-dictionary--55b504149126c39fb888fd3c.md) | 260 | `result-track:55b504149126c39fb888fd3cc63d1ef94d1a359189b652a7a8a8bcc32423c301` |
| 59 | `theorem` | [collapsed_inventory](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableUpdateReindex.lean/declarations/collapsed-inventory--80825065bfe3eb7488b045c6.md) | 268 | `result-track:80825065bfe3eb7488b045c656c57e91ca3d616e399dd3b10e34f35ebcf7e218` |
| 60 | `theorem` | [collapsed_update_dictionary](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableUpdateReindex.lean/declarations/collapsed-update-dictionary--d08095a2e8d23ecaf9b0b87c.md) | 274 | `result-track:d08095a2e8d23ecaf9b0b87c60260bffa6ef052cc8d8d94c8026846ca1331fe8` |
| 61 | `theorem` | [actual_noninjective_update_failure](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableUpdateReindex.lean/declarations/actual-noninjective-update-failure--f96d71d29db78fbf507068d6.md) | 282 | `result-track:f96d71d29db78fbf507068d6d45ba015589a111034b0d23cf4b1d7dc6827a003` |
| 62 | `theorem` | [actual_noninjective_wellFormed_failure](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableUpdateReindex.lean/declarations/actual-noninjective-wellformed-failure--25ad7cae2fadebe62ffc7940.md) | 293 | `result-track:25ad7cae2fadebe62ffc79406e4173e6239671fd6b62760b59e21df7470690a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
