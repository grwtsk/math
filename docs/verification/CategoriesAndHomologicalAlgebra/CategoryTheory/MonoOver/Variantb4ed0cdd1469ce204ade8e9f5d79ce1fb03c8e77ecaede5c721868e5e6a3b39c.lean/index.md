# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.MonoOver.Variantb4ed0cdd1469ce204ade8e9f5d79ce1fb03c8e77ecaede5c721868e5e6a3b39c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5b0c9b0e2ca6b55bbbb88761755b8b2286c89f75",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb4ed0cdd1469ce204ade8e9f5d79ce1fb03c8e77ecaede5c721868e5e6a3b39c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb4ed0cdd1469ce204ade8e9f5d79ce1fb03c8e77ecaede5c721868e5e6a3b39c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb4ed0cdd1469ce204ade8e9f5d79ce1fb03c8e77ecaede5c721868e5e6a3b39c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5b0c9b0e2ca6b55bbbb88761755b8b2286c89f75`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb4ed0cdd1469ce204ade8e9f5d79ce1fb03c8e77ecaede5c721868e5e6a3b39c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb4ed0cdd1469ce204ade8e9f5d79ce1fb03c8e77ecaede5c721868e5e6a3b39c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Comma.Over.Pullback` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Reflective` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Restrict` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Images` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Pullback.CommSq` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.ReflectsIso.Basic` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [MonoOver](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb4ed0cdd1469ce204ade8e9f5d79ce1fb03c8e77ecaede5c721868e5e6a3b39c.lean/declarations/monoover--0814a0eaeb8bb2c4a36a4dac.md) | 63 | `declaration-track:0814a0eaeb8bb2c4a36a4dacd582f415f2103b317dd2f86768d1faa9f9d75aa6` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb4ed0cdd1469ce204ade8e9f5d79ce1fb03c8e77ecaede5c721868e5e6a3b39c.lean/declarations/instance--a61f1575cecb1414b1ca9ea2.md) | 66 | `declaration-track:a61f1575cecb1414b1ca9ea23cc96a9cefc34f4d1373215b061eda80871dc3da` |
| 3 | `instance` | [mono_obj_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb4ed0cdd1469ce204ade8e9f5d79ce1fb03c8e77ecaede5c721868e5e6a3b39c.lean/declarations/mono-obj-hom--2d00f51f8e53233af4ccd9c7.md) | 71 | `declaration-track:2d00f51f8e53233af4ccd9c70cd3fe598f18417fb3b632773f59f82d8af0ee6a` |
| 4 | `def` | [mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb4ed0cdd1469ce204ade8e9f5d79ce1fb03c8e77ecaede5c721868e5e6a3b39c.lean/declarations/mk--4dbb3b2f5c685854d119c509.md) | 75 | `declaration-track:4dbb3b2f5c685854d119c5092305231dbc35c1e1171f6eec5cfe9575262413da` |
| 5 | `def` | [forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb4ed0cdd1469ce204ade8e9f5d79ce1fb03c8e77ecaede5c721868e5e6a3b39c.lean/declarations/forget--e32be5cac17583b9e805cbcc.md) | 80 | `declaration-track:e32be5cac17583b9e805cbcca394255bdb63bea12c771640d281292e96195d5d` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb4ed0cdd1469ce204ade8e9f5d79ce1fb03c8e77ecaede5c721868e5e6a3b39c.lean/declarations/instance--ccef0dfbf9307f8eb638c403.md) | 83 | `declaration-track:ccef0dfbf9307f8eb638c403f6ba4db2f62456367401fb335ff7cf896dee825a` |
| 7 | `theorem` | [forget_obj_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb4ed0cdd1469ce204ade8e9f5d79ce1fb03c8e77ecaede5c721868e5e6a3b39c.lean/declarations/forget-obj-left--d11daa001ed35c35ae74460c.md) | 86 | `result-track:d11daa001ed35c35ae74460c5396e616af2fa7d2f53f48ac9411492bddc4f1b9` |
| 8 | `theorem` | [mk'_coe'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb4ed0cdd1469ce204ade8e9f5d79ce1fb03c8e77ecaede5c721868e5e6a3b39c.lean/declarations/mk-coe--f122937e2e0ebfe7bdf80beb.md) | 90 | `result-track:f122937e2e0ebfe7bdf80bebcf5bc11039ecc321d2bf90c26fcb8b7b5ba022a0` |
| 9 | `abbrev` | [arrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb4ed0cdd1469ce204ade8e9f5d79ce1fb03c8e77ecaede5c721868e5e6a3b39c.lean/declarations/arrow--99cd7016e9f12a896f412f21.md) | 94 | `declaration-track:99cd7016e9f12a896f412f21f5d71dd181e589b098244e81307551a9e30a3412` |
| 10 | `theorem` | [mk'_arrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb4ed0cdd1469ce204ade8e9f5d79ce1fb03c8e77ecaede5c721868e5e6a3b39c.lean/declarations/mk-arrow--7254172c1a921a99c63165fe.md) | 98 | `result-track:7254172c1a921a99c63165fec063da8a419930114a37fe37f94ff25cc39929d1` |
| 11 | `theorem` | [forget_obj_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb4ed0cdd1469ce204ade8e9f5d79ce1fb03c8e77ecaede5c721868e5e6a3b39c.lean/declarations/forget-obj-hom--72bfb9dddafcb9e3d03fac36.md) | 102 | `result-track:72bfb9dddafcb9e3d03fac36b15b0d79f018da6d653334a548b3d0c3e66d8f91` |
| 12 | `def` | [fullyFaithfulForget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb4ed0cdd1469ce204ade8e9f5d79ce1fb03c8e77ecaede5c721868e5e6a3b39c.lean/declarations/fullyfaithfulforget--5c0a21c1462a7b30b7054f94.md) | 106 | `declaration-track:5c0a21c1462a7b30b7054f94d754a68fa0970725e9cced7a1d6fd12af7c11467` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb4ed0cdd1469ce204ade8e9f5d79ce1fb03c8e77ecaede5c721868e5e6a3b39c.lean/declarations/instance--c36a3603b9f40fece5cca4d6.md) | 109 | `declaration-track:c36a3603b9f40fece5cca4d69475856d6989ae4565d36a63854b8ddf72787053` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb4ed0cdd1469ce204ade8e9f5d79ce1fb03c8e77ecaede5c721868e5e6a3b39c.lean/declarations/instance--a6a2de4b03f8931bcd532379.md) | 112 | `declaration-track:a6a2de4b03f8931bcd532379e3865bbc881c545128c0263d9aab076b33130c55` |
| 15 | `instance` | [mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb4ed0cdd1469ce204ade8e9f5d79ce1fb03c8e77ecaede5c721868e5e6a3b39c.lean/declarations/mono--a2781b357377fbd40b13296d.md) | 115 | `declaration-track:a2781b357377fbd40b13296d171dc4b9951821932aaca2453b8f69538740578f` |
| 16 | `instance` | [isThin](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb4ed0cdd1469ce204ade8e9f5d79ce1fb03c8e77ecaede5c721868e5e6a3b39c.lean/declarations/isthin--3a03b0de7c3743871b186489.md) | 120 | `declaration-track:3a03b0de7c3743871b186489cbad578bafba648a6cd0394ea2a5f789a4870d6d` |
| 17 | `theorem` | [w](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb4ed0cdd1469ce204ade8e9f5d79ce1fb03c8e77ecaede5c721868e5e6a3b39c.lean/declarations/w--d26281491b70eb1d6ecd53ee.md) | 129 | `result-track:d26281491b70eb1d6ecd53ee237244beb0fd067cc0611e98e0bc94396e99e837` |
| 18 | `abbrev` | [homMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb4ed0cdd1469ce204ade8e9f5d79ce1fb03c8e77ecaede5c721868e5e6a3b39c.lean/declarations/hommk--024e016afd463f710917da99.md) | 133 | `declaration-track:024e016afd463f710917da994547e67c61f7d9727f4977ee3c6b0c21df9e9e7b` |
| 19 | `def` | [isoMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb4ed0cdd1469ce204ade8e9f5d79ce1fb03c8e77ecaede5c721868e5e6a3b39c.lean/declarations/isomk--0b917cc35782c66b13f95200.md) | 139 | `declaration-track:0b917cc35782c66b13f952000938f27fba6d366901b57e6f9111f934167b6ae2` |
| 20 | `def` | [mk'ArrowIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb4ed0cdd1469ce204ade8e9f5d79ce1fb03c8e77ecaede5c721868e5e6a3b39c.lean/declarations/mk-arrowiso--d54b08408878b821f95e2dc7.md) | 147 | `declaration-track:d54b08408878b821f95e2dc735c318d023f9474068fee2b85bafce60c80c9619` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb4ed0cdd1469ce204ade8e9f5d79ce1fb03c8e77ecaede5c721868e5e6a3b39c.lean/declarations/instance--e40f4de889ca893b8d6eb505.md) | 150 | `declaration-track:e40f4de889ca893b8d6eb505853ba91081b0bf0ca1e52380f74add893f7505eb` |
| 22 | `lemma` | [isIso_iff_isIso_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb4ed0cdd1469ce204ade8e9f5d79ce1fb03c8e77ecaede5c721868e5e6a3b39c.lean/declarations/isiso-iff-isiso-left--1d3759b383f02db1b1eb3df3.md) | 153 | `result-track:1d3759b383f02db1b1eb3df365d1b4693f749d0d5a5ec4964ede057c33528e87` |
| 23 | `def` | [lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb4ed0cdd1469ce204ade8e9f5d79ce1fb03c8e77ecaede5c721868e5e6a3b39c.lean/declarations/lift--5b9b23a9123edc6b34eb722e.md) | 161 | `declaration-track:5b9b23a9123edc6b34eb722e7d1a2380322fea4577bdc5c845e4c67ecdaf5c9e` |
| 24 | `def` | [liftIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb4ed0cdd1469ce204ade8e9f5d79ce1fb03c8e77ecaede5c721868e5e6a3b39c.lean/declarations/liftiso--5d1cb18dc5ee5fc23ab7c082.md) | 169 | `declaration-track:5d1cb18dc5ee5fc23ab7c082b724622e8f75b98d6ae36a62b67374b9c128ed20` |
| 25 | `def` | [liftComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb4ed0cdd1469ce204ade8e9f5d79ce1fb03c8e77ecaede5c721868e5e6a3b39c.lean/declarations/liftcomp--a05323aecfc0b782b0bb8f74.md) | 173 | `declaration-track:a05323aecfc0b782b0bb8f7422599901b2b0a41e6677af53f66dd350aa6ed678` |
| 26 | `def` | [liftId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb4ed0cdd1469ce204ade8e9f5d79ce1fb03c8e77ecaede5c721868e5e6a3b39c.lean/declarations/liftid--7f2677132ca3926a64c26a72.md) | 178 | `declaration-track:7f2677132ca3926a64c26a7227600465884032c011f9f40e889d69009d8b06d9` |
| 27 | `theorem` | [lift_comm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb4ed0cdd1469ce204ade8e9f5d79ce1fb03c8e77ecaede5c721868e5e6a3b39c.lean/declarations/lift-comm--6917dbec63092b74e5030d4a.md) | 182 | `result-track:6917dbec63092b74e5030d4af8af8e7f93c6bfffbdf14b8c9fff8825d3d9a32c` |
| 28 | `theorem` | [lift_obj_arrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb4ed0cdd1469ce204ade8e9f5d79ce1fb03c8e77ecaede5c721868e5e6a3b39c.lean/declarations/lift-obj-arrow--4f9557a789826f7b64dd88c0.md) | 188 | `result-track:4f9557a789826f7b64dd88c07af25794bbb6c1276bee86ce538939f1dbf2dcdc` |
| 29 | `def` | [slice](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb4ed0cdd1469ce204ade8e9f5d79ce1fb03c8e77ecaede5c721868e5e6a3b39c.lean/declarations/slice--e57b451f1b102181699a62ed.md) | 196 | `declaration-track:e57b451f1b102181699a62ed07897e7ae5ecb2cefd6d5a7c6acb21f42dbf5742` |
| 30 | `def` | [pullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb4ed0cdd1469ce204ade8e9f5d79ce1fb03c8e77ecaede5c721868e5e6a3b39c.lean/declarations/pullback--a2824515722e7f5fe8dc313d.md) | 217 | `declaration-track:a2824515722e7f5fe8dc313dac9f9d9209886639c4a2525bfa771863df4019b4` |
| 31 | `def` | [pullbackComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb4ed0cdd1469ce204ade8e9f5d79ce1fb03c8e77ecaede5c721868e5e6a3b39c.lean/declarations/pullbackcomp--cbdd821e27d5f3d13d8eed0f.md) | 223 | `declaration-track:cbdd821e27d5f3d13d8eed0f9ab2070a48beb3f19b6e6e71fd1cbb605cdd48f8` |
| 32 | `def` | [pullbackId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb4ed0cdd1469ce204ade8e9f5d79ce1fb03c8e77ecaede5c721868e5e6a3b39c.lean/declarations/pullbackid--4616eb20bf7fd635f19c667c.md) | 227 | `declaration-track:4616eb20bf7fd635f19c667cbbee80dbab5b0aebc63ad65fb8889b93615b8e2d` |
| 33 | `theorem` | [pullback_obj_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb4ed0cdd1469ce204ade8e9f5d79ce1fb03c8e77ecaede5c721868e5e6a3b39c.lean/declarations/pullback-obj-left--2d7ff7100e986cae4b7316e4.md) | 231 | `result-track:2d7ff7100e986cae4b7316e4ec63d591ff11af36045ffbb504e1d64320686c64` |
| 34 | `theorem` | [pullback_obj_arrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb4ed0cdd1469ce204ade8e9f5d79ce1fb03c8e77ecaede5c721868e5e6a3b39c.lean/declarations/pullback-obj-arrow--84921204e310f68de6c54c99.md) | 236 | `result-track:84921204e310f68de6c54c99ea902d74882e2f9c64b490b608cc926cf7f69e98` |
| 35 | `def` | [pullbackObjIsoOfIsPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb4ed0cdd1469ce204ade8e9f5d79ce1fb03c8e77ecaede5c721868e5e6a3b39c.lean/declarations/pullbackobjisoofispullback--06a88e9e7ade7a0ea1e992c4.md) | 259 | `declaration-track:06a88e9e7ade7a0ea1e992c4f91d38098e707092a6f28e4988364392efe544d6` |
| 36 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb4ed0cdd1469ce204ade8e9f5d79ce1fb03c8e77ecaede5c721868e5e6a3b39c.lean/declarations/map--f7c7815b7c8d31650c5c3f1f.md) | 272 | `declaration-track:f7c7815b7c8d31650c5c3f1f426938a533485367ee386f36bce3804ae21371e3` |
| 37 | `def` | [mapComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb4ed0cdd1469ce204ade8e9f5d79ce1fb03c8e77ecaede5c721868e5e6a3b39c.lean/declarations/mapcomp--d7b0b8f50a0d739123966992.md) | 276 | `declaration-track:d7b0b8f50a0d739123966992fcdb048b4794a54eeb6269844fc7042b36f4c13c` |
| 38 | `def` | [mapId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb4ed0cdd1469ce204ade8e9f5d79ce1fb03c8e77ecaede5c721868e5e6a3b39c.lean/declarations/mapid--b94064ad72f84ef49e8c4efe.md) | 281 | `declaration-track:b94064ad72f84ef49e8c4efea824792587afb776bd21022f73fa1f96ee8a23fc` |
| 39 | `theorem` | [map_obj_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb4ed0cdd1469ce204ade8e9f5d79ce1fb03c8e77ecaede5c721868e5e6a3b39c.lean/declarations/map-obj-left--256ca8afe13d43b9c7b92605.md) | 285 | `result-track:256ca8afe13d43b9c7b9260508f61cddde5a0b8c0ebf5dda4028a911b645f166` |
| 40 | `theorem` | [map_obj_arrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb4ed0cdd1469ce204ade8e9f5d79ce1fb03c8e77ecaede5c721868e5e6a3b39c.lean/declarations/map-obj-arrow--7d594da19bdc4c63806e8285.md) | 289 | `result-track:7d594da19bdc4c63806e82853999d2294d5003854e173e282637915878c5b866` |
| 41 | `instance` | [full_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb4ed0cdd1469ce204ade8e9f5d79ce1fb03c8e77ecaede5c721868e5e6a3b39c.lean/declarations/full-map--0acb04efcb9f771b10eba032.md) | 292 | `declaration-track:0acb04efcb9f771b10eba032dbe90554ce22aec5c7752f956d01a77c8550a698` |
| 42 | `instance` | [faithful_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb4ed0cdd1469ce204ade8e9f5d79ce1fb03c8e77ecaede5c721868e5e6a3b39c.lean/declarations/faithful-map--fa020691fab98e278adf9746.md) | 298 | `declaration-track:fa020691fab98e278adf974620ca00f7fd659707aa79a3243b4f71070e2340d4` |
| 43 | `def` | [mapIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb4ed0cdd1469ce204ade8e9f5d79ce1fb03c8e77ecaede5c721868e5e6a3b39c.lean/declarations/mapiso--38548d5120a3cef39bb0d91c.md) | 303 | `declaration-track:38548d5120a3cef39bb0d91ca44c1982e6a08e5390b8958835eeb21a73deeb8f` |
| 44 | `def` | [congr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb4ed0cdd1469ce204ade8e9f5d79ce1fb03c8e77ecaede5c721868e5e6a3b39c.lean/declarations/congr--da73b62331558f7fee968e42.md) | 316 | `declaration-track:da73b62331558f7fee968e42334ea42469006bcaa352d97da00fadb431a4ba57` |
| 45 | `def` | [mapPullbackAdj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb4ed0cdd1469ce204ade8e9f5d79ce1fb03c8e77ecaede5c721868e5e6a3b39c.lean/declarations/mappullbackadj--9a00492e090850b2b7dcfeca.md) | 336 | `declaration-track:9a00492e090850b2b7dcfeca2f8278492e43f31a908fa2f6b9628ac74c75431c` |
| 46 | `def` | [pullbackMapSelf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb4ed0cdd1469ce204ade8e9f5d79ce1fb03c8e77ecaede5c721868e5e6a3b39c.lean/declarations/pullbackmapself--5145e699c4b7894e085eea20.md) | 341 | `declaration-track:5145e699c4b7894e085eea205680f4c9b35b413e86a7fa168c55a6ea0dba88f9` |
| 47 | `def` | [imageMonoOver](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb4ed0cdd1469ce204ade8e9f5d79ce1fb03c8e77ecaede5c721868e5e6a3b39c.lean/declarations/imagemonoover--75a525afe10be6e6bb0c39a5.md) | 354 | `declaration-track:75a525afe10be6e6bb0c39a5fe839405891f5fd58712df3d76838cd7703ff0f5` |
| 48 | `theorem` | [imageMonoOver_arrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb4ed0cdd1469ce204ade8e9f5d79ce1fb03c8e77ecaede5c721868e5e6a3b39c.lean/declarations/imagemonoover-arrow--b3bfc09e164c758d44bdc596.md) | 358 | `result-track:b3bfc09e164c758d44bdc59695a5793db6cf9d2ce3f9bb06eb0a4b405dcd19dd` |
| 49 | `def` | [image](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb4ed0cdd1469ce204ade8e9f5d79ce1fb03c8e77ecaede5c721868e5e6a3b39c.lean/declarations/image--9111fae96b5a19ab538b546a.md) | 370 | `declaration-track:9111fae96b5a19ab538b546a72a62383e3358abdc39be5ef4d9b3232356d0369` |
| 50 | `def` | [imageForgetAdj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb4ed0cdd1469ce204ade8e9f5d79ce1fb03c8e77ecaede5c721868e5e6a3b39c.lean/declarations/imageforgetadj--79f76e9038ea6aef1bf66090.md) | 385 | `declaration-track:79f76e9038ea6aef1bf6609084232c36463a9670530810a4626cff016605589c` |
| 51 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb4ed0cdd1469ce204ade8e9f5d79ce1fb03c8e77ecaede5c721868e5e6a3b39c.lean/declarations/instance--bc948ff5aa058986c1e5f211.md) | 407 | `declaration-track:bc948ff5aa058986c1e5f2116ece515090dcfd2433d28b47d0f7a0ec0e9cbf7d` |
| 52 | `instance` | [reflective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb4ed0cdd1469ce204ade8e9f5d79ce1fb03c8e77ecaede5c721868e5e6a3b39c.lean/declarations/reflective--e9e59a631d8637a4c3b3a024.md) | 410 | `declaration-track:e9e59a631d8637a4c3b3a024e4f66b1d9a0fcaea913c2935f061171c23dc6d82` |
| 53 | `def` | [forgetImage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb4ed0cdd1469ce204ade8e9f5d79ce1fb03c8e77ecaede5c721868e5e6a3b39c.lean/declarations/forgetimage--3495242086c1ef1a96b25ab8.md) | 417 | `declaration-track:3495242086c1ef1a96b25ab8db57f089579be03297ef907a13a73ff8b285d262` |
| 54 | `def` | [«exists»](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb4ed0cdd1469ce204ade8e9f5d79ce1fb03c8e77ecaede5c721868e5e6a3b39c.lean/declarations/exists--86069af5e3d06235cb883984.md) | 429 | `declaration-track:86069af5e3d06235cb883984c95f6453940cf7039a87d93aedde819c8d477334` |
| 55 | `instance` | [faithful_exists](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb4ed0cdd1469ce204ade8e9f5d79ce1fb03c8e77ecaede5c721868e5e6a3b39c.lean/declarations/faithful-exists--6150a00435d6fa89a3b6bcc1.md) | 432 | `declaration-track:6150a00435d6fa89a3b6bcc1aafc2eb182e8bed1fbf39299f4c3d3670ce5a777` |
| 56 | `def` | [existsIsoMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb4ed0cdd1469ce204ade8e9f5d79ce1fb03c8e77ecaede5c721868e5e6a3b39c.lean/declarations/existsisomap--015ae6a67065b5ee121fce82.md) | 436 | `declaration-track:015ae6a67065b5ee121fce82fd084dccd92c4ec4ade97d4bd4fa8a3933acd14e` |
| 57 | `def` | [existsPullbackAdj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb4ed0cdd1469ce204ade8e9f5d79ce1fb03c8e77ecaede5c721868e5e6a3b39c.lean/declarations/existspullbackadj--ced4bc6230739d78af1cd345.md) | 446 | `declaration-track:ced4bc6230739d78af1cd3455179eaffbe0dc4377542d1cec22ecfd8f4820298` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
