# GRWTSK.Analysis.AsymptoticAnalysis.AsymptoticEquivalent.Variant23e0e85932766593b2fcad3b16f6725c79376550746db7c4bf7e4256b16ce5a0

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**58 observed declarations and anonymous commands**, 48 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/AsymptoticAnalysis/AsymptoticEquivalent/Variant23e0e85932766593b2fcad3b16f6725c79376550746db7c4bf7e4256b16ce5a0.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7af063f85ac5a0b7702308d63f30763c5ad4feed`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/AsymptoticAnalysis/AsymptoticEquivalent/Variant23e0e85932766593b2fcad3b16f6725c79376550746db7c4bf7e4256b16ce5a0.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [IsEquivalent](declarations/isequivalent--302237c3f6629389c2fc8a09.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [IsEquivalent.isLittleO](declarations/isequivalent-islittleo--eedce509998e9b7d75c83ef7.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [IsEquivalent.isBigO](declarations/isequivalent-isbigo--6855f748fdcf06f76ccbccf7.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [IsEquivalent.isBigO_symm](declarations/isequivalent-isbigo-symm--49b83ffcad6e5ea9dc1de10b.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [IsEquivalent.isTheta](declarations/isequivalent-istheta--bcfc13b40c710035dac77253.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [IsEquivalent.isTheta_symm](declarations/isequivalent-istheta-symm--1114f1f150d8f4638725b9b2.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [IsEquivalent.refl](declarations/isequivalent-refl--4d929dfdfc972dcc7024bef2.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [IsEquivalent.symm](declarations/isequivalent-symm--13e0540b8885e930f89ef36d.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [IsEquivalent.trans](declarations/isequivalent-trans--7e43fa9511f0eb73afb07792.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [IsEquivalent.congr_left](declarations/isequivalent-congr-left--9a5408db9b8d5683d6a7e105.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [IsEquivalent.congr_right](declarations/isequivalent-congr-right--bf1539cc506dd0abf5510762.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [isEquivalent_zero_iff_eventually_zero](declarations/isequivalent-zero-iff-eventually-zero--fa09e3735018df03eddc46f1.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [isEquivalent_zero_iff_isBigO_zero](declarations/isequivalent-zero-iff-isbigo-zero--0f382eaef8895789bb2ab183.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [isEquivalent_const_iff_tendsto](declarations/isequivalent-const-iff-tendsto--1bb7ab2fea59ec32a208ccc0.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [IsEquivalent.tendsto_const](declarations/isequivalent-tendsto-const--d4e7129a55c6d6cc85128938.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [IsEquivalent.tendsto_nhds](declarations/isequivalent-tendsto-nhds--1f3161525281766ad752ea3a.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [IsEquivalent.tendsto_nhds_iff](declarations/isequivalent-tendsto-nhds-iff--420adf21386c001942712b4e.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [IsEquivalent.add_isLittleO](declarations/isequivalent-add-islittleo--4f7754a77432a5e801cf921f.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [IsEquivalent.sub_isLittleO](declarations/isequivalent-sub-islittleo--b8288ac6302c84397c802164.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [IsLittleO.add_isEquivalent](declarations/islittleo-add-isequivalent--06da4ced6dce19a4bc7c7e9d.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [IsLittleO.isEquivalent](declarations/islittleo-isequivalent--2c04b852639adbb8653255ac.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [IsEquivalent.neg](declarations/isequivalent-neg--85953d03e2fd7a15d365c3a2.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [isEquivalent_iff_exists_eq_mul](declarations/isequivalent-iff-exists-eq-mul--9f7e18897dd830c749b273f6.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [IsEquivalent.exists_eq_mul](declarations/isequivalent-exists-eq-mul--00b2afb1cc57a1973c9a05f9.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [isEquivalent_of_tendsto_one](declarations/isequivalent-of-tendsto-one--412aa3f55ddc7200f31420eb.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [isEquivalent_of_tendsto_one'](declarations/isequivalent-of-tendsto-one--d09dcde3c136ff66efe4bc85.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [isEquivalent_iff_tendsto_one](declarations/isequivalent-iff-tendsto-one--cd79d41efba889660849973b.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [IsEquivalent.smul](declarations/isequivalent-smul--86d6ed061186e267984a48a4.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [IsEquivalent.mul](declarations/isequivalent-mul--b8edbe63e046d6c2442d0116.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [IsEquivalent.listProd](declarations/isequivalent-listprod--ee18b23c239892655ffd7760.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [IsEquivalent.multisetProd](declarations/isequivalent-multisetprod--3f2f8d22d06185f111c529d3.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [IsEquivalent.finsetProd](declarations/isequivalent-finsetprod--a050328ae7270a07e1d85d39.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [IsEquivalent.inv](declarations/isequivalent-inv--f65e19ec3e18601640201b2e.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [IsEquivalent.div](declarations/isequivalent-div--cf0e73a6b761e0ac7b4d1bbd.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [IsEquivalent.pow](declarations/isequivalent-pow--c539ce8c47a07e25184fcbcb.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [IsEquivalent.zpow](declarations/isequivalent-zpow--5914859ae087750c770c927d.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [IsEquivalent.tendsto_atTop](declarations/isequivalent-tendsto-attop--a028b10102bff48e905c65bc.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [IsEquivalent.tendsto_atTop_iff](declarations/isequivalent-tendsto-attop-iff--c8d8e8c93fbaca4769428309.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [IsEquivalent.tendsto_atBot](declarations/isequivalent-tendsto-atbot--b88afb529ed7acfb43d5f5a4.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [IsEquivalent.tendsto_atBot_iff](declarations/isequivalent-tendsto-atbot-iff--89b32baee9012c61bf633bc6.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [Filter.EventuallyEq.isEquivalent](declarations/filter-eventuallyeq-isequivalent--9147b1a51d82e306723636ce.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [Filter.EventuallyEq.trans_isEquivalent](declarations/filter-eventuallyeq-trans-isequivalent--a8944517e3a2354ef1a47f22.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [transIsEquivalentIsEquivalent](declarations/transisequivalentisequivalent--7c044a66f9e76566eac297d8.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [transEventuallyEqIsEquivalent](declarations/transeventuallyeqisequivalent--352cda8591bbc4492e900a2e.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [IsEquivalent.trans_eventuallyEq](declarations/isequivalent-trans-eventuallyeq--dcde74ab2d379da1630bd618.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `instance` | [transIsEquivalentEventuallyEq](declarations/transisequivalenteventuallyeq--424dc5cf7fa7631f7d1bc6fd.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [IsEquivalent.trans_isBigO](declarations/isequivalent-trans-isbigo--e72374b919036938f07c9ca6.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `instance` | [transIsEquivalentIsBigO](declarations/transisequivalentisbigo--25767b5ad88e8fb963fad668.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [IsBigO.trans_isEquivalent](declarations/isbigo-trans-isequivalent--cd2cd0425a5c4389ab7c5873.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `instance` | [transIsBigOIsEquivalent](declarations/transisbigoisequivalent--04c4f5ff1111201e32f40919.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [IsEquivalent.trans_isLittleO](declarations/isequivalent-trans-islittleo--cf8b7b427fdb635a868d0454.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `instance` | [transIsEquivalentIsLittleO](declarations/transisequivalentislittleo--183f1aa7c569c3cb009d4977.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [IsLittleO.trans_isEquivalent](declarations/islittleo-trans-isequivalent--79c9a65ebb0133aef745a329.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `instance` | [transIsLittleOIsEquivalent](declarations/transislittleoisequivalent--dabab98d49c2d8e2a5cefe81.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [IsEquivalent.trans_isTheta](declarations/isequivalent-trans-istheta--7b5f67b935a872b9ded4192a.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `instance` | [transIsEquivalentIsTheta](declarations/transisequivalentistheta--924f642a7513ece8ba4f1ad9.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [IsTheta.trans_isEquivalent](declarations/istheta-trans-isequivalent--3c2e8e842fcd63395bcf26ca.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `instance` | [transIsThetaIsEquivalent](declarations/transisthetaisequivalent--ad02fb040448a12ce5ca7fb8.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
