# Verification target: GRWTSK.Topology.GeneralTopology.Filter.Variante4810136c9614adcce28401cf66741dbc94adbbddbb85247e1db2ccfc176a76a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "56290c77fab34762a7379df0c69c70d2c0fe1fc0",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Filter/Variante4810136c9614adcce28401cf66741dbc94adbbddbb85247e1db2ccfc176a76a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Filter/Variante4810136c9614adcce28401cf66741dbc94adbbddbb85247e1db2ccfc176a76a.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Filter/Variante4810136c9614adcce28401cf66741dbc94adbbddbb85247e1db2ccfc176a76a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `56290c77fab34762a7379df0c69c70d2c0fe1fc0`.

Source path: `GRWTSK/Topology/GeneralTopology/Filter/Variante4810136c9614adcce28401cf66741dbc94adbbddbb85247e1db2ccfc176a76a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Filter/Variante4810136c9614adcce28401cf66741dbc94adbbddbb85247e1db2ccfc176a76a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.BoxIntegral.Partition.SubboxInduction` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.BoxIntegral.Partition.Split` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IntegrationParams](../../../../../mathematics/Topology/GeneralTopology/Filter/Variante4810136c9614adcce28401cf66741dbc94adbbddbb85247e1db2ccfc176a76a.lean/declarations/integrationparams--bc3b73e92c90a083329bc097.md) | 194 | `declaration-track:bc3b73e92c90a083329bc097690bb0a8da033e8ae2e1d8c2cc2edd1b0abbcbbf` |
| 2 | `def` | [equivProd](../../../../../mathematics/Topology/GeneralTopology/Filter/Variante4810136c9614adcce28401cf66741dbc94adbbddbb85247e1db2ccfc176a76a.lean/declarations/equivprod--250b9b835409a2e39b973932.md) | 202 | `declaration-track:250b9b835409a2e39b9739322fa3758f82f76e85d91f1dd6ff04fb28ffd46b4e` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Filter/Variante4810136c9614adcce28401cf66741dbc94adbbddbb85247e1db2ccfc176a76a.lean/declarations/instance--d9fb0213ad98aec411919944.md) | 208 | `declaration-track:d9fb0213ad98aec411919944a3704f7305331c29fadd064de0cf1090c6ca1466` |
| 4 | `def` | [isoProd](../../../../../mathematics/Topology/GeneralTopology/Filter/Variante4810136c9614adcce28401cf66741dbc94adbbddbb85247e1db2ccfc176a76a.lean/declarations/isoprod--6d49d30aa8916dbc038443bb.md) | 212 | `declaration-track:6d49d30aa8916dbc038443bb60562e569eeef38fcf48038de8384ec2a51c9da6` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Filter/Variante4810136c9614adcce28401cf66741dbc94adbbddbb85247e1db2ccfc176a76a.lean/declarations/instance--4c97a118d8e97ad35fd7bd3a.md) | 215 | `declaration-track:4c97a118d8e97ad35fd7bd3af71d4ba3bf62f47a96743dfd6b019292780e0eb1` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Filter/Variante4810136c9614adcce28401cf66741dbc94adbbddbb85247e1db2ccfc176a76a.lean/declarations/instance--b58b0c174e8a9b79a1ea2d05.md) | 222 | `declaration-track:b58b0c174e8a9b79a1ea2d0571d3d3fe8708a7e2a8024f7333bfd56a20dd90cf` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Filter/Variante4810136c9614adcce28401cf66741dbc94adbbddbb85247e1db2ccfc176a76a.lean/declarations/instance--3fa8c7218366a382f367543a.md) | 225 | `declaration-track:3fa8c7218366a382f367543ae253fa916d03f42a8d5ceb3a05855a233b9aefe4` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Filter/Variante4810136c9614adcce28401cf66741dbc94adbbddbb85247e1db2ccfc176a76a.lean/declarations/instance--d61e3ed0c683ffe3dc8a1b5f.md) | 228 | `declaration-track:d61e3ed0c683ffe3dc8a1b5fde099ffbd15b68295d95f41d936acace3b4dd31d` |
| 9 | `def` | [Riemann](../../../../../mathematics/Topology/GeneralTopology/Filter/Variante4810136c9614adcce28401cf66741dbc94adbbddbb85247e1db2ccfc176a76a.lean/declarations/riemann--ee403f8c33f1f8906f226b5a.md) | 235 | `declaration-track:ee403f8c33f1f8906f226b5a7726158cb569b08bb32527bab1e0175b7a9c8ed9` |
| 10 | `def` | [Henstock](../../../../../mathematics/Topology/GeneralTopology/Filter/Variante4810136c9614adcce28401cf66741dbc94adbbddbb85247e1db2ccfc176a76a.lean/declarations/henstock--1ddffad178b158ebf6d73d5c.md) | 243 | `declaration-track:1ddffad178b158ebf6d73d5c247510dc8769fbb6daa41bf91f5171e89e0aed2a` |
| 11 | `def` | [McShane](../../../../../mathematics/Topology/GeneralTopology/Filter/Variante4810136c9614adcce28401cf66741dbc94adbbddbb85247e1db2ccfc176a76a.lean/declarations/mcshane--aba1a849b7fa95081b8646fd.md) | 250 | `declaration-track:aba1a849b7fa95081b8646fd1efdc49585f6023e4cd2d8eea7fc4e00df7bcc29` |
| 12 | `def` | [GP](../../../../../mathematics/Topology/GeneralTopology/Filter/Variante4810136c9614adcce28401cf66741dbc94adbbddbb85247e1db2ccfc176a76a.lean/declarations/gp--9d0e753bb78e8f37518a4b8d.md) | 257 | `declaration-track:9d0e753bb78e8f37518a4b8d233c2ac0a1e12dd80a4e2497fb6bb985669a6dfb` |
| 13 | `theorem` | [henstock_le_riemann](../../../../../mathematics/Topology/GeneralTopology/Filter/Variante4810136c9614adcce28401cf66741dbc94adbbddbb85247e1db2ccfc176a76a.lean/declarations/henstock-le-riemann--9496035f17e3a7c0baf1c659.md) | 259 | `result-track:9496035f17e3a7c0baf1c659eae1c3849de296ff16ba51407d304f56bae0b1c6` |
| 14 | `theorem` | [henstock_le_mcShane](../../../../../mathematics/Topology/GeneralTopology/Filter/Variante4810136c9614adcce28401cf66741dbc94adbbddbb85247e1db2ccfc176a76a.lean/declarations/henstock-le-mcshane--67f9d275c7993f4a084bc069.md) | 261 | `result-track:67f9d275c7993f4a084bc0690185c3da2db763eadf7f13b1c88460803cbd404b` |
| 15 | `theorem` | [gp_le](../../../../../mathematics/Topology/GeneralTopology/Filter/Variante4810136c9614adcce28401cf66741dbc94adbbddbb85247e1db2ccfc176a76a.lean/declarations/gp-le--718c76acd621574ee79c6670.md) | 263 | `result-track:718c76acd621574ee79c6670a09c62446251a714bd671069227ab5f4c6d52a9a` |
| 16 | `structure` | [MemBaseSet](../../../../../mathematics/Topology/GeneralTopology/Filter/Variante4810136c9614adcce28401cf66741dbc94adbbddbb85247e1db2ccfc176a76a.lean/declarations/membaseset--3716ee6d800022f0ef5aec7a.md) | 281 | `declaration-track:3716ee6d800022f0ef5aec7a3d99a7ce2201f28e24ef3d163122515e257c45f2` |
| 17 | `def` | [RCond](../../../../../mathematics/Topology/GeneralTopology/Filter/Variante4810136c9614adcce28401cf66741dbc94adbbddbb85247e1db2ccfc176a76a.lean/declarations/rcond--482ab1edc0c02949ee74a16d.md) | 290 | `declaration-track:482ab1edc0c02949ee74a16dd5f229ac99c8920948c8fd8cdfe7369056fc85a7` |
| 18 | `def` | [toFilterDistortion](../../../../../mathematics/Topology/GeneralTopology/Filter/Variante4810136c9614adcce28401cf66741dbc94adbbddbb85247e1db2ccfc176a76a.lean/declarations/tofilterdistortion--05f641ad1f1424b1ba216614.md) | 296 | `declaration-track:05f641ad1f1424b1ba2166143fa9284e96854c930968842e9a388b6181706f5c` |
| 19 | `def` | [toFilter](../../../../../mathematics/Topology/GeneralTopology/Filter/Variante4810136c9614adcce28401cf66741dbc94adbbddbb85247e1db2ccfc176a76a.lean/declarations/tofilter--09365cf14f75864282a75466.md) | 303 | `declaration-track:09365cf14f75864282a75466708955fa56d5453e06251c623c85fc1cdca25554` |
| 20 | `def` | [toFilterDistortioniUnion](../../../../../mathematics/Topology/GeneralTopology/Filter/Variante4810136c9614adcce28401cf66741dbc94adbbddbb85247e1db2ccfc176a76a.lean/declarations/tofilterdistortioniunion--9419fe241eb2fc75585c8a79.md) | 309 | `declaration-track:9419fe241eb2fc75585c8a7906482cd5f3094d1ae01b37ac8246c21a234514aa` |
| 21 | `def` | [toFilteriUnion](../../../../../mathematics/Topology/GeneralTopology/Filter/Variante4810136c9614adcce28401cf66741dbc94adbbddbb85247e1db2ccfc176a76a.lean/declarations/tofilteriunion--1b1d43b6a61789fbf50b8dc4.md) | 315 | `declaration-track:1b1d43b6a61789fbf50b8dc4bb2d048d5032f638b3ccfc2d2d3ccd5084aeb8af` |
| 22 | `theorem` | [rCond_of_bRiemann_eq_false](../../../../../mathematics/Topology/GeneralTopology/Filter/Variante4810136c9614adcce28401cf66741dbc94adbbddbb85247e1db2ccfc176a76a.lean/declarations/rcond-of-briemann-eq-false--623751fc830d62c7e06451d9.md) | 318 | `result-track:623751fc830d62c7e06451d969f89343572e34f4b8f79fd23719a867b1872f88` |
| 23 | `theorem` | [toFilter_inf_iUnion_eq](../../../../../mathematics/Topology/GeneralTopology/Filter/Variante4810136c9614adcce28401cf66741dbc94adbbddbb85247e1db2ccfc176a76a.lean/declarations/tofilter-inf-iunion-eq--b6128cfde0574d5fc23ff678.md) | 322 | `result-track:b6128cfde0574d5fc23ff6786a0914307dce39c7a9a8467a88030b323fd91ff9` |
| 24 | `theorem` | [MemBaseSet.mono'](../../../../../mathematics/Topology/GeneralTopology/Filter/Variante4810136c9614adcce28401cf66741dbc94adbbddbb85247e1db2ccfc176a76a.lean/declarations/membaseset-mono--d03a71a91dd5678675c9cfa5.md) | 329 | `result-track:d03a71a91dd5678675c9cfa5bbbaf97fe7c6974024157f2b07a815540fecabf9` |
| 25 | `theorem` | [MemBaseSet.mono](../../../../../mathematics/Topology/GeneralTopology/Filter/Variante4810136c9614adcce28401cf66741dbc94adbbddbb85247e1db2ccfc176a76a.lean/declarations/membaseset-mono--faa1b58d0468322e0c3047c5.md) | 338 | `result-track:faa1b58d0468322e0c3047c57670254e668d69104584625ad86be2f46bbad79f` |
| 26 | `theorem` | [MemBaseSet.exists_common_compl](../../../../../mathematics/Topology/GeneralTopology/Filter/Variante4810136c9614adcce28401cf66741dbc94adbbddbb85247e1db2ccfc176a76a.lean/declarations/membaseset-exists-common-compl--e437a80a84ec07e8cdd17b76.md) | 342 | `result-track:e437a80a84ec07e8cdd17b762da48e9ddb904c4f1260b3f5570f7fcd5bc3d973` |
| 27 | `theorem` | [MemBaseSet.unionComplToSubordinate](../../../../../mathematics/Topology/GeneralTopology/Filter/Variante4810136c9614adcce28401cf66741dbc94adbbddbb85247e1db2ccfc176a76a.lean/declarations/membaseset-unioncompltosubordinate--196cb8f673614de7fef9f05f.md) | 356 | `result-track:196cb8f673614de7fef9f05fd1470a18a28cac77071ea413b006eccd03bb680c` |
| 28 | `theorem` | [MemBaseSet.filter](../../../../../mathematics/Topology/GeneralTopology/Filter/Variante4810136c9614adcce28401cf66741dbc94adbbddbb85247e1db2ccfc176a76a.lean/declarations/membaseset-filter--666132ef88c52fac3707268c.md) | 367 | `result-track:666132ef88c52fac3707268c1af490ec8f45eafd21540ebd32dab9a0fa7a0633` |
| 29 | `theorem` | [biUnionTagged_memBaseSet](../../../../../mathematics/Topology/GeneralTopology/Filter/Variante4810136c9614adcce28401cf66741dbc94adbbddbb85247e1db2ccfc176a76a.lean/declarations/biuniontagged-membaseset--0a463236eb46c982481ab22a.md) | 391 | `result-track:0a463236eb46c982481ab22ad2cd5d9344f228d5e9c083cc345e392f1e6c6cb1` |
| 30 | `theorem` | [RCond.mono](../../../../../mathematics/Topology/GeneralTopology/Filter/Variante4810136c9614adcce28401cf66741dbc94adbbddbb85247e1db2ccfc176a76a.lean/declarations/rcond-mono--9f84fad36061d09e90c43144.md) | 404 | `result-track:9f84fad36061d09e90c431447d45598067a9407dc73d1cd1ead145848e7a7aac` |
| 31 | `theorem` | [RCond.min](../../../../../mathematics/Topology/GeneralTopology/Filter/Variante4810136c9614adcce28401cf66741dbc94adbbddbb85247e1db2ccfc176a76a.lean/declarations/rcond-min--718fabdf56e2f572bafb79a3.md) | 408 | `result-track:718fabdf56e2f572bafb79a33937a4477efef38a8280cbd983a89fded36a6dca` |
| 32 | `theorem` | [toFilterDistortion_mono](../../../../../mathematics/Topology/GeneralTopology/Filter/Variante4810136c9614adcce28401cf66741dbc94adbbddbb85247e1db2ccfc176a76a.lean/declarations/tofilterdistortion-mono--513a5e8da2e1fa70efdfb795.md) | 413 | `result-track:513a5e8da2e1fa70efdfb795b56fa899857e44e01d79763e9f489ac565595543` |
| 33 | `theorem` | [toFilter_mono](../../../../../mathematics/Topology/GeneralTopology/Filter/Variante4810136c9614adcce28401cf66741dbc94adbbddbb85247e1db2ccfc176a76a.lean/declarations/tofilter-mono--65c3efd84766b697cf3a836e.md) | 420 | `result-track:65c3efd84766b697cf3a836e3dfc9bdc985f30de5e2386b7320d474614b37f38` |
| 34 | `theorem` | [toFilteriUnion_mono](../../../../../mathematics/Topology/GeneralTopology/Filter/Variante4810136c9614adcce28401cf66741dbc94adbbddbb85247e1db2ccfc176a76a.lean/declarations/tofilteriunion-mono--edb81e30b14d7193824d10a3.md) | 425 | `result-track:edb81e30b14d7193824d10a35104aca8715ba83b81f365f73392b104301cc4d9` |
| 35 | `theorem` | [toFilteriUnion_congr](../../../../../mathematics/Topology/GeneralTopology/Filter/Variante4810136c9614adcce28401cf66741dbc94adbbddbb85247e1db2ccfc176a76a.lean/declarations/tofilteriunion-congr--ff1ce32a378f3152cd243909.md) | 429 | `result-track:ff1ce32a378f3152cd2439093b313661692a74c9fd38a70f8a6daa2a459c070b` |
| 36 | `theorem` | [hasBasis_toFilterDistortion](../../../../../mathematics/Topology/GeneralTopology/Filter/Variante4810136c9614adcce28401cf66741dbc94adbbddbb85247e1db2ccfc176a76a.lean/declarations/hasbasis-tofilterdistortion--fe9013132c14d974cd224202.md) | 433 | `result-track:fe9013132c14d974cd2242029d04cb61e942e9c4f13d82de493cc3a6974a29c4` |
| 37 | `theorem` | [hasBasis_toFilterDistortioniUnion](../../../../../mathematics/Topology/GeneralTopology/Filter/Variante4810136c9614adcce28401cf66741dbc94adbbddbb85247e1db2ccfc176a76a.lean/declarations/hasbasis-tofilterdistortioniunion--7a50a8f6968be518f8b6dbf4.md) | 441 | `result-track:7a50a8f6968be518f8b6dbf4834bea305772c313b0ed473530774ccaa591ef0e` |
| 38 | `theorem` | [hasBasis_toFilteriUnion](../../../../../mathematics/Topology/GeneralTopology/Filter/Variante4810136c9614adcce28401cf66741dbc94adbbddbb85247e1db2ccfc176a76a.lean/declarations/hasbasis-tofilteriunion--d27c877a900e483142b4a89c.md) | 447 | `result-track:d27c877a900e483142b4a89cc19961119e90c264cb222ebf1054a7b55625a52c` |
| 39 | `theorem` | [hasBasis_toFilteriUnion_top](../../../../../mathematics/Topology/GeneralTopology/Filter/Variante4810136c9614adcce28401cf66741dbc94adbbddbb85247e1db2ccfc176a76a.lean/declarations/hasbasis-tofilteriunion-top--73f8d386a7904f943c7a1719.md) | 453 | `result-track:73f8d386a7904f943c7a1719932412c64caa5a42dc9ce6e8b98b80e4c3ef3f10` |
| 40 | `theorem` | [hasBasis_toFilter](../../../../../mathematics/Topology/GeneralTopology/Filter/Variante4810136c9614adcce28401cf66741dbc94adbbddbb85247e1db2ccfc176a76a.lean/declarations/hasbasis-tofilter--46a1c196d46a871d9ffdaee1.md) | 459 | `result-track:46a1c196d46a871d9ffdaee14c374f8c4d1041445c546fffcbeb78adf6f41de5` |
| 41 | `theorem` | [tendsto_embedBox_toFilteriUnion_top](../../../../../mathematics/Topology/GeneralTopology/Filter/Variante4810136c9614adcce28401cf66741dbc94adbbddbb85247e1db2ccfc176a76a.lean/declarations/tendsto-embedbox-tofilteriunion-top--8cc75771b6df255a724f6c6f.md) | 464 | `result-track:8cc75771b6df255a724f6c6ffe0678e0e513d7cc016045f481277337ce05253f` |
| 42 | `theorem` | [exists_memBaseSet_le_iUnion_eq](../../../../../mathematics/Topology/GeneralTopology/Filter/Variante4810136c9614adcce28401cf66741dbc94adbbddbb85247e1db2ccfc176a76a.lean/declarations/exists-membaseset-le-iunion-eq--b478c25cbcbece3ed7086659.md) | 480 | `result-track:b478c25cbcbece3ed708665994727634b4a6f49f09155af04bfc41b6f1d780d4` |
| 43 | `theorem` | [exists_memBaseSet_isPartition](../../../../../mathematics/Topology/GeneralTopology/Filter/Variante4810136c9614adcce28401cf66741dbc94adbbddbb85247e1db2ccfc176a76a.lean/declarations/exists-membaseset-ispartition--3748e9cf6dc19f93db67cee1.md) | 487 | `result-track:3748e9cf6dc19f93db67cee11e6c3f0cb0aef049df7e8e57e7c9586f95219c73` |
| 44 | `theorem` | [toFilterDistortioniUnion_neBot](../../../../../mathematics/Topology/GeneralTopology/Filter/Variante4810136c9614adcce28401cf66741dbc94adbbddbb85247e1db2ccfc176a76a.lean/declarations/tofilterdistortioniunion-nebot--4b661a806da6d85166a7433d.md) | 493 | `result-track:4b661a806da6d85166a7433dfea527da6b83f65e199cd2dbcfb05ee9350c3ca5` |
| 45 | `instance` | [toFilterDistortioniUnion_neBot'](../../../../../mathematics/Topology/GeneralTopology/Filter/Variante4810136c9614adcce28401cf66741dbc94adbbddbb85247e1db2ccfc176a76a.lean/declarations/tofilterdistortioniunion-nebot--ba17eb25dce8cfdce163ca66.md) | 499 | `declaration-track:ba17eb25dce8cfdce163ca66f96eee4f70dc6a6642533306fc5f2199b130e685` |
| 46 | `instance` | [toFilterDistortion_neBot](../../../../../mathematics/Topology/GeneralTopology/Filter/Variante4810136c9614adcce28401cf66741dbc94adbbddbb85247e1db2ccfc176a76a.lean/declarations/tofilterdistortion-nebot--c27e78932b7ac823ea851fae.md) | 503 | `declaration-track:c27e78932b7ac823ea851fae357dcb4e361b7781ae8ad8a40490896cf2fa0fd1` |
| 47 | `instance` | [toFilter_neBot](../../../../../mathematics/Topology/GeneralTopology/Filter/Variante4810136c9614adcce28401cf66741dbc94adbbddbb85247e1db2ccfc176a76a.lean/declarations/tofilter-nebot--1f79b02015545e8f03a41196.md) | 507 | `declaration-track:1f79b02015545e8f03a411968ce96f8d8347160fb0c39ec00b86008135aa59dc` |
| 48 | `instance` | [toFilteriUnion_neBot](../../../../../mathematics/Topology/GeneralTopology/Filter/Variante4810136c9614adcce28401cf66741dbc94adbbddbb85247e1db2ccfc176a76a.lean/declarations/tofilteriunion-nebot--ce1cab0ec3836ed0ec8c86ea.md) | 510 | `declaration-track:ce1cab0ec3836ed0ec8c86ea0e86e9ae58291ac43223677569ad11c6b9b856f9` |
| 49 | `theorem` | [eventually_isPartition](../../../../../mathematics/Topology/GeneralTopology/Filter/Variante4810136c9614adcce28401cf66741dbc94adbbddbb85247e1db2ccfc176a76a.lean/declarations/eventually-ispartition--e9b8539395d03c5cb0aff341.md) | 515 | `result-track:e9b8539395d03c5cb0aff3417b3f29ff551b963c2a3dabd9999d96057eeed258` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
