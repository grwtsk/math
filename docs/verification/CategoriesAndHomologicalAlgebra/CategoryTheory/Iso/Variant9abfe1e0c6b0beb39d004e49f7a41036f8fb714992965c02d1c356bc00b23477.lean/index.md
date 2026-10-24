# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Iso.Variant9abfe1e0c6b0beb39d004e49f7a41036f8fb714992965c02d1c356bc00b23477

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4615f16af3119051a0c1794f68f6d69973264d62",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Iso/Variant9abfe1e0c6b0beb39d004e49f7a41036f8fb714992965c02d1c356bc00b23477.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Iso/Variant9abfe1e0c6b0beb39d004e49f7a41036f8fb714992965c02d1c356bc00b23477.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Iso/Variant9abfe1e0c6b0beb39d004e49f7a41036f8fb714992965c02d1c356bc00b23477.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4615f16af3119051a0c1794f68f6d69973264d62`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Iso/Variant9abfe1e0c6b0beb39d004e49f7a41036f8fb714992965c02d1c356bc00b23477.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Iso/Variant9abfe1e0c6b0beb39d004e49f7a41036f8fb714992965c02d1c356bc00b23477.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Pullback.HasPullback` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pullbackConeOfLeftIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Iso/Variant9abfe1e0c6b0beb39d004e49f7a41036f8fb714992965c02d1c356bc00b23477.lean/declarations/pullbackconeofleftiso--2895e4b080ce065238732206.md) | 41 | `declaration-track:2895e4b080ce065238732206373237824a54f8cf0a245e11aed370e52d3d8a6f` |
| 2 | `theorem` | [pullbackConeOfLeftIso_x](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Iso/Variant9abfe1e0c6b0beb39d004e49f7a41036f8fb714992965c02d1c356bc00b23477.lean/declarations/pullbackconeofleftiso-x--71c2d7a3802a09060749a898.md) | 45 | `result-track:71c2d7a3802a09060749a89861e43eeefcd371a96501668f420ecc1c7cf033dd` |
| 3 | `theorem` | [pullbackConeOfLeftIso_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Iso/Variant9abfe1e0c6b0beb39d004e49f7a41036f8fb714992965c02d1c356bc00b23477.lean/declarations/pullbackconeofleftiso-fst--e45caeb64e92ca9343053448.md) | 48 | `result-track:e45caeb64e92ca934305344834b4eb628d1f24a8d6185f2f3190441e7ecf2140` |
| 4 | `theorem` | [pullbackConeOfLeftIso_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Iso/Variant9abfe1e0c6b0beb39d004e49f7a41036f8fb714992965c02d1c356bc00b23477.lean/declarations/pullbackconeofleftiso-snd--d3a2723f10720759cbd141b6.md) | 51 | `result-track:d3a2723f10720759cbd141b65f60be6a617dd3f7e2699e9407c01f53ad0b7695` |
| 5 | `theorem` | [pullbackConeOfLeftIso_π_app_none](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Iso/Variant9abfe1e0c6b0beb39d004e49f7a41036f8fb714992965c02d1c356bc00b23477.lean/declarations/pullbackconeofleftiso-app-none--4f45b3457ba12d50d07a073b.md) | 53 | `result-track:4f45b3457ba12d50d07a073b28a4de2f4115612651765ff65581520612c7052f` |
| 6 | `theorem` | [pullbackConeOfLeftIso_π_app_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Iso/Variant9abfe1e0c6b0beb39d004e49f7a41036f8fb714992965c02d1c356bc00b23477.lean/declarations/pullbackconeofleftiso-app-left--465751ad44cf77f9c134ee5b.md) | 56 | `result-track:465751ad44cf77f9c134ee5b6b5fde69dbe4978faa5f6f17bf8934eb2af4da0f` |
| 7 | `theorem` | [pullbackConeOfLeftIso_π_app_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Iso/Variant9abfe1e0c6b0beb39d004e49f7a41036f8fb714992965c02d1c356bc00b23477.lean/declarations/pullbackconeofleftiso-app-right--09173ffb11fa460eb68edd92.md) | 60 | `result-track:09173ffb11fa460eb68edd92efbaab8dc5e38a20cab87208a20d0ba832d5c90a` |
| 8 | `def` | [pullbackConeOfLeftIsoIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Iso/Variant9abfe1e0c6b0beb39d004e49f7a41036f8fb714992965c02d1c356bc00b23477.lean/declarations/pullbackconeofleftisoislimit--ce314b2422f64d55aff349e8.md) | 63 | `declaration-track:ce314b2422f64d55aff349e8d347e5444f9a4a7e481a647577b665bafaa31dbc` |
| 9 | `theorem` | [hasPullback_of_left_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Iso/Variant9abfe1e0c6b0beb39d004e49f7a41036f8fb714992965c02d1c356bc00b23477.lean/declarations/haspullback-of-left-iso--db1af365d220d2b9425af20b.md) | 66 | `result-track:db1af365d220d2b9425af20b56f6c843fa6e584ea6eeb4a6f67ae882a4e416fc` |
| 10 | `instance` | [pullback_snd_iso_of_left_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Iso/Variant9abfe1e0c6b0beb39d004e49f7a41036f8fb714992965c02d1c356bc00b23477.lean/declarations/pullback-snd-iso-of-left-iso--046b4bffe374d9dd14d53256.md) | 71 | `declaration-track:046b4bffe374d9dd14d53256f3cdc402121596ac859087f9f7a43c195c539e0b` |
| 11 | `lemma` | [pullback_inv_snd_fst_of_left_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Iso/Variant9abfe1e0c6b0beb39d004e49f7a41036f8fb714992965c02d1c356bc00b23477.lean/declarations/pullback-inv-snd-fst-of-left-isiso--8c5e4aea82d93aadacca4aba.md) | 78 | `result-track:8c5e4aea82d93aadacca4abad13bee28098ecb353fe340953809a4e73a87cc1f` |
| 12 | `def` | [pullbackConeOfRightIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Iso/Variant9abfe1e0c6b0beb39d004e49f7a41036f8fb714992965c02d1c356bc00b23477.lean/declarations/pullbackconeofrightiso--4b7b04b424bde11384367d5a.md) | 91 | `declaration-track:4b7b04b424bde11384367d5ab665b6267b604e35481a7ca0ab2335b78507fcd5` |
| 13 | `theorem` | [pullbackConeOfRightIso_x](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Iso/Variant9abfe1e0c6b0beb39d004e49f7a41036f8fb714992965c02d1c356bc00b23477.lean/declarations/pullbackconeofrightiso-x--33ac1a2efef233f8ab836e94.md) | 95 | `result-track:33ac1a2efef233f8ab836e94cf57b0a38c198d69cee4e40febb912c58455ba2f` |
| 14 | `theorem` | [pullbackConeOfRightIso_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Iso/Variant9abfe1e0c6b0beb39d004e49f7a41036f8fb714992965c02d1c356bc00b23477.lean/declarations/pullbackconeofrightiso-fst--d3b1cff78e85b163050a1e35.md) | 98 | `result-track:d3b1cff78e85b163050a1e3556f0f4e1b0e731336d3b885b90bc83393107aa77` |
| 15 | `theorem` | [pullbackConeOfRightIso_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Iso/Variant9abfe1e0c6b0beb39d004e49f7a41036f8fb714992965c02d1c356bc00b23477.lean/declarations/pullbackconeofrightiso-snd--1d642be0b9e2e8530c5de198.md) | 101 | `result-track:1d642be0b9e2e8530c5de198c67848649b5577afeb4aa7ed0be3bf36b9a98c4b` |
| 16 | `theorem` | [pullbackConeOfRightIso_π_app_none](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Iso/Variant9abfe1e0c6b0beb39d004e49f7a41036f8fb714992965c02d1c356bc00b23477.lean/declarations/pullbackconeofrightiso-app-none--7f91b8d264fdd6b89085128b.md) | 103 | `result-track:7f91b8d264fdd6b89085128b90882bdd4e5ddd8015fa6403baa9655b2f1d1677` |
| 17 | `theorem` | [pullbackConeOfRightIso_π_app_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Iso/Variant9abfe1e0c6b0beb39d004e49f7a41036f8fb714992965c02d1c356bc00b23477.lean/declarations/pullbackconeofrightiso-app-left--b79b9e66333cd236c150098b.md) | 106 | `result-track:b79b9e66333cd236c150098b9cb3c1c29cf8edea64be3e0908b818569667c0f2` |
| 18 | `theorem` | [pullbackConeOfRightIso_π_app_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Iso/Variant9abfe1e0c6b0beb39d004e49f7a41036f8fb714992965c02d1c356bc00b23477.lean/declarations/pullbackconeofrightiso-app-right--5e9866d7e955415ce7b9374f.md) | 110 | `result-track:5e9866d7e955415ce7b9374fab284a48a793953ffe91fb5a8b35da1bb7d82aaa` |
| 19 | `def` | [pullbackConeOfRightIsoIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Iso/Variant9abfe1e0c6b0beb39d004e49f7a41036f8fb714992965c02d1c356bc00b23477.lean/declarations/pullbackconeofrightisoislimit--3380bd8cbecf984ec2701cb5.md) | 114 | `declaration-track:3380bd8cbecf984ec2701cb5131b2ef5223fcbdca1a60620f8903246d6585f20` |
| 20 | `theorem` | [hasPullback_of_right_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Iso/Variant9abfe1e0c6b0beb39d004e49f7a41036f8fb714992965c02d1c356bc00b23477.lean/declarations/haspullback-of-right-iso--e325746f7bc84e7bbd21877d.md) | 117 | `result-track:e325746f7bc84e7bbd21877d61bc0290e1de87973539ea1b4e2f3c3d725e3c92` |
| 21 | `instance` | [pullback_snd_iso_of_right_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Iso/Variant9abfe1e0c6b0beb39d004e49f7a41036f8fb714992965c02d1c356bc00b23477.lean/declarations/pullback-snd-iso-of-right-iso--857ae3d945eac987ef7eab6f.md) | 122 | `declaration-track:857ae3d945eac987ef7eab6fd06c4eb925f9ef37e395b496a8fc3ce120767eaf` |
| 22 | `lemma` | [pullback_inv_fst_snd_of_right_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Iso/Variant9abfe1e0c6b0beb39d004e49f7a41036f8fb714992965c02d1c356bc00b23477.lean/declarations/pullback-inv-fst-snd-of-right-isiso--658ad997449dcd5cb7c5aa20.md) | 129 | `result-track:658ad997449dcd5cb7c5aa20e2b1748f7fc1d6d7fb3fc2d2e05e08406650fc62` |
| 23 | `def` | [pushoutCoconeOfLeftIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Iso/Variant9abfe1e0c6b0beb39d004e49f7a41036f8fb714992965c02d1c356bc00b23477.lean/declarations/pushoutcoconeofleftiso--71deb5f0fb78968097409b81.md) | 142 | `declaration-track:71deb5f0fb78968097409b816207eb33731a3dab1884e7a89c15517fa2164459` |
| 24 | `theorem` | [pushoutCoconeOfLeftIso_x](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Iso/Variant9abfe1e0c6b0beb39d004e49f7a41036f8fb714992965c02d1c356bc00b23477.lean/declarations/pushoutcoconeofleftiso-x--634fe1930d958b5ec6481034.md) | 146 | `result-track:634fe1930d958b5ec64810344f6f6628db30caaab303f3478a802d5b1ea811cf` |
| 25 | `theorem` | [pushoutCoconeOfLeftIso_inl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Iso/Variant9abfe1e0c6b0beb39d004e49f7a41036f8fb714992965c02d1c356bc00b23477.lean/declarations/pushoutcoconeofleftiso-inl--4302bcaf314b6954c9f63cba.md) | 149 | `result-track:4302bcaf314b6954c9f63cba2daf69207946a4b5fb01e17669ee27f045979060` |
| 26 | `theorem` | [pushoutCoconeOfLeftIso_inr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Iso/Variant9abfe1e0c6b0beb39d004e49f7a41036f8fb714992965c02d1c356bc00b23477.lean/declarations/pushoutcoconeofleftiso-inr--35dbe0a2e61c38eb941593bb.md) | 152 | `result-track:35dbe0a2e61c38eb941593bbf92d64e3e64021d858236165d3125a78e6e53a09` |
| 27 | `theorem` | [pushoutCoconeOfLeftIso_ι_app_none](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Iso/Variant9abfe1e0c6b0beb39d004e49f7a41036f8fb714992965c02d1c356bc00b23477.lean/declarations/pushoutcoconeofleftiso-app-none--19a9ea01d56fc4288f455614.md) | 154 | `result-track:19a9ea01d56fc4288f455614f946a0190ac8abff5eded2b48ff61033d7104e5e` |
| 28 | `theorem` | [pushoutCoconeOfLeftIso_ι_app_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Iso/Variant9abfe1e0c6b0beb39d004e49f7a41036f8fb714992965c02d1c356bc00b23477.lean/declarations/pushoutcoconeofleftiso-app-left--4c86ce9fb8e61eafb05a2a7b.md) | 158 | `result-track:4c86ce9fb8e61eafb05a2a7bad3b385e665a8738a8c557b4e2447d47136f7a5f` |
| 29 | `theorem` | [pushoutCoconeOfLeftIso_ι_app_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Iso/Variant9abfe1e0c6b0beb39d004e49f7a41036f8fb714992965c02d1c356bc00b23477.lean/declarations/pushoutcoconeofleftiso-app-right--fec3617ad4753ba91c1b3b61.md) | 162 | `result-track:fec3617ad4753ba91c1b3b616a831c0bc734d26abca8e01bc1681e346a032068` |
| 30 | `def` | [pushoutCoconeOfLeftIsoIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Iso/Variant9abfe1e0c6b0beb39d004e49f7a41036f8fb714992965c02d1c356bc00b23477.lean/declarations/pushoutcoconeofleftisoislimit--e5bc015d0d95f258988ad6fc.md) | 165 | `declaration-track:e5bc015d0d95f258988ad6fc58e60ac9ad5749c96f7c052f9e2422e5f4b90cb5` |
| 31 | `theorem` | [hasPushout_of_left_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Iso/Variant9abfe1e0c6b0beb39d004e49f7a41036f8fb714992965c02d1c356bc00b23477.lean/declarations/haspushout-of-left-iso--648ff17b2f55360a816ac2ce.md) | 168 | `result-track:648ff17b2f55360a816ac2ce170848206adea5181ac16f955514e71aa63a5fb1` |
| 32 | `instance` | [pushout_inr_iso_of_left_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Iso/Variant9abfe1e0c6b0beb39d004e49f7a41036f8fb714992965c02d1c356bc00b23477.lean/declarations/pushout-inr-iso-of-left-iso--b63e8c1dc2be3c93712edcd7.md) | 173 | `declaration-track:b63e8c1dc2be3c93712edcd74f9d78bef562cf58b0f8bebc9986fab2a6c452a2` |
| 33 | `lemma` | [pushout_inl_inv_inr_of_right_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Iso/Variant9abfe1e0c6b0beb39d004e49f7a41036f8fb714992965c02d1c356bc00b23477.lean/declarations/pushout-inl-inv-inr-of-right-isiso--0459d03b1ec7bc9fd20eca1f.md) | 180 | `result-track:0459d03b1ec7bc9fd20eca1f8e03782fe2d1f2d42163c5fc6dbe748f35db5a9c` |
| 34 | `def` | [pushoutCoconeOfRightIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Iso/Variant9abfe1e0c6b0beb39d004e49f7a41036f8fb714992965c02d1c356bc00b23477.lean/declarations/pushoutcoconeofrightiso--76eba9e6473c255ea85dc84d.md) | 193 | `declaration-track:76eba9e6473c255ea85dc84d8a0f336569a434f7025beaf4010846968f1c4f84` |
| 35 | `theorem` | [pushoutCoconeOfRightIso_x](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Iso/Variant9abfe1e0c6b0beb39d004e49f7a41036f8fb714992965c02d1c356bc00b23477.lean/declarations/pushoutcoconeofrightiso-x--a019caa6d23ad7a99fd4103e.md) | 197 | `result-track:a019caa6d23ad7a99fd4103e05197d093ae1524edb38780d04943e3aa0b8d546` |
| 36 | `theorem` | [pushoutCoconeOfRightIso_inl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Iso/Variant9abfe1e0c6b0beb39d004e49f7a41036f8fb714992965c02d1c356bc00b23477.lean/declarations/pushoutcoconeofrightiso-inl--4d3cce312c3ed9bd8b0c84b2.md) | 200 | `result-track:4d3cce312c3ed9bd8b0c84b24810aafffb70dde26ca160328fd2f81612363e94` |
| 37 | `theorem` | [pushoutCoconeOfRightIso_inr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Iso/Variant9abfe1e0c6b0beb39d004e49f7a41036f8fb714992965c02d1c356bc00b23477.lean/declarations/pushoutcoconeofrightiso-inr--17ee5b13f9101f65a2c1fd81.md) | 203 | `result-track:17ee5b13f9101f65a2c1fd8171df6e7d11143fdd59a777fb6b325b10bd420a85` |
| 38 | `theorem` | [pushoutCoconeOfRightIso_ι_app_none](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Iso/Variant9abfe1e0c6b0beb39d004e49f7a41036f8fb714992965c02d1c356bc00b23477.lean/declarations/pushoutcoconeofrightiso-app-none--b87597cfc9cacd9d806bee4d.md) | 205 | `result-track:b87597cfc9cacd9d806bee4d21fbdff6f5124a5ca541b48ae18aa07cc1dc56e7` |
| 39 | `theorem` | [pushoutCoconeOfRightIso_ι_app_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Iso/Variant9abfe1e0c6b0beb39d004e49f7a41036f8fb714992965c02d1c356bc00b23477.lean/declarations/pushoutcoconeofrightiso-app-left--3c9524dad1396fa0b0260070.md) | 209 | `result-track:3c9524dad1396fa0b026007039288a3ee7c04fcb9691f5921e8f0484711a370f` |
| 40 | `theorem` | [pushoutCoconeOfRightIso_ι_app_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Iso/Variant9abfe1e0c6b0beb39d004e49f7a41036f8fb714992965c02d1c356bc00b23477.lean/declarations/pushoutcoconeofrightiso-app-right--050d9b61c00dbc310f5a6ba6.md) | 212 | `result-track:050d9b61c00dbc310f5a6ba67f00ae9e963cfd0d6f664e8d8fd8d3646744a0bf` |
| 41 | `def` | [pushoutCoconeOfRightIsoIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Iso/Variant9abfe1e0c6b0beb39d004e49f7a41036f8fb714992965c02d1c356bc00b23477.lean/declarations/pushoutcoconeofrightisoislimit--1853531c057814849a2567d3.md) | 216 | `declaration-track:1853531c057814849a2567d3c5769c42c9551418ac9782940cbeb3ce97f53c13` |
| 42 | `theorem` | [hasPushout_of_right_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Iso/Variant9abfe1e0c6b0beb39d004e49f7a41036f8fb714992965c02d1c356bc00b23477.lean/declarations/haspushout-of-right-iso--0e5903dba8000bacb5b2dde2.md) | 219 | `result-track:0e5903dba8000bacb5b2dde2c2c89559ce8d0433bc0335abada86eb3a9a5d3f2` |
| 43 | `instance` | [pushout_inl_iso_of_right_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Iso/Variant9abfe1e0c6b0beb39d004e49f7a41036f8fb714992965c02d1c356bc00b23477.lean/declarations/pushout-inl-iso-of-right-iso--30105d9eafb1c64324626ab4.md) | 224 | `declaration-track:30105d9eafb1c64324626ab45e7b293dc90df7dba5c294476dad37efa159ed4c` |
| 44 | `lemma` | [pushout_inr_inv_inl_of_right_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Iso/Variant9abfe1e0c6b0beb39d004e49f7a41036f8fb714992965c02d1c356bc00b23477.lean/declarations/pushout-inr-inv-inl-of-right-isiso--6197cff39ad4ba6b1bcd6199.md) | 231 | `result-track:6197cff39ad4ba6b1bcd619995f780ab2558f3d5b0efb961a07e163788d11f7d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
