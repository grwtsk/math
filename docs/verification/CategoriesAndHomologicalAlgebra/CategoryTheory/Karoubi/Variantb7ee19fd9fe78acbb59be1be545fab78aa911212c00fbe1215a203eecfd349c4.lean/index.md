# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Karoubi.Variantb7ee19fd9fe78acbb59be1be545fab78aa911212c00fbe1215a203eecfd349c4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d37d3b6177faf183bb1ff0ddda0cdbbd9b4c0a1",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variantb7ee19fd9fe78acbb59be1be545fab78aa911212c00fbe1215a203eecfd349c4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variantb7ee19fd9fe78acbb59be1be545fab78aa911212c00fbe1215a203eecfd349c4.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variantb7ee19fd9fe78acbb59be1be545fab78aa911212c00fbe1215a203eecfd349c4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d37d3b6177faf183bb1ff0ddda0cdbbd9b4c0a1`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variantb7ee19fd9fe78acbb59be1be545fab78aa911212c00fbe1215a203eecfd349c4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variantb7ee19fd9fe78acbb59be1be545fab78aa911212c00fbe1215a203eecfd349c4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Karoubi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variantb7ee19fd9fe78acbb59be1be545fab78aa911212c00fbe1215a203eecfd349c4.lean/declarations/karoubi--28b27c300b8c7eee841e677f.md) | 44 | `declaration-track:28b27c300b8c7eee841e677f01db18de4fe458da1c255b9003080d0dbe72638d` |
| 2 | `theorem` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variantb7ee19fd9fe78acbb59be1be545fab78aa911212c00fbe1215a203eecfd349c4.lean/declarations/ext--966cb3073ce3cfd7d5f33583.md) | 59 | `result-track:966cb3073ce3cfd7d5f335834546a770ab73e7c80325ccb3b7f7e3c9c57e8585` |
| 3 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variantb7ee19fd9fe78acbb59be1be545fab78aa911212c00fbe1215a203eecfd349c4.lean/declarations/hom--747f25b5e32a360920677761.md) | 72 | `declaration-track:747f25b5e32a3609206777611b961870c99c4192cf4e955a66563bac6bfdd233` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variantb7ee19fd9fe78acbb59be1be545fab78aa911212c00fbe1215a203eecfd349c4.lean/declarations/instance--5037691b00ff352cfae09ee5.md) | 78 | `declaration-track:5037691b00ff352cfae09ee5a18db227a7d64b05acceeda6c365bcdbed50c4f5` |
| 5 | `theorem` | [p_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variantb7ee19fd9fe78acbb59be1be545fab78aa911212c00fbe1215a203eecfd349c4.lean/declarations/p-comp--e90152b01fe364d9fe41e29f.md) | 82 | `result-track:e90152b01fe364d9fe41e29ffb8b43d87a1ae2469728fbfab4f5a35c4a526164` |
| 6 | `theorem` | [comp_p](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variantb7ee19fd9fe78acbb59be1be545fab78aa911212c00fbe1215a203eecfd349c4.lean/declarations/comp-p--ded8bdaf7fd183777b8bfc38.md) | 86 | `result-track:ded8bdaf7fd183777b8bfc3841faa0ef0a0af24612ae49d879b5c48ca4bc9c4a` |
| 7 | `theorem` | [p_comm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variantb7ee19fd9fe78acbb59be1be545fab78aa911212c00fbe1215a203eecfd349c4.lean/declarations/p-comm--9501b99a43f519a7311ed5c0.md) | 90 | `result-track:9501b99a43f519a7311ed5c0a4dfe75452c03f644ef1984ffb2a724a00cd8890` |
| 8 | `theorem` | [comp_proof](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variantb7ee19fd9fe78acbb59be1be545fab78aa911212c00fbe1215a203eecfd349c4.lean/declarations/comp-proof--a80cb6b93ed6ded4bad6fc64.md) | 92 | `result-track:a80cb6b93ed6ded4bad6fc64d8a65a29c8b5f9606eb9e48d2216b0a7b1e52acf` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variantb7ee19fd9fe78acbb59be1be545fab78aa911212c00fbe1215a203eecfd349c4.lean/declarations/instance--8338b10a68ab05788f2cbec4.md) | 96 | `declaration-track:8338b10a68ab05788f2cbec4320c654f532c58de3b66ac2f350836755253704d` |
| 10 | `theorem` | [hom_ext_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variantb7ee19fd9fe78acbb59be1be545fab78aa911212c00fbe1215a203eecfd349c4.lean/declarations/hom-ext-iff--db4a502622051e43298ba110.md) | 102 | `result-track:db4a502622051e43298ba1107160a40c0a53a44da03db3df2b7cd53cfced89ce` |
| 11 | `theorem` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variantb7ee19fd9fe78acbb59be1be545fab78aa911212c00fbe1215a203eecfd349c4.lean/declarations/hom-ext--f64f41d5359a9cc213ae3da0.md) | 109 | `result-track:f64f41d5359a9cc213ae3da0f381335a369b84c94639d352bbd556385647d9e0` |
| 12 | `theorem` | [comp_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variantb7ee19fd9fe78acbb59be1be545fab78aa911212c00fbe1215a203eecfd349c4.lean/declarations/comp-f--f7ab3f5df0481b38bab08ecc.md) | 113 | `result-track:f7ab3f5df0481b38bab08eccca55574e703e12261051763bf660b1008e6fd966` |
| 13 | `theorem` | [id_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variantb7ee19fd9fe78acbb59be1be545fab78aa911212c00fbe1215a203eecfd349c4.lean/declarations/id-f--9d326383f8a9f8cdcd49c660.md) | 116 | `result-track:9d326383f8a9f8cdcd49c6608cdc41dc6e8e57b842b7110dc13245910e951529` |
| 14 | `instance` | [coe](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variantb7ee19fd9fe78acbb59be1be545fab78aa911212c00fbe1215a203eecfd349c4.lean/declarations/coe--00387e57d61a0df56cfe5dfc.md) | 120 | `declaration-track:00387e57d61a0df56cfe5dfccdb425d0d074ec5fbcc605f0d341e46a6aba60c7` |
| 15 | `theorem` | [coe_X](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variantb7ee19fd9fe78acbb59be1be545fab78aa911212c00fbe1215a203eecfd349c4.lean/declarations/coe-x--4f979b9cb0f80b9251d6e12b.md) | 123 | `result-track:4f979b9cb0f80b9251d6e12b74e13970c78b0e9031500b6cfac3cbb0e36eeb5e` |
| 16 | `theorem` | [coe_p](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variantb7ee19fd9fe78acbb59be1be545fab78aa911212c00fbe1215a203eecfd349c4.lean/declarations/coe-p--633c0ecb6eed64dbe45aa9ab.md) | 126 | `result-track:633c0ecb6eed64dbe45aa9abf59df226773b23c42e2f6a4404d2d4ccdcdf8fde` |
| 17 | `theorem` | [eqToHom_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variantb7ee19fd9fe78acbb59be1be545fab78aa911212c00fbe1215a203eecfd349c4.lean/declarations/eqtohom-f--2c626b901caa2b4608c56d82.md) | 129 | `result-track:2c626b901caa2b4608c56d82c157af04c2699923ec0c17da556edeaf7a5aac4d` |
| 18 | `def` | [toKaroubi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variantb7ee19fd9fe78acbb59be1be545fab78aa911212c00fbe1215a203eecfd349c4.lean/declarations/tokaroubi--4fd7808fd4a0d98acc2aac7b.md) | 139 | `declaration-track:4fd7808fd4a0d98acc2aac7b663773f96d8a3d0dd68db96eada761dfc6884a32` |
| 19 | `def` | [fullyFaithfulToKaroubi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variantb7ee19fd9fe78acbb59be1be545fab78aa911212c00fbe1215a203eecfd349c4.lean/declarations/fullyfaithfultokaroubi--adac63f71851b86f790c3154.md) | 144 | `declaration-track:adac63f71851b86f790c3154ea7c4ba81bc3e0cc5f2620f45e34360b33dce423` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variantb7ee19fd9fe78acbb59be1be545fab78aa911212c00fbe1215a203eecfd349c4.lean/declarations/instance--f52938bf3ac2533e4d7720b5.md) | 147 | `declaration-track:f52938bf3ac2533e4d7720b5f02aba086fd074dd2c497df336399896e433b4b9` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variantb7ee19fd9fe78acbb59be1be545fab78aa911212c00fbe1215a203eecfd349c4.lean/declarations/instance--a8d92127e816403875b36e13.md) | 149 | `declaration-track:a8d92127e816403875b36e133a1f17a5b12f756dc47d9e43bdfbb2afaeb6ad2c` |
| 22 | `instance` | [instAdd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variantb7ee19fd9fe78acbb59be1be545fab78aa911212c00fbe1215a203eecfd349c4.lean/declarations/instadd--0d02d1760b4755aca6809c98.md) | 154 | `declaration-track:0d02d1760b4755aca6809c980baec4b75ee8d0c5fdf933c762496a9e5606245e` |
| 23 | `instance` | [instNeg](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variantb7ee19fd9fe78acbb59be1be545fab78aa911212c00fbe1215a203eecfd349c4.lean/declarations/instneg--c193cadd0430e344e8e8b69d.md) | 158 | `declaration-track:c193cadd0430e344e8e8b69d3bea76ef5a718337ad852bea0f3dbac59468e3c6` |
| 24 | `instance` | [instZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variantb7ee19fd9fe78acbb59be1be545fab78aa911212c00fbe1215a203eecfd349c4.lean/declarations/instzero--4110f059e0e165bdba297bbf.md) | 162 | `declaration-track:4110f059e0e165bdba297bbf70eeeafc8538cb90e3b39a543f5cc8cb6ac28bd5` |
| 25 | `instance` | [instAddCommGroupHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variantb7ee19fd9fe78acbb59be1be545fab78aa911212c00fbe1215a203eecfd349c4.lean/declarations/instaddcommgrouphom--dfdcd9c72f618f2dcbce829f.md) | 165 | `declaration-track:dfdcd9c72f618f2dcbce829f8cc66c85d97c1642e43f88227c10767239bbb72d` |
| 26 | `theorem` | [hom_eq_zero_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variantb7ee19fd9fe78acbb59be1be545fab78aa911212c00fbe1215a203eecfd349c4.lean/declarations/hom-eq-zero-iff--df37c87673573ff3dad05c43.md) | 186 | `result-track:df37c87673573ff3dad05c437f2910f62725a172e846e109d795b0fbd91721ee` |
| 27 | `def` | [inclusionHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variantb7ee19fd9fe78acbb59be1be545fab78aa911212c00fbe1215a203eecfd349c4.lean/declarations/inclusionhom--2629b4501e156267b5b8023f.md) | 191 | `declaration-track:2629b4501e156267b5b8023fd75ca4662c5457f6d7b03cfebcbf30cd6a037cc4` |
| 28 | `theorem` | [sum_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variantb7ee19fd9fe78acbb59be1be545fab78aa911212c00fbe1215a203eecfd349c4.lean/declarations/sum-hom--31eaab5fefece38fcd2d9b08.md) | 197 | `result-track:31eaab5fefece38fcd2d9b08691b38d09a91e7aad3452ae8ac8e18426c06f7e4` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variantb7ee19fd9fe78acbb59be1be545fab78aa911212c00fbe1215a203eecfd349c4.lean/declarations/instance--053adcd10f140774fd16a1f0.md) | 204 | `declaration-track:053adcd10f140774fd16a1f01c86e27e3c45fceaa5bad660c62ea047b66b4ca0` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variantb7ee19fd9fe78acbb59be1be545fab78aa911212c00fbe1215a203eecfd349c4.lean/declarations/instance--b06450280c7609b8eb42f3a0.md) | 207 | `declaration-track:b06450280c7609b8eb42f3a054c2125ce0ddb917120f18f04e0775c753dbbec3` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variantb7ee19fd9fe78acbb59be1be545fab78aa911212c00fbe1215a203eecfd349c4.lean/declarations/instance--e6cacc16894e666bbb795f80.md) | 213 | `declaration-track:e6cacc16894e666bbb795f802d3f1a785c9b8143e31e70a6234ef03a3b4da250` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variantb7ee19fd9fe78acbb59be1be545fab78aa911212c00fbe1215a203eecfd349c4.lean/declarations/instance--99d7b19e0af4c2f249e43777.md) | 223 | `declaration-track:99d7b19e0af4c2f249e43777fde6ee1127c6a3bd46e52c419bfe852405a5e61c` |
| 33 | `instance` | [toKaroubi_isEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variantb7ee19fd9fe78acbb59be1be545fab78aa911212c00fbe1215a203eecfd349c4.lean/declarations/tokaroubi-isequivalence--9ef8ac8d9f0a707a94db324b.md) | 233 | `declaration-track:9ef8ac8d9f0a707a94db324bb1aba89989c03d86022b96f09b7801ae2c6157f6` |
| 34 | `def` | [toKaroubiEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variantb7ee19fd9fe78acbb59be1be545fab78aa911212c00fbe1215a203eecfd349c4.lean/declarations/tokaroubiequivalence--97798a9d9a267b012ba45d9d.md) | 236 | `declaration-track:97798a9d9a267b012ba45d9dd0df883c5a3bf88343ab16fd91dc00063c963611` |
| 35 | `instance` | [toKaroubiEquivalence_functor_additive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variantb7ee19fd9fe78acbb59be1be545fab78aa911212c00fbe1215a203eecfd349c4.lean/declarations/tokaroubiequivalence-functor-additive--bd608ac4e51da17eeffd8e6d.md) | 239 | `declaration-track:bd608ac4e51da17eeffd8e6d209c5c228e2b28106e6e0f049cc90c2007b24914` |
| 36 | `def` | [decompId_i](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variantb7ee19fd9fe78acbb59be1be545fab78aa911212c00fbe1215a203eecfd349c4.lean/declarations/decompid-i--81c103cf614b884a2ee1287d.md) | 249 | `declaration-track:81c103cf614b884a2ee1287de93cb6f2a2a70331874e92bf8413d11df4fc4366` |
| 37 | `def` | [decompId_p](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variantb7ee19fd9fe78acbb59be1be545fab78aa911212c00fbe1215a203eecfd349c4.lean/declarations/decompid-p--686b97f1506f6723427fe305.md) | 254 | `declaration-track:686b97f1506f6723427fe305058a1a72d00da8b64f6f681679acd38a6c60b71b` |
| 38 | `theorem` | [decompId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variantb7ee19fd9fe78acbb59be1be545fab78aa911212c00fbe1215a203eecfd349c4.lean/declarations/decompid--4f8112bd62362a494ece0b57.md) | 260 | `result-track:4f8112bd62362a494ece0b579eaeb411c07f689bdddc655dffa286fcea0a88fa` |
| 39 | `theorem` | [decomp_p](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variantb7ee19fd9fe78acbb59be1be545fab78aa911212c00fbe1215a203eecfd349c4.lean/declarations/decomp-p--ac78579c65e44364467b5846.md) | 264 | `result-track:ac78579c65e44364467b5846985a4f56fdfe1759f88ed192d4a6a4ea1ceecdb6` |
| 40 | `theorem` | [decompId_i_toKaroubi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variantb7ee19fd9fe78acbb59be1be545fab78aa911212c00fbe1215a203eecfd349c4.lean/declarations/decompid-i-tokaroubi--5e8936e0ae8321f5faa187d5.md) | 268 | `result-track:5e8936e0ae8321f5faa187d5064aa985e9e3f673b3642285e6fd10efb4f03b9d` |
| 41 | `theorem` | [decompId_p_toKaroubi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variantb7ee19fd9fe78acbb59be1be545fab78aa911212c00fbe1215a203eecfd349c4.lean/declarations/decompid-p-tokaroubi--3cd65db9cda78a65616bdc8b.md) | 271 | `result-track:3cd65db9cda78a65616bdc8bb5a70c4c41689294eb3b39ce5b904e21903fa36c` |
| 42 | `theorem` | [decompId_i_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variantb7ee19fd9fe78acbb59be1be545fab78aa911212c00fbe1215a203eecfd349c4.lean/declarations/decompid-i-naturality--773da9d824fb01a3757fbce8.md) | 274 | `result-track:773da9d824fb01a3757fbce81ad7d62958694e90315776254d6b2ec598bcc509` |
| 43 | `theorem` | [decompId_p_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variantb7ee19fd9fe78acbb59be1be545fab78aa911212c00fbe1215a203eecfd349c4.lean/declarations/decompid-p-naturality--fdc7fe30a3ea2543e60fe71d.md) | 278 | `result-track:fdc7fe30a3ea2543e60fe71db7f028a2f7037a89ab8651b851ccff47df23c4d5` |
| 44 | `theorem` | [zsmul_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variantb7ee19fd9fe78acbb59be1be545fab78aa911212c00fbe1215a203eecfd349c4.lean/declarations/zsmul-hom--39166d88309f45d5c73d906f.md) | 283 | `result-track:39166d88309f45d5c73d906f0a5f48237f81c55377e58a51d1bde82f6814b166` |
| 45 | `def` | [retract](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variantb7ee19fd9fe78acbb59be1be545fab78aa911212c00fbe1215a203eecfd349c4.lean/declarations/retract--bc9001b640d579466c66ec45.md) | 289 | `declaration-track:bc9001b640d579466c66ec451eab7760bd27f60adeeb8213ac94d4fcae837b65` |
| 46 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variantb7ee19fd9fe78acbb59be1be545fab78aa911212c00fbe1215a203eecfd349c4.lean/declarations/instance--ea823cc6f11f2b261a41fb42.md) | 295 | `declaration-track:ea823cc6f11f2b261a41fb424769db0341896b3102c53cf48f0762ab7241886c` |
| 47 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variantb7ee19fd9fe78acbb59be1be545fab78aa911212c00fbe1215a203eecfd349c4.lean/declarations/instance--201558c7b1236af3daabea73.md) | 301 | `declaration-track:201558c7b1236af3daabea730c7c904d7f4f7a270e02f60f6ea2abc40290f41d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
