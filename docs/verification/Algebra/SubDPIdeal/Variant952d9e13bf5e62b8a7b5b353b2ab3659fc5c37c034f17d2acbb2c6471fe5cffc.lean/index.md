# Verification target: GRWTSK.Algebra.SubDPIdeal.Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d48853bce2d1873c7253498403051f12d1c18c37",
  "lexical_observation_count": 65,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean/index.md) · [Full source](../../../../mathematics/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d48853bce2d1873c7253498403051f12d1c18c37`.

Source path: `GRWTSK/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean.json)

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
| 1 | `structure` | [IsSubDPIdeal](../../../../mathematics/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean/declarations/issubdpideal--f27a0ce92957fe0c1b831560.md) | 89 | `declaration-track:f27a0ce92957fe0c1b831560e6c48dee643bf0d44ca8f9fa71a63e4376fd3274` |
| 2 | `theorem` | [self](../../../../mathematics/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean/declarations/self--63b94b641a2d2e6b29bd7f4a.md) | 102 | `result-track:63b94b641a2d2e6b29bd7f4a673b9ed86931c878b2cf2d5e16c4a79efeebbfb8` |
| 3 | `def` | [dividedPowers](../../../../mathematics/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean/declarations/dividedpowers--47c199df4527b77023efa43c.md) | 108 | `declaration-track:47c199df4527b77023efa43c94837fdd1ec0260de007cdf9218aa6d9511ddbb0` |
| 4 | `lemma` | [dpow_eq](../../../../mathematics/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean/declarations/dpow-eq--04f85be8b12b0ab02b2589b2.md) | 126 | `result-track:04f85be8b12b0ab02b2589b2b9574d1ee3a5a9005c513cadab6e8783f2c19c69` |
| 5 | `lemma` | [dpow_eq_of_mem](../../../../mathematics/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean/declarations/dpow-eq-of-mem--ea9fce291d623e0b7f3e3d05.md) | 129 | `result-track:ea9fce291d623e0b7f3e3d055857b07fcae0d21e5dcb6fa2da32dea7f81c15f9` |
| 6 | `theorem` | [isDPMorphism](../../../../mathematics/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean/declarations/isdpmorphism--157bb5d236af9035cd0081c8.md) | 132 | `result-track:157bb5d236af9035cd0081c878f2861268763349e3ae56a0a37ca5d569adedb6` |
| 7 | `theorem` | [isSubDPIdeal_inf_iff](../../../../mathematics/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean/declarations/issubdpideal-inf-iff--af46791ef06f1a410467ccc3.md) | 143 | `result-track:af46791ef06f1a410467ccc39e504056237223ce6723cebde149f715face14d3` |
| 8 | `theorem` | [span_isSubDPIdeal_iff](../../../../mathematics/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean/declarations/span-issubdpideal-iff--dcfcd408e4ec38ffaf5bce2c.md) | 160 | `result-track:dcfcd408e4ec38ffaf5bce2c61f16d12cb1dfc7659fcde4de5fc62c8de47e7a7` |
| 9 | `theorem` | [isSubDPIdeal_sup](../../../../mathematics/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean/declarations/issubdpideal-sup--ca3eeec783490f637d6937a1.md) | 183 | `result-track:ca3eeec783490f637d6937a1d0a3558b28465f4d8475f8b002569c809f8b5aa5` |
| 10 | `theorem` | [isSubDPIdeal_iSup](../../../../mathematics/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean/declarations/issubdpideal-isup--759e026f4459794cdeebd645.md) | 192 | `result-track:759e026f4459794cdeebd6453cd24bf28e57ce34dd481d2fbbea59b2690cbf3f` |
| 11 | `theorem` | [isSubDPIdeal_iInf](../../../../mathematics/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean/declarations/issubdpideal-iinf--453e0971746f2b3231b55c2a.md) | 199 | `result-track:453e0971746f2b3231b55c2a2a55bf510ffa29091f684a58664ab9fcf0481f4f` |
| 12 | `theorem` | [isSubDPIdeal_map_of_isSubDPIdeal](../../../../mathematics/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean/declarations/issubdpideal-map-of-issubdpideal--f2f96f24efaed14b463c4813.md) | 211 | `result-track:f2f96f24efaed14b463c4813d6e6cebaddf13470f0005e4f716e1eb0523ae2f4` |
| 13 | `theorem` | [isSubDPIdeal_map](../../../../mathematics/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean/declarations/issubdpideal-map--38e81bf173d9dcca505c502a.md) | 220 | `result-track:38e81bf173d9dcca505c502ab4fcb420739038acad1224f81a04fce122465c81` |
| 14 | `structure` | [SubDPIdeal](../../../../mathematics/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean/declarations/subdpideal--3e6a2fcaf616990b9e180963.md) | 229 | `declaration-track:3e6a2fcaf616990b9e180963aecb354561a69b475d33d0321f7f561ced9138d7` |
| 15 | `def` | [mk'](../../../../mathematics/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean/declarations/mk--c9fd485d1bd49903532b5f91.md) | 240 | `declaration-track:c9fd485d1bd49903532b5f915b6f52bf70fc9bb577d127aa0e28f8adb7611640` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean/declarations/instance--9ab7f15fbca75dd076129775.md) | 242 | `declaration-track:9ab7f15fbca75dd0761297753f1462a445a966e52c00a304af8381a8b57b9934` |
| 17 | `instance` | [(anonymous)](../../../../mathematics/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean/declarations/instance--950fea4d3d4dccd01efa5e3f.md) | 248 | `declaration-track:950fea4d3d4dccd01efa5e3f49824669f772b6089909f4df04888835082cb7a6` |
| 18 | `def` | [toIdeal](../../../../mathematics/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean/declarations/toideal--eedd5db0506afb7b796f5fc8.md) | 252 | `declaration-track:eedd5db0506afb7b796f5fc8bde12abcd4c9d75c4415eb79eb3c2027038ada93` |
| 19 | `instance` | [(anonymous)](../../../../mathematics/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean/declarations/instance--30719549ff4f856b47a83126.md) | 254 | `declaration-track:30719549ff4f856b47a83126704dff1b4f1adac4e47f7f06325c946340f65253` |
| 20 | `theorem` | [coe_def](../../../../mathematics/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean/declarations/coe-def--694e0db9eb7ffeb7f78c63ec.md) | 256 | `result-track:694e0db9eb7ffeb7f78c63ece8775ea8e8a8162234b3f82e959f90700b1a0b90` |
| 21 | `theorem` | [memCarrier](../../../../mathematics/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean/declarations/memcarrier--2099e751db9bf0d90a579642.md) | 259 | `result-track:2099e751db9bf0d90a579642d8d07d6a381c60c6306df0082494d07392ba211b` |
| 22 | `lemma` | [toIsSubDPIdeal](../../../../mathematics/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean/declarations/toissubdpideal--1cf83c72de4068640bf58074.md) | 262 | `result-track:1cf83c72de4068640bf580745ae045d5d80a91b546a6cdceaa5a1b24484b5dbc` |
| 23 | `def` | [prod](../../../../mathematics/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean/declarations/prod--b92f76f36e805fb0249a3f1a.md) | 271 | `declaration-track:b92f76f36e805fb0249a3f1a2dd737fdf6d5c085588663502c861a8d62242453` |
| 24 | `instance` | [(anonymous)](../../../../mathematics/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean/declarations/instance--5bb431d7c0081c3bdbb2a719.md) | 290 | `declaration-track:5bb431d7c0081c3bdbb2a7193c4a070ca5f2bf7623aae8b0d54a1840b4e2f7d2` |
| 25 | `instance` | [(anonymous)](../../../../mathematics/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean/declarations/instance--4216b01edb8db0007f008fa4.md) | 292 | `declaration-track:4216b01edb8db0007f008fa46b3e77533a13a10737f06b33c74a60071e61de2b` |
| 26 | `theorem` | [le_iff](../../../../mathematics/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean/declarations/le-iff--483d3aa1cd11178d14a18eca.md) | 294 | `result-track:483d3aa1cd11178d14a18ecade20151b3bf4c50cd629b1adbed7bd59a791d4d8` |
| 27 | `instance` | [(anonymous)](../../../../mathematics/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean/declarations/instance--1221410c85dcb287a7d757e1.md) | 296 | `declaration-track:1221410c85dcb287a7d757e1a408b8a26d8f198e37e4d309fe4cf01472155435` |
| 28 | `theorem` | [lt_iff](../../../../mathematics/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean/declarations/lt-iff--8605627426aac2fc5a604d31.md) | 298 | `result-track:8605627426aac2fc5a604d313732d7c6c65274ee97e380980e621b60339ec481` |
| 29 | `instance` | [(anonymous)](../../../../mathematics/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean/declarations/instance--8b28067d3d8f962f85b695a7.md) | 301 | `declaration-track:8b28067d3d8f962f85b695a7d41817ee87926a49ab1af2f6bd7ef202d7d31dfc` |
| 30 | `instance` | [inhabited](../../../../mathematics/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean/declarations/inhabited--599ba938be102d9e76f34284.md) | 306 | `declaration-track:599ba938be102d9e76f342844fad465559a126c9397ae58d453bbc14831e52c6` |
| 31 | `instance` | [(anonymous)](../../../../mathematics/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean/declarations/instance--6638b9ffff0859d73688c9e0.md) | 309 | `declaration-track:6638b9ffff0859d73688c9e0f49b8ea38a32680821b580e66d240fb21f0b0008` |
| 32 | `instance` | [(anonymous)](../../../../mathematics/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean/declarations/instance--0e37ef589086001a7eafe9e1.md) | 315 | `declaration-track:0e37ef589086001a7eafe9e1d4894cf0fce970b8cc879e882e68e1d41c28442d` |
| 33 | `theorem` | [inf_carrier_def](../../../../mathematics/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean/declarations/inf-carrier-def--c9f66b7b2dab016a5e92e96d.md) | 321 | `result-track:c9f66b7b2dab016a5e92e96d61a0ca8b7445a80041dbeb5baab01e1c691b1f4e` |
| 34 | `instance` | [(anonymous)](../../../../mathematics/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean/declarations/instance--1b8b61cff7e4522258f5520e.md) | 323 | `declaration-track:1b8b61cff7e4522258f5520ef37fe9af4c57c60149f086c8ed4acdc9e3825a50` |
| 35 | `theorem` | [sInf_carrier_def](../../../../mathematics/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean/declarations/sinf-carrier-def--c57fa07e896cb4b13d46ac2d.md) | 333 | `result-track:c57fa07e896cb4b13d46ac2da64877f79f3d5c129f81ad2ac7d7c7696248f088` |
| 36 | `instance` | [(anonymous)](../../../../mathematics/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean/declarations/instance--4d8b249d776aae6f9e506ab5.md) | 336 | `declaration-track:4d8b249d776aae6f9e506ab58cbd5f3be6a333960b804cffab64c9f61b67672d` |
| 37 | `theorem` | [sup_carrier_def](../../../../mathematics/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean/declarations/sup-carrier-def--9bc856f30781b662a8a0fe0c.md) | 339 | `result-track:9bc856f30781b662a8a0fe0c087af14688947190028c9a911059559769fd3ccd` |
| 38 | `instance` | [(anonymous)](../../../../mathematics/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean/declarations/instance--c5f2e0771e647e092304e966.md) | 341 | `declaration-track:c5f2e0771e647e092304e966c08d7a6ff1462767482e24fd07782ee629a8bd13` |
| 39 | `theorem` | [sSup_carrier_def](../../../../mathematics/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean/declarations/ssup-carrier-def--f5998e5844d0ba1099846480.md) | 355 | `result-track:f5998e5844d0ba10998464809e86d88ec3775353af4e4bf4161a09357a2409b0` |
| 40 | `instance` | [(anonymous)](../../../../mathematics/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean/declarations/instance--da13e540411650b140f06760.md) | 358 | `declaration-track:da13e540411650b140f06760589ede05bf048be12aab3af16a41f2916674deb6` |
| 41 | `def` | [span](../../../../mathematics/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean/declarations/span--39935d6a96053a3ea654598a.md) | 389 | `declaration-track:39935d6a96053a3ea654598a08988f1b25269b5dc6752a647473c22580e0f352` |
| 42 | `theorem` | [_root_.GRWTSK.Algebra.IsSubDPIdeal.Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.DividedPowers.dpow_span_isSubideal](../../../../mathematics/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean/declarations/root-grwtsk-algebra-issubdpideal-variant0f3691d05818225d84a2a5030108bfd2--ad324b6605906850985c4b82.md) | 391 | `result-track:ad324b6605906850985c4b822bd6aaedd0ccffde9e079a5ec7f3feb17360b994` |
| 43 | `theorem` | [dpow_mem_span_of_mem_span](../../../../mathematics/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean/declarations/dpow-mem-span-of-mem-span--f70ecbf53b4f851cae1bfd6a.md) | 397 | `result-track:f70ecbf53b4f851cae1bfd6a939ed7678a2b405f669f9634259d827f4738cfdc` |
| 44 | `theorem` | [span_carrier_eq_dpow_span](../../../../mathematics/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean/declarations/span-carrier-eq-dpow-span--3ccc8ca50af6fc330bf9c587.md) | 425 | `result-track:3ccc8ca50af6fc330bf9c587ca4a446e2ea01e60c57f33e1ce2f20f7cd0852cc` |
| 45 | `theorem` | [isSubDPIdeal_ker](../../../../mathematics/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean/declarations/issubdpideal-ker--37596eadc7aec36a9b700ed2.md) | 459 | `result-track:37596eadc7aec36a9b700ed245a69f8054ce21a37cf31d529a5b75c3dd44b0f2` |
| 46 | `def` | [DPMorphism.ker](../../../../mathematics/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean/declarations/dpmorphism-ker--9fd663d74deb0f20c8179ecb.md) | 470 | `declaration-track:9fd663d74deb0f20c8179ecb099a66a37f88e98ae767575da033502b5e9671b7` |
| 47 | `def` | [dpEqualizer](../../../../mathematics/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean/declarations/dpequalizer--865fefb84c6247ffd0833bf6.md) | 487 | `declaration-track:865fefb84c6247ffd0833bf6e1be9067bb76e20f27f0ae9813ccb8b010ff9725` |
| 48 | `theorem` | [mem_dpEqualizer_iff](../../../../mathematics/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean/declarations/mem-dpequalizer-iff--0f3893629fe1139c8cd062ab.md) | 502 | `result-track:0f3893629fe1139c8cd062abf00bac704ea3c1fa411233bc2c73aa4bfd7cd186` |
| 49 | `theorem` | [dpEqualizer_is_dp_ideal_left](../../../../mathematics/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean/declarations/dpequalizer-is-dp-ideal-left--d7abf43ece9ac133bf04417a.md) | 507 | `result-track:d7abf43ece9ac133bf04417a4f7817d21e1370bb7fdc98551b300c4d1f004f6d` |
| 50 | `theorem` | [dpEqualizer_is_dp_ideal_right](../../../../mathematics/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean/declarations/dpequalizer-is-dp-ideal-right--8427a1f4b6bbbd24b8afe133.md) | 512 | `result-track:8427a1f4b6bbbd24b8afe1337fe41bd93641d8f31e7d38adcd318abb5dbf0962` |
| 51 | `theorem` | [le_equalizer_of_isDPMorphism](../../../../mathematics/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean/declarations/le-equalizer-of-isdpmorphism--1272a067d22947eb58870cac.md) | 519 | `result-track:1272a067d22947eb58870cac5eb4ba198790f6f4416a8a7f08b6486cdbb0ed3a` |
| 52 | `def` | [subDPIdeal_inf_of_quot](../../../../mathematics/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean/declarations/subdpideal-inf-of-quot--154bb5f62190dd91bf73ffce.md) | 530 | `declaration-track:154bb5f62190dd91bf73ffcec6726fbe411ef0caaa15ac04b30b51b275f8f8b5` |
| 53 | `def` | [dpow](../../../../mathematics/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean/declarations/dpow--d89303a71ff60b9c78147328.md) | 564 | `declaration-track:d89303a71ff60b9c78147328f5602d364df95ffb86ff987f1f5599e939ecab5c` |
| 54 | `theorem` | [dpow_apply'](../../../../mathematics/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean/declarations/dpow-apply--dd786b49feafba3341f4430f.md) | 572 | `result-track:dd786b49feafba3341f4430fdcdb8e49d5c1b87b80b4e03c4039454ab390fab6` |
| 55 | `def` | [dividedPowers](../../../../mathematics/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean/declarations/dividedpowers--ed0790ee3b04dee1d05af5c3.md) | 585 | `declaration-track:ed0790ee3b04dee1d05af5c34099c0596459bcd0d483106cc821653843db35f9` |
| 56 | `theorem` | [dpow_def](../../../../mathematics/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean/declarations/dpow-def--9941c3efa859dd18bc278e09.md) | 623 | `result-track:9941c3efa859dd18bc278e0962ab696114f9625505243f567b2f8fd0449727ff` |
| 57 | `theorem` | [dpow_apply](../../../../mathematics/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean/declarations/dpow-apply--455191fddd2779cc9fa11316.md) | 625 | `result-track:455191fddd2779cc9fa11316919b2fe85e6156035f3cb1e4c10363ebbd61c340` |
| 58 | `theorem` | [isDPMorphism](../../../../mathematics/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean/declarations/isdpmorphism--1fe2c619bcace39dcb2f6975.md) | 629 | `result-track:1fe2c619bcace39dcb2f697595dc2e7d4337a7f8b5e895b6f4f217ae88841980` |
| 59 | `theorem` | [dividedPowers_unique](../../../../mathematics/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean/declarations/dividedpowers-unique--ad0c13a100cbbb08be3f9ff7.md) | 632 | `result-track:ad0c13a100cbbb08be3f9ff726a4fd7e9d797478803d9c2156bade958b7656f0` |
| 60 | `def` | [dpow](../../../../mathematics/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean/declarations/dpow--68fc9f98b75a3f8e34aa20de.md) | 645 | `declaration-track:68fc9f98b75a3f8e34aa20debe71258a956992f090a89d34a070d321d2020807` |
| 61 | `theorem` | [isSubDPIdeal_aux](../../../../mathematics/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean/declarations/issubdpideal-aux--6ec58e55e283e6ed76d717dc.md) | 649 | `result-track:6ec58e55e283e6ed76d717dc88476a50bcf282f063a35adb6eb0120996cb0657` |
| 62 | `def` | [dividedPowers](../../../../mathematics/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean/declarations/dividedpowers--b10d21dac82664ddf25ecc5f.md) | 657 | `declaration-track:b10d21dac82664ddf25ecc5ff3b1dc049a93c9a82e277e9adf12675bb2af19ea` |
| 63 | `theorem` | [dpow_apply](../../../../mathematics/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean/declarations/dpow-apply--e240c78e327e8ed02e8ad2f4.md) | 662 | `result-track:e240c78e327e8ed02e8ad2f43ff1f1932b7d1af0ed53d44af49b421057adffeb` |
| 64 | `theorem` | [isDPMorphism](../../../../mathematics/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean/declarations/isdpmorphism--850f0933c25070170ebd171d.md) | 667 | `result-track:850f0933c25070170ebd171d1ee00678df02017463c76a68688ed8a9738a22c8` |
| 65 | `theorem` | [dividedPowers_unique](../../../../mathematics/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean/declarations/dividedpowers-unique--3b0ce03a846f2dd6a6762f23.md) | 671 | `result-track:3b0ce03a846f2dd6a6762f234a17f7afae8f3765bf2319d04a177e23988451ff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
