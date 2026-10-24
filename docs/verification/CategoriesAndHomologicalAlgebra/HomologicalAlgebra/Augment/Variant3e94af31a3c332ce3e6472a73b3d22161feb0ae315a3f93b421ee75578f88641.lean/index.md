# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.Augment.Variant3e94af31a3c332ce3e6472a73b3d22161feb0ae315a3f93b421ee75578f88641

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c412b190a16167870ec885f8caefcc7a3bda2260",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variant3e94af31a3c332ce3e6472a73b3d22161feb0ae315a3f93b421ee75578f88641.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variant3e94af31a3c332ce3e6472a73b3d22161feb0ae315a3f93b421ee75578f88641.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variant3e94af31a3c332ce3e6472a73b3d22161feb0ae315a3f93b421ee75578f88641.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c412b190a16167870ec885f8caefcc7a3bda2260`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variant3e94af31a3c332ce3e6472a73b3d22161feb0ae315a3f93b421ee75578f88641.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variant3e94af31a3c332ce3e6472a73b3d22161feb0ae315a3f93b421ee75578f88641.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.Single` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [truncate](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variant3e94af31a3c332ce3e6472a73b3d22161feb0ae315a3f93b421ee75578f88641.lean/declarations/truncate--07ff4c70cccc6979564a65f9.md) | 37 | `declaration-track:07ff4c70cccc6979564a65f9bad54f9b59fcdba65c5d4c63f55fdb4add7576e0` |
| 2 | `def` | [truncateTo](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variant3e94af31a3c332ce3e6472a73b3d22161feb0ae315a3f93b421ee75578f88641.lean/declarations/truncateto--2f0a75b3815f6deb70e644d2.md) | 49 | `declaration-track:2f0a75b3815f6deb70e644d2dfd82aa04e7e4f392d7ce44470d70258d86ba65a` |
| 3 | `def` | [augment](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variant3e94af31a3c332ce3e6472a73b3d22161feb0ae315a3f93b421ee75578f88641.lean/declarations/augment--049ce1c9e2b08b0e3368dbf3.md) | 61 | `declaration-track:049ce1c9e2b08b0e3368dbf3f7c14b1f51414efbc1e5be4a80adda5f44d4a7c1` |
| 4 | `theorem` | [augment_X_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variant3e94af31a3c332ce3e6472a73b3d22161feb0ae315a3f93b421ee75578f88641.lean/declarations/augment-x-zero--c007c36c4cafb545d115a239.md) | 79 | `result-track:c007c36c4cafb545d115a23912f61f2b59fab127e407d9d46c9814518c4430ad` |
| 5 | `theorem` | [augment_X_succ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variant3e94af31a3c332ce3e6472a73b3d22161feb0ae315a3f93b421ee75578f88641.lean/declarations/augment-x-succ--0aa20270994e5235e4b07d5c.md) | 86 | `result-track:0aa20270994e5235e4b07d5c03c6ae761910f29d07832f8ec066199187a358da` |
| 6 | `theorem` | [augment_d_one_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variant3e94af31a3c332ce3e6472a73b3d22161feb0ae315a3f93b421ee75578f88641.lean/declarations/augment-d-one-zero--41fc43b4afdc640c6409cdc8.md) | 93 | `result-track:41fc43b4afdc640c6409cdc88c4900c36ce59446224c1df54a742fc11268c10e` |
| 7 | `theorem` | [augment_d_succ_succ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variant3e94af31a3c332ce3e6472a73b3d22161feb0ae315a3f93b421ee75578f88641.lean/declarations/augment-d-succ-succ--f00b2d7e1e50450366f25ed6.md) | 99 | `result-track:f00b2d7e1e50450366f25ed65ab6cd59946d8513fd3e7bd37f2abed6431fdaa7` |
| 8 | `def` | [truncateAugment](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variant3e94af31a3c332ce3e6472a73b3d22161feb0ae315a3f93b421ee75578f88641.lean/declarations/truncateaugment--32be9bf09c158add00a81895.md) | 107 | `declaration-track:32be9bf09c158add00a81895035da4c04c356b43b6d4beb506bcf463b5cbae3c` |
| 9 | `theorem` | [truncateAugment_hom_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variant3e94af31a3c332ce3e6472a73b3d22161feb0ae315a3f93b421ee75578f88641.lean/declarations/truncateaugment-hom-f--823825924a189e8e3522012c.md) | 127 | `result-track:823825924a189e8e3522012cabb685276a5ea49ad0800fd84d8a201b4e268c3c` |
| 10 | `theorem` | [truncateAugment_inv_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variant3e94af31a3c332ce3e6472a73b3d22161feb0ae315a3f93b421ee75578f88641.lean/declarations/truncateaugment-inv-f--4e7a47cacb761eb46afb1848.md) | 133 | `result-track:4e7a47cacb761eb46afb18482e5224ee9ee2efa49569d7c901442ea7c1cbb527` |
| 11 | `theorem` | [chainComplex_d_succ_succ_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variant3e94af31a3c332ce3e6472a73b3d22161feb0ae315a3f93b421ee75578f88641.lean/declarations/chaincomplex-d-succ-succ-zero--4fe9806c2e7b5695b4c8bda0.md) | 139 | `result-track:4fe9806c2e7b5695b4c8bda0c98c08228dbac0a3b37494715d7cd42bc0254b8d` |
| 12 | `def` | [augmentTruncate](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variant3e94af31a3c332ce3e6472a73b3d22161feb0ae315a3f93b421ee75578f88641.lean/declarations/augmenttruncate--ee212f4860414c5abc7cf6a2.md) | 147 | `declaration-track:ee212f4860414c5abc7cf6a2c2964063c4637a7018bb6ac9c269a0c21afac46d` |
| 13 | `theorem` | [augmentTruncate_hom_f_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variant3e94af31a3c332ce3e6472a73b3d22161feb0ae315a3f93b421ee75578f88641.lean/declarations/augmenttruncate-hom-f-zero--5a49242afa1f9ed91e87ee7c.md) | 174 | `result-track:5a49242afa1f9ed91e87ee7c622f7c174ed82bde162580664c6bdcbe0ed4b1f3` |
| 14 | `theorem` | [augmentTruncate_hom_f_succ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variant3e94af31a3c332ce3e6472a73b3d22161feb0ae315a3f93b421ee75578f88641.lean/declarations/augmenttruncate-hom-f-succ--8429f8b8fbf66dfde633cbdf.md) | 180 | `result-track:8429f8b8fbf66dfde633cbdf7a4f1fd813e585247fab1a43dcf64a18d22e9e3f` |
| 15 | `theorem` | [augmentTruncate_inv_f_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variant3e94af31a3c332ce3e6472a73b3d22161feb0ae315a3f93b421ee75578f88641.lean/declarations/augmenttruncate-inv-f-zero--a5c3c46451bd1f7f8163fe26.md) | 186 | `result-track:a5c3c46451bd1f7f8163fe2629590dbb8cb65a5566e0862269bbde1a0301802f` |
| 16 | `theorem` | [augmentTruncate_inv_f_succ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variant3e94af31a3c332ce3e6472a73b3d22161feb0ae315a3f93b421ee75578f88641.lean/declarations/augmenttruncate-inv-f-succ--102a2e6461466cbbf006f7d5.md) | 192 | `result-track:102a2e6461466cbbf006f7d5d3a870e502541b89efd508c098e5ee37d9641117` |
| 17 | `def` | [toSingle₀AsComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variant3e94af31a3c332ce3e6472a73b3d22161feb0ae315a3f93b421ee75578f88641.lean/declarations/tosingle-ascomplex--edea8092af8ef88ea4940a73.md) | 202 | `declaration-track:edea8092af8ef88ea4940a73ee652f1564331d7591eace98191e85ae34931081` |
| 18 | `def` | [truncate](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variant3e94af31a3c332ce3e6472a73b3d22161feb0ae315a3f93b421ee75578f88641.lean/declarations/truncate--25e1fd2702fdb8823b760237.md) | 216 | `declaration-track:25e1fd2702fdb8823b760237f864ac8af5e6b16317ade8a70ee06ec18defe890` |
| 19 | `def` | [toTruncate](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variant3e94af31a3c332ce3e6472a73b3d22161feb0ae315a3f93b421ee75578f88641.lean/declarations/totruncate--a616a05eac86dfccdcbe3dd1.md) | 230 | `declaration-track:a616a05eac86dfccdcbe3dd1d69f26ccbcbf9bc08cdfda298d41daf549f789f1` |
| 20 | `def` | [augment](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variant3e94af31a3c332ce3e6472a73b3d22161feb0ae315a3f93b421ee75578f88641.lean/declarations/augment--81916aa6b9f4905f977f9a9c.md) | 240 | `declaration-track:81916aa6b9f4905f977f9a9cee5a32b0d5117ed075c5918d48785484ac4208e3` |
| 21 | `theorem` | [augment_X_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variant3e94af31a3c332ce3e6472a73b3d22161feb0ae315a3f93b421ee75578f88641.lean/declarations/augment-x-zero--b3de4a9f53b20ebcf8c240f1.md) | 266 | `result-track:b3de4a9f53b20ebcf8c240f1e49ac7720d05a923e84697e517ffbede69c1ea06` |
| 22 | `theorem` | [augment_X_succ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variant3e94af31a3c332ce3e6472a73b3d22161feb0ae315a3f93b421ee75578f88641.lean/declarations/augment-x-succ--f99a08562ddaae18bc67fd2f.md) | 273 | `result-track:f99a08562ddaae18bc67fd2f80aa553d9bf4b3017f5ff057d1fb702cd20dad96` |
| 23 | `theorem` | [augment_d_zero_one](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variant3e94af31a3c332ce3e6472a73b3d22161feb0ae315a3f93b421ee75578f88641.lean/declarations/augment-d-zero-one--024a8af4845629f8022962e3.md) | 280 | `result-track:024a8af4845629f8022962e34261957a5f00cc318e8bdf5002f04693a7f5becd` |
| 24 | `theorem` | [augment_d_succ_succ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variant3e94af31a3c332ce3e6472a73b3d22161feb0ae315a3f93b421ee75578f88641.lean/declarations/augment-d-succ-succ--0a63907efdca19904e991d06.md) | 286 | `result-track:0a63907efdca19904e991d06b7aeb47850b5c27ef817a25d802757cb666b1ba5` |
| 25 | `def` | [truncateAugment](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variant3e94af31a3c332ce3e6472a73b3d22161feb0ae315a3f93b421ee75578f88641.lean/declarations/truncateaugment--37b9f0a2e61a1b6150eec929.md) | 294 | `declaration-track:37b9f0a2e61a1b6150eec92986a816b646b3b16ea68b0951bd46b84669e6e1fc` |
| 26 | `theorem` | [truncateAugment_hom_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variant3e94af31a3c332ce3e6472a73b3d22161feb0ae315a3f93b421ee75578f88641.lean/declarations/truncateaugment-hom-f--87a5e7cd608f1fbc289e4a55.md) | 316 | `result-track:87a5e7cd608f1fbc289e4a55001ac340af087cd5fcf93931750a1b4635bf55cd` |
| 27 | `theorem` | [truncateAugment_inv_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variant3e94af31a3c332ce3e6472a73b3d22161feb0ae315a3f93b421ee75578f88641.lean/declarations/truncateaugment-inv-f--5d27f3d7cb19a01b175f38d9.md) | 322 | `result-track:5d27f3d7cb19a01b175f38d9b595d8daf5688c2179fd146a88b275e24b85138a` |
| 28 | `theorem` | [cochainComplex_d_succ_succ_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variant3e94af31a3c332ce3e6472a73b3d22161feb0ae315a3f93b421ee75578f88641.lean/declarations/cochaincomplex-d-succ-succ-zero--5a49795485e21b9ce3dcd9e8.md) | 329 | `result-track:5a49795485e21b9ce3dcd9e8d22d3829e47447dc05f80cb538ccaaf9064379e5` |
| 29 | `def` | [augmentTruncate](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variant3e94af31a3c332ce3e6472a73b3d22161feb0ae315a3f93b421ee75578f88641.lean/declarations/augmenttruncate--5158f04641c1a057ac6d8a4f.md) | 338 | `declaration-track:5158f04641c1a057ac6d8a4f031ae6f929bea225cdbe25f466ce53a0d68aeafe` |
| 30 | `theorem` | [augmentTruncate_hom_f_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variant3e94af31a3c332ce3e6472a73b3d22161feb0ae315a3f93b421ee75578f88641.lean/declarations/augmenttruncate-hom-f-zero--a03cd3349151e5eda39f23fd.md) | 367 | `result-track:a03cd3349151e5eda39f23fd43ad2f39fe3836cbda722220f15212c314cbe6b3` |
| 31 | `theorem` | [augmentTruncate_hom_f_succ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variant3e94af31a3c332ce3e6472a73b3d22161feb0ae315a3f93b421ee75578f88641.lean/declarations/augmenttruncate-hom-f-succ--ab7d588bb93cf88a17c4ee47.md) | 373 | `result-track:ab7d588bb93cf88a17c4ee47ab7b863d687a89c7eb60f71e554e2da8da43533e` |
| 32 | `theorem` | [augmentTruncate_inv_f_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variant3e94af31a3c332ce3e6472a73b3d22161feb0ae315a3f93b421ee75578f88641.lean/declarations/augmenttruncate-inv-f-zero--0934fc0b1b6235920d0cfc73.md) | 379 | `result-track:0934fc0b1b6235920d0cfc7367cdfab75942f85b59b9c8d0b444c2fadf21fa83` |
| 33 | `theorem` | [augmentTruncate_inv_f_succ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variant3e94af31a3c332ce3e6472a73b3d22161feb0ae315a3f93b421ee75578f88641.lean/declarations/augmenttruncate-inv-f-succ--5c177d666959a776b0f3ad62.md) | 385 | `result-track:5c177d666959a776b0f3ad629fdcd1ef6e2344f75986c6aeab336009ad061cbe` |
| 34 | `def` | [fromSingle₀AsComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variant3e94af31a3c332ce3e6472a73b3d22161feb0ae315a3f93b421ee75578f88641.lean/declarations/fromsingle-ascomplex--8f6d55ce2d05fb507eacd7e6.md) | 395 | `declaration-track:8f6d55ce2d05fb507eacd7e65e6a84ca4a5b2986a6889dc029b4bfc9135f7c56` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
