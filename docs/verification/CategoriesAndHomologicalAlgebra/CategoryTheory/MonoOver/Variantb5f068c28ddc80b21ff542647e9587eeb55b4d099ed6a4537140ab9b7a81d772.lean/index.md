# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.MonoOver.Variantb5f068c28ddc80b21ff542647e9587eeb55b4d099ed6a4537140ab9b7a81d772

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aaf7cddf4c2dc97d4df81c3fb81a6d1d929ef646",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb5f068c28ddc80b21ff542647e9587eeb55b4d099ed6a4537140ab9b7a81d772.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb5f068c28ddc80b21ff542647e9587eeb55b4d099ed6a4537140ab9b7a81d772.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb5f068c28ddc80b21ff542647e9587eeb55b4d099ed6a4537140ab9b7a81d772.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aaf7cddf4c2dc97d4df81c3fb81a6d1d929ef646`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb5f068c28ddc80b21ff542647e9587eeb55b4d099ed6a4537140ab9b7a81d772.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb5f068c28ddc80b21ff542647e9587eeb55b4d099ed6a4537140ab9b7a81d772.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Over` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Images` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Reflective` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [MonoOver](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb5f068c28ddc80b21ff542647e9587eeb55b4d099ed6a4537140ab9b7a81d772.lean/declarations/monoover--f9fe204e0a9c36e63b7e2ba7.md) | 54 | `declaration-track:f9fe204e0a9c36e63b7e2ba7bfd767cfb5724ed904e81ef5bbc20bbcd8f26446` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb5f068c28ddc80b21ff542647e9587eeb55b4d099ed6a4537140ab9b7a81d772.lean/declarations/instance--bd4d34cf018f4006c0ca2945.md) | 58 | `declaration-track:bd4d34cf018f4006c0ca2945ecd5b9d93107b5ef9ff71f6f92c5bc8599f72bc0` |
| 3 | `def` | [mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb5f068c28ddc80b21ff542647e9587eeb55b4d099ed6a4537140ab9b7a81d772.lean/declarations/mk--aba9ab744d38b982756899f3.md) | 65 | `declaration-track:aba9ab744d38b982756899f3f4713e24ac1e775c0fca2661f504e0623bd7e591` |
| 4 | `def` | [forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb5f068c28ddc80b21ff542647e9587eeb55b4d099ed6a4537140ab9b7a81d772.lean/declarations/forget--4ec85093723aa89a59841aad.md) | 71 | `declaration-track:4ec85093723aa89a59841aad93ca4eb9f31edf25fa79f0e16a7f976665999c78` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb5f068c28ddc80b21ff542647e9587eeb55b4d099ed6a4537140ab9b7a81d772.lean/declarations/instance--4ea3c916e8c94847e8007bb9.md) | 75 | `declaration-track:4ea3c916e8c94847e8007bb9223c50e82fea23ff6f8b6257b59b9140c6edd10b` |
| 6 | `theorem` | [forget_obj_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb5f068c28ddc80b21ff542647e9587eeb55b4d099ed6a4537140ab9b7a81d772.lean/declarations/forget-obj-left--becb932eea0ac608218c5b55.md) | 78 | `result-track:becb932eea0ac608218c5b557d66ac5935c9c2c32c1295d310e7388010cd6280` |
| 7 | `theorem` | [mk'_coe'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb5f068c28ddc80b21ff542647e9587eeb55b4d099ed6a4537140ab9b7a81d772.lean/declarations/mk-coe--37c744f822747325b2b2732f.md) | 83 | `result-track:37c744f822747325b2b2732fcec6e378e7a14c6f7a88b5f40da672b267187606` |
| 8 | `abbrev` | [arrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb5f068c28ddc80b21ff542647e9587eeb55b4d099ed6a4537140ab9b7a81d772.lean/declarations/arrow--1112952ce24cf03e33e747fb.md) | 88 | `declaration-track:1112952ce24cf03e33e747fb7445c66525483abc528a8a25cb977274ed29ae0f` |
| 9 | `theorem` | [mk'_arrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb5f068c28ddc80b21ff542647e9587eeb55b4d099ed6a4537140ab9b7a81d772.lean/declarations/mk-arrow--f8ec252c6be03f9d0310265c.md) | 93 | `result-track:f8ec252c6be03f9d0310265c208ff4882451d41c606ce5fc73250ef71e99ac8f` |
| 10 | `theorem` | [forget_obj_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb5f068c28ddc80b21ff542647e9587eeb55b4d099ed6a4537140ab9b7a81d772.lean/declarations/forget-obj-hom--feddb304b5e05cc8fa804864.md) | 98 | `result-track:feddb304b5e05cc8fa804864e490bd22bd52529f0d54cbc1239b9784e4242662` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb5f068c28ddc80b21ff542647e9587eeb55b4d099ed6a4537140ab9b7a81d772.lean/declarations/instance--ee95a1fc23bf9fb637c1c058.md) | 102 | `declaration-track:ee95a1fc23bf9fb637c1c058d59095960f5870f79d285e0f4ae985b428891712` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb5f068c28ddc80b21ff542647e9587eeb55b4d099ed6a4537140ab9b7a81d772.lean/declarations/instance--fd74d5086165abd15dbc6b23.md) | 105 | `declaration-track:fd74d5086165abd15dbc6b23853bbcc8a825bea183a19e1b268ca6cd2b0378c6` |
| 13 | `instance` | [mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb5f068c28ddc80b21ff542647e9587eeb55b4d099ed6a4537140ab9b7a81d772.lean/declarations/mono--032e397112ccb9c8d865cd22.md) | 108 | `declaration-track:032e397112ccb9c8d865cd2214b9e748dd2aad79626405fcb27c3910d550b660` |
| 14 | `instance` | [isThin](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb5f068c28ddc80b21ff542647e9587eeb55b4d099ed6a4537140ab9b7a81d772.lean/declarations/isthin--3bd0dce2a662a4214b15b2b3.md) | 114 | `declaration-track:3bd0dce2a662a4214b15b2b3c21c86301c8261f79ee74ddb9b4530fe9814fa3d` |
| 15 | `theorem` | [w](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb5f068c28ddc80b21ff542647e9587eeb55b4d099ed6a4537140ab9b7a81d772.lean/declarations/w--c8eaf6d2b9329e4898ba24d7.md) | 122 | `result-track:c8eaf6d2b9329e4898ba24d7ef87f4cd5492da563cde241e42b6c3228bf397ef` |
| 16 | `abbrev` | [homMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb5f068c28ddc80b21ff542647e9587eeb55b4d099ed6a4537140ab9b7a81d772.lean/declarations/hommk--1769f2cb9f428e6064de48da.md) | 127 | `declaration-track:1769f2cb9f428e6064de48da3263f006de9e9b70b891ae8e42804061aa7b2c52` |
| 17 | `def` | [isoMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb5f068c28ddc80b21ff542647e9587eeb55b4d099ed6a4537140ab9b7a81d772.lean/declarations/isomk--77423e4d71ce1bb9d08d59a0.md) | 134 | `declaration-track:77423e4d71ce1bb9d08d59a01b2fa2a4fe4e42a1c54f11581ca70a79cfee8a41` |
| 18 | `def` | [mk'ArrowIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb5f068c28ddc80b21ff542647e9587eeb55b4d099ed6a4537140ab9b7a81d772.lean/declarations/mk-arrowiso--76ce4a83c768f051cbdf5132.md) | 143 | `declaration-track:76ce4a83c768f051cbdf513299a14f2f934d9d0cce04845968eb0ca0bc99b572` |
| 19 | `def` | [lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb5f068c28ddc80b21ff542647e9587eeb55b4d099ed6a4537140ab9b7a81d772.lean/declarations/lift--910c217833c334888c4b3500.md) | 151 | `declaration-track:910c217833c334888c4b35007504160fe087c9f413612c9965f52f8c181df997` |
| 20 | `def` | [liftIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb5f068c28ddc80b21ff542647e9587eeb55b4d099ed6a4537140ab9b7a81d772.lean/declarations/liftiso--8604a376e750550a77215102.md) | 160 | `declaration-track:8604a376e750550a772151023ddaf3d6072fba088b4f107879851ece95d76000` |
| 21 | `def` | [liftComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb5f068c28ddc80b21ff542647e9587eeb55b4d099ed6a4537140ab9b7a81d772.lean/declarations/liftcomp--655ccde8a7e54c97dd1de396.md) | 165 | `declaration-track:655ccde8a7e54c97dd1de396db62baff4833ecf7b9d28a5f1e7baa290f731a3d` |
| 22 | `def` | [liftId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb5f068c28ddc80b21ff542647e9587eeb55b4d099ed6a4537140ab9b7a81d772.lean/declarations/liftid--07b274c38720b7bc1d2252e8.md) | 171 | `declaration-track:07b274c38720b7bc1d2252e8352a28ecb154da2967e0bcf1f2081c877f6ca3a7` |
| 23 | `theorem` | [lift_comm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb5f068c28ddc80b21ff542647e9587eeb55b4d099ed6a4537140ab9b7a81d772.lean/declarations/lift-comm--1c0b179e4c160901bc304a8d.md) | 176 | `result-track:1c0b179e4c160901bc304a8dcb80b7a5a07487ed8daf6d29159b8d5b187962f6` |
| 24 | `theorem` | [lift_obj_arrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb5f068c28ddc80b21ff542647e9587eeb55b4d099ed6a4537140ab9b7a81d772.lean/declarations/lift-obj-arrow--5fad4ea2fbbd6aac89306319.md) | 183 | `result-track:5fad4ea2fbbd6aac89306319523a8287076a9bd4c10919ee46d8da368b4d2cbf` |
| 25 | `def` | [slice](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb5f068c28ddc80b21ff542647e9587eeb55b4d099ed6a4537140ab9b7a81d772.lean/declarations/slice--489e4c35b5660dcab13dc4a3.md) | 192 | `declaration-track:489e4c35b5660dcab13dc4a31c91a188610b858708335d26e8dca89bf276b676` |
| 26 | `def` | [pullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb5f068c28ddc80b21ff542647e9587eeb55b4d099ed6a4537140ab9b7a81d772.lean/declarations/pullback--cf7a4713d79b607020a0498c.md) | 214 | `declaration-track:cf7a4713d79b607020a0498ca39e93e950ac923ae79096a0e128018a7b92a12d` |
| 27 | `def` | [pullbackComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb5f068c28ddc80b21ff542647e9587eeb55b4d099ed6a4537140ab9b7a81d772.lean/declarations/pullbackcomp--5001104f4a366986d3771203.md) | 221 | `declaration-track:5001104f4a366986d37712032e5b2592e9d7b43df3c3d71e82b9d0a881a978ca` |
| 28 | `def` | [pullbackId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb5f068c28ddc80b21ff542647e9587eeb55b4d099ed6a4537140ab9b7a81d772.lean/declarations/pullbackid--8ba8788f15145f8bafb6da0b.md) | 226 | `declaration-track:8ba8788f15145f8bafb6da0b044106b8d35f4d236afa3f0fc8e887adc65a8fdb` |
| 29 | `theorem` | [pullback_obj_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb5f068c28ddc80b21ff542647e9587eeb55b4d099ed6a4537140ab9b7a81d772.lean/declarations/pullback-obj-left--66ef0c5cfc68aabb467d5ab0.md) | 231 | `result-track:66ef0c5cfc68aabb467d5ab061d073a5d4974c1c892b54f4ba7bc238e73c561e` |
| 30 | `theorem` | [pullback_obj_arrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb5f068c28ddc80b21ff542647e9587eeb55b4d099ed6a4537140ab9b7a81d772.lean/declarations/pullback-obj-arrow--b15aecbb29894a7e27f0b1d8.md) | 237 | `result-track:b15aecbb29894a7e27f0b1d834be2e8e5eb58ae091c3557012d84b70b98fb287` |
| 31 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb5f068c28ddc80b21ff542647e9587eeb55b4d099ed6a4537140ab9b7a81d772.lean/declarations/map--073973f4019f1f2f360027a2.md) | 251 | `declaration-track:073973f4019f1f2f360027a24d255696cc1265a77a23a4b2f2b976706f4dca04` |
| 32 | `def` | [mapComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb5f068c28ddc80b21ff542647e9587eeb55b4d099ed6a4537140ab9b7a81d772.lean/declarations/mapcomp--4785c39f7d44525715da2b61.md) | 256 | `declaration-track:4785c39f7d44525715da2b61abdc85efe2b96b2c19bcfd71c7b02a59b7ded61a` |
| 33 | `def` | [mapId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb5f068c28ddc80b21ff542647e9587eeb55b4d099ed6a4537140ab9b7a81d772.lean/declarations/mapid--91be62dd0230ee86d6a467db.md) | 261 | `declaration-track:91be62dd0230ee86d6a467db1934616aaa5ebdc05087dce94e062b87b0bb1c0a` |
| 34 | `theorem` | [map_obj_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb5f068c28ddc80b21ff542647e9587eeb55b4d099ed6a4537140ab9b7a81d772.lean/declarations/map-obj-left--a71ee18cff0c25286ce92b61.md) | 266 | `result-track:a71ee18cff0c25286ce92b61ed2580af9539f732a9357b5d7d626e418077e6e5` |
| 35 | `theorem` | [map_obj_arrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb5f068c28ddc80b21ff542647e9587eeb55b4d099ed6a4537140ab9b7a81d772.lean/declarations/map-obj-arrow--3710b5b30ce1038e7ce65fb2.md) | 271 | `result-track:3710b5b30ce1038e7ce65fb206521740345858b2fefd7fa297fa78c623bc32b2` |
| 36 | `instance` | [fullMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb5f068c28ddc80b21ff542647e9587eeb55b4d099ed6a4537140ab9b7a81d772.lean/declarations/fullmap--531c7f67cde154749ce9ee8e.md) | 275 | `declaration-track:531c7f67cde154749ce9ee8e3dac43e7be7116255469295561307c7b977a0276` |
| 37 | `instance` | [faithful_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb5f068c28ddc80b21ff542647e9587eeb55b4d099ed6a4537140ab9b7a81d772.lean/declarations/faithful-map--dd9bf6d90a92ccf4086c2a9e.md) | 282 | `declaration-track:dd9bf6d90a92ccf4086c2a9ea0398617b2029a0800c514c801de9a69e52a1617` |
| 38 | `def` | [mapIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb5f068c28ddc80b21ff542647e9587eeb55b4d099ed6a4537140ab9b7a81d772.lean/declarations/mapiso--5c7d4ca77e1495de0d214891.md) | 288 | `declaration-track:5c7d4ca77e1495de0d214891895c8ac27b908357ab5a6a3592a820f7e1cef766` |
| 39 | `def` | [congr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb5f068c28ddc80b21ff542647e9587eeb55b4d099ed6a4537140ab9b7a81d772.lean/declarations/congr--2b2ca2efd4fbf407d3a08182.md) | 302 | `declaration-track:2b2ca2efd4fbf407d3a0818228efbb102e7b0082a310b8cf20b15e3470d19343` |
| 40 | `def` | [mapPullbackAdj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb5f068c28ddc80b21ff542647e9587eeb55b4d099ed6a4537140ab9b7a81d772.lean/declarations/mappullbackadj--211cca644b01175f286453d1.md) | 323 | `declaration-track:211cca644b01175f286453d174433d23258a86b5635ff31eec6bccb87401091f` |
| 41 | `def` | [pullbackMapSelf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb5f068c28ddc80b21ff542647e9587eeb55b4d099ed6a4537140ab9b7a81d772.lean/declarations/pullbackmapself--bd5cec4bcdacc9c1902020a5.md) | 329 | `declaration-track:bd5cec4bcdacc9c1902020a5f1f479d3fed861d1ebe28adf1edd3b31bf1bd537` |
| 42 | `def` | [imageMonoOver](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb5f068c28ddc80b21ff542647e9587eeb55b4d099ed6a4537140ab9b7a81d772.lean/declarations/imagemonoover--6cf4648d7e652b4633f00938.md) | 343 | `declaration-track:6cf4648d7e652b4633f00938300e721878d04ff19542a23f65ebd4efe66e5add` |
| 43 | `theorem` | [imageMonoOver_arrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb5f068c28ddc80b21ff542647e9587eeb55b4d099ed6a4537140ab9b7a81d772.lean/declarations/imagemonoover-arrow--7ede755b981b1ae50b3e29f0.md) | 348 | `result-track:7ede755b981b1ae50b3e29f0eb1935bc7c24ba68bfba798960c232af3546201b` |
| 44 | `def` | [image](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb5f068c28ddc80b21ff542647e9587eeb55b4d099ed6a4537140ab9b7a81d772.lean/declarations/image--3687261ca78db1e0301fa5b1.md) | 361 | `declaration-track:3687261ca78db1e0301fa5b19963a4f8df0c5bc31376eae00d607210194d0e73` |
| 45 | `def` | [imageForgetAdj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb5f068c28ddc80b21ff542647e9587eeb55b4d099ed6a4537140ab9b7a81d772.lean/declarations/imageforgetadj--b534adc1f292a03edec59737.md) | 377 | `declaration-track:b534adc1f292a03edec597370625df75bab4e06a89cb84b9d1977236b7109f1c` |
| 46 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb5f068c28ddc80b21ff542647e9587eeb55b4d099ed6a4537140ab9b7a81d772.lean/declarations/instance--4d69bfafb61d12a0c88bf736.md) | 402 | `declaration-track:4d69bfafb61d12a0c88bf7361bd6404ca7a90a1c49b945686c38a68bfb5ead28` |
| 47 | `instance` | [reflective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb5f068c28ddc80b21ff542647e9587eeb55b4d099ed6a4537140ab9b7a81d772.lean/declarations/reflective--20e41947ecadb3b641a914d9.md) | 406 | `declaration-track:20e41947ecadb3b641a914d9b15893fa59deb88c73a15e2943ea6c0119ebfa5f` |
| 48 | `def` | [forgetImage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb5f068c28ddc80b21ff542647e9587eeb55b4d099ed6a4537140ab9b7a81d772.lean/declarations/forgetimage--8b5c3f07ada0ccf7b0b841bf.md) | 412 | `declaration-track:8b5c3f07ada0ccf7b0b841bf16069ded0952a48c339f170e43b3804f7bd81ab5` |
| 49 | `def` | [«exists»](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb5f068c28ddc80b21ff542647e9587eeb55b4d099ed6a4537140ab9b7a81d772.lean/declarations/exists--56d6c73af8cccb0322aa1c63.md) | 425 | `declaration-track:56d6c73af8cccb0322aa1c63562126e99052ffeb008531850570051d4fd40916` |
| 50 | `instance` | [faithful_exists](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb5f068c28ddc80b21ff542647e9587eeb55b4d099ed6a4537140ab9b7a81d772.lean/declarations/faithful-exists--ac8ad6574922e38cdf9b05a3.md) | 429 | `declaration-track:ac8ad6574922e38cdf9b05a3f54d76edbfbc62cb4781d43d36b22e3bccf56454` |
| 51 | `def` | [existsIsoMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb5f068c28ddc80b21ff542647e9587eeb55b4d099ed6a4537140ab9b7a81d772.lean/declarations/existsisomap--e90ba99882544bb7099ccfbf.md) | 434 | `declaration-track:e90ba99882544bb7099ccfbf0a577d4d14dd3d21210370580bc2be5b9acda412` |
| 52 | `def` | [existsPullbackAdj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb5f068c28ddc80b21ff542647e9587eeb55b4d099ed6a4537140ab9b7a81d772.lean/declarations/existspullbackadj--cc3c8dbd506fe00ce54743c0.md) | 445 | `declaration-track:cc3c8dbd506fe00ce54743c0f7184c60767daf9e7141aa04cdeef0c5cca1f3c1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
