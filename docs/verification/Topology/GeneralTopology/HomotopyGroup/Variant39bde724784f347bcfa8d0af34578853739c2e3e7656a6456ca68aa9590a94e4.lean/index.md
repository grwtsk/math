# Verification target: GRWTSK.Topology.GeneralTopology.HomotopyGroup.Variant39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f8e6500b836927d0425c1820f907956a8cf2aff",
  "lexical_observation_count": 64,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/HomotopyGroup/Variant39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variant39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variant39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f8e6500b836927d0425c1820f907956a8cf2aff`.

Source path: `GRWTSK/Topology/GeneralTopology/HomotopyGroup/Variant39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/HomotopyGroup/Variant39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.FundamentalGroupoid.FundamentalGroup` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.EckmannHilton` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Equiv.TransferInstance` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Ext` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [boundary](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variant39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4.lean/declarations/boundary--4279006a8fc3d0f296b5a4fd.md) | 56 | `declaration-track:4279006a8fc3d0f296b5a4fd78bb4f29b2376091b1249dc231312880c9388acd` |
| 2 | `abbrev` | [splitAt](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variant39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4.lean/declarations/splitat--018d893accb1663e5372310d.md) | 63 | `declaration-track:018d893accb1663e5372310db399f422d56241924c2cd10e1e872eb6315a1001` |
| 3 | `abbrev` | [insertAt](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variant39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4.lean/declarations/insertat--284da965eda6e60477f4940d.md) | 68 | `declaration-track:284da965eda6e60477f4940d9ae8c6235062b2aa3fdd0be63fda4d78a5d581e3` |
| 4 | `theorem` | [insertAt_boundary](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variant39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4.lean/declarations/insertat-boundary--8373b5f4bb38f0901887c514.md) | 71 | `result-track:8373b5f4bb38f0901887c514159dc58bcd9453e53f243daae3fe9a336629e9ab` |
| 5 | `abbrev` | [LoopSpace](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variant39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4.lean/declarations/loopspace--71d08376a9205aaeb41462f1.md) | 83 | `declaration-track:71d08376a9205aaeb41462f181c96e8824fd383a956e090ea766cbd0780eb74e` |
| 6 | `instance` | [LoopSpace.inhabited](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variant39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4.lean/declarations/loopspace-inhabited--7a4d6996c859432eeff1bede.md) | 88 | `declaration-track:7a4d6996c859432eeff1bede0e625d49176f3e840929e4e0e49345ecbc448c67` |
| 7 | `def` | [GenLoop](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variant39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4.lean/declarations/genloop--066b4d6fd5a0962f63549888.md) | 94 | `declaration-track:066b4d6fd5a0962f63549888dd3752a61fc693c79062fb80e05472ca25e9ff90` |
| 8 | `instance` | [instFunLike](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variant39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4.lean/declarations/instfunlike--10040200d1dc15f73cf4c647.md) | 105 | `declaration-track:10040200d1dc15f73cf4c6479acb16d0e1d2690e474c29ab15eeb7862bcb2ebf` |
| 9 | `theorem` | [ext](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variant39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4.lean/declarations/ext--2a66aef6e23ce62150c6afa2.md) | 110 | `result-track:2a66aef6e23ce62150c6afa224104a6eb1b9940f1a3e23a7b902c605b8ef422d` |
| 10 | `theorem` | [mk_apply](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variant39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4.lean/declarations/mk-apply--74416d1c501a67f74c00cb78.md) | 114 | `result-track:74416d1c501a67f74c00cb7823c2342265bac5d2ad80db3dc8600f5213786852` |
| 11 | `instance` | [instContinuousEval](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variant39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4.lean/declarations/instcontinuouseval--8eba3b62bbe63fb850afcaa2.md) | 117 | `declaration-track:8eba3b62bbe63fb850afcaa29b8884dd9e00cd2b8096706d79f7202a0f3ed3cf` |
| 12 | `instance` | [instContinuousEvalConst](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variant39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4.lean/declarations/instcontinuousevalconst--5b1333a8f83173fb48866d16.md) | 120 | `declaration-track:5b1333a8f83173fb48866d16abff3a68e654febc482fca1e268547d71c1d1638` |
| 13 | `def` | [copy](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variant39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4.lean/declarations/copy--2fd058a428096cd013662e72.md) | 124 | `declaration-track:2fd058a428096cd013662e7220ef3dd40a0eebab7067da7f0f80ea5bc13f2ff8` |
| 14 | `theorem` | [coe_copy](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variant39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4.lean/declarations/coe-copy--df70a53154a6818caf80ee42.md) | 129 | `result-track:df70a53154a6818caf80ee42e5c47137272a28765c71d9a7caf1a8bf7ac92749` |
| 15 | `theorem` | [copy_eq](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variant39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4.lean/declarations/copy-eq--c463f7357127486f4c5f8b88.md) | 132 | `result-track:c463f7357127486f4c5f8b88bfa0298a28a1fbfd6abfc4be65c9f2658d14577f` |
| 16 | `theorem` | [boundary](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variant39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4.lean/declarations/boundary--5bf8e4096e19f5ed25008302.md) | 136 | `result-track:5bf8e4096e19f5ed25008302d96029d626898fecad9509a08e1e4ba0c0dec9d6` |
| 17 | `def` | [const](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variant39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4.lean/declarations/const--fca5010b28c7427435736aca.md) | 140 | `declaration-track:fca5010b28c7427435736aca1d96284aa2d3f28e24f535d996a18914ca8164c1` |
| 18 | `theorem` | [const_apply](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variant39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4.lean/declarations/const-apply--5eeb429efd4181c423affd8c.md) | 144 | `result-track:5eeb429efd4181c423affd8c3ecd73c703334a67562f6821ef246be3588ab9cf` |
| 19 | `instance` | [inhabited](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variant39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4.lean/declarations/inhabited--feb0f502fcfdec219bdb6e0b.md) | 147 | `declaration-track:feb0f502fcfdec219bdb6e0b560a87aeac2297d3d51df730be0e77113edd4f56` |
| 20 | `def` | [Homotopic](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variant39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4.lean/declarations/homotopic--15d22650435d5ba92adbb614.md) | 151 | `declaration-track:15d22650435d5ba92adbb614b01b4895b3e0b5944b6e4ea554b33e14dea365a0` |
| 21 | `theorem` | [refl](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variant39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4.lean/declarations/refl--bfef45f3ab18902518693f8a.md) | 159 | `result-track:bfef45f3ab18902518693f8a9256092d9e14baa38b427be178b69d21da051443` |
| 22 | `theorem` | [symm](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variant39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4.lean/declarations/symm--bda6b39d01efa7bdfcc04ade.md) | 163 | `result-track:bda6b39d01efa7bdfcc04adee585c0c469e8fa2c690edfcd1581acb8ba3da16e` |
| 23 | `theorem` | [trans](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variant39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4.lean/declarations/trans--a6cb61cb59545e499b24daaa.md) | 167 | `result-track:a6cb61cb59545e499b24daaaf3b54e83aea448afa4574597036ef0bb53424d42` |
| 24 | `theorem` | [equiv](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variant39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4.lean/declarations/equiv--e07338dc0122f3907580619b.md) | 170 | `result-track:e07338dc0122f3907580619b8b10b4274b941d7633689dd009130406727e3cea` |
| 25 | `instance` | [setoid](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variant39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4.lean/declarations/setoid--bd81367b6d1f6b9d82d2c2d7.md) | 173 | `declaration-track:bd81367b6d1f6b9d82d2c2d71e6678ea257b5bb45fedb07ee4d277b1a3c075d6` |
| 26 | `def` | [toLoop](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variant39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4.lean/declarations/toloop--22ea4608dde7d5e917af85db.md) | 184 | `declaration-track:22ea4608dde7d5e917af85dba09ec00cd89bb7dfbf33c2a168ba157440e71269` |
| 27 | `theorem` | [continuous_toLoop](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variant39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4.lean/declarations/continuous-toloop--bd08102b25d58958b34b60a6.md) | 192 | `result-track:bd08102b25d58958b34b60a629f037de804a485ec49283d22d5c0afc3b99647a` |
| 28 | `def` | [fromLoop](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variant39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4.lean/declarations/fromloop--e742f09808d58411d4c80ff3.md) | 204 | `declaration-track:e742f09808d58411d4c80ff338ddd135ff6dbf120d721164060605b05f995fa6` |
| 29 | `theorem` | [continuous_fromLoop](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variant39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4.lean/declarations/continuous-fromloop--6a70a41a9a231b5eb108466f.md) | 216 | `result-track:6a70a41a9a231b5eb108466f50e3ad79f50da9329a494689c0b749f9727dca3c` |
| 30 | `theorem` | [to_from](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variant39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4.lean/declarations/to-from--686e319d6d59adb794372663.md) | 222 | `result-track:686e319d6d59adb794372663a02c6ee9404c71d773dfd33eeb87d97b68625fee` |
| 31 | `def` | [loopHomeo](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variant39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4.lean/declarations/loophomeo--011ae3f948e87c54614e1b24.md) | 231 | `declaration-track:011ae3f948e87c54614e1b240929e95989137783f6842fec14636df8e4142f98` |
| 32 | `theorem` | [toLoop_apply](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variant39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4.lean/declarations/toloop-apply--4e5565dbbeb985996b97a100.md) | 239 | `result-track:4e5565dbbeb985996b97a1007ca9e30ac839313de638f80367d78e8c0b7e5642` |
| 33 | `theorem` | [fromLoop_apply](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variant39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4.lean/declarations/fromloop-apply--bc004f582dc1e429ff7c5b2a.md) | 243 | `result-track:bc004f582dc1e429ff7c5b2a86901648bebed2cfeeb65f2576a489646b3c137d` |
| 34 | `abbrev` | [cCompInsert](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variant39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4.lean/declarations/ccompinsert--e86ad3a0e7954a1bdec40cec.md) | 248 | `declaration-track:e86ad3a0e7954a1bdec40cece11debdfedf6c18e3a32bbca4b6fe5d8dd668fe6` |
| 35 | `def` | [homotopyTo](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variant39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4.lean/declarations/homotopyto--cad2445b7d541ad9ad992266.md) | 254 | `declaration-track:cad2445b7d541ad9ad992266516ee1489caf3364ee37a9c9d964f4dfde54fc19` |
| 36 | `theorem` | [homotopyTo_apply](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variant39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4.lean/declarations/homotopyto-apply--5d30549d87caf70195edba7e.md) | 260 | `result-track:5d30549d87caf70195edba7eb54bb915dd882d8b6489be2fd75dffe597409532` |
| 37 | `theorem` | [homotopicTo](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variant39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4.lean/declarations/homotopicto--6010baca4942d793a10a5969.md) | 265 | `result-track:6010baca4942d793a10a596942884fffe6f07426d33c1ede523f950f43f4c7fb` |
| 38 | `def` | [homotopyFrom](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variant39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4.lean/declarations/homotopyfrom--41475f3f0c25510ec54f5827.md) | 289 | `declaration-track:41475f3f0c25510ec54f5827b8fac400ed317806aa8f8fb406919b040114385a` |
| 39 | `theorem` | [homotopicFrom](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variant39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4.lean/declarations/homotopicfrom--38b3e675811b76edad98758c.md) | 295 | `result-track:38b3e675811b76edad98758c1d00d799396721c65de49eec464d2726e50d6ffd` |
| 40 | `def` | [transAt](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variant39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4.lean/declarations/transat--0b62fc84d84c501618554b60.md) | 319 | `declaration-track:0b62fc84d84c501618554b608b742c38249e2b783c7c7d999a165da1d60b689c` |
| 41 | `def` | [symmAt](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variant39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4.lean/declarations/symmat--a0b2cf3348c6fc85e8bcac65.md) | 334 | `declaration-track:a0b2cf3348c6fc85e8bcac656c95eb3f3de15fa70b68892f0c46b4228fa64061` |
| 42 | `theorem` | [transAt_distrib](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variant39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4.lean/declarations/transat-distrib--3b83c0a535185dfbd76b021a.md) | 338 | `result-track:3b83c0a535185dfbd76b021afb0078f2410632a302d8cdc3ddac81a9999d4208` |
| 43 | `theorem` | [fromLoop_trans_toLoop](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variant39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4.lean/declarations/fromloop-trans-toloop--c0cbb524ea4784239ff32b03.md) | 345 | `result-track:c0cbb524ea4784239ff32b034528c1aaae0db98061cf362413d4e0f83cd06f14` |
| 44 | `theorem` | [fromLoop_symm_toLoop](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variant39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4.lean/declarations/fromloop-symm-toloop--e15e159d8132c603254d48bf.md) | 349 | `result-track:e15e159d8132c603254d48bfaf1172c1e49a9accc1ee94939278f1cccae15e84` |
| 45 | `def` | [HomotopyGroup](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variant39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4.lean/declarations/homotopygroup--fc41523f89b55327de7052c3.md) | 358 | `declaration-track:fc41523f89b55327de7052c3531b9913157ebf5f85d9e9925049e315b6823301` |
| 46 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variant39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4.lean/declarations/instance--bedcb97e9f683431f5e4781a.md) | 361 | `declaration-track:bedcb97e9f683431f5e4781a561481bb7c6bf1ee87b70d05a638a5e68d7c7ef8` |
| 47 | `def` | [homotopyGroupEquivFundamentalGroup](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variant39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4.lean/declarations/homotopygroupequivfundamentalgroup--1efa13bec33187bd7af89759.md) | 370 | `declaration-track:1efa13bec33187bd7af89759e3c96e38a5ee3518674bd642a803c8f0359bcad0` |
| 48 | `abbrev` | [HomotopyGroup.Pi](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variant39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4.lean/declarations/homotopygroup-pi--2cee0ef000523ed0e522d212.md) | 377 | `declaration-track:2cee0ef000523ed0e522d2129e04f89d4b6925f3ce4914b6a11d3ccea73da275` |
| 49 | `def` | [genLoopHomeoOfIsEmpty](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variant39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4.lean/declarations/genloophomeoofisempty--141549721b34848fd8d19718.md) | 383 | `declaration-track:141549721b34848fd8d19718d70504d40a354ac8b37053d8f9cbf6d7c285f76c` |
| 50 | `def` | [homotopyGroupEquivZerothHomotopyOfIsEmpty](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variant39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4.lean/declarations/homotopygroupequivzerothhomotopyofisempty--489bc7b203f454022f01c496.md) | 392 | `declaration-track:489bc7b203f454022f01c496bec215d0e6e3adf2a08511869b89b10c4f249e01` |
| 51 | `def` | [HomotopyGroup.pi0EquivZerothHomotopy](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variant39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4.lean/declarations/homotopygroup-pi0equivzerothhomotopy--d2ffd4dffdd68c72fb1ef85f.md) | 409 | `declaration-track:d2ffd4dffdd68c72fb1ef85f955ee556083524e14ad7d15874325a185a7650f0` |
| 52 | `def` | [genLoopEquivOfUnique](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variant39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4.lean/declarations/genloopequivofunique--997387d12764c22430dd0f63.md) | 413 | `declaration-track:997387d12764c22430dd0f63cdf7dfa3509d019e5855cabf7134fa63822639f1` |
| 53 | `def` | [homotopyGroupEquivFundamentalGroupOfUnique](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variant39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4.lean/declarations/homotopygroupequivfundamentalgroupofunique--2c80ab5df95bdcc57769c4c6.md) | 432 | `declaration-track:2c80ab5df95bdcc57769c4c6ed83448b3e67baa7906e7ab9fc5aa5f2bae46b1b` |
| 54 | `def` | [HomotopyGroup.pi1EquivFundamentalGroup](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variant39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4.lean/declarations/homotopygroup-pi1equivfundamentalgroup--07f7f90c58745f3b60679d5d.md) | 452 | `declaration-track:07f7f90c58745f3b60679d5db7f88a053f18f554e18e5fc1a4a935498fd715c5` |
| 55 | `instance` | [group](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variant39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4.lean/declarations/group--389f159e1c517d86279548ca.md) | 458 | `declaration-track:389f159e1c517d86279548cacbe4ad3efaa7b094436ed205ca527f625e4752e1` |
| 56 | `abbrev` | [auxGroup](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variant39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4.lean/declarations/auxgroup--25343e3dc8ca75a00ad1a619.md) | 464 | `declaration-track:25343e3dc8ca75a00ad1a619aa14d7bd28b33928af7b2415b0ee13547a2c6d18` |
| 57 | `theorem` | [isUnital_auxGroup](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variant39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4.lean/declarations/isunital-auxgroup--b2e8adee016d7d8b9ed80678.md) | 467 | `result-track:b2e8adee016d7d8b9ed806787358c6be6fcd01599d2b32fda270be504753c89b` |
| 58 | `theorem` | [auxGroup_indep](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variant39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4.lean/declarations/auxgroup-indep--2e22e87fc11899cc97b77d82.md) | 472 | `result-track:2e22e87fc11899cc97b77d82f37a5a7429888ac33458d4ab8e780400f5b2a396` |
| 59 | `theorem` | [transAt_indep](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variant39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4.lean/declarations/transat-indep--fe6207b6643d13ed5e24065e.md) | 481 | `result-track:fe6207b6643d13ed5e24065e2cde0844eaea2ecae7013ca82495744c239c5acc` |
| 60 | `theorem` | [symmAt_indep](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variant39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4.lean/declarations/symmat-indep--5cace645d7d5b1bb8040c10d.md) | 487 | `result-track:5cace645d7d5b1bb8040c10de433ef08a76bf2d09fda3ba179ffeae1a022adb3` |
| 61 | `theorem` | [one_def](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variant39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4.lean/declarations/one-def--ae31fd805b692f96407ad001.md) | 494 | `result-track:ae31fd805b692f96407ad0012aa25f6e89e71e01279df25daa00ac4a58b9cfcd` |
| 62 | `theorem` | [mul_spec](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variant39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4.lean/declarations/mul-spec--43127d4cf170cd43d355e391.md) | 498 | `result-track:43127d4cf170cd43d355e39119fa3ecbfb90a82d0e68cd4a524fbd345a2934a5` |
| 63 | `theorem` | [inv_spec](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variant39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4.lean/declarations/inv-spec--f25397debc2595208dded22d.md) | 506 | `result-track:f25397debc2595208dded22d54920fb08048378f67508e2f49902d213583ac4f` |
| 64 | `instance` | [commGroup](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variant39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4.lean/declarations/commgroup--a852c38365ce85cb3c1769c0.md) | 514 | `declaration-track:a852c38365ce85cb3c1769c027cef8bc4acfc38139b66eb520dfb09e06dfaf8c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
