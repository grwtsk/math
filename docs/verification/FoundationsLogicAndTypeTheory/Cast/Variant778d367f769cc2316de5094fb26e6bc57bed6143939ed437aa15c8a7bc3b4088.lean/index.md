# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Cast.Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f81c8b94feba28f5e25cb0bb38cc6e30f06e3609",
  "lexical_observation_count": 65,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f81c8b94feba28f5e25cb0bb38cc6e30f06e3609`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Rat.Order` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Lemmas` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.CharZero` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Power` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Field.Opposite` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Field.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cast_coe_int](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean/declarations/cast-coe-int--7e0bb9074a84475e1582013d.md) | 45 | `result-track:7e0bb9074a84475e1582013dedd1d6d4d05da112bc2605ab713b703f06b223d3` |
| 2 | `theorem` | [cast_coe_nat](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean/declarations/cast-coe-nat--0bc6af30ff9b9834738d28ee.md) | 51 | `result-track:0bc6af30ff9b9834738d28ee37ce12a4ff87b04d793a3ff36e62f574f02f61f5` |
| 3 | `theorem` | [cast_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean/declarations/cast-zero--b24e1463b377110f7c7901af.md) | 57 | `result-track:b24e1463b377110f7c7901af6aedf657cb032cb253c46baae96833b03c44fc34` |
| 4 | `theorem` | [cast_one](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean/declarations/cast-one--b5df7299578c44e519d4b221.md) | 62 | `result-track:b5df7299578c44e519d4b221664979200144c04572e29c2e81820cf88560facf` |
| 5 | `theorem` | [cast_commute](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean/declarations/cast-commute--6850e4a793c03de8a81cec2c.md) | 66 | `result-track:6850e4a793c03de8a81cec2c66eb375094b5180df29b8e953902e4f6066b66f7` |
| 6 | `theorem` | [cast_comm](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean/declarations/cast-comm--5946bfc415a44ff95d5b4bc6.md) | 70 | `result-track:5946bfc415a44ff95d5b4bc670050c0a76c767534f28ba71e63e955d7ba5b5ab` |
| 7 | `theorem` | [commute_cast](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean/declarations/commute-cast--c5f4a49d260ca9637d0e1069.md) | 74 | `result-track:c5f4a49d260ca9637d0e10694fa2839068d269dbb434af516e2ba1cd02593d0e` |
| 8 | `theorem` | [cast_mk_of_ne_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean/declarations/cast-mk-of-ne-zero--d8ba50b91f00595c995f040f.md) | 79 | `result-track:d8ba50b91f00595c995f040ff624e6ed64dcba9453f8d35f0d8c0a507155aa30` |
| 9 | `theorem` | [cast_add_of_ne_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean/declarations/cast-add-of-ne-zero--41776b5a6488d2daf8990bd2.md) | 102 | `result-track:41776b5a6488d2daf8990bd276ad91e64581005c11e3ea449e35742b509b8e38` |
| 10 | `theorem` | [cast_neg](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean/declarations/cast-neg--bc9e0e0212a8c5a51e1b95ba.md) | 120 | `result-track:bc9e0e0212a8c5a51e1b95ba1904e7718eec2f5528b19df78a076da8e8071738` |
| 11 | `theorem` | [cast_sub_of_ne_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean/declarations/cast-sub-of-ne-zero--56bb69880cac5952666ee667.md) | 128 | `result-track:56bb69880cac5952666ee667c7290fa2d257a415bb9a81c4851be092822b92c3` |
| 12 | `theorem` | [cast_mul_of_ne_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean/declarations/cast-mul-of-ne-zero--d4df7137d17c27705e8fbd4b.md) | 135 | `result-track:d4df7137d17c27705e8fbd4bf5b29c3261a1474cb1cc460adedaf729008521df` |
| 13 | `theorem` | [cast_inv_nat](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean/declarations/cast-inv-nat--60bd411f8480b2bce048ed18.md) | 152 | `result-track:60bd411f8480b2bce048ed187225a8e71b769b6eddfee9ca9f64d8d13edce1a5` |
| 14 | `theorem` | [cast_inv_int](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean/declarations/cast-inv-int--11bdb522d93db586dd7b2b20.md) | 161 | `result-track:11bdb522d93db586dd7b2b20cb8e1dc71038d2e545cd2cf07f56910c565def48` |
| 15 | `theorem` | [cast_inv_of_ne_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean/declarations/cast-inv-of-ne-zero--246000df9a6227322be7a813.md) | 168 | `result-track:246000df9a6227322be7a81388a771e9fe9f31b703b6ab0fed4971e4d42b3e1f` |
| 16 | `theorem` | [cast_div_of_ne_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean/declarations/cast-div-of-ne-zero--ace09277a43f8bf0cd3df2e0.md) | 179 | `result-track:ace09277a43f8bf0cd3df2e04d2858481638c21a9877402a91b272364fea8164` |
| 17 | `theorem` | [cast_inj](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean/declarations/cast-inj--cf0751c0da6636e3c4530b09.md) | 191 | `result-track:cf0751c0da6636e3c4530b09b0bb6e7096f2de287493a67b882b8916f2c68556` |
| 18 | `theorem` | [cast_injective](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean/declarations/cast-injective--7f7396410b5060d0c9694c8b.md) | 203 | `result-track:7f7396410b5060d0c9694c8b113ebeff7e153b9c89eaa88ac0527eda68b2f3dc` |
| 19 | `theorem` | [cast_eq_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean/declarations/cast-eq-zero--660551479e813e63b6a92313.md) | 208 | `result-track:660551479e813e63b6a92313a22efa3a3a8420b82afbff74ce815175c4a53d6a` |
| 20 | `theorem` | [cast_ne_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean/declarations/cast-ne-zero--a49f4f79be94281fb09ab231.md) | 211 | `result-track:a49f4f79be94281fb09ab231e0d615a4b641e79c4ab8df438e4efc78130c3208` |
| 21 | `theorem` | [cast_add](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean/declarations/cast-add--656e1650f68c53d205ba2b2a.md) | 216 | `result-track:656e1650f68c53d205ba2b2a27b7f48866bb50f7300afa1719d4cf2c36489a6e` |
| 22 | `theorem` | [cast_sub](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean/declarations/cast-sub--45c657b95b3a8a00f1181a8d.md) | 221 | `result-track:45c657b95b3a8a00f1181a8dedcf7dd6b39c291ba05bdf57b0f06f6b2876a0b6` |
| 23 | `theorem` | [cast_mul](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean/declarations/cast-mul--11690ecab21b570ed7e1d197.md) | 226 | `result-track:11690ecab21b570ed7e1d197b5d764f423e906764080c86c4663673bc6d0ed57` |
| 24 | `theorem` | [cast_bit0](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean/declarations/cast-bit0--22d866989d716409b28e05de.md) | 235 | `result-track:22d866989d716409b28e05de7e874e1731c9455fda326c02f6ba58e743fdb1f7` |
| 25 | `theorem` | [cast_bit1](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean/declarations/cast-bit1--9ec7a19f9f9fcf958d348be8.md) | 240 | `result-track:9ec7a19f9f9fcf958d348be84fc0d9d58c2c2abf26e4c90472e53da0a89dbc2c` |
| 26 | `def` | [castHom](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean/declarations/casthom--03ed08906a53d3e86285f82e.md) | 250 | `declaration-track:03ed08906a53d3e86285f82eddb7099abcf244c8e55893fcc1f4f92b9b9f19b3` |
| 27 | `theorem` | [coe_cast_hom](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean/declarations/coe-cast-hom--571645bfc0d8e3af77360248.md) | 261 | `result-track:571645bfc0d8e3af7736024865be2b5daa656ea0dd04cb29dd91c7ab3124e73f` |
| 28 | `theorem` | [cast_inv](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean/declarations/cast-inv--4ca4230fdfe8a3ea9f6d011f.md) | 266 | `result-track:4ca4230fdfe8a3ea9f6d011f90aac47de6051aa4c9ab0ecdde2845cad1c56ea7` |
| 29 | `theorem` | [cast_div](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean/declarations/cast-div--b6afdc262f34a944fb0845a1.md) | 271 | `result-track:b6afdc262f34a944fb0845a1f269a762aeea97075390455b8466aa85661375dd` |
| 30 | `theorem` | [cast_zpow](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean/declarations/cast-zpow--6c24a116f0d6d7ab5c2fba34.md) | 276 | `result-track:6c24a116f0d6d7ab5c2fba3468bbc275b4969ce69f2bd8da26909a2db32587b2` |
| 31 | `theorem` | [cast_mk](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean/declarations/cast-mk--3fa071e0c3b6aa2928a830dd.md) | 281 | `result-track:3fa071e0c3b6aa2928a830dd277457bfb7973d6b0c249795c76137aff7c5f08e` |
| 32 | `theorem` | [cast_pow](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean/declarations/cast-pow--fab637444d977f2f515c1079.md) | 286 | `result-track:fab637444d977f2f515c1079b74d5c1e17b0827c0811b0cf202431cd4c3281d5` |
| 33 | `theorem` | [cast_pos_of_pos](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean/declarations/cast-pos-of-pos--db34d20d167965ab889b36d8.md) | 296 | `result-track:db34d20d167965ab889b36d8e7821c1311651aa567763e06c297f702a4f110e3` |
| 34 | `theorem` | [cast_strictMono](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean/declarations/cast-strictmono--a3310de867a23c660cc21fd5.md) | 302 | `result-track:a3310de867a23c660cc21fd5e0e31e3265c562515b69411af06236e6259415bd` |
| 35 | `theorem` | [cast_mono](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean/declarations/cast-mono--7f0dc058c237f642aff13fed.md) | 307 | `result-track:7f0dc058c237f642aff13fed6d94d21fbfffc7b8190adb1254c3a7cb0c7e7d88` |
| 36 | `def` | [castOrderEmbedding](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean/declarations/castorderembedding--b96007137bfef3d0a5bec3f0.md) | 313 | `declaration-track:b96007137bfef3d0a5bec3f024192ad4cfad51a1037e760282c263a5f29e614d` |
| 37 | `theorem` | [cast_le](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean/declarations/cast-le--1105d1da23b3b5090883bd07.md) | 319 | `result-track:1105d1da23b3b5090883bd079fc8eaa8cf088d33fe952bcff20f235ad250cdd1` |
| 38 | `theorem` | [cast_lt](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean/declarations/cast-lt--1d35c1974f48927d06654e57.md) | 324 | `result-track:1d35c1974f48927d06654e57d77188354a65a7a22b25ca302d44e0aa66029568` |
| 39 | `theorem` | [cast_nonneg](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean/declarations/cast-nonneg--8718586d3faa452a4f61a335.md) | 329 | `result-track:8718586d3faa452a4f61a3357072c48da658ab5b69b5a3406879d3489c182587` |
| 40 | `theorem` | [cast_nonpos](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean/declarations/cast-nonpos--021c41b025013f081b9e1137.md) | 334 | `result-track:021c41b025013f081b9e1137da67864f5ad991aa8ef85b111fa25545a13cc010` |
| 41 | `theorem` | [cast_pos](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean/declarations/cast-pos--fa2d1db33379da74b335a532.md) | 339 | `result-track:fa2d1db33379da74b335a532b1b89a996eb7d2d5a83c088ff139f3cc6d9a3968` |
| 42 | `theorem` | [cast_lt_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean/declarations/cast-lt-zero--69fc32a5d0df11cc283659a1.md) | 344 | `result-track:69fc32a5d0df11cc283659a120bc1b7d3a1102f46a8b5240444d91598d2920fc` |
| 43 | `theorem` | [cast_min](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean/declarations/cast-min--d7c8ec6bcfae66aecf6bd88c.md) | 349 | `result-track:d7c8ec6bcfae66aecf6bd88cae4871b5fffdf7c43bc1ce5026341d4b8eef806c` |
| 44 | `theorem` | [cast_max](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean/declarations/cast-max--35f42487448c75d29d86bdcf.md) | 354 | `result-track:35f42487448c75d29d86bdcfc13fe3cb72fc8b62eccaa57228b0cc9add73c2f3` |
| 45 | `theorem` | [cast_abs](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean/declarations/cast-abs--77ee118a3afbc2438e37bb8f.md) | 360 | `result-track:77ee118a3afbc2438e37bb8f7618da045b8f9a8ce735a7daa5072f8ef963257c` |
| 46 | `theorem` | [preimage_cast_Icc](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean/declarations/preimage-cast-icc--fe328e2bc0e54164ad86d366.md) | 366 | `result-track:fe328e2bc0e54164ad86d366d1aadd687de6d7f8fafc1d3cd4e90c2913e1e256` |
| 47 | `theorem` | [preimage_cast_Ico](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean/declarations/preimage-cast-ico--929d71dddb8706b2efc36cd3.md) | 372 | `result-track:929d71dddb8706b2efc36cd3367768e7b82ec26b044cd65a3f68d216cfa70320` |
| 48 | `theorem` | [preimage_cast_Ioc](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean/declarations/preimage-cast-ioc--ede5b41fa7655b7b94027cf0.md) | 378 | `result-track:ede5b41fa7655b7b94027cf028d9d5ee673bd116ca7b62800d28aefa299b12ef` |
| 49 | `theorem` | [preimage_cast_Ioo](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean/declarations/preimage-cast-ioo--a60c6bc883f3c4070d335861.md) | 384 | `result-track:a60c6bc883f3c4070d3358618a3d588d758334ab2aad280b0c76526acecccea2` |
| 50 | `theorem` | [preimage_cast_Ici](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean/declarations/preimage-cast-ici--806f2d0a2d9b45ea37d697a5.md) | 390 | `result-track:806f2d0a2d9b45ea37d697a5a173c030efbae220bf51955649fc6f4c6dd2d88e` |
| 51 | `theorem` | [preimage_cast_Iic](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean/declarations/preimage-cast-iic--ef33774e8dc39eb1608f02de.md) | 396 | `result-track:ef33774e8dc39eb1608f02de06229bc79c9e9ad6c59a989fb031d31fbbed3221` |
| 52 | `theorem` | [preimage_cast_Ioi](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean/declarations/preimage-cast-ioi--bb5b15457db09483aa5259ae.md) | 402 | `result-track:bb5b15457db09483aa5259aea61537c48eabff755d43ccb6daebd8fd39723346` |
| 53 | `theorem` | [preimage_cast_Iio](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean/declarations/preimage-cast-iio--c2324ba5253ef95221fa0781.md) | 408 | `result-track:c2324ba5253ef95221fa0781ebdaf44048573c5259c3f0dceaf6cf720af4eec0` |
| 54 | `theorem` | [cast_id](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean/declarations/cast-id--b0c7f9ed42b8a37cf779231c.md) | 417 | `result-track:b0c7f9ed42b8a37cf779231c72aac78dbf07995392cf2a2ec7721977bb01c469` |
| 55 | `theorem` | [cast_eq_id](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean/declarations/cast-eq-id--170baefdc5faf308fb634a2f.md) | 421 | `result-track:170baefdc5faf308fb634a2fe9a43d7f87737544177636037f4ee90818a15232` |
| 56 | `theorem` | [cast_hom_rat](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean/declarations/cast-hom-rat--a88575f0f864ab8fb097db98.md) | 426 | `result-track:a88575f0f864ab8fb097db98efc6a978938e0c5848fb376c954a174bf009e319` |
| 57 | `theorem` | [map_ratCast](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean/declarations/map-ratcast--42435c121554441618a0ae1d.md) | 435 | `result-track:42435c121554441618a0ae1d84ba5477dc7f8bdd53bbf4c871a7774dcaa19ebc` |
| 58 | `theorem` | [eq_ratCast](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean/declarations/eq-ratcast--1cd6834d486459875c91380a.md) | 440 | `result-track:1cd6834d486459875c91380a4a45fbf9d076e63ba0e461980c28ea78af3177ce` |
| 59 | `theorem` | [ext_rat'](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean/declarations/ext-rat--c5a8f8734ec966e99f03f08e.md) | 450 | `result-track:c5a8f8734ec966e99f03f08e29995068136c71503e1510d92176cf1c17e6ae01` |
| 60 | `theorem` | [ext_rat](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean/declarations/ext-rat--fc76966aaaab9613f8b7883d.md) | 461 | `result-track:fc76966aaaab9613f8b7883dd423568cd0517a8625bbdbb23b6ebe658c7982f2` |
| 61 | `theorem` | [ext_rat_on_pnat](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean/declarations/ext-rat-on-pnat--bf115dce2a78f34ef8cb6683.md) | 467 | `result-track:bf115dce2a78f34ef8cb66834ca77799fb0ae6e069313b651f2070afefa713a2` |
| 62 | `theorem` | [RingHom.ext_rat](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean/declarations/ringhom-ext-rat--cc240199eef99a4544283af2.md) | 481 | `result-track:cc240199eef99a4544283af279c88f30b4f574f55e711d2a29c6348f0052c96b` |
| 63 | `instance` | [Rat.subsingleton_ringHom](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean/declarations/rat-subsingleton-ringhom--818b3a85bc14cc0962e98665.md) | 487 | `declaration-track:818b3a85bc14cc0962e98665961c0fe3958e7e991b26b686d1dfc87c8216aa84` |
| 64 | `instance` | [(anonymous)](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean/declarations/instance--473005b6dabd23d20bef39a8.md) | 497 | `declaration-track:473005b6dabd23d20bef39a8d1251665f0e61e3435ade90a0e72ddc731ebb316` |
| 65 | `instance` | [isScalarTower_right](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean/declarations/isscalartower-right--dadc21b0ae8b7a20de326783.md) | 503 | `declaration-track:dadc21b0ae8b7a20de3267831c7458860d478a7473da613f7228a2354ca6c375` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
