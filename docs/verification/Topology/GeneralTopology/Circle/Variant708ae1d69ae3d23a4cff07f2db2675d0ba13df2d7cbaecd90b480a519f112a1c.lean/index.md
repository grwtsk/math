# Verification target: GRWTSK.Topology.GeneralTopology.Circle.Variant708ae1d69ae3d23a4cff07f2db2675d0ba13df2d7cbaecd90b480a519f112a1c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bb4ebda0d1f44635b775f6808f8dbbe1273c8bb1",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Circle/Variant708ae1d69ae3d23a4cff07f2db2675d0ba13df2d7cbaecd90b480a519f112a1c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant708ae1d69ae3d23a4cff07f2db2675d0ba13df2d7cbaecd90b480a519f112a1c.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant708ae1d69ae3d23a4cff07f2db2675d0ba13df2d7cbaecd90b480a519f112a1c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bb4ebda0d1f44635b775f6808f8dbbe1273c8bb1`.

Source path: `GRWTSK/Topology/GeneralTopology/Circle/Variant708ae1d69ae3d23a4cff07f2db2675d0ba13df2d7cbaecd90b480a519f112a1c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Circle/Variant708ae1d69ae3d23a4cff07f2db2675d0ba13df2d7cbaecd90b480a519f112a1c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Field.UnitBall` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Circle](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant708ae1d69ae3d23a4cff07f2db2675d0ba13df2d7cbaecd90b480a519f112a1c.lean/declarations/circle--ffb5354b3d6e5c5c31d51542.md) | 48 | `declaration-track:ffb5354b3d6e5c5c31d515427a1ca7d50f549ae4b49e744d9ae45885eef2dcd8` |
| 2 | `instance` | [instCoeOut](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant708ae1d69ae3d23a4cff07f2db2675d0ba13df2d7cbaecd90b480a519f112a1c.lean/declarations/instcoeout--12a33f9238db65d707d04b72.md) | 54 | `declaration-track:12a33f9238db65d707d04b72d21aa2d0cb34327380099c3590388dd745cf2968` |
| 3 | `instance` | [instCommGroup](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant708ae1d69ae3d23a4cff07f2db2675d0ba13df2d7cbaecd90b480a519f112a1c.lean/declarations/instcommgroup--49ee95cc0253121cb348d231.md) | 56 | `declaration-track:49ee95cc0253121cb348d23100f262cf1faac2a8d0a8caa1bd858c9ce85a9d8f` |
| 4 | `instance` | [instMetricSpace](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant708ae1d69ae3d23a4cff07f2db2675d0ba13df2d7cbaecd90b480a519f112a1c.lean/declarations/instmetricspace--9a916b9921da4cd78bc519a6.md) | 57 | `declaration-track:9a916b9921da4cd78bc519a630a5887f1cbfd6556f5a374611049eed7c4309ee` |
| 5 | `lemma` | [ext](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant708ae1d69ae3d23a4cff07f2db2675d0ba13df2d7cbaecd90b480a519f112a1c.lean/declarations/ext--9c93525f078ce94390b55c52.md) | 59 | `result-track:9c93525f078ce94390b55c523fb811bbdea8be62b89289d409e4c1c454c63cfe` |
| 6 | `lemma` | [coe_injective](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant708ae1d69ae3d23a4cff07f2db2675d0ba13df2d7cbaecd90b480a519f112a1c.lean/declarations/coe-injective--fefb7428afcf089ce1e46b07.md) | 61 | `result-track:fefb7428afcf089ce1e46b07b2f258ba08eaf2b012b0d714ce7e8af26dd41bdf` |
| 7 | `lemma` | [coe_inj](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant708ae1d69ae3d23a4cff07f2db2675d0ba13df2d7cbaecd90b480a519f112a1c.lean/declarations/coe-inj--52d9c24aee2a6ffa5fde4445.md) | 64 | `result-track:52d9c24aee2a6ffa5fde4445ec1b7e780bdb84b19422b5eb3a8efef0ba09dc59` |
| 8 | `lemma` | [norm_coe](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant708ae1d69ae3d23a4cff07f2db2675d0ba13df2d7cbaecd90b480a519f112a1c.lean/declarations/norm-coe--dcf5c681c2a1966b469a92a8.md) | 66 | `result-track:dcf5c681c2a1966b469a92a8365b8e13c8b2cf917948c91ee3e25cd9848e402a` |
| 9 | `lemma` | [normSq_coe](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant708ae1d69ae3d23a4cff07f2db2675d0ba13df2d7cbaecd90b480a519f112a1c.lean/declarations/normsq-coe--d5b1f18623eb65fe54906fe5.md) | 70 | `result-track:d5b1f18623eb65fe54906fe5a70723b0c8738f329aef6489ea0d6fd8f68626e5` |
| 10 | `lemma` | [coe_ne_zero](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant708ae1d69ae3d23a4cff07f2db2675d0ba13df2d7cbaecd90b480a519f112a1c.lean/declarations/coe-ne-zero--060137015054ee1a0d9ea54d.md) | 71 | `result-track:060137015054ee1a0d9ea54da947ccfee097463e35ab14e6ddb24ff0acc964e5` |
| 11 | `lemma` | [coe_one](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant708ae1d69ae3d23a4cff07f2db2675d0ba13df2d7cbaecd90b480a519f112a1c.lean/declarations/coe-one--73833998abfd74c53d9368f4.md) | 72 | `result-track:73833998abfd74c53d9368f469064593c8ca56f849f9fedb98af7bfa4f472644` |
| 12 | `lemma` | [coe_eq_one](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant708ae1d69ae3d23a4cff07f2db2675d0ba13df2d7cbaecd90b480a519f112a1c.lean/declarations/coe-eq-one--74f6503c67f75d354b0466ee.md) | 74 | `result-track:74f6503c67f75d354b0466ee9576b06785b8fa002cd22d802a077c3d83f88070` |
| 13 | `lemma` | [coe_mul](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant708ae1d69ae3d23a4cff07f2db2675d0ba13df2d7cbaecd90b480a519f112a1c.lean/declarations/coe-mul--a27e962d1db9b398f1b02986.md) | 75 | `result-track:a27e962d1db9b398f1b02986ce200a47de964cff91497d37ecdf0d969a6c5b79` |
| 14 | `lemma` | [coe_inv](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant708ae1d69ae3d23a4cff07f2db2675d0ba13df2d7cbaecd90b480a519f112a1c.lean/declarations/coe-inv--c6647366727469bf4ba75ccc.md) | 76 | `result-track:c6647366727469bf4ba75ccc5057cd4c000d460bf622d7df64596175e2318f60` |
| 15 | `lemma` | [coe_inv_eq_conj](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant708ae1d69ae3d23a4cff07f2db2675d0ba13df2d7cbaecd90b480a519f112a1c.lean/declarations/coe-inv-eq-conj--f78d38c86e3c740b92139576.md) | 77 | `result-track:f78d38c86e3c740b921395768ca7d41b4c02e51eb56fde24459c504c2802862c` |
| 16 | `lemma` | [coe_div](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant708ae1d69ae3d23a4cff07f2db2675d0ba13df2d7cbaecd90b480a519f112a1c.lean/declarations/coe-div--351ea1e549aa912e4e99b1e4.md) | 80 | `result-track:351ea1e549aa912e4e99b1e4a577d39c49618d1b56d7f36e2d9e249e57b554b5` |
| 17 | `def` | [coeHom](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant708ae1d69ae3d23a4cff07f2db2675d0ba13df2d7cbaecd90b480a519f112a1c.lean/declarations/coehom--3b30879678df86dfb9638467.md) | 84 | `declaration-track:3b30879678df86dfb963846706cbb899923f3e273d603c0be1ea9cb47154ad3a` |
| 18 | `def` | [toUnits](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant708ae1d69ae3d23a4cff07f2db2675d0ba13df2d7cbaecd90b480a519f112a1c.lean/declarations/tounits--1835370dae127e4008f042c7.md) | 90 | `declaration-track:1835370dae127e4008f042c7d201f1a8fb4b121d67e4e0489f47b0d612b2ca84` |
| 19 | `lemma` | [toUnits_apply](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant708ae1d69ae3d23a4cff07f2db2675d0ba13df2d7cbaecd90b480a519f112a1c.lean/declarations/tounits-apply--0ac156559db0b01e28fb301c.md) | 93 | `result-track:0ac156559db0b01e28fb301ce9239e8964238106a456ca48ffd189e3125a7364` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant708ae1d69ae3d23a4cff07f2db2675d0ba13df2d7cbaecd90b480a519f112a1c.lean/declarations/instance--c7303e86405876c774171d71.md) | 95 | `declaration-track:c7303e86405876c774171d719e472e304312e6c58eccc505f9044fc0b6ded637` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant708ae1d69ae3d23a4cff07f2db2675d0ba13df2d7cbaecd90b480a519f112a1c.lean/declarations/instance--3a146c98459a1b8b18ac4624.md) | 96 | `declaration-track:3a146c98459a1b8b18ac4624e4f4ae7aef81f5409e48f1196c4598714baaff26` |
| 22 | `instance` | [instUniformSpace](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant708ae1d69ae3d23a4cff07f2db2675d0ba13df2d7cbaecd90b480a519f112a1c.lean/declarations/instuniformspace--fe5a9c8300f71d187486803f.md) | 97 | `declaration-track:fe5a9c8300f71d187486803f6750ccc2d549d8d52959e918b8e518313ace008e` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant708ae1d69ae3d23a4cff07f2db2675d0ba13df2d7cbaecd90b480a519f112a1c.lean/declarations/instance--0a9c6d9482b6e051554be423.md) | 98 | `declaration-track:0a9c6d9482b6e051554be423ae61694ede1b810d6a29923e4cfc3cd490595a95` |
| 24 | `def` | [ofConjDivSelf](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant708ae1d69ae3d23a4cff07f2db2675d0ba13df2d7cbaecd90b480a519f112a1c.lean/declarations/ofconjdivself--57fd799456e888031a22105a.md) | 104 | `declaration-track:57fd799456e888031a22105abe592981b7f1262ec90447cd77e173025b8e2f35` |
| 25 | `def` | [exp](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant708ae1d69ae3d23a4cff07f2db2675d0ba13df2d7cbaecd90b480a519f112a1c.lean/declarations/exp--e0f8080468204c82b1517447.md) | 110 | `declaration-track:e0f8080468204c82b15174479427e717222c9a031e8f3af9423879f9b7ea5933` |
| 26 | `theorem` | [coe_exp](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant708ae1d69ae3d23a4cff07f2db2675d0ba13df2d7cbaecd90b480a519f112a1c.lean/declarations/coe-exp--8650c1209a3191beff49d4f1.md) | 116 | `result-track:8650c1209a3191beff49d4f1b6681ec63c85d51af44d5ea7239692f46cc90432` |
| 27 | `theorem` | [exp_zero](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant708ae1d69ae3d23a4cff07f2db2675d0ba13df2d7cbaecd90b480a519f112a1c.lean/declarations/exp-zero--d44f0ebf3a487af5e4c352fb.md) | 119 | `result-track:d44f0ebf3a487af5e4c352fbeea050787e568c77b5e631a67e3ec461c8d496fc` |
| 28 | `theorem` | [exp_add](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant708ae1d69ae3d23a4cff07f2db2675d0ba13df2d7cbaecd90b480a519f112a1c.lean/declarations/exp-add--c8b7b054acbeea728d999108.md) | 123 | `result-track:c8b7b054acbeea728d999108be146b8de9699866f1cd9e0213f6664357fdd8f4` |
| 29 | `def` | [expHom](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant708ae1d69ae3d23a4cff07f2db2675d0ba13df2d7cbaecd90b480a519f112a1c.lean/declarations/exphom--c746b7d30f497af4e69afa1d.md) | 130 | `declaration-track:c746b7d30f497af4e69afa1d8b18e49c263217b09858c164a25b71a4b77e6eac` |
| 30 | `lemma` | [exp_sub](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant708ae1d69ae3d23a4cff07f2db2675d0ba13df2d7cbaecd90b480a519f112a1c.lean/declarations/exp-sub--68b540f8640ca4e2d7f95547.md) | 135 | `result-track:68b540f8640ca4e2d7f9554784dc4e64febdf359ce1336eaa04da1c9f693f5f7` |
| 31 | `lemma` | [exp_neg](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant708ae1d69ae3d23a4cff07f2db2675d0ba13df2d7cbaecd90b480a519f112a1c.lean/declarations/exp-neg--a1c7db1d43b0271d9c71fd8d.md) | 136 | `result-track:a1c7db1d43b0271d9c71fd8d64f132ca13a7fcd336f02dea3e1f14358904a47a` |
| 32 | `lemma` | [exp_pi_ne_one](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant708ae1d69ae3d23a4cff07f2db2675d0ba13df2d7cbaecd90b480a519f112a1c.lean/declarations/exp-pi-ne-one--a39c3498367636dd43795cb0.md) | 138 | `result-track:a39c3498367636dd43795cb07ba79a199249de8deaece3b864fffe45ab8fdbf4` |
| 33 | `lemma` | [star_addChar](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant708ae1d69ae3d23a4cff07f2db2675d0ba13df2d7cbaecd90b480a519f112a1c.lean/declarations/star-addchar--3ea66c9a898df3865c25eead.md) | 147 | `result-track:3ea66c9a898df3865c25eead1995504abb5adf8ba172cae8dd1bbb48eaa8e2e0` |
| 34 | `lemma` | [starRingEnd_addChar](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant708ae1d69ae3d23a4cff07f2db2675d0ba13df2d7cbaecd90b480a519f112a1c.lean/declarations/starringend-addchar--3176a6afdaf8cdc2c708c8e8.md) | 154 | `result-track:3176a6afdaf8cdc2c708c8e8bab5268e75775e176df4fb292fa7243263a61a8e` |
| 35 | `instance` | [instSMul](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant708ae1d69ae3d23a4cff07f2db2675d0ba13df2d7cbaecd90b480a519f112a1c.lean/declarations/instsmul--bc6a00e6a3ecdd611d179463.md) | 158 | `declaration-track:bc6a00e6a3ecdd611d1794633e3f55d775a7bc998f4cfdeef8fa0ff8cee39365` |
| 36 | `instance` | [instSMulCommClass_left](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant708ae1d69ae3d23a4cff07f2db2675d0ba13df2d7cbaecd90b480a519f112a1c.lean/declarations/instsmulcommclass-left--f3d8914977106edc0a871d13.md) | 160 | `declaration-track:f3d8914977106edc0a871d13500cc134952d6d84b7703633fb1e4153ab26afd6` |
| 37 | `instance` | [instSMulCommClass_right](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant708ae1d69ae3d23a4cff07f2db2675d0ba13df2d7cbaecd90b480a519f112a1c.lean/declarations/instsmulcommclass-right--e3b507cb23162f33a08892dc.md) | 163 | `declaration-track:e3b507cb23162f33a08892dce7ea8f333a255789ea3bbb5efb845bd90196c207` |
| 38 | `instance` | [instIsScalarTower](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant708ae1d69ae3d23a4cff07f2db2675d0ba13df2d7cbaecd90b480a519f112a1c.lean/declarations/instisscalartower--9fbc9228f7d9b9086cfde64e.md) | 166 | `declaration-track:9fbc9228f7d9b9086cfde64efed29835f054091082482c5ea388633a7c799273` |
| 39 | `instance` | [instMulAction](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant708ae1d69ae3d23a4cff07f2db2675d0ba13df2d7cbaecd90b480a519f112a1c.lean/declarations/instmulaction--8675949cdfa5c3c1fd56c7f7.md) | 169 | `declaration-track:8675949cdfa5c3c1fd56c7f7a9d8f6eb32925e1a81a44bf29791f284f428fb7c` |
| 40 | `instance` | [instDistribMulAction](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant708ae1d69ae3d23a4cff07f2db2675d0ba13df2d7cbaecd90b480a519f112a1c.lean/declarations/instdistribmulaction--9913479400649f66dfcf471c.md) | 171 | `declaration-track:9913479400649f66dfcf471ca8eeaa201c715de01f91a2e012a532a9c548c8dc` |
| 41 | `lemma` | [smul_def](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant708ae1d69ae3d23a4cff07f2db2675d0ba13df2d7cbaecd90b480a519f112a1c.lean/declarations/smul-def--db2a67aa3f2f83cff48f623f.md) | 174 | `result-track:db2a67aa3f2f83cff48f623fdd66ab3a885b95c7b01ed50c9ebc78f005ac4bce` |
| 42 | `instance` | [instContinuousSMul](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant708ae1d69ae3d23a4cff07f2db2675d0ba13df2d7cbaecd90b480a519f112a1c.lean/declarations/instcontinuoussmul--c14b3643d95ac63f8fed24d5.md) | 176 | `declaration-track:c14b3643d95ac63f8fed24d5f32dc5e2f8a8183950a4b9780e44c83acefb3ae1` |
| 43 | `lemma` | [norm_smul](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant708ae1d69ae3d23a4cff07f2db2675d0ba13df2d7cbaecd90b480a519f112a1c.lean/declarations/norm-smul--3cfff61ae79315d9d058e0f6.md) | 180 | `result-track:3cfff61ae79315d9d058e0f6d46930d782d13b4a89ca01aca9b1625385f72b6c` |
| 44 | `def` | [fourierChar](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant708ae1d69ae3d23a4cff07f2db2675d0ba13df2d7cbaecd90b480a519f112a1c.lean/declarations/fourierchar--46894e08c16fd97d58578418.md) | 192 | `declaration-track:46894e08c16fd97d58578418f6f319756c176ff8e4145462037450ec1528c471` |
| 45 | `theorem` | [fourierChar_apply'](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant708ae1d69ae3d23a4cff07f2db2675d0ba13df2d7cbaecd90b480a519f112a1c.lean/declarations/fourierchar-apply--94cb485f36154fd855405936.md) | 201 | `result-track:94cb485f36154fd855405936dfaaf173b586e3c29edcae39b757a730cf8dfdf2` |
| 46 | `theorem` | [fourierChar_apply](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant708ae1d69ae3d23a4cff07f2db2675d0ba13df2d7cbaecd90b480a519f112a1c.lean/declarations/fourierchar-apply--cad0da951174e4a01d3e2d5f.md) | 203 | `result-track:cad0da951174e4a01d3e2d5ff4546ac8549fc2dd74b98dc2fe4f4328fa2be660` |
| 47 | `theorem` | [continuous_fourierChar](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant708ae1d69ae3d23a4cff07f2db2675d0ba13df2d7cbaecd90b480a519f112a1c.lean/declarations/continuous-fourierchar--143524aca98a1561195eda32.md) | 206 | `result-track:143524aca98a1561195eda3207490b47b0f9ba6e0c04f90ec0b9e65bd9a76410` |
| 48 | `theorem` | [fourierChar_ne_one](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant708ae1d69ae3d23a4cff07f2db2675d0ba13df2d7cbaecd90b480a519f112a1c.lean/declarations/fourierchar-ne-one--a11c1b28e1b9c7a698ae0af3.md) | 208 | `result-track:a11c1b28e1b9c7a698ae0af371d38db6f2c0756af0bb983133d03c17d749e76c` |
| 49 | `def` | [probChar](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant708ae1d69ae3d23a4cff07f2db2675d0ba13df2d7cbaecd90b480a519f112a1c.lean/declarations/probchar--c4b0624dc9564b82e92571ab.md) | 217 | `declaration-track:c4b0624dc9564b82e92571ab4314ef593158b7a73681354d4531b11f8e7eeb4c` |
| 50 | `theorem` | [probChar_apply'](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant708ae1d69ae3d23a4cff07f2db2675d0ba13df2d7cbaecd90b480a519f112a1c.lean/declarations/probchar-apply--72f7eaacf7672505100b795d.md) | 222 | `result-track:72f7eaacf7672505100b795d07cdc7bc3b1ec573f86bdfb67903c288bad8ef04` |
| 51 | `theorem` | [probChar_apply](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant708ae1d69ae3d23a4cff07f2db2675d0ba13df2d7cbaecd90b480a519f112a1c.lean/declarations/probchar-apply--30774b5d2e2cdc9dc5e78d04.md) | 224 | `result-track:30774b5d2e2cdc9dc5e78d042d9de6c2e1a0c39cce928065e58f26875321c632` |
| 52 | `theorem` | [continuous_probChar](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant708ae1d69ae3d23a4cff07f2db2675d0ba13df2d7cbaecd90b480a519f112a1c.lean/declarations/continuous-probchar--4003fba76faae9b8e956fc60.md) | 227 | `result-track:4003fba76faae9b8e956fc60c2ca129806f08d8cc50ef390ed953d35a93e5bc8` |
| 53 | `theorem` | [probChar_ne_one](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant708ae1d69ae3d23a4cff07f2db2675d0ba13df2d7cbaecd90b480a519f112a1c.lean/declarations/probchar-ne-one--acf1fa1d8d90e457ce68a3cc.md) | 229 | `result-track:acf1fa1d8d90e457ce68a3cc6e0bafb5e282fffd107ee895d796d4bf263465be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
