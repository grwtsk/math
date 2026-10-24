# Verification target: GRWTSK.Algebra.LinearAlgebra.Chain.Variant54e983092aeceb4e5463a31a4c5de9b6c404257ea771c8c7616e56243bb5a6b0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3fc58bb502930835c633147e29541e0886c1ed48",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Chain/Variant54e983092aeceb4e5463a31a4c5de9b6c404257ea771c8c7616e56243bb5a6b0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variant54e983092aeceb4e5463a31a4c5de9b6c404257ea771c8c7616e56243bb5a6b0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variant54e983092aeceb4e5463a31a4c5de9b6c404257ea771c8c7616e56243bb5a6b0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3fc58bb502930835c633147e29541e0886c1ed48`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Chain/Variant54e983092aeceb4e5463a31a4c5de9b6c404257ea771c8c7616e56243bb5a6b0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Chain/Variant54e983092aeceb4e5463a31a4c5de9b6c404257ea771c8c7616e56243bb5a6b0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.DirectSum.LinearMap` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.Weights.Cartan` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Nilpotent` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [eventually_genWeightSpace_smul_add_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variant54e983092aeceb4e5463a31a4c5de9b6c404257ea771c8c7616e56243bb5a6b0.lean/declarations/eventually-genweightspace-smul-add-eq-bot--40e27706fc77cd44f3d1a7fa.md) | 77 | `result-track:40e27706fc77cd44f3d1a7fa4fffa02aa9f117bcabf4090115a8e5351751c349` |
| 2 | `lemma` | [exists_genWeightSpace_smul_add_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variant54e983092aeceb4e5463a31a4c5de9b6c404257ea771c8c7616e56243bb5a6b0.lean/declarations/exists-genweightspace-smul-add-eq-bot--3ac7ac37387f279f5a6c09d6.md) | 89 | `result-track:3ac7ac37387f279f5a6c09d6d8126b346f1a305f975f6388d8acbab079d20ba1` |
| 3 | `lemma` | [exists₂_genWeightSpace_smul_add_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variant54e983092aeceb4e5463a31a4c5de9b6c404257ea771c8c7616e56243bb5a6b0.lean/declarations/exists-genweightspace-smul-add-eq-bot--dee69b2089dcbf89792141d4.md) | 93 | `result-track:dee69b2089dcbf89792141d4bcfb694bcc081f8214dac78267d45cc020433cac` |
| 4 | `def` | [genWeightSpaceChain](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variant54e983092aeceb4e5463a31a4c5de9b6c404257ea771c8c7616e56243bb5a6b0.lean/declarations/genweightspacechain--d29edf96c51a7e498f3a4e25.md) | 110 | `declaration-track:d29edf96c51a7e498f3a4e250ccca29c6437421ab3837efe99d5bf1609911759` |
| 5 | `lemma` | [genWeightSpaceChain_def](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variant54e983092aeceb4e5463a31a4c5de9b6c404257ea771c8c7616e56243bb5a6b0.lean/declarations/genweightspacechain-def--43d7b5a997a2da1c0999ff74.md) | 113 | `result-track:43d7b5a997a2da1c0999ff74f0f74ea9830598541539f0b39c72aee4dcf31d9b` |
| 6 | `lemma` | [genWeightSpaceChain_def'](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variant54e983092aeceb4e5463a31a4c5de9b6c404257ea771c8c7616e56243bb5a6b0.lean/declarations/genweightspacechain-def--3a84de25f872325c553a34dc.md) | 117 | `result-track:3a84de25f872325c553a34dc04a45870c5aa01cd4ea544181683db59ab4f3f71` |
| 7 | `lemma` | [genWeightSpaceChain_neg](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variant54e983092aeceb4e5463a31a4c5de9b6c404257ea771c8c7616e56243bb5a6b0.lean/declarations/genweightspacechain-neg--a539095c335c52424a749379.md) | 123 | `result-track:a539095c335c52424a749379c561fa2f015aeefdc21dd80bb58df292e5290531` |
| 8 | `lemma` | [genWeightSpace_le_genWeightSpaceChain](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variant54e983092aeceb4e5463a31a4c5de9b6c404257ea771c8c7616e56243bb5a6b0.lean/declarations/genweightspace-le-genweightspacechain--6070b9efa6e6750f35e4268b.md) | 129 | `result-track:6070b9efa6e6750f35e4268b2fc1e1a9a296f6c523773d0764766ebf57bfbf9d` |
| 9 | `lemma` | [lie_mem_genWeightSpaceChain_of_genWeightSpace_eq_bot_right](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variant54e983092aeceb4e5463a31a4c5de9b6c404257ea771c8c7616e56243bb5a6b0.lean/declarations/lie-mem-genweightspacechain-of-genweightspace-eq-bot-right--73abe3c6b662ee8ed9be9d85.md) | 141 | `result-track:73abe3c6b662ee8ed9be9d85757d4bf526d6c804de9c80353ed8a8abaf064515` |
| 10 | `lemma` | [lie_mem_genWeightSpaceChain_of_genWeightSpace_eq_bot_left](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variant54e983092aeceb4e5463a31a4c5de9b6c404257ea771c8c7616e56243bb5a6b0.lean/declarations/lie-mem-genweightspacechain-of-genweightspace-eq-bot-left--4120de2e49d8f3ad54faa9a6.md) | 164 | `result-track:4120de2e49d8f3ad54faa9a65e82b9038524ca2609ba7dc1a6b539058b66c656` |
| 11 | `lemma` | [trace_toEnd_genWeightSpaceChain_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variant54e983092aeceb4e5463a31a4c5de9b6c404257ea771c8c7616e56243bb5a6b0.lean/declarations/trace-toend-genweightspacechain-eq-zero--7564a99cfad29be84d17a838.md) | 177 | `result-track:7564a99cfad29be84d17a838bd0f2e982f7875a45cf67ce7a25e54f03f79c2c0` |
| 12 | `lemma` | [exists_forall_mem_corootSpace_smul_add_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variant54e983092aeceb4e5463a31a4c5de9b6c404257ea771c8c7616e56243bb5a6b0.lean/declarations/exists-forall-mem-corootspace-smul-add-eq-zero--a3ed87d8234b09f76c88a2a3.md) | 213 | `result-track:a3ed87d8234b09f76c88a2a3882eb2360780e3540ccb01725e1a86a3a553cd93` |
| 13 | `def` | [chainTopCoeff](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variant54e983092aeceb4e5463a31a4c5de9b6c404257ea771c8c7616e56243bb5a6b0.lean/declarations/chaintopcoeff--bec2da9ecde57b95e22d72e5.md) | 260 | `declaration-track:bec2da9ecde57b95e22d72e5ebf871f8aafcf2ff32671588b7ba99fc8bf255cf` |
| 14 | `def` | [chainBotCoeff](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variant54e983092aeceb4e5463a31a4c5de9b6c404257ea771c8c7616e56243bb5a6b0.lean/declarations/chainbotcoeff--79dda5492cd0f834fea281a0.md) | 268 | `declaration-track:79dda5492cd0f834fea281a0cf43f0d1657dc22473569fdcaf25c05c2ab28cae` |
| 15 | `lemma` | [chainTopCoeff_neg](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variant54e983092aeceb4e5463a31a4c5de9b6c404257ea771c8c7616e56243bb5a6b0.lean/declarations/chaintopcoeff-neg--1c879a82f681eb8336339bbe.md) | 270 | `result-track:1c879a82f681eb8336339bbebbab02eb5afc50d53accf29042b1c43192524145` |
| 16 | `lemma` | [chainBotCoeff_neg](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variant54e983092aeceb4e5463a31a4c5de9b6c404257ea771c8c7616e56243bb5a6b0.lean/declarations/chainbotcoeff-neg--c0429dfdb4a4542fe584192c.md) | 271 | `result-track:c0429dfdb4a4542fe584192ca848092f1b291ff5541e265bc85572b1e31f9141` |
| 17 | `lemma` | [chainTopCoeff_zero](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variant54e983092aeceb4e5463a31a4c5de9b6c404257ea771c8c7616e56243bb5a6b0.lean/declarations/chaintopcoeff-zero--be218f443d55092c1433fecb.md) | 274 | `result-track:be218f443d55092c1433fecb672716ee17445e4cf4d375ffe0c6aeb73735bd02` |
| 18 | `lemma` | [chainBotCoeff_zero](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variant54e983092aeceb4e5463a31a4c5de9b6c404257ea771c8c7616e56243bb5a6b0.lean/declarations/chainbotcoeff-zero--5a8319e19ae3012485c1bbfe.md) | 275 | `result-track:5a8319e19ae3012485c1bbfe1c8528c9b78f7a028f9871a9d7427f65d51e17b6` |
| 19 | `lemma` | [chainTopCoeff_add_one](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variant54e983092aeceb4e5463a31a4c5de9b6c404257ea771c8c7616e56243bb5a6b0.lean/declarations/chaintopcoeff-add-one--b472e2bbcbc4895777e397ff.md) | 281 | `result-track:b472e2bbcbc4895777e397ffbcf4e2e0b00e3c7ab8a6d04631eed02da8c43996` |
| 20 | `lemma` | [genWeightSpace_chainTopCoeff_add_one_nsmul_add](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variant54e983092aeceb4e5463a31a4c5de9b6c404257ea771c8c7616e56243bb5a6b0.lean/declarations/genweightspace-chaintopcoeff-add-one-nsmul-add--819b976b029f38c55253f82c.md) | 295 | `result-track:819b976b029f38c55253f82ca8957ea6cd4080fc9401f93a3bed46e2e778e23e` |
| 21 | `lemma` | [genWeightSpace_chainTopCoeff_add_one_zsmul_add](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variant54e983092aeceb4e5463a31a4c5de9b6c404257ea771c8c7616e56243bb5a6b0.lean/declarations/genweightspace-chaintopcoeff-add-one-zsmul-add--278f4dd886ab7e0589d9667f.md) | 301 | `result-track:278f4dd886ab7e0589d9667f19ffee5df6aa74f634f1b96764a9c09addd74c61` |
| 22 | `lemma` | [genWeightSpace_chainBotCoeff_sub_one_zsmul_sub](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variant54e983092aeceb4e5463a31a4c5de9b6c404257ea771c8c7616e56243bb5a6b0.lean/declarations/genweightspace-chainbotcoeff-sub-one-zsmul-sub--3cd5c453f15a49fd3663937a.md) | 306 | `result-track:3cd5c453f15a49fd3663937a4761cae35d79110cb29bd7f1f6b83472c77ac462` |
| 23 | `lemma` | [genWeightSpace_nsmul_add_ne_bot_of_le](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variant54e983092aeceb4e5463a31a4c5de9b6c404257ea771c8c7616e56243bb5a6b0.lean/declarations/genweightspace-nsmul-add-ne-bot-of-le--7c82e79bf5b5fa7ceff8f9bc.md) | 313 | `result-track:7c82e79bf5b5fa7ceff8f9bc138f6368b02e5c1f6689ce358a58d06c6151e3d4` |
| 24 | `lemma` | [genWeightSpace_zsmul_add_ne_bot](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variant54e983092aeceb4e5463a31a4c5de9b6c404257ea771c8c7616e56243bb5a6b0.lean/declarations/genweightspace-zsmul-add-ne-bot--3bc347acd746492d8b0a3f5e.md) | 321 | `result-track:3bc347acd746492d8b0a3f5e85df0d395078e8ec4b9bbd8c3b88f91e019c9721` |
| 25 | `lemma` | [genWeightSpace_neg_zsmul_add_ne_bot](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variant54e983092aeceb4e5463a31a4c5de9b6c404257ea771c8c7616e56243bb5a6b0.lean/declarations/genweightspace-neg-zsmul-add-ne-bot--871c79cd7b76aeb14911814e.md) | 331 | `result-track:871c79cd7b76aeb14911814e48659e03f653d0e52324c515d4eeb09a29a48585` |
| 26 | `def` | [chainTop](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variant54e983092aeceb4e5463a31a4c5de9b6c404257ea771c8c7616e56243bb5a6b0.lean/declarations/chaintop--a8ab303cf4a7e97ac5ddd2e1.md) | 337 | `declaration-track:a8ab303cf4a7e97ac5ddd2e1ec0a52be94770be2b02a90895e0933bb55314b2c` |
| 27 | `def` | [chainBot](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variant54e983092aeceb4e5463a31a4c5de9b6c404257ea771c8c7616e56243bb5a6b0.lean/declarations/chainbot--7bc807db359927ee38f5ac8e.md) | 342 | `declaration-track:7bc807db359927ee38f5ac8ed759ed7ed7cc46330aff849618624aa180a7734e` |
| 28 | `lemma` | [coe_chainTop'](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variant54e983092aeceb4e5463a31a4c5de9b6c404257ea771c8c7616e56243bb5a6b0.lean/declarations/coe-chaintop--eb00bdbce63b7eab319cb7e7.md) | 345 | `result-track:eb00bdbce63b7eab319cb7e7e3a798dde6be9be6dec66fce6eedcf7cbe338861` |
| 29 | `lemma` | [coe_chainTop](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variant54e983092aeceb4e5463a31a4c5de9b6c404257ea771c8c7616e56243bb5a6b0.lean/declarations/coe-chaintop--5947f3df82c4c9e4c3a4a72f.md) | 347 | `result-track:5947f3df82c4c9e4c3a4a72f16d05cab220b99b2e8b8154cc00994996c85146a` |
| 30 | `lemma` | [coe_chainBot](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variant54e983092aeceb4e5463a31a4c5de9b6c404257ea771c8c7616e56243bb5a6b0.lean/declarations/coe-chainbot--26d2598eb11e5b483800e6eb.md) | 349 | `result-track:26d2598eb11e5b483800e6eb2cb30f59fb1445add7640415a551e58ecf001f39` |
| 31 | `lemma` | [chainTop_neg](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variant54e983092aeceb4e5463a31a4c5de9b6c404257ea771c8c7616e56243bb5a6b0.lean/declarations/chaintop-neg--e789ca5c9b5bbc35c98fa597.md) | 351 | `result-track:e789ca5c9b5bbc35c98fa5979408707cceb7a1397d9b0731b159b44bf1db4c09` |
| 32 | `lemma` | [chainBot_neg](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variant54e983092aeceb4e5463a31a4c5de9b6c404257ea771c8c7616e56243bb5a6b0.lean/declarations/chainbot-neg--89aa386764c58b378cee38a2.md) | 352 | `result-track:89aa386764c58b378cee38a2c770e198633dccf1fc747bb69b24a21c8cd135ac` |
| 33 | `lemma` | [chainTop_zero](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variant54e983092aeceb4e5463a31a4c5de9b6c404257ea771c8c7616e56243bb5a6b0.lean/declarations/chaintop-zero--050a3ddf5fe1a09acf7bb682.md) | 354 | `result-track:050a3ddf5fe1a09acf7bb682f2ae5809f04c970313d9b0dc29102a9afbd7a489` |
| 34 | `lemma` | [chainBot_zero](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variant54e983092aeceb4e5463a31a4c5de9b6c404257ea771c8c7616e56243bb5a6b0.lean/declarations/chainbot-zero--3c089a726097ecc35bc3dafa.md) | 355 | `result-track:3c089a726097ecc35bc3dafae9f16fec89a064b2645bc2ca8ab461d255727e25` |
| 35 | `lemma` | [genWeightSpace_add_chainTop](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variant54e983092aeceb4e5463a31a4c5de9b6c404257ea771c8c7616e56243bb5a6b0.lean/declarations/genweightspace-add-chaintop--935895778869cc60c780f6d8.md) | 361 | `result-track:935895778869cc60c780f6d878af47c7fc7b5a0619bddd02d695661e15d1d594` |
| 36 | `lemma` | [genWeightSpace_neg_add_chainBot](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variant54e983092aeceb4e5463a31a4c5de9b6c404257ea771c8c7616e56243bb5a6b0.lean/declarations/genweightspace-neg-add-chainbot--c4a4f3aabd77db3021b16d63.md) | 366 | `result-track:c4a4f3aabd77db3021b16d634558f32a8d3ef06da636919fceb3701e7c65f29c` |
| 37 | `lemma` | [chainTop_isNonZero'](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variant54e983092aeceb4e5463a31a4c5de9b6c404257ea771c8c7616e56243bb5a6b0.lean/declarations/chaintop-isnonzero--8cc2009f473ef1393b42f247.md) | 370 | `result-track:8cc2009f473ef1393b42f24719457bd5c42cde63d029e88fb0e115488361455c` |
| 38 | `lemma` | [chainTop_isNonZero](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variant54e983092aeceb4e5463a31a4c5de9b6c404257ea771c8c7616e56243bb5a6b0.lean/declarations/chaintop-isnonzero--02052e12b112f4e93571a27f.md) | 378 | `result-track:02052e12b112f4e93571a27f074d342c170612986518cff19a2fec8ed230b896` |
| 39 | `lemma` | [LieModule.isNilpotent_toEnd_of_mem_rootSpace](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variant54e983092aeceb4e5463a31a4c5de9b6c404257ea771c8c7616e56243bb5a6b0.lean/declarations/liemodule-isnilpotent-toend-of-mem-rootspace--073ea0c8594495d5e0f41430.md) | 395 | `result-track:073ea0c8594495d5e0f41430fea271c9a64d2227ea5efae2146a59e26db5a7ff` |
| 40 | `lemma` | [LieAlgebra.isNilpotent_ad_of_mem_rootSpace](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variant54e983092aeceb4e5463a31a4c5de9b6c404257ea771c8c7616e56243bb5a6b0.lean/declarations/liealgebra-isnilpotent-ad-of-mem-rootspace--220229750f50a8d2aa619fdc.md) | 415 | `result-track:220229750f50a8d2aa619fdcbb1a793b27922437427b2cf646ffe321d171a203` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
