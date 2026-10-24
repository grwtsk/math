# Verification target: GRWTSK.Topology.GeneralTopology.Filter.Variantefb490af60c6162f658de85be4c1264c803a356ab10a1f65631c85bbe78bb576

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "30304ed3562f3464c2d77a8a3fb2e3175d32d489",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Filter/Variantefb490af60c6162f658de85be4c1264c803a356ab10a1f65631c85bbe78bb576.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantefb490af60c6162f658de85be4c1264c803a356ab10a1f65631c85bbe78bb576.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantefb490af60c6162f658de85be4c1264c803a356ab10a1f65631c85bbe78bb576.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `30304ed3562f3464c2d77a8a3fb2e3175d32d489`.

Source path: `GRWTSK/Topology/GeneralTopology/Filter/Variantefb490af60c6162f658de85be4c1264c803a356ab10a1f65631c85bbe78bb576.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Filter/Variantefb490af60c6162f658de85be4c1264c803a356ab10a1f65631c85bbe78bb576.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.Cofinite` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CFilter](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantefb490af60c6162f658de85be4c1264c803a356ab10a1f65631c85bbe78bb576.lean/declarations/cfilter--0a3dfafc313fc101f87f3ee0.md) | 35 | `declaration-track:0a3dfafc313fc101f87f3ee009b503d8a0e1ad4a313dc5bb23559b1e34875757` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantefb490af60c6162f658de85be4c1264c803a356ab10a1f65631c85bbe78bb576.lean/declarations/instance--7cf14ecc8e0de1570deb92ed.md) | 44 | `declaration-track:7cf14ecc8e0de1570deb92ed05dd791a97f68462bfa952e34c6b1ed1f69e9f0e` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantefb490af60c6162f658de85be4c1264c803a356ab10a1f65631c85bbe78bb576.lean/declarations/instance--8a3726a375ab9cc297890667.md) | 61 | `declaration-track:8a3726a375ab9cc297890667f3f824a87ceb907e614cdea276a0073c6f75fae3` |
| 4 | `theorem` | [coe_mk](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantefb490af60c6162f658de85be4c1264c803a356ab10a1f65631c85bbe78bb576.lean/declarations/coe-mk--36345f0e498a7fa008ff086c.md) | 64 | `result-track:36345f0e498a7fa008ff086cca5f54275ccac4ffa40df6ff7331877ecf21fd1b` |
| 5 | `def` | [ofEquiv](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantefb490af60c6162f658de85be4c1264c803a356ab10a1f65631c85bbe78bb576.lean/declarations/ofequiv--1e611f2a87db718ffeb82f6c.md) | 68 | `declaration-track:1e611f2a87db718ffeb82f6c414698191222b83ebaef58d4fc51e7e0844264c5` |
| 6 | `theorem` | [ofEquiv_val](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantefb490af60c6162f658de85be4c1264c803a356ab10a1f65631c85bbe78bb576.lean/declarations/ofequiv-val--f5bd1fad752ed4445f180289.md) | 77 | `result-track:f5bd1fad752ed4445f180289e4157591dc1df9c2708e4334d97b21cc946e4785` |
| 7 | `def` | [toFilter](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantefb490af60c6162f658de85be4c1264c803a356ab10a1f65631c85bbe78bb576.lean/declarations/tofilter--e65200b0682d1f6909cf263f.md) | 84 | `declaration-track:e65200b0682d1f6909cf263f3d49394a9b9aea3468da6bcbfcfa7cf6069e8448` |
| 8 | `theorem` | [mem_toFilter_sets](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantefb490af60c6162f658de85be4c1264c803a356ab10a1f65631c85bbe78bb576.lean/declarations/mem-tofilter-sets--c3a48476493c12f8f4ef5c35.md) | 92 | `result-track:c3a48476493c12f8f4ef5c358cb74e7f1b1eb9d177f2d5ff9d2d28cf8f94c915` |
| 9 | `structure` | [Filter.Realizer](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantefb490af60c6162f658de85be4c1264c803a356ab10a1f65631c85bbe78bb576.lean/declarations/filter-realizer--c6fd540212b934d7e53b5620.md) | 99 | `declaration-track:c6fd540212b934d7e53b5620a970f5d6e5ffc15ef1c80d6830cf77db90636094` |
| 10 | `def` | [CFilter.toRealizer](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantefb490af60c6162f658de85be4c1264c803a356ab10a1f65631c85bbe78bb576.lean/declarations/cfilter-torealizer--cc388674b87697eae03942c9.md) | 105 | `declaration-track:cc388674b87697eae03942c92ce545d2cdedb1ede82ffd4cf2762b6628562dfe` |
| 11 | `theorem` | [mem_sets](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantefb490af60c6162f658de85be4c1264c803a356ab10a1f65631c85bbe78bb576.lean/declarations/mem-sets--f43e09b058d78f7a9f334beb.md) | 110 | `result-track:f43e09b058d78f7a9f334beb68e9b978fbea6e13b3f5c0afb828a66555baac65` |
| 12 | `def` | [ofEq](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantefb490af60c6162f658de85be4c1264c803a356ab10a1f65631c85bbe78bb576.lean/declarations/ofeq--4e6b85e83e8c4bd76e522228.md) | 115 | `declaration-track:4e6b85e83e8c4bd76e522228dc617a52bd9dd284e92dff0883e797a4981e17f2` |
| 13 | `def` | [ofFilter](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantefb490af60c6162f658de85be4c1264c803a356ab10a1f65631c85bbe78bb576.lean/declarations/offilter--dd93d2618c974f466180d987.md) | 119 | `declaration-track:dd93d2618c974f466180d9876f55526d03d6be57cac799a74b34456052cd7242` |
| 14 | `def` | [ofEquiv](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantefb490af60c6162f658de85be4c1264c803a356ab10a1f65631c85bbe78bb576.lean/declarations/ofequiv--dbdcd5e09af7c5d5ce8644e3.md) | 129 | `declaration-track:dbdcd5e09af7c5d5ce8644e34b53d296bb80c3de74ff3dbc0547579009542d09` |
| 15 | `theorem` | [ofEquiv_σ](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantefb490af60c6162f658de85be4c1264c803a356ab10a1f65631c85bbe78bb576.lean/declarations/ofequiv--3edd7df6c439c0f1599db348.md) | 136 | `result-track:3edd7df6c439c0f1599db3483203dd46b1f40b266e89495db86463d9ac6351e0` |
| 16 | `theorem` | [ofEquiv_F](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantefb490af60c6162f658de85be4c1264c803a356ab10a1f65631c85bbe78bb576.lean/declarations/ofequiv-f--ad8ad1006585645c0d4eefd6.md) | 140 | `result-track:ad8ad1006585645c0d4eefd686c709579c4ec5baec3fc6002953aa23868197b7` |
| 17 | `def` | [principal](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantefb490af60c6162f658de85be4c1264c803a356ab10a1f65631c85bbe78bb576.lean/declarations/principal--70ad296aa53f69e610b53139.md) | 144 | `declaration-track:70ad296aa53f69e610b531391026a1898835b8df2e2e1fb267ab3bd7475875da` |
| 18 | `theorem` | [principal_σ](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantefb490af60c6162f658de85be4c1264c803a356ab10a1f65631c85bbe78bb576.lean/declarations/principal--23405af16225ec771736c9be.md) | 154 | `result-track:23405af16225ec771736c9beba46dac4ffc8b304411080dd85e6cfdc23cac3f7` |
| 19 | `theorem` | [principal_F](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantefb490af60c6162f658de85be4c1264c803a356ab10a1f65631c85bbe78bb576.lean/declarations/principal-f--d64ca2dc750a4dca88f71c30.md) | 158 | `result-track:d64ca2dc750a4dca88f71c3038bcf3cb74d64ca3647998dbe702c9671e5bfea2` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantefb490af60c6162f658de85be4c1264c803a356ab10a1f65631c85bbe78bb576.lean/declarations/instance--0b02fbde3eab04f64d51a6f3.md) | 161 | `declaration-track:0b02fbde3eab04f64d51a6f3796ffe62aa64ae5c95a596e9e20335259c425e38` |
| 21 | `def` | [top](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantefb490af60c6162f658de85be4c1264c803a356ab10a1f65631c85bbe78bb576.lean/declarations/top--25b56a46c94ac0608716a93d.md) | 165 | `declaration-track:25b56a46c94ac0608716a93d0abbaf2bc5800cc0f0d87a21a7500211a6de9d1b` |
| 22 | `theorem` | [top_σ](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantefb490af60c6162f658de85be4c1264c803a356ab10a1f65631c85bbe78bb576.lean/declarations/top--32f32ce0d6ba130969717134.md) | 169 | `result-track:32f32ce0d6ba13096971713454381d31b15687aaff8b759a84694bb4ec5be458` |
| 23 | `theorem` | [top_F](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantefb490af60c6162f658de85be4c1264c803a356ab10a1f65631c85bbe78bb576.lean/declarations/top-f--53ea4e2cc4719b15db3dc244.md) | 173 | `result-track:53ea4e2cc4719b15db3dc244aaac23f41c5bf66e3453478acca4f86dcaeefe51` |
| 24 | `def` | [bot](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantefb490af60c6162f658de85be4c1264c803a356ab10a1f65631c85bbe78bb576.lean/declarations/bot--bfa39d188536c7231c3681e3.md) | 177 | `declaration-track:bfa39d188536c7231c3681e3e02c0f4486047eea970a3dfd44bfd108ca5e9b96` |
| 25 | `theorem` | [bot_σ](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantefb490af60c6162f658de85be4c1264c803a356ab10a1f65631c85bbe78bb576.lean/declarations/bot--1ad1a5bd02ca8b2f83451903.md) | 181 | `result-track:1ad1a5bd02ca8b2f83451903c86905cdf04069cd27ad67563b735957cc4a5f44` |
| 26 | `theorem` | [bot_F](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantefb490af60c6162f658de85be4c1264c803a356ab10a1f65631c85bbe78bb576.lean/declarations/bot-f--8e2f6f2457d45825f9ff0d6c.md) | 185 | `result-track:8e2f6f2457d45825f9ff0d6cb8afb7658c29f49aba270178e0235cdb180d7b22` |
| 27 | `def` | [map](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantefb490af60c6162f658de85be4c1264c803a356ab10a1f65631c85bbe78bb576.lean/declarations/map--adcb2d6577d289f632804947.md) | 189 | `declaration-track:adcb2d6577d289f6328049475d554041497055abce91b4522ca9584ad8032472` |
| 28 | `theorem` | [map_σ](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantefb490af60c6162f658de85be4c1264c803a356ab10a1f65631c85bbe78bb576.lean/declarations/map--6adf36ab0d9962fa9125e2a9.md) | 201 | `result-track:6adf36ab0d9962fa9125e2a9fe414b7f2dcc8b3e003fe9ec800d273b70b7e14c` |
| 29 | `theorem` | [map_F](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantefb490af60c6162f658de85be4c1264c803a356ab10a1f65631c85bbe78bb576.lean/declarations/map-f--f78d03428f4c40f506f83b4d.md) | 205 | `result-track:f78d03428f4c40f506f83b4d4d9aa65c2a90a66eed2c5722067caea6050cf3a7` |
| 30 | `def` | [comap](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantefb490af60c6162f658de85be4c1264c803a356ab10a1f65631c85bbe78bb576.lean/declarations/comap--15c55f8dfe4192d35e373dc1.md) | 209 | `declaration-track:15c55f8dfe4192d35e373dc1e8874d3fec04fae148c4fe5604f23a7dd5de1bd9` |
| 31 | `def` | [sup](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantefb490af60c6162f658de85be4c1264c803a356ab10a1f65631c85bbe78bb576.lean/declarations/sup--07e8802e06c35eb3336595ba.md) | 222 | `declaration-track:07e8802e06c35eb3336595ba9df7f9e341c2a41bfc69ff7bbdcf7668685296c2` |
| 32 | `def` | [inf](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantefb490af60c6162f658de85be4c1264c803a356ab10a1f65631c85bbe78bb576.lean/declarations/inf--65dc5a0b2fb57c532cbf82ea.md) | 232 | `declaration-track:65dc5a0b2fb57c532cbf82ea6ad9aff6b0e278aaaedc70cd2c3a3c088edab0d2` |
| 33 | `def` | [cofinite](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantefb490af60c6162f658de85be4c1264c803a356ab10a1f65631c85bbe78bb576.lean/declarations/cofinite--179ae991a627a19e17c97b18.md) | 250 | `declaration-track:179ae991a627a19e17c97b188aec0a5e839ef26f3d2165b28572551159153492` |
| 34 | `def` | [bind](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantefb490af60c6162f658de85be4c1264c803a356ab10a1f65631c85bbe78bb576.lean/declarations/bind--117c44b880863c358c0aec8b.md) | 263 | `declaration-track:117c44b880863c358c0aec8b23b8223e29356abf04310577dcea583ace16bb49` |
| 35 | `def` | [iSup](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantefb490af60c6162f658de85be4c1264c803a356ab10a1f65631c85bbe78bb576.lean/declarations/isup--a5670a0c25882f1403bd4f21.md) | 288 | `declaration-track:a5670a0c25882f1403bd4f219d4d0bb5f937dc3a0fd9f759f324186688b0bda7` |
| 36 | `def` | [prod](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantefb490af60c6162f658de85be4c1264c803a356ab10a1f65631c85bbe78bb576.lean/declarations/prod--f32c45e0a9085fa3f48fad48.md) | 297 | `declaration-track:f32c45e0a9085fa3f48fad484dafb15dec5d1ef1e11b58870cc07a7330c17a24` |
| 37 | `theorem` | [le_iff](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantefb490af60c6162f658de85be4c1264c803a356ab10a1f65631c85bbe78bb576.lean/declarations/le-iff--129bcfe30113d9b215fa234e.md) | 300 | `result-track:129bcfe30113d9b215fa234ee737d1fe9c2eae29ddb2057bc2b5ddc2012db390` |
| 38 | `theorem` | [tendsto_iff](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantefb490af60c6162f658de85be4c1264c803a356ab10a1f65631c85bbe78bb576.lean/declarations/tendsto-iff--689995cf0f5fce6c4aefbb0a.md) | 308 | `result-track:689995cf0f5fce6c4aefbb0affc8971fafa3ce56d21248157ec2c09f410cd1c4` |
| 39 | `theorem` | [ne_bot_iff](../../../../../mathematics/Topology/GeneralTopology/Filter/Variantefb490af60c6162f658de85be4c1264c803a356ab10a1f65631c85bbe78bb576.lean/declarations/ne-bot-iff--21f3e2e020373fbe218fce47.md) | 312 | `result-track:21f3e2e020373fbe218fce4758683acb0fa037cfdc86e46edee795560adcff86` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
