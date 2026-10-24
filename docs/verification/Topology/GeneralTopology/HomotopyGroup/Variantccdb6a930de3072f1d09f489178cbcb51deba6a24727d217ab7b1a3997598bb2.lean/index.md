# Verification target: GRWTSK.Topology.GeneralTopology.HomotopyGroup.Variantccdb6a930de3072f1d09f489178cbcb51deba6a24727d217ab7b1a3997598bb2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a2f2e2c3b2c762ad7585c233f861ce5b50cb56e3",
  "lexical_observation_count": 64,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/HomotopyGroup/Variantccdb6a930de3072f1d09f489178cbcb51deba6a24727d217ab7b1a3997598bb2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variantccdb6a930de3072f1d09f489178cbcb51deba6a24727d217ab7b1a3997598bb2.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variantccdb6a930de3072f1d09f489178cbcb51deba6a24727d217ab7b1a3997598bb2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a2f2e2c3b2c762ad7585c233f861ce5b50cb56e3`.

Source path: `GRWTSK/Topology/GeneralTopology/HomotopyGroup/Variantccdb6a930de3072f1d09f489178cbcb51deba6a24727d217ab7b1a3997598bb2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/HomotopyGroup/Variantccdb6a930de3072f1d09f489178cbcb51deba6a24727d217ab7b1a3997598bb2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.FundamentalGroupoid.FundamentalGroup` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.EckmannHilton` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Equiv.TransferInstance` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Ext` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [boundary](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variantccdb6a930de3072f1d09f489178cbcb51deba6a24727d217ab7b1a3997598bb2.lean/declarations/boundary--1dc569ae0ffd89adde2426f4.md) | 64 | `declaration-track:1dc569ae0ffd89adde2426f49320fe6b309f289b22327952205b9ceeb843a31c` |
| 2 | `abbrev` | [splitAt](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variantccdb6a930de3072f1d09f489178cbcb51deba6a24727d217ab7b1a3997598bb2.lean/declarations/splitat--306af2fee7485e3b56b97ba3.md) | 71 | `declaration-track:306af2fee7485e3b56b97ba3960710e4d67f48841d5134dd8840b95fe732f4f6` |
| 3 | `abbrev` | [insertAt](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variantccdb6a930de3072f1d09f489178cbcb51deba6a24727d217ab7b1a3997598bb2.lean/declarations/insertat--97909f827853c82397562742.md) | 76 | `declaration-track:97909f827853c82397562742cd3b3e74ef3cc9bfd1a01fa1bfdaaa7319f13559` |
| 4 | `theorem` | [insertAt_boundary](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variantccdb6a930de3072f1d09f489178cbcb51deba6a24727d217ab7b1a3997598bb2.lean/declarations/insertat-boundary--166cfdff579bea21dafef3aa.md) | 79 | `result-track:166cfdff579bea21dafef3aa468a8f19f9cb0d95374773fe3a926fb079f20d95` |
| 5 | `abbrev` | [LoopSpace](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variantccdb6a930de3072f1d09f489178cbcb51deba6a24727d217ab7b1a3997598bb2.lean/declarations/loopspace--7cfea5918771bc8d754f9766.md) | 91 | `declaration-track:7cfea5918771bc8d754f976631ec2fc38d23f0446f307547516d22f72aeb6713` |
| 6 | `instance` | [LoopSpace.inhabited](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variantccdb6a930de3072f1d09f489178cbcb51deba6a24727d217ab7b1a3997598bb2.lean/declarations/loopspace-inhabited--6388af093267bc1ade78ae38.md) | 96 | `declaration-track:6388af093267bc1ade78ae3873a710d29621bd8d025a4ed9c642ee2a410c6127` |
| 7 | `def` | [GenLoop](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variantccdb6a930de3072f1d09f489178cbcb51deba6a24727d217ab7b1a3997598bb2.lean/declarations/genloop--5cc6c4976c26dd0035ce3640.md) | 102 | `declaration-track:5cc6c4976c26dd0035ce364037b9aab23b75664c81f8401cbe26797e0ba6edb1` |
| 8 | `instance` | [instFunLike](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variantccdb6a930de3072f1d09f489178cbcb51deba6a24727d217ab7b1a3997598bb2.lean/declarations/instfunlike--328238d603ef0d321d104b5c.md) | 113 | `declaration-track:328238d603ef0d321d104b5c63f0e50aea0ef77da89d40db82ed73153b7e642f` |
| 9 | `theorem` | [ext](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variantccdb6a930de3072f1d09f489178cbcb51deba6a24727d217ab7b1a3997598bb2.lean/declarations/ext--2d7008c5e7d42a4e542ce3a1.md) | 118 | `result-track:2d7008c5e7d42a4e542ce3a13958dbb4a5280d14fbf6e25f8952cd55a39c6c71` |
| 10 | `theorem` | [mk_apply](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variantccdb6a930de3072f1d09f489178cbcb51deba6a24727d217ab7b1a3997598bb2.lean/declarations/mk-apply--1eb71f3607235122b8e4848f.md) | 122 | `result-track:1eb71f3607235122b8e4848fd00fa488fc3c97e5b67c907d24896a47d7337271` |
| 11 | `instance` | [instContinuousEval](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variantccdb6a930de3072f1d09f489178cbcb51deba6a24727d217ab7b1a3997598bb2.lean/declarations/instcontinuouseval--df18b6b0379d492ec914623c.md) | 125 | `declaration-track:df18b6b0379d492ec914623ce7f7ea4942f033c0df7830ebc150bf1201ffef1d` |
| 12 | `instance` | [instContinuousEvalConst](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variantccdb6a930de3072f1d09f489178cbcb51deba6a24727d217ab7b1a3997598bb2.lean/declarations/instcontinuousevalconst--7484a56ec80e76936d640f71.md) | 128 | `declaration-track:7484a56ec80e76936d640f71584283d9bada476d423576aa6d19d71469b727b0` |
| 13 | `def` | [copy](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variantccdb6a930de3072f1d09f489178cbcb51deba6a24727d217ab7b1a3997598bb2.lean/declarations/copy--401674af834685e67d6d3c0a.md) | 132 | `declaration-track:401674af834685e67d6d3c0a914b7464e6957c40285205e65755d05a3bbbe550` |
| 14 | `theorem` | [coe_copy](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variantccdb6a930de3072f1d09f489178cbcb51deba6a24727d217ab7b1a3997598bb2.lean/declarations/coe-copy--50d88f99dbabf2aaf72375e9.md) | 137 | `result-track:50d88f99dbabf2aaf72375e96d3bca46db94cdb4122f028f51457cf60fe9c1a9` |
| 15 | `theorem` | [copy_eq](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variantccdb6a930de3072f1d09f489178cbcb51deba6a24727d217ab7b1a3997598bb2.lean/declarations/copy-eq--ce319ea93aed3398769d871b.md) | 140 | `result-track:ce319ea93aed3398769d871b90f12fb6fc8ea1de20195866902000b159604981` |
| 16 | `theorem` | [boundary](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variantccdb6a930de3072f1d09f489178cbcb51deba6a24727d217ab7b1a3997598bb2.lean/declarations/boundary--4e75a7e33ac7ff4423f33355.md) | 144 | `result-track:4e75a7e33ac7ff4423f33355178d87df28260bd3f3c3c88e61d6b6169474aae2` |
| 17 | `def` | [const](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variantccdb6a930de3072f1d09f489178cbcb51deba6a24727d217ab7b1a3997598bb2.lean/declarations/const--7a4f9c813e5157fde47ff4ba.md) | 148 | `declaration-track:7a4f9c813e5157fde47ff4ba3f14bb95b1579ca39f56163c76535613fdcac8c9` |
| 18 | `theorem` | [const_apply](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variantccdb6a930de3072f1d09f489178cbcb51deba6a24727d217ab7b1a3997598bb2.lean/declarations/const-apply--359a077f9382c3737b5c3a03.md) | 152 | `result-track:359a077f9382c3737b5c3a03537c6261c2479fed2f228e7ce8b90f8f97df31b4` |
| 19 | `instance` | [inhabited](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variantccdb6a930de3072f1d09f489178cbcb51deba6a24727d217ab7b1a3997598bb2.lean/declarations/inhabited--1a2f396745ac8d830a0f702f.md) | 155 | `declaration-track:1a2f396745ac8d830a0f702f202114f8c7b66318aae357353fead485df3bc876` |
| 20 | `def` | [Homotopic](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variantccdb6a930de3072f1d09f489178cbcb51deba6a24727d217ab7b1a3997598bb2.lean/declarations/homotopic--51f26987594b70ef4b554bca.md) | 159 | `declaration-track:51f26987594b70ef4b554bca3676bd4098671904e5a01b2217241188778a6836` |
| 21 | `theorem` | [refl](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variantccdb6a930de3072f1d09f489178cbcb51deba6a24727d217ab7b1a3997598bb2.lean/declarations/refl--259a4def7e2781552f907252.md) | 167 | `result-track:259a4def7e2781552f907252baf8869ece5d423dcfcbeac89639923f4b34d3c9` |
| 22 | `theorem` | [symm](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variantccdb6a930de3072f1d09f489178cbcb51deba6a24727d217ab7b1a3997598bb2.lean/declarations/symm--bfc8305fbcdfb7ce3bd24a03.md) | 171 | `result-track:bfc8305fbcdfb7ce3bd24a034dd64e4c0b379738bfe7e1f1198a1e7fb7a389c0` |
| 23 | `theorem` | [trans](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variantccdb6a930de3072f1d09f489178cbcb51deba6a24727d217ab7b1a3997598bb2.lean/declarations/trans--4a0b17e89023a6d478709cf2.md) | 175 | `result-track:4a0b17e89023a6d478709cf2827642fee339b7565a2ec3dd35a33ca0d0cf236e` |
| 24 | `theorem` | [equiv](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variantccdb6a930de3072f1d09f489178cbcb51deba6a24727d217ab7b1a3997598bb2.lean/declarations/equiv--f7747f47aa1a9ad2011e0f1e.md) | 178 | `result-track:f7747f47aa1a9ad2011e0f1ea1e1fbe1dd9e4493a39908e639886073433ee4ef` |
| 25 | `instance` | [setoid](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variantccdb6a930de3072f1d09f489178cbcb51deba6a24727d217ab7b1a3997598bb2.lean/declarations/setoid--680f98adc72b64ead54dd30c.md) | 181 | `declaration-track:680f98adc72b64ead54dd30c58ba1c051277cd84d8e1a769d1153a2c3d3e0f3e` |
| 26 | `def` | [toLoop](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variantccdb6a930de3072f1d09f489178cbcb51deba6a24727d217ab7b1a3997598bb2.lean/declarations/toloop--3992816b07e5192ef4896e19.md) | 192 | `declaration-track:3992816b07e5192ef4896e199edab7cbccf763280b72caa340e25ea4864e1c5f` |
| 27 | `theorem` | [continuous_toLoop](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variantccdb6a930de3072f1d09f489178cbcb51deba6a24727d217ab7b1a3997598bb2.lean/declarations/continuous-toloop--454b525000028776a8d56ab9.md) | 200 | `result-track:454b525000028776a8d56ab9f3b0e064b32bb342f3728288042b8463842ca107` |
| 28 | `def` | [fromLoop](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variantccdb6a930de3072f1d09f489178cbcb51deba6a24727d217ab7b1a3997598bb2.lean/declarations/fromloop--053184ecb3c62e409cfcecd2.md) | 212 | `declaration-track:053184ecb3c62e409cfcecd2506e3963e75ee3d47816dcb15a411b43aef53c6c` |
| 29 | `theorem` | [continuous_fromLoop](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variantccdb6a930de3072f1d09f489178cbcb51deba6a24727d217ab7b1a3997598bb2.lean/declarations/continuous-fromloop--a65fa5e12f29fdcc1d3e4a40.md) | 224 | `result-track:a65fa5e12f29fdcc1d3e4a402858febb42b6a8acb4382916e3761cde1e84572b` |
| 30 | `theorem` | [to_from](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variantccdb6a930de3072f1d09f489178cbcb51deba6a24727d217ab7b1a3997598bb2.lean/declarations/to-from--37436334e2df8baaf65dbd39.md) | 230 | `result-track:37436334e2df8baaf65dbd3944009c3b978a578c116df3dda732c2645d3e165d` |
| 31 | `def` | [loopHomeo](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variantccdb6a930de3072f1d09f489178cbcb51deba6a24727d217ab7b1a3997598bb2.lean/declarations/loophomeo--8382280cd9c80994b9a538ad.md) | 239 | `declaration-track:8382280cd9c80994b9a538ad910381b004fde3a094b69e624234fcd68a4f2cda` |
| 32 | `theorem` | [toLoop_apply](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variantccdb6a930de3072f1d09f489178cbcb51deba6a24727d217ab7b1a3997598bb2.lean/declarations/toloop-apply--ad542d7d02c893f7dc241eca.md) | 247 | `result-track:ad542d7d02c893f7dc241ecac1293a6723bab28620359c2d3539100d000bab68` |
| 33 | `theorem` | [fromLoop_apply](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variantccdb6a930de3072f1d09f489178cbcb51deba6a24727d217ab7b1a3997598bb2.lean/declarations/fromloop-apply--af4eb79b0ed712eff9326d8d.md) | 251 | `result-track:af4eb79b0ed712eff9326d8d97e467f35cb105870b2de58caa23a083dda5dcb8` |
| 34 | `abbrev` | [cCompInsert](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variantccdb6a930de3072f1d09f489178cbcb51deba6a24727d217ab7b1a3997598bb2.lean/declarations/ccompinsert--828d7682a2d7e296841b6ebd.md) | 256 | `declaration-track:828d7682a2d7e296841b6ebdef742d899c62f041eae268ffc2a8c467e6732222` |
| 35 | `def` | [homotopyTo](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variantccdb6a930de3072f1d09f489178cbcb51deba6a24727d217ab7b1a3997598bb2.lean/declarations/homotopyto--c72d6b1c3ba80f157c4c0a27.md) | 262 | `declaration-track:c72d6b1c3ba80f157c4c0a27e1a3337437ec0143f25a5de1200ee04f66b7745b` |
| 36 | `theorem` | [homotopyTo_apply](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variantccdb6a930de3072f1d09f489178cbcb51deba6a24727d217ab7b1a3997598bb2.lean/declarations/homotopyto-apply--f8012c06d25848891ab0e37d.md) | 268 | `result-track:f8012c06d25848891ab0e37da31f05acfee594961d01405d014495a714880adc` |
| 37 | `theorem` | [homotopicTo](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variantccdb6a930de3072f1d09f489178cbcb51deba6a24727d217ab7b1a3997598bb2.lean/declarations/homotopicto--4efca4769729057001cd69fd.md) | 273 | `result-track:4efca4769729057001cd69fde72b0eac58a0f2256d64f52ad6f8964c817682fd` |
| 38 | `def` | [homotopyFrom](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variantccdb6a930de3072f1d09f489178cbcb51deba6a24727d217ab7b1a3997598bb2.lean/declarations/homotopyfrom--143c0e737bf597cd9685b9d4.md) | 297 | `declaration-track:143c0e737bf597cd9685b9d4b82231fbcd4184f9e0ddba7e26043a5ae9c912a2` |
| 39 | `theorem` | [homotopicFrom](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variantccdb6a930de3072f1d09f489178cbcb51deba6a24727d217ab7b1a3997598bb2.lean/declarations/homotopicfrom--5d33829e3e63b14e6c76f335.md) | 303 | `result-track:5d33829e3e63b14e6c76f335c419be4d7606f49bd66d2fe0f7ea7d89e5f7b46f` |
| 40 | `def` | [transAt](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variantccdb6a930de3072f1d09f489178cbcb51deba6a24727d217ab7b1a3997598bb2.lean/declarations/transat--8294b1f14144676e1624e099.md) | 327 | `declaration-track:8294b1f14144676e1624e099cdf13750d8680b0568616a28744a08cbab3aaa12` |
| 41 | `def` | [symmAt](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variantccdb6a930de3072f1d09f489178cbcb51deba6a24727d217ab7b1a3997598bb2.lean/declarations/symmat--b0a4d654737cda75c1d50d12.md) | 342 | `declaration-track:b0a4d654737cda75c1d50d12438f16aaffe9fbcec4341e7a96d94cd5e99164c7` |
| 42 | `theorem` | [transAt_distrib](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variantccdb6a930de3072f1d09f489178cbcb51deba6a24727d217ab7b1a3997598bb2.lean/declarations/transat-distrib--6870d1c452e4518f624a3b3a.md) | 346 | `result-track:6870d1c452e4518f624a3b3af65e7f411d618332687fcb19f00a80370e54fd97` |
| 43 | `theorem` | [fromLoop_trans_toLoop](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variantccdb6a930de3072f1d09f489178cbcb51deba6a24727d217ab7b1a3997598bb2.lean/declarations/fromloop-trans-toloop--42034b7856c1fcd0f35155fe.md) | 353 | `result-track:42034b7856c1fcd0f35155fea0a93421ae1b178fd8606a770be788dba7de4ab7` |
| 44 | `theorem` | [fromLoop_symm_toLoop](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variantccdb6a930de3072f1d09f489178cbcb51deba6a24727d217ab7b1a3997598bb2.lean/declarations/fromloop-symm-toloop--f4f951145be4e42fb752208e.md) | 357 | `result-track:f4f951145be4e42fb752208ee753bfbbc1b312220948da8bcc1abb76acca1740` |
| 45 | `def` | [HomotopyGroup](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variantccdb6a930de3072f1d09f489178cbcb51deba6a24727d217ab7b1a3997598bb2.lean/declarations/homotopygroup--9bebea823bb263fed2aceccc.md) | 366 | `declaration-track:9bebea823bb263fed2aceccc04d87bcce1d4ee47df5b5c4698cc987fd74b5626` |
| 46 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variantccdb6a930de3072f1d09f489178cbcb51deba6a24727d217ab7b1a3997598bb2.lean/declarations/instance--1d89671c1ed1489cd5240544.md) | 369 | `declaration-track:1d89671c1ed1489cd5240544487ef32717da64ec11d867be3dcf0b86ab582a2f` |
| 47 | `def` | [homotopyGroupEquivFundamentalGroup](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variantccdb6a930de3072f1d09f489178cbcb51deba6a24727d217ab7b1a3997598bb2.lean/declarations/homotopygroupequivfundamentalgroup--543a750aa8e2a691badd508f.md) | 378 | `declaration-track:543a750aa8e2a691badd508f8c7d7be93b9111c812cb3b68328e62c83baa9f2f` |
| 48 | `abbrev` | [HomotopyGroup.Pi](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variantccdb6a930de3072f1d09f489178cbcb51deba6a24727d217ab7b1a3997598bb2.lean/declarations/homotopygroup-pi--ef6210787aeece23490abf49.md) | 385 | `declaration-track:ef6210787aeece23490abf49a23d5db4eb9152c077d5ad3f78a97a32a8600afc` |
| 49 | `def` | [genLoopHomeoOfIsEmpty](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variantccdb6a930de3072f1d09f489178cbcb51deba6a24727d217ab7b1a3997598bb2.lean/declarations/genloophomeoofisempty--b114f7dca53e7d163cedf5e6.md) | 391 | `declaration-track:b114f7dca53e7d163cedf5e6d2e4bc933354ad79059b4cc9c9232dc0cf9f14a7` |
| 50 | `def` | [homotopyGroupEquivZerothHomotopyOfIsEmpty](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variantccdb6a930de3072f1d09f489178cbcb51deba6a24727d217ab7b1a3997598bb2.lean/declarations/homotopygroupequivzerothhomotopyofisempty--1d29730089910a1b6541e1e2.md) | 400 | `declaration-track:1d29730089910a1b6541e1e2917db2aedd2acc95a53f9942543b7f2dc80042e1` |
| 51 | `def` | [HomotopyGroup.pi0EquivZerothHomotopy](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variantccdb6a930de3072f1d09f489178cbcb51deba6a24727d217ab7b1a3997598bb2.lean/declarations/homotopygroup-pi0equivzerothhomotopy--50213962fbe8f2024d941a27.md) | 417 | `declaration-track:50213962fbe8f2024d941a271122b3a2fb360b12712ade4a7150bdf69f1dd79c` |
| 52 | `def` | [genLoopEquivOfUnique](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variantccdb6a930de3072f1d09f489178cbcb51deba6a24727d217ab7b1a3997598bb2.lean/declarations/genloopequivofunique--61fa76320a71a99a56e0fb25.md) | 421 | `declaration-track:61fa76320a71a99a56e0fb25a240b9cbcaa2daeadea84cb0d931e0593bf1d588` |
| 53 | `def` | [homotopyGroupEquivFundamentalGroupOfUnique](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variantccdb6a930de3072f1d09f489178cbcb51deba6a24727d217ab7b1a3997598bb2.lean/declarations/homotopygroupequivfundamentalgroupofunique--acb6ba35e66e8d68c699b4f3.md) | 440 | `declaration-track:acb6ba35e66e8d68c699b4f3459e4e275f521cebf84c029f915eb2aa8b4887b3` |
| 54 | `def` | [HomotopyGroup.pi1EquivFundamentalGroup](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variantccdb6a930de3072f1d09f489178cbcb51deba6a24727d217ab7b1a3997598bb2.lean/declarations/homotopygroup-pi1equivfundamentalgroup--cfb8f97185d3e9dd7c874f5b.md) | 460 | `declaration-track:cfb8f97185d3e9dd7c874f5bd7b6afe99196ffbeefc82dbe727f11b71eddfd07` |
| 55 | `instance` | [group](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variantccdb6a930de3072f1d09f489178cbcb51deba6a24727d217ab7b1a3997598bb2.lean/declarations/group--67263aabcf87b76f4ab527a0.md) | 466 | `declaration-track:67263aabcf87b76f4ab527a0afb05e023072248c45c7502c0b07684f2c1ab3ca` |
| 56 | `abbrev` | [auxGroup](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variantccdb6a930de3072f1d09f489178cbcb51deba6a24727d217ab7b1a3997598bb2.lean/declarations/auxgroup--887d995f19fbb40fcea4eb4c.md) | 472 | `declaration-track:887d995f19fbb40fcea4eb4cc073730f4e35f3c989ceabd47048178bda36c4d3` |
| 57 | `theorem` | [isUnital_auxGroup](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variantccdb6a930de3072f1d09f489178cbcb51deba6a24727d217ab7b1a3997598bb2.lean/declarations/isunital-auxgroup--238cc494b751900c4ca283df.md) | 475 | `result-track:238cc494b751900c4ca283df028b49f4ed1dea80b056404a8ad812c727a58443` |
| 58 | `theorem` | [auxGroup_indep](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variantccdb6a930de3072f1d09f489178cbcb51deba6a24727d217ab7b1a3997598bb2.lean/declarations/auxgroup-indep--4a00bcf79a9ba83dd69ced67.md) | 480 | `result-track:4a00bcf79a9ba83dd69ced67b84d68dbb5186ed84404209f82bd0ccc94f9b931` |
| 59 | `theorem` | [transAt_indep](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variantccdb6a930de3072f1d09f489178cbcb51deba6a24727d217ab7b1a3997598bb2.lean/declarations/transat-indep--e6a46c6f6604e6337c57c3c9.md) | 489 | `result-track:e6a46c6f6604e6337c57c3c90b2a4c9de749e23f14bd1546c0fedef053b5ce13` |
| 60 | `theorem` | [symmAt_indep](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variantccdb6a930de3072f1d09f489178cbcb51deba6a24727d217ab7b1a3997598bb2.lean/declarations/symmat-indep--6d04c8b56af49f1a3dd8b2c9.md) | 495 | `result-track:6d04c8b56af49f1a3dd8b2c91373f713c053c0c06e7e7d403579e0f2a9083cc9` |
| 61 | `theorem` | [one_def](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variantccdb6a930de3072f1d09f489178cbcb51deba6a24727d217ab7b1a3997598bb2.lean/declarations/one-def--45b7fb4d2c411d9759b17214.md) | 502 | `result-track:45b7fb4d2c411d9759b1721454bf6a6c2c6254dbf3063b62bcbb7b1fa8326a27` |
| 62 | `theorem` | [mul_spec](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variantccdb6a930de3072f1d09f489178cbcb51deba6a24727d217ab7b1a3997598bb2.lean/declarations/mul-spec--59b35df1b05696973ae0276b.md) | 506 | `result-track:59b35df1b05696973ae0276bc4b83020e45b95cae50094ac4373c97bd6c5d341` |
| 63 | `theorem` | [inv_spec](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variantccdb6a930de3072f1d09f489178cbcb51deba6a24727d217ab7b1a3997598bb2.lean/declarations/inv-spec--75381f54353a348271bfe70d.md) | 514 | `result-track:75381f54353a348271bfe70de308a237b7f1fbf90d06e67a83d4a500ad792edb` |
| 64 | `instance` | [commGroup](../../../../../mathematics/Topology/GeneralTopology/HomotopyGroup/Variantccdb6a930de3072f1d09f489178cbcb51deba6a24727d217ab7b1a3997598bb2.lean/declarations/commgroup--2aeb290e5398ec43a3f7b407.md) | 522 | `declaration-track:2aeb290e5398ec43a3f7b4072243a841c2e271c7ecc748a842f2f2fa03be5228` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
