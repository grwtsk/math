# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.OrdContinuous.Variant7a8152c1da0fa3bda003869281a7c415b1a41d557e05b202ebbaa35b09a9fa06

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "763e5694c58be5e5b17403bc92dbad747982b3ea",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant7a8152c1da0fa3bda003869281a7c415b1a41d557e05b202ebbaa35b09a9fa06.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant7a8152c1da0fa3bda003869281a7c415b1a41d557e05b202ebbaa35b09a9fa06.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant7a8152c1da0fa3bda003869281a7c415b1a41d557e05b202ebbaa35b09a9fa06.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `763e5694c58be5e5b17403bc92dbad747982b3ea`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant7a8152c1da0fa3bda003869281a7c415b1a41d557e05b202ebbaa35b09a9fa06.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant7a8152c1da0fa3bda003869281a7c415b1a41d557e05b202ebbaa35b09a9fa06.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.ConditionallyCompleteLattice.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.RelIso.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [LeftOrdContinuous](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant7a8152c1da0fa3bda003869281a7c415b1a41d557e05b202ebbaa35b09a9fa06.lean/declarations/leftordcontinuous--7e3df523f688dcfd10b3f578.md) | 38 | `declaration-track:7e3df523f688dcfd10b3f5783bbbfdbc1916452b9b4c33dafc1875651d6e0f9e` |
| 2 | `def` | [RightOrdContinuous](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant7a8152c1da0fa3bda003869281a7c415b1a41d557e05b202ebbaa35b09a9fa06.lean/declarations/rightordcontinuous--7873ba7693177dbe841a08a3.md) | 45 | `declaration-track:7873ba7693177dbe841a08a3112e4dae1269f2de1e5415af83266ddd2c81560c` |
| 3 | `theorem` | [id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant7a8152c1da0fa3bda003869281a7c415b1a41d557e05b202ebbaa35b09a9fa06.lean/declarations/id--d2917f7c077871c4b1bc87a9.md) | 55 | `result-track:d2917f7c077871c4b1bc87a943018594f35104e834f913bb23930963605e670c` |
| 4 | `theorem` | [order_dual](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant7a8152c1da0fa3bda003869281a7c415b1a41d557e05b202ebbaa35b09a9fa06.lean/declarations/order-dual--8afe1c61f513dd49000fbe8c.md) | 62 | `result-track:8afe1c61f513dd49000fbe8c69542efce88e974a93a5f808c28600cda1f506a8` |
| 5 | `theorem` | [map_isGreatest](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant7a8152c1da0fa3bda003869281a7c415b1a41d557e05b202ebbaa35b09a9fa06.lean/declarations/map-isgreatest--cb7a7628502279f502aa7c61.md) | 66 | `result-track:cb7a7628502279f502aa7c612b83832a99268d1e0b36b3549f11db997b4994bb` |
| 6 | `theorem` | [mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant7a8152c1da0fa3bda003869281a7c415b1a41d557e05b202ebbaa35b09a9fa06.lean/declarations/mono--c687687c57a346d439ea5e3a.md) | 71 | `result-track:c687687c57a346d439ea5e3abc75b1d8e02a4beaddaf2c47f01a1c3e2d9e1ee1` |
| 7 | `theorem` | [comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant7a8152c1da0fa3bda003869281a7c415b1a41d557e05b202ebbaa35b09a9fa06.lean/declarations/comp--3fa16741ad20ee1773ad0f26.md) | 76 | `result-track:3fa16741ad20ee1773ad0f26198ba7d8ea910dc759a1fc918333cb2937abcf5e` |
| 8 | `theorem` | [iterate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant7a8152c1da0fa3bda003869281a7c415b1a41d557e05b202ebbaa35b09a9fa06.lean/declarations/iterate--033182c9d47b639e7ca898b1.md) | 81 | `result-track:033182c9d47b639e7ca898b131b55563c930879063d0ee40ad1bbb2af9f07768` |
| 9 | `theorem` | [map_sup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant7a8152c1da0fa3bda003869281a7c415b1a41d557e05b202ebbaa35b09a9fa06.lean/declarations/map-sup--2d1e90c66670f381f0961e0e.md) | 94 | `result-track:2d1e90c66670f381f0961e0ecfd53925b6d8a68054298bb1be3523a410854dd5` |
| 10 | `theorem` | [le_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant7a8152c1da0fa3bda003869281a7c415b1a41d557e05b202ebbaa35b09a9fa06.lean/declarations/le-iff--491622b9f808aa7867d3af05.md) | 98 | `result-track:491622b9f808aa7867d3af052563e833e4796df416e0a737851f667554853c47` |
| 11 | `theorem` | [lt_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant7a8152c1da0fa3bda003869281a7c415b1a41d557e05b202ebbaa35b09a9fa06.lean/declarations/lt-iff--602acd6e19b09564343823b7.md) | 102 | `result-track:602acd6e19b09564343823b76d8b7f06f7bc3d4fbbeb87d5b53a1f1f68c607b9` |
| 12 | `def` | [toOrderEmbedding](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant7a8152c1da0fa3bda003869281a7c415b1a41d557e05b202ebbaa35b09a9fa06.lean/declarations/toorderembedding--ccbfffb16639d1cbed8f2575.md) | 109 | `declaration-track:ccbfffb16639d1cbed8f25751f567ea693c4502ea6581537baf4442babb4a408` |
| 13 | `theorem` | [coe_toOrderEmbedding](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant7a8152c1da0fa3bda003869281a7c415b1a41d557e05b202ebbaa35b09a9fa06.lean/declarations/coe-toorderembedding--4c811e072add67120be0b298.md) | 116 | `result-track:4c811e072add67120be0b2988ed35460ebdeed867429bacf828e20f2b0dad0bd` |
| 14 | `theorem` | [map_sSup'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant7a8152c1da0fa3bda003869281a7c415b1a41d557e05b202ebbaa35b09a9fa06.lean/declarations/map-ssup--be81466ced4b7b672fc662a8.md) | 127 | `result-track:be81466ced4b7b672fc662a83694f0cd095cfe92e15a9561900986eb17dea26a` |
| 15 | `theorem` | [map_sSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant7a8152c1da0fa3bda003869281a7c415b1a41d557e05b202ebbaa35b09a9fa06.lean/declarations/map-ssup--2d8227ebd4267b7508a73aab.md) | 131 | `result-track:2d8227ebd4267b7508a73aab4a17397ec402e945e1e29b03c3eb3482ba82c5cf` |
| 16 | `theorem` | [map_iSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant7a8152c1da0fa3bda003869281a7c415b1a41d557e05b202ebbaa35b09a9fa06.lean/declarations/map-isup--8ea0bd3df46e5db51e9e034b.md) | 135 | `result-track:8ea0bd3df46e5db51e9e034bd9a95b06e44d38fe4cad350b5c2b266dcf7e997b` |
| 17 | `theorem` | [map_csSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant7a8152c1da0fa3bda003869281a7c415b1a41d557e05b202ebbaa35b09a9fa06.lean/declarations/map-cssup--5158ecb50337b3407fc823cf.md) | 146 | `result-track:5158ecb50337b3407fc823cfe0c2bea7f191a93726f968e5c100b618b015633f` |
| 18 | `theorem` | [map_ciSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant7a8152c1da0fa3bda003869281a7c415b1a41d557e05b202ebbaa35b09a9fa06.lean/declarations/map-cisup--0bc773e33516eaf6c9148ed5.md) | 151 | `result-track:0bc773e33516eaf6c9148ed50e77fff99cfa57e105ba49783881800f8b6e07ec` |
| 19 | `theorem` | [id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant7a8152c1da0fa3bda003869281a7c415b1a41d557e05b202ebbaa35b09a9fa06.lean/declarations/id--a5d1f62e785b7e5dc518a786.md) | 167 | `result-track:a5d1f62e785b7e5dc518a78695c54a183c3efc24367206c913f6fb6798ed97b4` |
| 20 | `theorem` | [orderDual](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant7a8152c1da0fa3bda003869281a7c415b1a41d557e05b202ebbaa35b09a9fa06.lean/declarations/orderdual--fb480f4e230d4cb28cb60517.md) | 173 | `result-track:fb480f4e230d4cb28cb60517571d291e05364f6669df052e3ea21ea863339163` |
| 21 | `theorem` | [map_isLeast](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant7a8152c1da0fa3bda003869281a7c415b1a41d557e05b202ebbaa35b09a9fa06.lean/declarations/map-isleast--1a2c8ea713894a962d6184fa.md) | 177 | `result-track:1a2c8ea713894a962d6184fa4f586b55a1a0962e7625aeecd0be7829cf076761` |
| 22 | `theorem` | [mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant7a8152c1da0fa3bda003869281a7c415b1a41d557e05b202ebbaa35b09a9fa06.lean/declarations/mono--3e797fcabb8a19e5d04f43df.md) | 182 | `result-track:3e797fcabb8a19e5d04f43df757530ea58d9a3fa3c377c376f850fc7d888c758` |
| 23 | `theorem` | [comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant7a8152c1da0fa3bda003869281a7c415b1a41d557e05b202ebbaa35b09a9fa06.lean/declarations/comp--5ab3c114107ba87184e52181.md) | 186 | `result-track:5ab3c114107ba87184e5218150b9d9804fc3f61a99c899ce7544d6338ab86a83` |
| 24 | `theorem` | [iterate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant7a8152c1da0fa3bda003869281a7c415b1a41d557e05b202ebbaa35b09a9fa06.lean/declarations/iterate--e45995d55b704270e1a4664b.md) | 190 | `result-track:e45995d55b704270e1a4664b3f42abe62d4ce68886337d571b108c97f6202a25` |
| 25 | `theorem` | [map_inf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant7a8152c1da0fa3bda003869281a7c415b1a41d557e05b202ebbaa35b09a9fa06.lean/declarations/map-inf--33a1680243b230d736b6765f.md) | 201 | `result-track:33a1680243b230d736b6765f645ef5870cfc6fc541521e45024b035baac8d7ff` |
| 26 | `theorem` | [le_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant7a8152c1da0fa3bda003869281a7c415b1a41d557e05b202ebbaa35b09a9fa06.lean/declarations/le-iff--c1835bd6f0cb90a345e8cd09.md) | 205 | `result-track:c1835bd6f0cb90a345e8cd09d96673cfb22bcf6b3affa2e633c1886da1ce15db` |
| 27 | `theorem` | [lt_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant7a8152c1da0fa3bda003869281a7c415b1a41d557e05b202ebbaa35b09a9fa06.lean/declarations/lt-iff--b243a3a320986dc7385d1ced.md) | 209 | `result-track:b243a3a320986dc7385d1ced572babfae24be137a81701e2ba45d269597c8d83` |
| 28 | `def` | [toOrderEmbedding](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant7a8152c1da0fa3bda003869281a7c415b1a41d557e05b202ebbaa35b09a9fa06.lean/declarations/toorderembedding--be256e78a28a1b44dc719b18.md) | 216 | `declaration-track:be256e78a28a1b44dc719b18105083cce40f3d18b8c5f0113d9f6530ecf85a7b` |
| 29 | `theorem` | [coe_toOrderEmbedding](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant7a8152c1da0fa3bda003869281a7c415b1a41d557e05b202ebbaa35b09a9fa06.lean/declarations/coe-toorderembedding--0c96f4cbdb83ea7ba9d9a3f1.md) | 223 | `result-track:0c96f4cbdb83ea7ba9d9a3f1512f900a2e70dc406f60a0cadcac1b697009b86b` |
| 30 | `theorem` | [map_sInf'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant7a8152c1da0fa3bda003869281a7c415b1a41d557e05b202ebbaa35b09a9fa06.lean/declarations/map-sinf--59c4079d2f1c41e67e38265f.md) | 234 | `result-track:59c4079d2f1c41e67e38265fb0d922d5750e73f5801375c682cddb74b6cb260d` |
| 31 | `theorem` | [map_sInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant7a8152c1da0fa3bda003869281a7c415b1a41d557e05b202ebbaa35b09a9fa06.lean/declarations/map-sinf--e6aeb37e72956848c99248ad.md) | 238 | `result-track:e6aeb37e72956848c99248ad41558c15feaa210d18be6747828ead45f91d506b` |
| 32 | `theorem` | [map_iInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant7a8152c1da0fa3bda003869281a7c415b1a41d557e05b202ebbaa35b09a9fa06.lean/declarations/map-iinf--28dfd84110c400ea79871019.md) | 242 | `result-track:28dfd84110c400ea798710199be3ab31e27d6da5c5a1e3d5af13b00abbf980a8` |
| 33 | `theorem` | [map_csInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant7a8152c1da0fa3bda003869281a7c415b1a41d557e05b202ebbaa35b09a9fa06.lean/declarations/map-csinf--cfeadd10d6309eb0e26fbf3e.md) | 252 | `result-track:cfeadd10d6309eb0e26fbf3e21f55faeeebba412880b02b4f65154c89a3c79ef` |
| 34 | `theorem` | [map_ciInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant7a8152c1da0fa3bda003869281a7c415b1a41d557e05b202ebbaa35b09a9fa06.lean/declarations/map-ciinf--7ce0f5efc4236ca1310aeec0.md) | 257 | `result-track:7ce0f5efc4236ca1310aeec0c4348c4c237218f4a781a6584f63056f7d39982a` |
| 35 | `theorem` | [leftOrdContinuous](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant7a8152c1da0fa3bda003869281a7c415b1a41d557e05b202ebbaa35b09a9fa06.lean/declarations/leftordcontinuous--051cd58cacace43edeb06095.md) | 272 | `result-track:051cd58cacace43edeb06095b35544771854365bd3a3a01630220aacca909a03` |
| 36 | `theorem` | [rightOrdContinuous](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant7a8152c1da0fa3bda003869281a7c415b1a41d557e05b202ebbaa35b09a9fa06.lean/declarations/rightordcontinuous--c470a86a32a45202de0bba87.md) | 278 | `result-track:c470a86a32a45202de0bba87c1c9ee46a24a59147c0d557578a0ac16face0629` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
