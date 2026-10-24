# Verification target: GRWTSK.Topology.GeneralTopology.Filter.Variantbc1927559a9d3508a4e883738a096d6b2a314bef03f3b01aa1d4e9d4217c35d3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "689666b8c173fbbbd70c32e4394467dfb2e25007",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Filter/Variantbc1927559a9d3508a4e883738a096d6b2a314bef03f3b01aa1d4e9d4217c35d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantbc1927559a9d3508a4e883738a096d6b2a314bef03f3b01aa1d4e9d4217c35d3.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantbc1927559a9d3508a4e883738a096d6b2a314bef03f3b01aa1d4e9d4217c35d3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `689666b8c173fbbbd70c32e4394467dfb2e25007`.

Source path: `GRWTSK/Topology/GeneralTopology/Filter/Variantbc1927559a9d3508a4e883738a096d6b2a314bef03f3b01aa1d4e9d4217c35d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Filter/Variantbc1927559a9d3508a4e883738a096d6b2a314bef03f3b01aa1d4e9d4217c35d3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.BoxIntegral.Partition.SubboxInduction` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.BoxIntegral.Partition.Split` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IntegrationParams](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantbc1927559a9d3508a4e883738a096d6b2a314bef03f3b01aa1d4e9d4217c35d3.lean/declarations/integrationparams--60c9f0e979198c183e08cf8c.md) | 202 | `declaration-track:60c9f0e979198c183e08cf8cefde026c0d047a4c9df6ff974a85a7416d4b0f4d` |
| 2 | `def` | [equivProd](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantbc1927559a9d3508a4e883738a096d6b2a314bef03f3b01aa1d4e9d4217c35d3.lean/declarations/equivprod--370647a86f6fd7137c63afc2.md) | 210 | `declaration-track:370647a86f6fd7137c63afc2358bdeb29b79f105ba2c3f254ca64e7d57ac598f` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantbc1927559a9d3508a4e883738a096d6b2a314bef03f3b01aa1d4e9d4217c35d3.lean/declarations/instance--33d155a14d1410542865d253.md) | 216 | `declaration-track:33d155a14d1410542865d253846ec43ba279d174aa1592d1efd6bc1ef2bde6cf` |
| 4 | `def` | [isoProd](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantbc1927559a9d3508a4e883738a096d6b2a314bef03f3b01aa1d4e9d4217c35d3.lean/declarations/isoprod--316a67c60df22908fd4de416.md) | 220 | `declaration-track:316a67c60df22908fd4de416958da483ec980b323d495e0d5e20421ba1e6a036` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantbc1927559a9d3508a4e883738a096d6b2a314bef03f3b01aa1d4e9d4217c35d3.lean/declarations/instance--aa6736c3f7c56c9d3d8266b4.md) | 223 | `declaration-track:aa6736c3f7c56c9d3d8266b441d59e5dd30eff9fd953650134cf8e504c382ec0` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantbc1927559a9d3508a4e883738a096d6b2a314bef03f3b01aa1d4e9d4217c35d3.lean/declarations/instance--528b02dda7d7786229f2ef1f.md) | 230 | `declaration-track:528b02dda7d7786229f2ef1fa637e5e73160d41a39854873ed139cdceaa64854` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantbc1927559a9d3508a4e883738a096d6b2a314bef03f3b01aa1d4e9d4217c35d3.lean/declarations/instance--ba1c9a974b873432d2dc8565.md) | 233 | `declaration-track:ba1c9a974b873432d2dc8565d2cc9e40bf6330b43740f11153b4d7c89a0a7ec1` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantbc1927559a9d3508a4e883738a096d6b2a314bef03f3b01aa1d4e9d4217c35d3.lean/declarations/instance--e7f41265045bd724c25517ba.md) | 236 | `declaration-track:e7f41265045bd724c25517ba245e29e8a35b9f6924a75c54c49680512d018398` |
| 9 | `def` | [Riemann](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantbc1927559a9d3508a4e883738a096d6b2a314bef03f3b01aa1d4e9d4217c35d3.lean/declarations/riemann--7a187e25da310ebd7a2dca23.md) | 243 | `declaration-track:7a187e25da310ebd7a2dca23babbe1254931a49fc2889240f9a030e363af5079` |
| 10 | `def` | [Henstock](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantbc1927559a9d3508a4e883738a096d6b2a314bef03f3b01aa1d4e9d4217c35d3.lean/declarations/henstock--9508671584166231258d6434.md) | 251 | `declaration-track:9508671584166231258d643445fcb7a6a2c164e7dad31adf889e18ab708f9294` |
| 11 | `def` | [McShane](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantbc1927559a9d3508a4e883738a096d6b2a314bef03f3b01aa1d4e9d4217c35d3.lean/declarations/mcshane--09771c6277e3785be63eb91c.md) | 258 | `declaration-track:09771c6277e3785be63eb91ca1b074dc24c003658e37ac86fbf146b5a623776d` |
| 12 | `def` | [GP](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantbc1927559a9d3508a4e883738a096d6b2a314bef03f3b01aa1d4e9d4217c35d3.lean/declarations/gp--167f15c0cd0e9d838baa4231.md) | 265 | `declaration-track:167f15c0cd0e9d838baa4231348199e4286a133a061e2afb70d21af244f0e0f4` |
| 13 | `theorem` | [henstock_le_riemann](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantbc1927559a9d3508a4e883738a096d6b2a314bef03f3b01aa1d4e9d4217c35d3.lean/declarations/henstock-le-riemann--2dbb2c6e1db0182da8eebde5.md) | 267 | `result-track:2dbb2c6e1db0182da8eebde589ad815ddc94e397a351159a3ddbbc134f1d67b3` |
| 14 | `theorem` | [henstock_le_mcShane](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantbc1927559a9d3508a4e883738a096d6b2a314bef03f3b01aa1d4e9d4217c35d3.lean/declarations/henstock-le-mcshane--a0a5e5821d300fc5f6666cea.md) | 269 | `result-track:a0a5e5821d300fc5f6666cea70f64aad9f2e6f33d730d990ba3e6453b07aeffb` |
| 15 | `theorem` | [gp_le](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantbc1927559a9d3508a4e883738a096d6b2a314bef03f3b01aa1d4e9d4217c35d3.lean/declarations/gp-le--3dd424a1cbdb78d46d0012b5.md) | 271 | `result-track:3dd424a1cbdb78d46d0012b5333d34f6e6db02dfb2cc013800209bb383fe021e` |
| 16 | `structure` | [MemBaseSet](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantbc1927559a9d3508a4e883738a096d6b2a314bef03f3b01aa1d4e9d4217c35d3.lean/declarations/membaseset--53ebf2b5153e3f9da7528f89.md) | 289 | `declaration-track:53ebf2b5153e3f9da7528f89fc5d6b973184495a21ede4152c617999d0e6f071` |
| 17 | `def` | [RCond](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantbc1927559a9d3508a4e883738a096d6b2a314bef03f3b01aa1d4e9d4217c35d3.lean/declarations/rcond--9d23d37ec6e8fc337c4e0a6a.md) | 298 | `declaration-track:9d23d37ec6e8fc337c4e0a6a64d75f7b01722c298be11349157155cc53c3b4c2` |
| 18 | `def` | [toFilterDistortion](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantbc1927559a9d3508a4e883738a096d6b2a314bef03f3b01aa1d4e9d4217c35d3.lean/declarations/tofilterdistortion--4076001942a84a9126831062.md) | 304 | `declaration-track:4076001942a84a91268310621aa709af694be4e96fa5c15584a7b2d865e55658` |
| 19 | `def` | [toFilter](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantbc1927559a9d3508a4e883738a096d6b2a314bef03f3b01aa1d4e9d4217c35d3.lean/declarations/tofilter--88bda023a5997ff0cf76212b.md) | 311 | `declaration-track:88bda023a5997ff0cf76212bf82f134372f142ae85d6ee4806c0ffee7d019f13` |
| 20 | `def` | [toFilterDistortioniUnion](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantbc1927559a9d3508a4e883738a096d6b2a314bef03f3b01aa1d4e9d4217c35d3.lean/declarations/tofilterdistortioniunion--6619d1b46a01691b827594b1.md) | 317 | `declaration-track:6619d1b46a01691b827594b143b9a2acf8d5adfbbe5ddf26104e0542f52834d0` |
| 21 | `def` | [toFilteriUnion](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantbc1927559a9d3508a4e883738a096d6b2a314bef03f3b01aa1d4e9d4217c35d3.lean/declarations/tofilteriunion--bdcd256ece4fded11e5c6c33.md) | 323 | `declaration-track:bdcd256ece4fded11e5c6c33b104906a31e311d66df90a348e8a43d9ffc320e0` |
| 22 | `theorem` | [rCond_of_bRiemann_eq_false](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantbc1927559a9d3508a4e883738a096d6b2a314bef03f3b01aa1d4e9d4217c35d3.lean/declarations/rcond-of-briemann-eq-false--cfbbf092e6df8d39c7ea7cb9.md) | 326 | `result-track:cfbbf092e6df8d39c7ea7cb99e11f2f01694ab0f687faa6be57d25dcfe2bcea2` |
| 23 | `theorem` | [toFilter_inf_iUnion_eq](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantbc1927559a9d3508a4e883738a096d6b2a314bef03f3b01aa1d4e9d4217c35d3.lean/declarations/tofilter-inf-iunion-eq--7ff8b6c34917a11094e38ca0.md) | 330 | `result-track:7ff8b6c34917a11094e38ca0c2dd55a8ee71447a013a8725f701b952b85eeb83` |
| 24 | `theorem` | [MemBaseSet.mono'](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantbc1927559a9d3508a4e883738a096d6b2a314bef03f3b01aa1d4e9d4217c35d3.lean/declarations/membaseset-mono--ae9e57577e2ad5470217ad2a.md) | 337 | `result-track:ae9e57577e2ad5470217ad2a072327cdd82eb8d78bbd90a3556ef56a81e9b81c` |
| 25 | `theorem` | [MemBaseSet.mono](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantbc1927559a9d3508a4e883738a096d6b2a314bef03f3b01aa1d4e9d4217c35d3.lean/declarations/membaseset-mono--20438052e9b50f2b42e70f93.md) | 346 | `result-track:20438052e9b50f2b42e70f93d413a244e34d8db7e378a2180e06096f673fb0bd` |
| 26 | `theorem` | [MemBaseSet.exists_common_compl](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantbc1927559a9d3508a4e883738a096d6b2a314bef03f3b01aa1d4e9d4217c35d3.lean/declarations/membaseset-exists-common-compl--c4c780e320960143899f9f52.md) | 350 | `result-track:c4c780e320960143899f9f52dc57ad4cbcd87596efb77b44cefbe7a55d0b7e46` |
| 27 | `theorem` | [MemBaseSet.unionComplToSubordinate](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantbc1927559a9d3508a4e883738a096d6b2a314bef03f3b01aa1d4e9d4217c35d3.lean/declarations/membaseset-unioncompltosubordinate--32e93cb24b2b1f99131c8f15.md) | 364 | `result-track:32e93cb24b2b1f99131c8f15720911ff091d0035b474965d4c5ac3f6d6692ce4` |
| 28 | `theorem` | [MemBaseSet.filter](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantbc1927559a9d3508a4e883738a096d6b2a314bef03f3b01aa1d4e9d4217c35d3.lean/declarations/membaseset-filter--6bd6149d8077dccd0e1b3bc5.md) | 375 | `result-track:6bd6149d8077dccd0e1b3bc53ed9ae40151810e86ed1c03b0fa16a651b278f4d` |
| 29 | `theorem` | [biUnionTagged_memBaseSet](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantbc1927559a9d3508a4e883738a096d6b2a314bef03f3b01aa1d4e9d4217c35d3.lean/declarations/biuniontagged-membaseset--9bd587c2df1e21b42237e613.md) | 399 | `result-track:9bd587c2df1e21b42237e61375b7af711c46973fb90c171ff6f026419fbc3d9b` |
| 30 | `theorem` | [RCond.mono](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantbc1927559a9d3508a4e883738a096d6b2a314bef03f3b01aa1d4e9d4217c35d3.lean/declarations/rcond-mono--0423b68e617e379389b0d3ab.md) | 412 | `result-track:0423b68e617e379389b0d3ab2634184988a7a03f624b01e674889ee2c11e271a` |
| 31 | `theorem` | [RCond.min](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantbc1927559a9d3508a4e883738a096d6b2a314bef03f3b01aa1d4e9d4217c35d3.lean/declarations/rcond-min--7bf3c4fa54b806546a280951.md) | 416 | `result-track:7bf3c4fa54b806546a280951d42e96ca5e48b05b90a7c96cc61ee762f5fd5757` |
| 32 | `theorem` | [toFilterDistortion_mono](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantbc1927559a9d3508a4e883738a096d6b2a314bef03f3b01aa1d4e9d4217c35d3.lean/declarations/tofilterdistortion-mono--ed5923eb4b1ab4b40aa855b3.md) | 421 | `result-track:ed5923eb4b1ab4b40aa855b3f9588f59c549daa19012e19f51d9ecd2e5591757` |
| 33 | `theorem` | [toFilter_mono](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantbc1927559a9d3508a4e883738a096d6b2a314bef03f3b01aa1d4e9d4217c35d3.lean/declarations/tofilter-mono--e8fa7f63c4057a5d54166588.md) | 428 | `result-track:e8fa7f63c4057a5d5416658845cfe4ed73743bf1b4630ac8de7160253d3bba14` |
| 34 | `theorem` | [toFilteriUnion_mono](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantbc1927559a9d3508a4e883738a096d6b2a314bef03f3b01aa1d4e9d4217c35d3.lean/declarations/tofilteriunion-mono--5c260c0577749288954145e7.md) | 433 | `result-track:5c260c0577749288954145e7395c8e49dba907ebd889fcbc149c9cec0d4586a4` |
| 35 | `theorem` | [toFilteriUnion_congr](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantbc1927559a9d3508a4e883738a096d6b2a314bef03f3b01aa1d4e9d4217c35d3.lean/declarations/tofilteriunion-congr--e29c44288047bee69fdb4d86.md) | 437 | `result-track:e29c44288047bee69fdb4d86dc615520071f318c3fee0711bdef47a336c93527` |
| 36 | `theorem` | [hasBasis_toFilterDistortion](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantbc1927559a9d3508a4e883738a096d6b2a314bef03f3b01aa1d4e9d4217c35d3.lean/declarations/hasbasis-tofilterdistortion--8b992405eee362cbb1a8d195.md) | 441 | `result-track:8b992405eee362cbb1a8d1958b7ab13392121332b25234ab43bfe221f84fc846` |
| 37 | `theorem` | [hasBasis_toFilterDistortioniUnion](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantbc1927559a9d3508a4e883738a096d6b2a314bef03f3b01aa1d4e9d4217c35d3.lean/declarations/hasbasis-tofilterdistortioniunion--03096a17586fc25d045ec469.md) | 449 | `result-track:03096a17586fc25d045ec469f78874c3f17feba451c953de229cbc8419f61498` |
| 38 | `theorem` | [hasBasis_toFilteriUnion](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantbc1927559a9d3508a4e883738a096d6b2a314bef03f3b01aa1d4e9d4217c35d3.lean/declarations/hasbasis-tofilteriunion--dc9ad2e7a6f727f130d1e16d.md) | 455 | `result-track:dc9ad2e7a6f727f130d1e16d5c5a20143a53f9a4bc9c6f5aae7b002d5cfa8647` |
| 39 | `theorem` | [hasBasis_toFilteriUnion_top](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantbc1927559a9d3508a4e883738a096d6b2a314bef03f3b01aa1d4e9d4217c35d3.lean/declarations/hasbasis-tofilteriunion-top--8ea9190c861d38f89f7ebd35.md) | 461 | `result-track:8ea9190c861d38f89f7ebd3529f26fe3891fe4ab60684100cba88fa8727796d8` |
| 40 | `theorem` | [hasBasis_toFilter](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantbc1927559a9d3508a4e883738a096d6b2a314bef03f3b01aa1d4e9d4217c35d3.lean/declarations/hasbasis-tofilter--a2f4c233e584ed430c90caa0.md) | 467 | `result-track:a2f4c233e584ed430c90caa0624dd56322e63478e4f383d66645b4013560cab4` |
| 41 | `theorem` | [tendsto_embedBox_toFilteriUnion_top](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantbc1927559a9d3508a4e883738a096d6b2a314bef03f3b01aa1d4e9d4217c35d3.lean/declarations/tendsto-embedbox-tofilteriunion-top--3bcd5f860b4fe88555f6261a.md) | 472 | `result-track:3bcd5f860b4fe88555f6261a2671c9e01d99c32f93726dfb93343db2fb9691c1` |
| 42 | `theorem` | [exists_memBaseSet_le_iUnion_eq](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantbc1927559a9d3508a4e883738a096d6b2a314bef03f3b01aa1d4e9d4217c35d3.lean/declarations/exists-membaseset-le-iunion-eq--18260b0f0d2dcbe44e11c5af.md) | 488 | `result-track:18260b0f0d2dcbe44e11c5aff13c0d904c69e883ebd02d8078e3d2732e9d70e7` |
| 43 | `theorem` | [exists_memBaseSet_isPartition](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantbc1927559a9d3508a4e883738a096d6b2a314bef03f3b01aa1d4e9d4217c35d3.lean/declarations/exists-membaseset-ispartition--ffd1f8352ca07f784af6a433.md) | 495 | `result-track:ffd1f8352ca07f784af6a4335abc89b3f55b38431b11c167a745bb23cae6792c` |
| 44 | `theorem` | [toFilterDistortioniUnion_neBot](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantbc1927559a9d3508a4e883738a096d6b2a314bef03f3b01aa1d4e9d4217c35d3.lean/declarations/tofilterdistortioniunion-nebot--d05f12ff20c0473b2e334ad2.md) | 501 | `result-track:d05f12ff20c0473b2e334ad2601e23289c9c59b9a341c7d047fa0ed227596c5c` |
| 45 | `instance` | [toFilterDistortioniUnion_neBot'](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantbc1927559a9d3508a4e883738a096d6b2a314bef03f3b01aa1d4e9d4217c35d3.lean/declarations/tofilterdistortioniunion-nebot--78bc83cad5293ddc75e7bf85.md) | 507 | `declaration-track:78bc83cad5293ddc75e7bf85df17f433a486bb16bc1e1ccd1bebdcfd9702e404` |
| 46 | `instance` | [toFilterDistortion_neBot](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantbc1927559a9d3508a4e883738a096d6b2a314bef03f3b01aa1d4e9d4217c35d3.lean/declarations/tofilterdistortion-nebot--b2b78c024091d80d9375729e.md) | 511 | `declaration-track:b2b78c024091d80d9375729e8bece73c66583f8db994225e6527069cd1babcdd` |
| 47 | `instance` | [toFilter_neBot](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantbc1927559a9d3508a4e883738a096d6b2a314bef03f3b01aa1d4e9d4217c35d3.lean/declarations/tofilter-nebot--3abf7e033f3400376369044e.md) | 515 | `declaration-track:3abf7e033f3400376369044e6dd46d674016f14df239b43221f4b25cfeb8699d` |
| 48 | `instance` | [toFilteriUnion_neBot](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantbc1927559a9d3508a4e883738a096d6b2a314bef03f3b01aa1d4e9d4217c35d3.lean/declarations/tofilteriunion-nebot--472c547013c3e6fa70ee8306.md) | 518 | `declaration-track:472c547013c3e6fa70ee83068d55b2faa355f67dbdc1c1a41b88d2b49ff4bd9e` |
| 49 | `theorem` | [eventually_isPartition](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantbc1927559a9d3508a4e883738a096d6b2a314bef03f3b01aa1d4e9d4217c35d3.lean/declarations/eventually-ispartition--545f5b970b0e118422fcd781.md) | 523 | `result-track:545f5b970b0e118422fcd781f8ed14b979cba58803550b1acbad49e52eed82ce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
