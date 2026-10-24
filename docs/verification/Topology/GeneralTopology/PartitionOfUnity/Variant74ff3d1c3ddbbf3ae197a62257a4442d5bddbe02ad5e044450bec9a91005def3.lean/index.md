# Verification target: GRWTSK.Topology.GeneralTopology.PartitionOfUnity.Variant74ff3d1c3ddbbf3ae197a62257a4442d5bddbe02ad5e044450bec9a91005def3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a2331e8bd597103cfe054e13d05202419fe43f85",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/PartitionOfUnity/Variant74ff3d1c3ddbbf3ae197a62257a4442d5bddbe02ad5e044450bec9a91005def3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant74ff3d1c3ddbbf3ae197a62257a4442d5bddbe02ad5e044450bec9a91005def3.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant74ff3d1c3ddbbf3ae197a62257a4442d5bddbe02ad5e044450bec9a91005def3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a2331e8bd597103cfe054e13d05202419fe43f85`.

Source path: `GRWTSK/Topology/GeneralTopology/PartitionOfUnity/Variant74ff3d1c3ddbbf3ae197a62257a4442d5bddbe02ad5e044450bec9a91005def3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/PartitionOfUnity/Variant74ff3d1c3ddbbf3ae197a62257a4442d5bddbe02ad5e044450bec9a91005def3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Finprod` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Ordinal.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousFunction.Algebra` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Paracompact` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ShrinkingLemma` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UrysohnsLemma` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PartitionOfUnity](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant74ff3d1c3ddbbf3ae197a62257a4442d5bddbe02ad5e044450bec9a91005def3.lean/declarations/partitionofunity--99149ea0150fe7dd0137c33e.md) | 107 | `declaration-track:99149ea0150fe7dd0137c33e84b0fdd76aa725fce1e445f7f2d0b14d6d2a8706` |
| 2 | `structure` | [BumpCovering](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant74ff3d1c3ddbbf3ae197a62257a4442d5bddbe02ad5e044450bec9a91005def3.lean/declarations/bumpcovering--c05253d4d891c90270e40f4c.md) | 130 | `declaration-track:c05253d4d891c90270e40f4ca1e56f518b98064a1be0c08ea3fc4932ff0c532d` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant74ff3d1c3ddbbf3ae197a62257a4442d5bddbe02ad5e044450bec9a91005def3.lean/declarations/instance--6fc05fd247bed10155b044e9.md) | 145 | `declaration-track:6fc05fd247bed10155b044e91f45bf17d366a5786c0266668c430300d07cb747` |
| 4 | `theorem` | [locallyFinite](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant74ff3d1c3ddbbf3ae197a62257a4442d5bddbe02ad5e044450bec9a91005def3.lean/declarations/locallyfinite--95837b4aae9cf197c640155c.md) | 149 | `result-track:95837b4aae9cf197c640155c3c9624ae914164c4cbce623300429b9275000a36` |
| 5 | `theorem` | [locallyFinite_tsupport](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant74ff3d1c3ddbbf3ae197a62257a4442d5bddbe02ad5e044450bec9a91005def3.lean/declarations/locallyfinite-tsupport--fac8154a4945bfe732d35665.md) | 153 | `result-track:fac8154a4945bfe732d356653f3d6dadb6aaccaddfaa6c6c8675964b69b5267f` |
| 6 | `theorem` | [nonneg](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant74ff3d1c3ddbbf3ae197a62257a4442d5bddbe02ad5e044450bec9a91005def3.lean/declarations/nonneg--b072143f0236d7260a451913.md) | 157 | `result-track:b072143f0236d7260a451913bea0b160ab49d2db35c26b47fa0e954a37f12cee` |
| 7 | `theorem` | [sum_eq_one](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant74ff3d1c3ddbbf3ae197a62257a4442d5bddbe02ad5e044450bec9a91005def3.lean/declarations/sum-eq-one--00c18ab281705425c65eae6a.md) | 161 | `result-track:00c18ab281705425c65eae6a87b1c27610addd2776a04d2b246a49bc42e07880` |
| 8 | `theorem` | [exists_pos](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant74ff3d1c3ddbbf3ae197a62257a4442d5bddbe02ad5e044450bec9a91005def3.lean/declarations/exists-pos--717ef94b304717f729f5c7ae.md) | 167 | `result-track:717ef94b304717f729f5c7ae1d016f95dcb3f31651f1ecd1e265894a5877db95` |
| 9 | `theorem` | [sum_le_one](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant74ff3d1c3ddbbf3ae197a62257a4442d5bddbe02ad5e044450bec9a91005def3.lean/declarations/sum-le-one--47c8dbcc291a867f8a015d7d.md) | 173 | `result-track:47c8dbcc291a867f8a015d7dd8bf2e74d43f7a5a9a10a23dea36e6217cfdea57` |
| 10 | `theorem` | [sum_nonneg](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant74ff3d1c3ddbbf3ae197a62257a4442d5bddbe02ad5e044450bec9a91005def3.lean/declarations/sum-nonneg--7decf658241de89f84d5d253.md) | 177 | `result-track:7decf658241de89f84d5d253a59e2a6d83bcfb1aad563cc0dc561cea7023e3df` |
| 11 | `theorem` | [le_one](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant74ff3d1c3ddbbf3ae197a62257a4442d5bddbe02ad5e044450bec9a91005def3.lean/declarations/le-one--538189516280b71d325f6c71.md) | 181 | `result-track:538189516280b71d325f6c71b2160fc46b823252049c0ed2a50c0aab06e3ba22` |
| 12 | `theorem` | [continuous_smul](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant74ff3d1c3ddbbf3ae197a62257a4442d5bddbe02ad5e044450bec9a91005def3.lean/declarations/continuous-smul--68c15f875f28ae1951f3f5ef.md) | 188 | `result-track:68c15f875f28ae1951f3f5ef5695d61b3a1bd73cb17be8f1178540d1b810a33f` |
| 13 | `theorem` | [continuous_finsum_smul](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant74ff3d1c3ddbbf3ae197a62257a4442d5bddbe02ad5e044450bec9a91005def3.lean/declarations/continuous-finsum-smul--e8699d8419692abb37742b3b.md) | 197 | `result-track:e8699d8419692abb37742b3bc0601c9d5fdef9b75ae9b8e5ae3aa61cd2a9b0ca` |
| 14 | `def` | [IsSubordinate](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant74ff3d1c3ddbbf3ae197a62257a4442d5bddbe02ad5e044450bec9a91005def3.lean/declarations/issubordinate--2e07555e761118fc4598c577.md) | 206 | `declaration-track:2e07555e761118fc4598c577139d5990ee0ec8b4370fba6d9f45b67780f471db` |
| 15 | `theorem` | [exists_finset_nhd_support_subset](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant74ff3d1c3ddbbf3ae197a62257a4442d5bddbe02ad5e044450bec9a91005def3.lean/declarations/exists-finset-nhd-support-subset--937708347ef7efa36bcf1386.md) | 212 | `result-track:937708347ef7efa36bcf13868fc499033b1b61c242bbe48c784e601f0bfa51dd` |
| 16 | `theorem` | [IsSubordinate.continuous_finsum_smul](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant74ff3d1c3ddbbf3ae197a62257a4442d5bddbe02ad5e044450bec9a91005def3.lean/declarations/issubordinate-continuous-finsum-smul--457bd09949d01287184ae655.md) | 225 | `result-track:457bd09949d01287184ae655604388c51c96ceb503f13d08676a6176735fc144` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant74ff3d1c3ddbbf3ae197a62257a4442d5bddbe02ad5e044450bec9a91005def3.lean/declarations/instance--f315f543c66e0e02a80fcea9.md) | 237 | `declaration-track:f315f543c66e0e02a80fcea95ed5e1dc8a7dd8738be3578deae138b0430d64f2` |
| 18 | `theorem` | [locallyFinite](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant74ff3d1c3ddbbf3ae197a62257a4442d5bddbe02ad5e044450bec9a91005def3.lean/declarations/locallyfinite--ade3c3999c30377824b17960.md) | 241 | `result-track:ade3c3999c30377824b179602feeeecdeab5ea4513d3576ac7e03554a6f67df3` |
| 19 | `theorem` | [locallyFinite_tsupport](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant74ff3d1c3ddbbf3ae197a62257a4442d5bddbe02ad5e044450bec9a91005def3.lean/declarations/locallyfinite-tsupport--e22965e9f91a334d897d12b7.md) | 245 | `result-track:e22965e9f91a334d897d12b789f3f7d7ac4e0afba13531d2c7f2695f7f29d4c1` |
| 20 | `theorem` | [point_finite](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant74ff3d1c3ddbbf3ae197a62257a4442d5bddbe02ad5e044450bec9a91005def3.lean/declarations/point-finite--08caf059c9473289215d8a82.md) | 249 | `result-track:08caf059c9473289215d8a82073ec1c90b1f83e2914e15818e2c1d4b356548c9` |
| 21 | `theorem` | [nonneg](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant74ff3d1c3ddbbf3ae197a62257a4442d5bddbe02ad5e044450bec9a91005def3.lean/declarations/nonneg--0b46757c51f8d53960d426d6.md) | 253 | `result-track:0b46757c51f8d53960d426d6d9c6dbbbc8e56edc5bbf66ec457364df80b7ff6b` |
| 22 | `theorem` | [le_one](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant74ff3d1c3ddbbf3ae197a62257a4442d5bddbe02ad5e044450bec9a91005def3.lean/declarations/le-one--c55a82769f3d503c8b39ecfa.md) | 257 | `result-track:c55a82769f3d503c8b39ecfa349072919591851dd3f9807c0f54d05a933e5f39` |
| 23 | `def` | [single](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant74ff3d1c3ddbbf3ae197a62257a4442d5bddbe02ad5e044450bec9a91005def3.lean/declarations/single--029a504f1ab50b0a3cb41074.md) | 263 | `declaration-track:029a504f1ab50b0a3cb41074cd26071607c9c95f67018f572279b7ee6d7305df` |
| 24 | `theorem` | [coe_single](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant74ff3d1c3ddbbf3ae197a62257a4442d5bddbe02ad5e044450bec9a91005def3.lean/declarations/coe-single--40cfeadc012d3459c009f39b.md) | 277 | `result-track:40cfeadc012d3459c009f39b6526563baaf4abf614290f417b8c3d5567b987b6` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant74ff3d1c3ddbbf3ae197a62257a4442d5bddbe02ad5e044450bec9a91005def3.lean/declarations/instance--6994800ab60fe7b578924cb2.md) | 280 | `declaration-track:6994800ab60fe7b578924cb247705541a7d47a121de0acd79945611b0526269a` |
| 26 | `def` | [IsSubordinate](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant74ff3d1c3ddbbf3ae197a62257a4442d5bddbe02ad5e044450bec9a91005def3.lean/declarations/issubordinate--2259df6eda006222bedc6353.md) | 285 | `declaration-track:2259df6eda006222bedc6353abfa81c55af114c7ef27285ef7ac51e34ca29308` |
| 27 | `theorem` | [IsSubordinate.mono](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant74ff3d1c3ddbbf3ae197a62257a4442d5bddbe02ad5e044450bec9a91005def3.lean/declarations/issubordinate-mono--8a0accdd25853c760f82e214.md) | 289 | `result-track:8a0accdd25853c760f82e214a62ef5b81257853f83236b2de0781eeb2e4f647d` |
| 28 | `theorem` | [exists_isSubordinate_of_locallyFinite_of_prop](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant74ff3d1c3ddbbf3ae197a62257a4442d5bddbe02ad5e044450bec9a91005def3.lean/declarations/exists-issubordinate-of-locallyfinite-of-prop--3a8d9f73f00faf1a47953538.md) | 300 | `result-track:3a8d9f73f00faf1a47953538e73a14ebc2ba2c526f6e81721eeb7d5dd4dd296d` |
| 29 | `theorem` | [exists_isSubordinate_of_locallyFinite](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant74ff3d1c3ddbbf3ae197a62257a4442d5bddbe02ad5e044450bec9a91005def3.lean/declarations/exists-issubordinate-of-locallyfinite--4a44c3e8b06ee10b04b37358.md) | 326 | `result-track:4a44c3e8b06ee10b04b373585c12ad653bb5539221825522f54196ac3d2a77a5` |
| 30 | `theorem` | [exists_isSubordinate_of_prop](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant74ff3d1c3ddbbf3ae197a62257a4442d5bddbe02ad5e044450bec9a91005def3.lean/declarations/exists-issubordinate-of-prop--16ac2e687d7febb05f9a00f9.md) | 341 | `result-track:16ac2e687d7febb05f9a00f951846a03a66734081907eeea45279aac7eff17c9` |
| 31 | `theorem` | [exists_isSubordinate](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant74ff3d1c3ddbbf3ae197a62257a4442d5bddbe02ad5e044450bec9a91005def3.lean/declarations/exists-issubordinate--d8e8450e551b986c9a683fea.md) | 353 | `result-track:d8e8450e551b986c9a683fea20c1109233a29e34e64924345bc4eaeff4074360` |
| 32 | `def` | [ind](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant74ff3d1c3ddbbf3ae197a62257a4442d5bddbe02ad5e044450bec9a91005def3.lean/declarations/ind--da7e67ee9a849c6d144c64f5.md) | 361 | `declaration-track:da7e67ee9a849c6d144c64f520363ebf8afb33c8df0807665439f7c5c127c8e3` |
| 33 | `theorem` | [eventuallyEq_one](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant74ff3d1c3ddbbf3ae197a62257a4442d5bddbe02ad5e044450bec9a91005def3.lean/declarations/eventuallyeq-one--e93a02053ec1ba44ee47e4d5.md) | 365 | `result-track:e93a02053ec1ba44ee47e4d5e8862c301d816fee90f9c5964597efb569891e7d` |
| 34 | `theorem` | [ind_apply](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant74ff3d1c3ddbbf3ae197a62257a4442d5bddbe02ad5e044450bec9a91005def3.lean/declarations/ind-apply--da3f67084862512cd5c7ad4a.md) | 369 | `result-track:da3f67084862512cd5c7ad4a77bc7a246bbdac7d9cd50af9f5ab0bb3f72caeff` |
| 35 | `def` | [toPOUFun](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant74ff3d1c3ddbbf3ae197a62257a4442d5bddbe02ad5e044450bec9a91005def3.lean/declarations/topoufun--3a62411c10b939ba036848ad.md) | 383 | `declaration-track:3a62411c10b939ba036848ad338f3436e9878a489918d11e12b435a482cc2ef9` |
| 36 | `theorem` | [toPOUFun_zero_of_zero](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant74ff3d1c3ddbbf3ae197a62257a4442d5bddbe02ad5e044450bec9a91005def3.lean/declarations/topoufun-zero-of-zero--e12a2b30646d3c5b1076cb13.md) | 387 | `result-track:e12a2b30646d3c5b1076cb133941e6f1c5ed60d70038fb7febc805691317bdd3` |
| 37 | `theorem` | [support_toPOUFun_subset](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant74ff3d1c3ddbbf3ae197a62257a4442d5bddbe02ad5e044450bec9a91005def3.lean/declarations/support-topoufun-subset--1375bb31961e51a629782eb1.md) | 391 | `result-track:1375bb31961e51a629782eb11b9a527901f3a4fb004ec857c8abf2511ceb3c50` |
| 38 | `theorem` | [toPOUFun_eq_mul_prod](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant74ff3d1c3ddbbf3ae197a62257a4442d5bddbe02ad5e044450bec9a91005def3.lean/declarations/topoufun-eq-mul-prod--00050bd5a4441dabff240487.md) | 395 | `result-track:00050bd5a4441dabff2404870dfd9cb122c78f57713210055519e68015a7bc4b` |
| 39 | `theorem` | [sum_toPOUFun_eq](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant74ff3d1c3ddbbf3ae197a62257a4442d5bddbe02ad5e044450bec9a91005def3.lean/declarations/sum-topoufun-eq--9c76b6ae0a4a0a82f718b6bf.md) | 404 | `result-track:9c76b6ae0a4a0a82f718b6bff0cd5ab7c6a542a3926e07fe88c59716a15149d8` |
| 40 | `theorem` | [exists_finset_toPOUFun_eventuallyEq](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant74ff3d1c3ddbbf3ae197a62257a4442d5bddbe02ad5e044450bec9a91005def3.lean/declarations/exists-finset-topoufun-eventuallyeq--91bf4af39ae9ef6d4ba27516.md) | 421 | `result-track:91bf4af39ae9ef6d4ba27516e7acb46fd3953d680f47407c137c7c211d535d87` |
| 41 | `theorem` | [continuous_toPOUFun](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant74ff3d1c3ddbbf3ae197a62257a4442d5bddbe02ad5e044450bec9a91005def3.lean/declarations/continuous-topoufun--75330999e14515c0bf17ed2f.md) | 432 | `result-track:75330999e14515c0bf17ed2f37756176a09389f801fe6b2f4ac46ab533147325` |
| 42 | `def` | [toPartitionOfUnity](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant74ff3d1c3ddbbf3ae197a62257a4442d5bddbe02ad5e044450bec9a91005def3.lean/declarations/topartitionofunity--271fb1fe5f31d1aad066f956.md) | 447 | `declaration-track:271fb1fe5f31d1aad066f95663675e63110e08cc2a7c41a2402e301bef90b4b8` |
| 43 | `theorem` | [toPartitionOfUnity_apply](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant74ff3d1c3ddbbf3ae197a62257a4442d5bddbe02ad5e044450bec9a91005def3.lean/declarations/topartitionofunity-apply--83f3f04b3291d196513ba1ef.md) | 463 | `result-track:83f3f04b3291d196513ba1efd95e3a7ce5410b6bd4f0d9e0db78c7faded8f21a` |
| 44 | `theorem` | [toPartitionOfUnity_eq_mul_prod](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant74ff3d1c3ddbbf3ae197a62257a4442d5bddbe02ad5e044450bec9a91005def3.lean/declarations/topartitionofunity-eq-mul-prod--8e1cc0c215fa96372c129286.md) | 467 | `result-track:8e1cc0c215fa96372c129286fffced596bfcd2a07390d2cc201ad4c9f818fbfc` |
| 45 | `theorem` | [exists_finset_toPartitionOfUnity_eventuallyEq](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant74ff3d1c3ddbbf3ae197a62257a4442d5bddbe02ad5e044450bec9a91005def3.lean/declarations/exists-finset-topartitionofunity-eventuallyeq--80d644832abd3e2b1263a9d7.md) | 473 | `result-track:80d644832abd3e2b1263a9d7b83b250509e73f11d14fe9deff24af75e4f95180` |
| 46 | `theorem` | [toPartitionOfUnity_zero_of_zero](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant74ff3d1c3ddbbf3ae197a62257a4442d5bddbe02ad5e044450bec9a91005def3.lean/declarations/topartitionofunity-zero-of-zero--97411f123f72a0546f6beb0d.md) | 478 | `result-track:97411f123f72a0546f6beb0deb35028437e75e1a9cc14a4d9bde05bf6953cd20` |
| 47 | `theorem` | [support_toPartitionOfUnity_subset](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant74ff3d1c3ddbbf3ae197a62257a4442d5bddbe02ad5e044450bec9a91005def3.lean/declarations/support-topartitionofunity-subset--18a33438fa8083f6746d92a7.md) | 483 | `result-track:18a33438fa8083f6746d92a79669a4f917f26c0859aa4eba41a81ef6c9aa9f4b` |
| 48 | `theorem` | [sum_toPartitionOfUnity_eq](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant74ff3d1c3ddbbf3ae197a62257a4442d5bddbe02ad5e044450bec9a91005def3.lean/declarations/sum-topartitionofunity-eq--0713ce254e662392a291b667.md) | 488 | `result-track:0713ce254e662392a291b6671076e53d5718febed0b2d654398a99c0ade7a352` |
| 49 | `theorem` | [IsSubordinate.toPartitionOfUnity](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant74ff3d1c3ddbbf3ae197a62257a4442d5bddbe02ad5e044450bec9a91005def3.lean/declarations/issubordinate-topartitionofunity--689af7c0522fa6854c03b084.md) | 493 | `result-track:689af7c0522fa6854c03b0845faebf9a3202bf0aa54fb914f829ecc9e0bf3946` |
| 50 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant74ff3d1c3ddbbf3ae197a62257a4442d5bddbe02ad5e044450bec9a91005def3.lean/declarations/instance--262bc970ead019393a6e418c.md) | 504 | `declaration-track:262bc970ead019393a6e418c60c7f0fea8d5035b223695cd287f23770017e902` |
| 51 | `theorem` | [exists_isSubordinate_of_locallyFinite](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant74ff3d1c3ddbbf3ae197a62257a4442d5bddbe02ad5e044450bec9a91005def3.lean/declarations/exists-issubordinate-of-locallyfinite--2e8bd6e1c3fb6cec9dfb6eef.md) | 511 | `result-track:2e8bd6e1c3fb6cec9dfb6eefb2370d6f25e5d97df205af040ab281229ebeaaab` |
| 52 | `theorem` | [exists_isSubordinate](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant74ff3d1c3ddbbf3ae197a62257a4442d5bddbe02ad5e044450bec9a91005def3.lean/declarations/exists-issubordinate--4de10c0798900de7dc2d4c19.md) | 520 | `result-track:4de10c0798900de7dc2d4c197147115f452f3af491092cd940a3739954245cdf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
