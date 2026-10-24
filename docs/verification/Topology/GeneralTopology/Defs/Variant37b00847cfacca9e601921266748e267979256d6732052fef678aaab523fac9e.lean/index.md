# Verification target: GRWTSK.Topology.GeneralTopology.Defs.Variant37b00847cfacca9e601921266748e267979256d6732052fef678aaab523fac9e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9fc8157b28fbbb48493e72656d22715a8e21e796",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Defs/Variant37b00847cfacca9e601921266748e267979256d6732052fef678aaab523fac9e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant37b00847cfacca9e601921266748e267979256d6732052fef678aaab523fac9e.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant37b00847cfacca9e601921266748e267979256d6732052fef678aaab523fac9e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9fc8157b28fbbb48493e72656d22715a8e21e796`.

Source path: `GRWTSK/Topology/GeneralTopology/Defs/Variant37b00847cfacca9e601921266748e267979256d6732052fef678aaab523fac9e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Defs/Variant37b00847cfacca9e601921266748e267979256d6732052fef678aaab523fac9e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.UniformSpace.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Group.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsUniformGroup](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant37b00847cfacca9e601921266748e267979256d6732052fef678aaab523fac9e.lean/declarations/isuniformgroup--f1401e51fc987ed56e5556b6.md) | 49 | `declaration-track:f1401e51fc987ed56e5556b67e6f6c05527135878a14a5440baed6d67b276b62` |
| 2 | `class` | [IsUniformAddGroup](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant37b00847cfacca9e601921266748e267979256d6732052fef678aaab523fac9e.lean/declarations/isuniformaddgroup--27a07e6f1c52b5cd81c854f2.md) | 56 | `declaration-track:27a07e6f1c52b5cd81c854f228a10c13c90f5bbc8455a2ac2bfbcf2b25b9e46f` |
| 3 | `theorem` | [IsUniformGroup.mk'](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant37b00847cfacca9e601921266748e267979256d6732052fef678aaab523fac9e.lean/declarations/isuniformgroup-mk--b1f59ed36182c412fa161fa5.md) | 64 | `result-track:b1f59ed36182c412fa161fa5fb9dc43e9ee9ea40f77c9e492371f873b5cb5d08` |
| 4 | `theorem` | [uniformContinuous_div](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant37b00847cfacca9e601921266748e267979256d6732052fef678aaab523fac9e.lean/declarations/uniformcontinuous-div--2ac88429bee90880c9f8a9cb.md) | 73 | `result-track:2ac88429bee90880c9f8a9cbc44a13c8a7b34531dd60b2a312da3d7ba4175f13` |
| 5 | `theorem` | [UniformContinuous.div](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant37b00847cfacca9e601921266748e267979256d6732052fef678aaab523fac9e.lean/declarations/uniformcontinuous-div--cc7d13161cec465e0b7067b4.md) | 77 | `result-track:cc7d13161cec465e0b7067b47de4039daf6c2c1977adb2bcf2927042d55463a0` |
| 6 | `theorem` | [UniformContinuous.inv](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant37b00847cfacca9e601921266748e267979256d6732052fef678aaab523fac9e.lean/declarations/uniformcontinuous-inv--723f403b7a866f5b458ef15d.md) | 82 | `result-track:723f403b7a866f5b458ef15d07725192f4821ea7f256af0bc9704732bdb4e6df` |
| 7 | `theorem` | [uniformContinuous_inv](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant37b00847cfacca9e601921266748e267979256d6732052fef678aaab523fac9e.lean/declarations/uniformcontinuous-inv--7b8fcfea3ea129b05ad15989.md) | 88 | `result-track:7b8fcfea3ea129b05ad159892ea99d8e2f0a390a9c955b7ea2c4c545d3f551f7` |
| 8 | `theorem` | [UniformContinuous.mul](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant37b00847cfacca9e601921266748e267979256d6732052fef678aaab523fac9e.lean/declarations/uniformcontinuous-mul--636343090da45079f91f3435.md) | 92 | `result-track:636343090da45079f91f343547ffcfc9b7d592eb9b11bd3e27d1813927f24149` |
| 9 | `theorem` | [uniformContinuous_mul](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant37b00847cfacca9e601921266748e267979256d6732052fef678aaab523fac9e.lean/declarations/uniformcontinuous-mul--11a974f9b181f6ab28234b86.md) | 98 | `result-track:11a974f9b181f6ab28234b863c5176832480e96df67b84ae12b7f02a5b2eb4bb` |
| 10 | `theorem` | [UniformContinuous.mul_const](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant37b00847cfacca9e601921266748e267979256d6732052fef678aaab523fac9e.lean/declarations/uniformcontinuous-mul-const--c9b37dfdf3cd9929ff0af332.md) | 102 | `result-track:c9b37dfdf3cd9929ff0af332eadaff773745a0fb8f28cb2c5675f06202bbf045` |
| 11 | `theorem` | [UniformContinuous.const_mul](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant37b00847cfacca9e601921266748e267979256d6732052fef678aaab523fac9e.lean/declarations/uniformcontinuous-const-mul--c4510a733b5836e1ff118100.md) | 107 | `result-track:c4510a733b5836e1ff1181002bfc96075bbe0eaa4387daeff164a9d5d9e4726e` |
| 12 | `theorem` | [uniformContinuous_mul_left](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant37b00847cfacca9e601921266748e267979256d6732052fef678aaab523fac9e.lean/declarations/uniformcontinuous-mul-left--bfa9145785b3def9e5d9988d.md) | 112 | `result-track:bfa9145785b3def9e5d9988d68e942e26e2b75e80de2b05ade5574fde63a35a6` |
| 13 | `theorem` | [uniformContinuous_mul_right](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant37b00847cfacca9e601921266748e267979256d6732052fef678aaab523fac9e.lean/declarations/uniformcontinuous-mul-right--f8a2f4e6c9e477d574ff3296.md) | 116 | `result-track:f8a2f4e6c9e477d574ff32967c5aae003f976c387e5f757e5c04af2841bc6ec7` |
| 14 | `theorem` | [UniformContinuous.div_const](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant37b00847cfacca9e601921266748e267979256d6732052fef678aaab523fac9e.lean/declarations/uniformcontinuous-div-const--01ad97232069eaee2a9240bb.md) | 120 | `result-track:01ad97232069eaee2a9240bb76873635a1887b2898879743a16b2a0f927f8238` |
| 15 | `theorem` | [uniformContinuous_div_const](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant37b00847cfacca9e601921266748e267979256d6732052fef678aaab523fac9e.lean/declarations/uniformcontinuous-div-const--b35b10cf203bd11358eefffe.md) | 125 | `result-track:b35b10cf203bd11358eefffe11f4f82dd0f5ad90a8335efd39bd154d1c4fd0b3` |
| 16 | `theorem` | [UniformContinuous.pow_const](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant37b00847cfacca9e601921266748e267979256d6732052fef678aaab523fac9e.lean/declarations/uniformcontinuous-pow-const--ba53fe9d85e649d38521b6a8.md) | 129 | `result-track:ba53fe9d85e649d38521b6a804e5d5c5938776bb6d533ada1b17a1f88c3500d7` |
| 17 | `theorem` | [uniformContinuous_pow_const](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant37b00847cfacca9e601921266748e267979256d6732052fef678aaab523fac9e.lean/declarations/uniformcontinuous-pow-const--448db4bcda072f974c6d5955.md) | 139 | `result-track:448db4bcda072f974c6d5955fb1c42f9e52891887fde95c2278839f1bf4ac1da` |
| 18 | `theorem` | [UniformContinuous.zpow_const](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant37b00847cfacca9e601921266748e267979256d6732052fef678aaab523fac9e.lean/declarations/uniformcontinuous-zpow-const--61329875ff577cfe1bd8947a.md) | 143 | `result-track:61329875ff577cfe1bd8947a6b5e05f1226cec3818383c9099f4c13bcab46afc` |
| 19 | `theorem` | [uniformContinuous_zpow_const](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant37b00847cfacca9e601921266748e267979256d6732052fef678aaab523fac9e.lean/declarations/uniformcontinuous-zpow-const--db1392f34611dd4e2aeee3ff.md) | 153 | `result-track:db1392f34611dd4e2aeee3ff4cf49d4dbedfd08d4871ff1d21afbb00e199b594` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant37b00847cfacca9e601921266748e267979256d6732052fef678aaab523fac9e.lean/declarations/instance--3092843192d06c51d0fc6c0f.md) | 157 | `declaration-track:3092843192d06c51d0fc6c0fe0a180630af19c3a4c633d61409fbd64aa4a6920` |
| 21 | `instance` | [Prod.instIsUniformGroup](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant37b00847cfacca9e601921266748e267979256d6732052fef678aaab523fac9e.lean/declarations/prod-instisuniformgroup--e0f50c077219ca51c62152b2.md) | 168 | `declaration-track:e0f50c077219ca51c62152b20a779b909948ad6aa629d6f38871507ed0ae9559` |
| 22 | `theorem` | [uniformity_translate_mul](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant37b00847cfacca9e601921266748e267979256d6732052fef678aaab523fac9e.lean/declarations/uniformity-translate-mul--f4cf20ca59606f2c42f90146.md) | 181 | `result-track:f4cf20ca59606f2c42f90146a8ff481673f2eafcf271732139268716068a1801` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant37b00847cfacca9e601921266748e267979256d6732052fef678aaab523fac9e.lean/declarations/instance--e7c4b77af314e61ea495eed4.md) | 194 | `declaration-track:e7c4b77af314e61ea495eed416d47a7f0d743f2d3dcdbd226effcdc85cae0e69` |
| 24 | `theorem` | [isUniformGroup_sInf](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant37b00847cfacca9e601921266748e267979256d6732052fef678aaab523fac9e.lean/declarations/isuniformgroup-sinf--d4cd3b4f72b0b65a84a1b7c5.md) | 206 | `result-track:d4cd3b4f72b0b65a84a1b7c504e1133b245c04031d063a6f3fa53bc45e304237` |
| 25 | `theorem` | [isUniformGroup_iInf](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant37b00847cfacca9e601921266748e267979256d6732052fef678aaab523fac9e.lean/declarations/isuniformgroup-iinf--f5632d53c8653f92121046fa.md) | 217 | `result-track:f5632d53c8653f92121046fa76ffd9a00a319e859ab43224bae8b416f33aad9e` |
| 26 | `theorem` | [isUniformGroup_inf](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant37b00847cfacca9e601921266748e267979256d6732052fef678aaab523fac9e.lean/declarations/isuniformgroup-inf--7cc4b77df14f9db91c6a64f9.md) | 227 | `result-track:7cc4b77df14f9db91c6a64f971f5808a5862f75533a8c97ebd26830ab6d4faec` |
| 27 | `theorem` | [uniformity_eq_comap_nhds_one](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant37b00847cfacca9e601921266748e267979256d6732052fef678aaab523fac9e.lean/declarations/uniformity-eq-comap-nhds-one--53254cd4eb0ba09cb88589d8.md) | 244 | `result-track:53254cd4eb0ba09cb88589d8d86632a8caea2bc34db5dad391a5300e140175e1` |
| 28 | `theorem` | [uniformity_eq_comap_nhds_one_swapped](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant37b00847cfacca9e601921266748e267979256d6732052fef678aaab523fac9e.lean/declarations/uniformity-eq-comap-nhds-one-swapped--770ca9d73025577833ef352a.md) | 259 | `result-track:770ca9d73025577833ef352a52699833d6038927e57043ea3629315786ee67bf` |
| 29 | `theorem` | [IsUniformGroup.ext](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant37b00847cfacca9e601921266748e267979256d6732052fef678aaab523fac9e.lean/declarations/isuniformgroup-ext--defa9b851b70111391977ba6.md) | 265 | `result-track:defa9b851b70111391977ba6197798c663d66a311a3d4fa5c536328c833710d5` |
| 30 | `theorem` | [IsUniformGroup.ext_iff](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant37b00847cfacca9e601921266748e267979256d6732052fef678aaab523fac9e.lean/declarations/isuniformgroup-ext-iff--56906fd7f4338d7a73b0642a.md) | 276 | `result-track:56906fd7f4338d7a73b0642a4b32e0ace5fdd8a7ef0b4b8cdda8c4b6767b6548` |
| 31 | `theorem` | [IsUniformGroup.uniformity_countably_generated](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant37b00847cfacca9e601921266748e267979256d6732052fef678aaab523fac9e.lean/declarations/isuniformgroup-uniformity-countably-generated--ffcbdabaf4ef27509492f95a.md) | 289 | `result-track:ffcbdabaf4ef27509492f95aa1dd43ecb4e8aa7d110f474e37173388d50bbe9e` |
| 32 | `theorem` | [uniformity_eq_comap_inv_mul_nhds_one](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant37b00847cfacca9e601921266748e267979256d6732052fef678aaab523fac9e.lean/declarations/uniformity-eq-comap-inv-mul-nhds-one--f0d829e85f018a09a7df678a.md) | 303 | `result-track:f0d829e85f018a09a7df678a0815df40383ec8a98a2e08e06727af2df11d841c` |
| 33 | `theorem` | [uniformity_eq_comap_inv_mul_nhds_one_swapped](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant37b00847cfacca9e601921266748e267979256d6732052fef678aaab523fac9e.lean/declarations/uniformity-eq-comap-inv-mul-nhds-one-swapped--4ce766d13136b1ea731acbf5.md) | 310 | `result-track:4ce766d13136b1ea731acbf59ae210c5b8c2f4969d6ecced40103adc32ddd61c` |
| 34 | `theorem` | [Filter.HasBasis.uniformity_of_nhds_one](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant37b00847cfacca9e601921266748e267979256d6732052fef678aaab523fac9e.lean/declarations/filter-hasbasis-uniformity-of-nhds-one--07482e7a5bf563123e5b6920.md) | 318 | `result-track:07482e7a5bf563123e5b6920435e0104dbeb08fc6b676907892f9be0d3380846` |
| 35 | `theorem` | [Filter.HasBasis.uniformity_of_nhds_one_inv_mul](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant37b00847cfacca9e601921266748e267979256d6732052fef678aaab523fac9e.lean/declarations/filter-hasbasis-uniformity-of-nhds-one-inv-mul--966aa69aef51c2eed06e1b02.md) | 325 | `result-track:966aa69aef51c2eed06e1b02e024758cf7968e9ce96cf231bc9cecc369253ab3` |
| 36 | `theorem` | [Filter.HasBasis.uniformity_of_nhds_one_swapped](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant37b00847cfacca9e601921266748e267979256d6732052fef678aaab523fac9e.lean/declarations/filter-hasbasis-uniformity-of-nhds-one-swapped--4cd3fd6dd282318a003dbaf5.md) | 332 | `result-track:4cd3fd6dd282318a003dbaf5e61550fc29dfb32a6223b5b937293a9da35a6983` |
| 37 | `theorem` | [Filter.HasBasis.uniformity_of_nhds_one_inv_mul_swapped](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant37b00847cfacca9e601921266748e267979256d6732052fef678aaab523fac9e.lean/declarations/filter-hasbasis-uniformity-of-nhds-one-inv-mul-swapped--d9b1efc1130cf954aef33bc3.md) | 339 | `result-track:d9b1efc1130cf954aef33bc31e83b1fa41af94b16d74b59f4749bb9309679543` |
| 38 | `theorem` | [uniformContinuous_of_tendsto_one](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant37b00847cfacca9e601921266748e267979256d6732052fef678aaab523fac9e.lean/declarations/uniformcontinuous-of-tendsto-one--8a7a5f4a58c072197c6d1a63.md) | 346 | `result-track:8a7a5f4a58c072197c6d1a63c63852c4a488965825afde1320b8fd361d6f30e9` |
| 39 | `theorem` | [uniformContinuous_of_continuousAt_one](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant37b00847cfacca9e601921266748e267979256d6732052fef678aaab523fac9e.lean/declarations/uniformcontinuous-of-continuousat-one--66c0677489bb6835f194c5a9.md) | 362 | `result-track:66c0677489bb6835f194c5a9d3544507dba78eb531304de111755378e3f08f35` |
| 40 | `theorem` | [MonoidHom.uniformContinuous_of_continuousAt_one](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant37b00847cfacca9e601921266748e267979256d6732052fef678aaab523fac9e.lean/declarations/monoidhom-uniformcontinuous-of-continuousat-one--9659766aa237b96ed9dcaaa4.md) | 369 | `result-track:9659766aa237b96ed9dcaaa46b3fe79bda91a1a676b25e3806251c85a0a60a06` |
| 41 | `theorem` | [IsUniformGroup.uniformContinuous_iff_isOpen_ker](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant37b00847cfacca9e601921266748e267979256d6732052fef678aaab523fac9e.lean/declarations/isuniformgroup-uniformcontinuous-iff-isopen-ker--f993a5709ce9147d3ddb6e53.md) | 377 | `result-track:f993a5709ce9147d3ddb6e5398a68cc9e2a5e8dd80e7112d8d51691fc9fff8ef` |
| 42 | `theorem` | [uniformContinuous_monoidHom_of_continuous](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant37b00847cfacca9e601921266748e267979256d6732052fef678aaab523fac9e.lean/declarations/uniformcontinuous-monoidhom-of-continuous--813f9b68fe8a5b39167dbe8c.md) | 400 | `result-track:813f9b68fe8a5b39167dbe8c7605c3f22a3438b3ba99bc5096905185fec07fc6` |
| 43 | `def` | [IsTopologicalGroup.toUniformSpace](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant37b00847cfacca9e601921266748e267979256d6732052fef678aaab523fac9e.lean/declarations/istopologicalgroup-touniformspace--98120bf9d1a17143280ceaa2.md) | 428 | `declaration-track:98120bf9d1a17143280ceaa202545638412987da7e24d65d30f916b898f82498` |
| 44 | `theorem` | [uniformity_eq_comap_nhds_one'](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant37b00847cfacca9e601921266748e267979256d6732052fef678aaab523fac9e.lean/declarations/uniformity-eq-comap-nhds-one--eba23bc73d7f5221bdf41072.md) | 444 | `result-track:eba23bc73d7f5221bdf41072e4cc43f5967c3b299cbc79155c88c060931d9cc5` |
| 45 | `theorem` | [isUniformGroup_of_commGroup](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant37b00847cfacca9e601921266748e267979256d6732052fef678aaab523fac9e.lean/declarations/isuniformgroup-of-commgroup--828037a175bd88b7e981aeb1.md) | 464 | `result-track:828037a175bd88b7e981aeb1e1f93e50ce03a27479451f01709cd5fbb94433e4` |
| 46 | `theorem` | [IsUniformGroup.toUniformSpace_eq](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant37b00847cfacca9e601921266748e267979256d6732052fef678aaab523fac9e.lean/declarations/isuniformgroup-touniformspace-eq--6859d88e03a1e5e96253aa63.md) | 485 | `result-track:6859d88e03a1e5e96253aa63cbf71c58b419bb825cc045332828a7f39d86770e` |
| 47 | `theorem` | [tendsto_div_comap_self](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant37b00847cfacca9e601921266748e267979256d6732052fef678aaab523fac9e.lean/declarations/tendsto-div-comap-self--8d73d28f2722cb00dfcb43dc.md) | 504 | `result-track:8d73d28f2722cb00dfcb43dcf27c4ee71535202caa52dfe93712e679a1ca8020` |
| 48 | `theorem` | [extend_Z_bilin_aux](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant37b00847cfacca9e601921266748e267979256d6732052fef678aaab523fac9e.lean/declarations/extend-z-bilin-aux--6c127273195004b7eb46e13b.md) | 537 | `result-track:6c127273195004b7eb46e13b7d63c6d86e524e1c523cb94bf619b1ae70430d56` |
| 49 | `theorem` | [extend_Z_bilin_key](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant37b00847cfacca9e601921266748e267979256d6732052fef678aaab523fac9e.lean/declarations/extend-z-bilin-key--25a8789c25588e24b5cbf17a.md) | 557 | `result-track:25a8789c25588e24b5cbf17a425ead7550b4329bbffcda04889863938e58baba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
