# Verification target: GRWTSK.Algebra.SubDPIdeal.Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7854e39795ffabb5082ab39d799549ae6c79ddb1",
  "lexical_observation_count": 65,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean/index.md) · [Full source](../../../../mathematics/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7854e39795ffabb5082ab39d799549ae6c79ddb1`.

Source path: `GRWTSK/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsSubDPIdeal](../../../../mathematics/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean/declarations/issubdpideal--fddcce996b377342446f2aaf.md) | 81 | `declaration-track:fddcce996b377342446f2aaf3b0ddb5e30d89f07ddc8f6e057daf44ba3006d53` |
| 2 | `theorem` | [self](../../../../mathematics/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean/declarations/self--92b5d260ac0bd10d6adba3cd.md) | 94 | `result-track:92b5d260ac0bd10d6adba3cde93041d520b5b4bf6313f852e7df9d7131c9f059` |
| 3 | `def` | [dividedPowers](../../../../mathematics/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean/declarations/dividedpowers--6c1a676b9c86117eba1cafd4.md) | 100 | `declaration-track:6c1a676b9c86117eba1cafd4d1ae7e2e7cc726f477a829c4269b49d3a0408407` |
| 4 | `lemma` | [dpow_eq](../../../../mathematics/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean/declarations/dpow-eq--3bc86bccf4a1c8b20762fbca.md) | 118 | `result-track:3bc86bccf4a1c8b20762fbca59190f413a273563d594141e529b8172ab8db5ca` |
| 5 | `lemma` | [dpow_eq_of_mem](../../../../mathematics/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean/declarations/dpow-eq-of-mem--2ff028cbccf16d0a25b0be8c.md) | 121 | `result-track:2ff028cbccf16d0a25b0be8ce322dbb2e3ee42f28c158821d61840a162d1268e` |
| 6 | `theorem` | [isDPMorphism](../../../../mathematics/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean/declarations/isdpmorphism--2ddf5f1f0dfb360aae4f86ae.md) | 124 | `result-track:2ddf5f1f0dfb360aae4f86ae86849bdf49ef26ec83ffcc3ddb5ec68a8058adfa` |
| 7 | `theorem` | [isSubDPIdeal_inf_iff](../../../../mathematics/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean/declarations/issubdpideal-inf-iff--4315715b8e883f348638e0fe.md) | 135 | `result-track:4315715b8e883f348638e0fec100518b5a7c0a6b41ab91d82362f8450518a516` |
| 8 | `theorem` | [span_isSubDPIdeal_iff](../../../../mathematics/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean/declarations/span-issubdpideal-iff--84107e0ae4c092c39ebf05ca.md) | 152 | `result-track:84107e0ae4c092c39ebf05ca3591ed82672d57046713b8752c849e15d4f7f1f5` |
| 9 | `theorem` | [isSubDPIdeal_sup](../../../../mathematics/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean/declarations/issubdpideal-sup--826ed35624d47068150fb38f.md) | 175 | `result-track:826ed35624d47068150fb38fecd4220cf378a92ca9d8e71abb79035b766f6de0` |
| 10 | `theorem` | [isSubDPIdeal_iSup](../../../../mathematics/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean/declarations/issubdpideal-isup--a67ea5764a6fcfd1a383d33b.md) | 184 | `result-track:a67ea5764a6fcfd1a383d33b4a597fca3e9a50ac7b5dcece95d9618b4d235daf` |
| 11 | `theorem` | [isSubDPIdeal_iInf](../../../../mathematics/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean/declarations/issubdpideal-iinf--7ca90f46abf3f53b4df3b51a.md) | 191 | `result-track:7ca90f46abf3f53b4df3b51a4544b456c4110674142df291b8caa948f37ed838` |
| 12 | `theorem` | [isSubDPIdeal_map_of_isSubDPIdeal](../../../../mathematics/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean/declarations/issubdpideal-map-of-issubdpideal--58552357ca514af9c536882f.md) | 203 | `result-track:58552357ca514af9c536882f984445c25604d4b1432cb9e233d3133d1d9674aa` |
| 13 | `theorem` | [isSubDPIdeal_map](../../../../mathematics/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean/declarations/issubdpideal-map--1e63cf71573f3bc9f72e49dd.md) | 212 | `result-track:1e63cf71573f3bc9f72e49ddcd5016224da51ff745e2e510aa2cd639b2ccac18` |
| 14 | `structure` | [SubDPIdeal](../../../../mathematics/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean/declarations/subdpideal--74e5e2d1ed59b3e016e0054f.md) | 221 | `declaration-track:74e5e2d1ed59b3e016e0054f66887fd0154fb59ad6c6798f602e01e9066e352c` |
| 15 | `def` | [mk'](../../../../mathematics/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean/declarations/mk--b9bff0432608b35d5d856889.md) | 232 | `declaration-track:b9bff0432608b35d5d8568894bc756d1004af186ee9041c0e340b64c3aa03ee8` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean/declarations/instance--d27a7720e66d56f3fe4b82e6.md) | 234 | `declaration-track:d27a7720e66d56f3fe4b82e63c7f8791fcb520c506b2ead385e73a8473eff05a` |
| 17 | `instance` | [(anonymous)](../../../../mathematics/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean/declarations/instance--16df6d09ff2c48cbdc1ba36c.md) | 240 | `declaration-track:16df6d09ff2c48cbdc1ba36c38eca33be8e29161a517b5aab1300e4d60365d97` |
| 18 | `def` | [toIdeal](../../../../mathematics/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean/declarations/toideal--04704da65af25e740b464be7.md) | 244 | `declaration-track:04704da65af25e740b464be7723aef22283c72753061fb47c3f10faecfb4a1d2` |
| 19 | `instance` | [(anonymous)](../../../../mathematics/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean/declarations/instance--4f4ac2242b89d699f7815dcd.md) | 246 | `declaration-track:4f4ac2242b89d699f7815dcdc31d35b8fc83c4fc6b9c931d325644704f0cb759` |
| 20 | `theorem` | [coe_def](../../../../mathematics/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean/declarations/coe-def--b5a461c4027ac063e663640c.md) | 248 | `result-track:b5a461c4027ac063e663640c75595319b581a32201bdb209122ac37ab53f74bd` |
| 21 | `theorem` | [memCarrier](../../../../mathematics/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean/declarations/memcarrier--ccf9f117e0af0de675e31683.md) | 251 | `result-track:ccf9f117e0af0de675e31683a40f661b14793ec303c12a2a00fe0314568985d2` |
| 22 | `lemma` | [toIsSubDPIdeal](../../../../mathematics/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean/declarations/toissubdpideal--1e7b2c71ce19947e62a8303f.md) | 254 | `result-track:1e7b2c71ce19947e62a8303f00247ee98f8ab666a8a4d51c34464f09f79ef51b` |
| 23 | `def` | [prod](../../../../mathematics/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean/declarations/prod--f6334c4a37a85ec8c75b47f8.md) | 263 | `declaration-track:f6334c4a37a85ec8c75b47f83bb004ad0389f527c0f7188f10252ebe29ed3d71` |
| 24 | `instance` | [(anonymous)](../../../../mathematics/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean/declarations/instance--be71883c8dbe5f0d6ab8cb28.md) | 282 | `declaration-track:be71883c8dbe5f0d6ab8cb283f8a475c0db43c2ec99887054bab181e4988dd2b` |
| 25 | `instance` | [(anonymous)](../../../../mathematics/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean/declarations/instance--4470f4fb2bfa3978d561dc62.md) | 284 | `declaration-track:4470f4fb2bfa3978d561dc62f98853e696302d977c6721d6c491b7c89ea2cbc2` |
| 26 | `theorem` | [le_iff](../../../../mathematics/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean/declarations/le-iff--7ca47b65475d77872fa5d322.md) | 286 | `result-track:7ca47b65475d77872fa5d32263c591e414e7947a8995780029cebe742ed63346` |
| 27 | `instance` | [(anonymous)](../../../../mathematics/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean/declarations/instance--f1f5ea2c986fad0e5f25d77c.md) | 288 | `declaration-track:f1f5ea2c986fad0e5f25d77ce7ce348b140a123757ea25ad6dee7b9c4c8fc804` |
| 28 | `theorem` | [lt_iff](../../../../mathematics/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean/declarations/lt-iff--fb1b3bd6c9608115e8f7d87f.md) | 290 | `result-track:fb1b3bd6c9608115e8f7d87f2adbf91fb0998ad559c6d519f8f3e11f3284d218` |
| 29 | `instance` | [(anonymous)](../../../../mathematics/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean/declarations/instance--227469a6dce7e9d4583c6535.md) | 293 | `declaration-track:227469a6dce7e9d4583c6535119d554b784ad4d488325079d21df3bae53d9bde` |
| 30 | `instance` | [inhabited](../../../../mathematics/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean/declarations/inhabited--f81d1f9a1b7f7a68cd20b4b0.md) | 298 | `declaration-track:f81d1f9a1b7f7a68cd20b4b0c9233f8db31df03fe9b28355607b70c76f09cf49` |
| 31 | `instance` | [(anonymous)](../../../../mathematics/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean/declarations/instance--1273e52f3b5dc715b7f3a814.md) | 301 | `declaration-track:1273e52f3b5dc715b7f3a814c7a2cc147c216386ac30d18729a5c0c2715b5161` |
| 32 | `instance` | [(anonymous)](../../../../mathematics/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean/declarations/instance--c569f083014efb35d0e730eb.md) | 307 | `declaration-track:c569f083014efb35d0e730eb7264a4a498587ce32542cd5b5017f14f771aaf62` |
| 33 | `theorem` | [inf_carrier_def](../../../../mathematics/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean/declarations/inf-carrier-def--e3bb971d14fb056c17c10347.md) | 313 | `result-track:e3bb971d14fb056c17c10347e27453a910e25a50d14ed50cfc66db2413ba72f1` |
| 34 | `instance` | [(anonymous)](../../../../mathematics/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean/declarations/instance--556ee0123e84ec919b17ff53.md) | 315 | `declaration-track:556ee0123e84ec919b17ff531366333d74305695c161e565e5c8ef06c3710137` |
| 35 | `theorem` | [sInf_carrier_def](../../../../mathematics/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean/declarations/sinf-carrier-def--ab38c9a4e3fdcaa07d70c7b5.md) | 325 | `result-track:ab38c9a4e3fdcaa07d70c7b5b09017c0f469758fee29a62f3a2d7bbfad9837de` |
| 36 | `instance` | [(anonymous)](../../../../mathematics/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean/declarations/instance--8cc60470ebb47a3c8d6b4be6.md) | 328 | `declaration-track:8cc60470ebb47a3c8d6b4be65d4eeb2e64e70320157b347ffeb60d3e10f106e3` |
| 37 | `theorem` | [sup_carrier_def](../../../../mathematics/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean/declarations/sup-carrier-def--7e76423103fe3d0179478f01.md) | 331 | `result-track:7e76423103fe3d0179478f017d8725a85c431c64249236bcff9e292741472dda` |
| 38 | `instance` | [(anonymous)](../../../../mathematics/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean/declarations/instance--8add736bb99e68a5a745c36e.md) | 333 | `declaration-track:8add736bb99e68a5a745c36e466882452eba3c1904686bb8363f14f32de8600f` |
| 39 | `theorem` | [sSup_carrier_def](../../../../mathematics/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean/declarations/ssup-carrier-def--306498ee0348f62380a02daa.md) | 347 | `result-track:306498ee0348f62380a02daa041dbae77230314ea7c64f879e3fe6d7c30ce7c0` |
| 40 | `instance` | [(anonymous)](../../../../mathematics/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean/declarations/instance--3f6b64d043bf0a7b454f909b.md) | 350 | `declaration-track:3f6b64d043bf0a7b454f909bf18887c2b314a4dba46caf2452b960f17540657b` |
| 41 | `def` | [span](../../../../mathematics/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean/declarations/span--1b4ddf49a9ede57fd0f7fc07.md) | 381 | `declaration-track:1b4ddf49a9ede57fd0f7fc075cea1f23cbc42b6489b28157a035a77e236a4d00` |
| 42 | `theorem` | [_root_.DividedPowers.dpow_span_isSubideal](../../../../mathematics/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean/declarations/root-dividedpowers-dpow-span-issubideal--d1da9c5f235164f8035b0a56.md) | 383 | `result-track:d1da9c5f235164f8035b0a56efbac4edc3b1383bed62b071c8a8ac36a96439e2` |
| 43 | `theorem` | [dpow_mem_span_of_mem_span](../../../../mathematics/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean/declarations/dpow-mem-span-of-mem-span--6db5aa3fb3c795ed262fbc51.md) | 389 | `result-track:6db5aa3fb3c795ed262fbc511ff67094590b5faef3e12e3cf800162b6e2d87fa` |
| 44 | `theorem` | [span_carrier_eq_dpow_span](../../../../mathematics/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean/declarations/span-carrier-eq-dpow-span--e8fb92b38b657d5e41761c34.md) | 417 | `result-track:e8fb92b38b657d5e41761c34e1dd3e018a91358283402ae87613a4694a9d6e17` |
| 45 | `theorem` | [isSubDPIdeal_ker](../../../../mathematics/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean/declarations/issubdpideal-ker--e6eb092a2fddae6c64f340b8.md) | 451 | `result-track:e6eb092a2fddae6c64f340b8a441a66c08feda8fd375c651233282688de22c1c` |
| 46 | `def` | [DPMorphism.ker](../../../../mathematics/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean/declarations/dpmorphism-ker--0887c836c37edcdcf0630ba0.md) | 462 | `declaration-track:0887c836c37edcdcf0630ba0f0ec16bd7c3f786a8afb523437f968ff435aeca6` |
| 47 | `def` | [dpEqualizer](../../../../mathematics/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean/declarations/dpequalizer--2541a2cee06880024a4c7ae1.md) | 479 | `declaration-track:2541a2cee06880024a4c7ae19d9ef57bbd0bf0f997fc9e51c002f4abbbaf490d` |
| 48 | `theorem` | [mem_dpEqualizer_iff](../../../../mathematics/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean/declarations/mem-dpequalizer-iff--78b69d717a08a688f8ff5447.md) | 494 | `result-track:78b69d717a08a688f8ff54475d0bedfac5b45e2ab6d165b3217d47b7a9a13cde` |
| 49 | `theorem` | [dpEqualizer_is_dp_ideal_left](../../../../mathematics/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean/declarations/dpequalizer-is-dp-ideal-left--4c4a57cf38526226ae3f0d14.md) | 499 | `result-track:4c4a57cf38526226ae3f0d140b1f009e148efbf570c500e541332f0281575663` |
| 50 | `theorem` | [dpEqualizer_is_dp_ideal_right](../../../../mathematics/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean/declarations/dpequalizer-is-dp-ideal-right--bc23be4d54365e34e3e84a27.md) | 504 | `result-track:bc23be4d54365e34e3e84a27ef181c83b90dd6358bbcd4b4ae87f9de64807268` |
| 51 | `theorem` | [le_equalizer_of_isDPMorphism](../../../../mathematics/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean/declarations/le-equalizer-of-isdpmorphism--288196e1d325919bd86381d3.md) | 511 | `result-track:288196e1d325919bd86381d33eeb15bf14358b1271e03c0088238ed41588c276` |
| 52 | `def` | [subDPIdeal_inf_of_quot](../../../../mathematics/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean/declarations/subdpideal-inf-of-quot--d1c24e3a2579e1d5feb96a79.md) | 522 | `declaration-track:d1c24e3a2579e1d5feb96a795ebc51486ad057b33c59e209b6d191e2b060a6bd` |
| 53 | `def` | [dpow](../../../../mathematics/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean/declarations/dpow--d36f431822bffc95ae310bb7.md) | 556 | `declaration-track:d36f431822bffc95ae310bb768f5d6304ad1dfd937ceaa192027d067b360c9d6` |
| 54 | `theorem` | [dpow_apply'](../../../../mathematics/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean/declarations/dpow-apply--2e27ca6a3904b6159911e179.md) | 564 | `result-track:2e27ca6a3904b6159911e179c339d07cb005c0e9f68ad68617cbcd30ab6e8146` |
| 55 | `def` | [dividedPowers](../../../../mathematics/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean/declarations/dividedpowers--fdcaf612c10ea27e8942f9c9.md) | 577 | `declaration-track:fdcaf612c10ea27e8942f9c924bfbf1ab2bc1f38ef4b81693b31354417558ba3` |
| 56 | `theorem` | [dpow_def](../../../../mathematics/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean/declarations/dpow-def--5b2b1888724044ab3a14d395.md) | 615 | `result-track:5b2b1888724044ab3a14d3954f970a03be9ff8c93a2f104f3d78b2336f70eb63` |
| 57 | `theorem` | [dpow_apply](../../../../mathematics/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean/declarations/dpow-apply--b82b52378fe1230612a5813f.md) | 617 | `result-track:b82b52378fe1230612a5813fd5c7f06c605565be6a7bcc9b1bec3672cca24063` |
| 58 | `theorem` | [isDPMorphism](../../../../mathematics/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean/declarations/isdpmorphism--0f0c42aa411660ad61661089.md) | 621 | `result-track:0f0c42aa411660ad61661089a8a2f37b7c1cfd2a7c75994e2de29342b86d9dc4` |
| 59 | `theorem` | [dividedPowers_unique](../../../../mathematics/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean/declarations/dividedpowers-unique--2b8d2a744a19acd971e369ea.md) | 624 | `result-track:2b8d2a744a19acd971e369ea1eef77ec432139f6fbc5cf9279a7b5e26962d4f8` |
| 60 | `def` | [dpow](../../../../mathematics/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean/declarations/dpow--8be70c9537a10fc57aeebae3.md) | 637 | `declaration-track:8be70c9537a10fc57aeebae3521d50e7b1f9c2e99a4655be935f17d0382241b5` |
| 61 | `theorem` | [isSubDPIdeal_aux](../../../../mathematics/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean/declarations/issubdpideal-aux--1904ce0a0817d6f66ed97bd1.md) | 641 | `result-track:1904ce0a0817d6f66ed97bd1a78eb0388dd0314f4e0a66baada46409924f1b7f` |
| 62 | `def` | [dividedPowers](../../../../mathematics/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean/declarations/dividedpowers--7485788edce37452c37328f3.md) | 649 | `declaration-track:7485788edce37452c37328f34bb58aa2945b1b42b74d524f3257fabfa2445175` |
| 63 | `theorem` | [dpow_apply](../../../../mathematics/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean/declarations/dpow-apply--a7045afec1c734742c32107d.md) | 654 | `result-track:a7045afec1c734742c32107d2afb9f32c418431a5eac3194275430e9632030da` |
| 64 | `theorem` | [isDPMorphism](../../../../mathematics/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean/declarations/isdpmorphism--fc8bda65e8100c421deca8d4.md) | 659 | `result-track:fc8bda65e8100c421deca8d4ab53ae2a8934a9be043f6af620227018dc3d5521` |
| 65 | `theorem` | [dividedPowers_unique](../../../../mathematics/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean/declarations/dividedpowers-unique--11aeee8fcd2accb14e4cb6f5.md) | 663 | `result-track:11aeee8fcd2accb14e4cb6f5ac0f00db5208e120ddf5fc76c95d1018edc2a7da` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
