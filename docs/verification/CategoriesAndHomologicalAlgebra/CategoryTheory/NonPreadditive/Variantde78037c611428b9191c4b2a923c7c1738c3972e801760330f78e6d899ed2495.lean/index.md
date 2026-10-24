# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.NonPreadditive.Variantde78037c611428b9191c4b2a923c7c1738c3972e801760330f78e6d899ed2495

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bdfe1ddbc951a6a2399d756c4a32379b22e1b55d",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantde78037c611428b9191c4b2a923c7c1738c3972e801760330f78e6d899ed2495.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantde78037c611428b9191c4b2a923c7c1738c3972e801760330f78e6d899ed2495.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantde78037c611428b9191c4b2a923c7c1738c3972e801760330f78e6d899ed2495.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bdfe1ddbc951a6a2399d756c4a32379b22e1b55d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantde78037c611428b9191c4b2a923c7c1738c3972e801760330f78e6d899ed2495.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantde78037c611428b9191c4b2a923c7c1738c3972e801760330f78e6d899ed2495.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.FiniteProducts` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Kernels` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.NormalMono.Equalizers` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.Images` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [NonPreadditiveAbelian](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantde78037c611428b9191c4b2a923c7c1738c3972e801760330f78e6d899ed2495.lean/declarations/nonpreadditiveabelian--478fa3c308d4b730a03e36af.md) | 76 | `declaration-track:478fa3c308d4b730a03e36af79873c585e8e08b0be7305ee8aadd0aabf7c07b8` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantde78037c611428b9191c4b2a923c7c1738c3972e801760330f78e6d899ed2495.lean/declarations/instance--fd53e258f1356309785b64ff.md) | 111 | `declaration-track:fd53e258f1356309785b64ff8987d2e42d7aeff300d0692aa19cb26da605e5e0` |
| 3 | `instance` | [isIso_factorThruImage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantde78037c611428b9191c4b2a923c7c1738c3972e801760330f78e6d899ed2495.lean/declarations/isiso-factorthruimage--3e277ea45b5ee7a13413c81f.md) | 145 | `declaration-track:3e277ea45b5ee7a13413c81fa53890761bdcd082feb89a40d67be2bc596f1fe0` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantde78037c611428b9191c4b2a923c7c1738c3972e801760330f78e6d899ed2495.lean/declarations/instance--08679fade0a0a23a2cf29d6e.md) | 149 | `declaration-track:08679fade0a0a23a2cf29d6ec047905c1a81240befc0ca67a99456bd767395f0` |
| 5 | `instance` | [isIso_factorThruCoimage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantde78037c611428b9191c4b2a923c7c1738c3972e801760330f78e6d899ed2495.lean/declarations/isiso-factorthrucoimage--e38b19974f97842c434c49dc.md) | 181 | `declaration-track:e38b19974f97842c434c49dc672e6910e3edb690ae164eb649da976e4232b1c2` |
| 6 | `def` | [epiIsCokernelOfKernel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantde78037c611428b9191c4b2a923c7c1738c3972e801760330f78e6d899ed2495.lean/declarations/epiiscokernelofkernel--3934820e514b0fe4eac574d8.md) | 193 | `declaration-track:3934820e514b0fe4eac574d89075fad1e3fa02661eb639f280894b224adab193` |
| 7 | `def` | [monoIsKernelOfCokernel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantde78037c611428b9191c4b2a923c7c1738c3972e801760330f78e6d899ed2495.lean/declarations/monoiskernelofcokernel--1d1712728aaf818ee7b25a35.md) | 203 | `declaration-track:1d1712728aaf818ee7b25a35c65a2c4c6a55cf41c3ecf92aa21b9fdb1c42adab` |
| 8 | `abbrev` | [r](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantde78037c611428b9191c4b2a923c7c1738c3972e801760330f78e6d899ed2495.lean/declarations/r--f1b0fece8bea1425314fd8ad.md) | 216 | `declaration-track:f1b0fece8bea1425314fd8ad2ae2814a1252d89160ca70cfa01532eba79cf247` |
| 9 | `instance` | [mono_Δ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantde78037c611428b9191c4b2a923c7c1738c3972e801760330f78e6d899ed2495.lean/declarations/mono--bc76f4e20c958244de61791d.md) | 219 | `declaration-track:bc76f4e20c958244de61791dcc1d8e558db655015f4e67ff53cfac7918e98547` |
| 10 | `instance` | [mono_r](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantde78037c611428b9191c4b2a923c7c1738c3972e801760330f78e6d899ed2495.lean/declarations/mono-r--53202591489ac4b300ca321f.md) | 222 | `declaration-track:53202591489ac4b300ca321f6deaa7cfa4704b0ff32c658d0d6f62c02e673c35` |
| 11 | `instance` | [epi_r](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantde78037c611428b9191c4b2a923c7c1738c3972e801760330f78e6d899ed2495.lean/declarations/epi-r--ad107568f1e922a6c0ab4c37.md) | 238 | `declaration-track:ad107568f1e922a6c0ab4c37749e28d76e94b63cceb5cbe0a1aeb0884c453c50` |
| 12 | `instance` | [isIso_r](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantde78037c611428b9191c4b2a923c7c1738c3972e801760330f78e6d899ed2495.lean/declarations/isiso-r--6eea0098aea7913f67b5dbb4.md) | 264 | `declaration-track:6eea0098aea7913f67b5dbb458eae4b9d2765546fb0a78617a731bfbb97ee45c` |
| 13 | `abbrev` | [σ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantde78037c611428b9191c4b2a923c7c1738c3972e801760330f78e6d899ed2495.lean/declarations/anonymous--afa460e975f959904497b09d.md) | 271 | `declaration-track:afa460e975f959904497b09d819ab699c087520d186dcff084c979513ebd0dc8` |
| 14 | `theorem` | [diag_σ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantde78037c611428b9191c4b2a923c7c1738c3972e801760330f78e6d899ed2495.lean/declarations/diag--01a9569efdacdaa8b5c30e3a.md) | 277 | `result-track:01a9569efdacdaa8b5c30e3a739493609ea962122fbb713ab0500b43f58a063c` |
| 15 | `theorem` | [lift_σ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantde78037c611428b9191c4b2a923c7c1738c3972e801760330f78e6d899ed2495.lean/declarations/lift--755a879d71da194f98323a5b.md) | 280 | `result-track:755a879d71da194f98323a5b50240dbaa487da947c407750b5d414c86bbe53f6` |
| 16 | `theorem` | [lift_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantde78037c611428b9191c4b2a923c7c1738c3972e801760330f78e6d899ed2495.lean/declarations/lift-map--375c6d60a7d33416127baaf0.md) | 283 | `result-track:375c6d60a7d33416127baaf073de2193f0c2064f86eaf94a6dcb9972bd23bd83` |
| 17 | `def` | [isColimitσ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantde78037c611428b9191c4b2a923c7c1738c3972e801760330f78e6d899ed2495.lean/declarations/iscolimit--947f60dac4463cc38e20c6a4.md) | 287 | `declaration-track:947f60dac4463cc38e20c6a4cdbf8bbd4be4b5f6c3afdb59cf4de716d94c70a2` |
| 18 | `theorem` | [σ_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantde78037c611428b9191c4b2a923c7c1738c3972e801760330f78e6d899ed2495.lean/declarations/comp--950147c86a2f2acfba449f47.md) | 291 | `result-track:950147c86a2f2acfba449f470cc5c56121f37fcfa736f01f7e8b55ed3f9432ba` |
| 19 | `def` | [hasSub](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantde78037c611428b9191c4b2a923c7c1738c3972e801760330f78e6d899ed2495.lean/declarations/hassub--60dca7a6fa63d23528ef1755.md) | 306 | `declaration-track:60dca7a6fa63d23528ef17557c242f22a064769528f43162c756b7b5cc5ae104` |
| 20 | `def` | [hasNeg](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantde78037c611428b9191c4b2a923c7c1738c3972e801760330f78e6d899ed2495.lean/declarations/hasneg--8c11031eac907f8c7efd097b.md) | 313 | `declaration-track:8c11031eac907f8c7efd097bc3e1dbbbea9a13825036b310ae9c11f315af2490` |
| 21 | `def` | [hasAdd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantde78037c611428b9191c4b2a923c7c1738c3972e801760330f78e6d899ed2495.lean/declarations/hasadd--ec730cc0844572506fcab3d5.md) | 320 | `declaration-track:ec730cc0844572506fcab3d584d31266367188666eb7ab26b69c34e0cb79eb75` |
| 22 | `theorem` | [sub_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantde78037c611428b9191c4b2a923c7c1738c3972e801760330f78e6d899ed2495.lean/declarations/sub-def--253ce77d2670156854e3cb67.md) | 325 | `result-track:253ce77d2670156854e3cb67062a564a468fe1b32ce9e3c4a0fe47dd416d1626` |
| 23 | `theorem` | [add_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantde78037c611428b9191c4b2a923c7c1738c3972e801760330f78e6d899ed2495.lean/declarations/add-def--34ed04786ad2ce9809288664.md) | 327 | `result-track:34ed04786ad2ce980928866483e359fb44748a0261452e9b12f3846436b81636` |
| 24 | `theorem` | [neg_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantde78037c611428b9191c4b2a923c7c1738c3972e801760330f78e6d899ed2495.lean/declarations/neg-def--367925e4ae86492dfe924288.md) | 329 | `result-track:367925e4ae86492dfe9242880b3e9ff27e4d44e7b640c08c2abb32e0d9186e85` |
| 25 | `theorem` | [sub_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantde78037c611428b9191c4b2a923c7c1738c3972e801760330f78e6d899ed2495.lean/declarations/sub-zero--5e03b0f315128b704c878738.md) | 331 | `result-track:5e03b0f315128b704c8787389c7d8fdfccb73315b7602528e4f4896bae114107` |
| 26 | `theorem` | [sub_self](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantde78037c611428b9191c4b2a923c7c1738c3972e801760330f78e6d899ed2495.lean/declarations/sub-self--554c13b73a6411faae65b454.md) | 338 | `result-track:554c13b73a6411faae65b454bfce5ec48d742e1e2bd6a8c846010db110480a57` |
| 27 | `theorem` | [lift_sub_lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantde78037c611428b9191c4b2a923c7c1738c3972e801760330f78e6d899ed2495.lean/declarations/lift-sub-lift--2e051aed22a675b019a47e9e.md) | 341 | `result-track:2e051aed22a675b019a47e9e4fe89884a210aa03f90e505ea7777b5feb30d562` |
| 28 | `theorem` | [sub_sub_sub](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantde78037c611428b9191c4b2a923c7c1738c3972e801760330f78e6d899ed2495.lean/declarations/sub-sub-sub--d16ec9d03fd8a29f9125cd60.md) | 348 | `result-track:d16ec9d03fd8a29f9125cd60f49cde7d343d1dedb64201f9a8714aec004bcc77` |
| 29 | `theorem` | [neg_sub](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantde78037c611428b9191c4b2a923c7c1738c3972e801760330f78e6d899ed2495.lean/declarations/neg-sub--1e0539255ce4f3eaf839707b.md) | 351 | `result-track:1e0539255ce4f3eaf839707b5a7ec09b1e2bb3c5cef6d7967d1b8c956991617d` |
| 30 | `theorem` | [neg_neg](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantde78037c611428b9191c4b2a923c7c1738c3972e801760330f78e6d899ed2495.lean/declarations/neg-neg--17cc60d6698f7a2960a09933.md) | 354 | `result-track:17cc60d6698f7a2960a09933107ba0c2e6fb0a495aa4c7dfd8ed2a60b100cf6c` |
| 31 | `theorem` | [add_comm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantde78037c611428b9191c4b2a923c7c1738c3972e801760330f78e6d899ed2495.lean/declarations/add-comm--c3a8d5b76a02c9917be3ffba.md) | 360 | `result-track:c3a8d5b76a02c9917be3ffbab4156becb832a660bdf78edc4ee5e61efa1111ac` |
| 32 | `theorem` | [add_neg](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantde78037c611428b9191c4b2a923c7c1738c3972e801760330f78e6d899ed2495.lean/declarations/add-neg--66cf6f59a98bde4365df921b.md) | 370 | `result-track:66cf6f59a98bde4365df921b3df181fda6242b186cd2b91e783475d9dca1478e` |
| 33 | `theorem` | [add_neg_cancel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantde78037c611428b9191c4b2a923c7c1738c3972e801760330f78e6d899ed2495.lean/declarations/add-neg-cancel--c2b7d63679841300d92550e3.md) | 372 | `result-track:c2b7d63679841300d92550e36733b7b96b912a0d3be095f6f340567c2a30ed64` |
| 34 | `theorem` | [neg_add_cancel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantde78037c611428b9191c4b2a923c7c1738c3972e801760330f78e6d899ed2495.lean/declarations/neg-add-cancel--495606f146d7734edb023f0d.md) | 374 | `result-track:495606f146d7734edb023f0d54f0a5783a9a6a46eff4c259e9e4ad4d56ad93a6` |
| 35 | `theorem` | [neg_sub'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantde78037c611428b9191c4b2a923c7c1738c3972e801760330f78e6d899ed2495.lean/declarations/neg-sub--cdd9f5372e29290d1bb8f41c.md) | 376 | `result-track:cdd9f5372e29290d1bb8f41c6ecbbcb91dad4f2d1b9374711e42079f0ed5acc9` |
| 36 | `theorem` | [neg_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantde78037c611428b9191c4b2a923c7c1738c3972e801760330f78e6d899ed2495.lean/declarations/neg-add--8dc5027d174e73120b85ba8e.md) | 381 | `result-track:8dc5027d174e73120b85ba8ed9862ef4915957a8779c04d093cf1e2309f9cac7` |
| 37 | `theorem` | [sub_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantde78037c611428b9191c4b2a923c7c1738c3972e801760330f78e6d899ed2495.lean/declarations/sub-add--e846c0200c01b30cd77f078a.md) | 383 | `result-track:e846c0200c01b30cd77f078a019e5e2d5459589af569b5ab0d84a1f945643846` |
| 38 | `theorem` | [add_assoc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantde78037c611428b9191c4b2a923c7c1738c3972e801760330f78e6d899ed2495.lean/declarations/add-assoc--5058b168bddaa9b203c3fec9.md) | 386 | `result-track:5058b168bddaa9b203c3fec9f8f7f067eaa80e7cd50d90e51fc8afda3514c339` |
| 39 | `theorem` | [add_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantde78037c611428b9191c4b2a923c7c1738c3972e801760330f78e6d899ed2495.lean/declarations/add-zero--daed0583103eaab8b9fba94c.md) | 391 | `result-track:daed0583103eaab8b9fba94c0e08a4c9f12336eaba1fef889a5b3ab211b4ce86` |
| 40 | `theorem` | [comp_sub](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantde78037c611428b9191c4b2a923c7c1738c3972e801760330f78e6d899ed2495.lean/declarations/comp-sub--ce4953e33247191c72897556.md) | 393 | `result-track:ce4953e33247191c72897556343b9e2de4634fa9926ef2cc7b16f77b047febd1` |
| 41 | `theorem` | [sub_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantde78037c611428b9191c4b2a923c7c1738c3972e801760330f78e6d899ed2495.lean/declarations/sub-comp--a467fe608501730f7c8cd325.md) | 396 | `result-track:a467fe608501730f7c8cd325cf3e9e27b91059f6616b55307394155789ef454a` |
| 42 | `theorem` | [comp_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantde78037c611428b9191c4b2a923c7c1738c3972e801760330f78e6d899ed2495.lean/declarations/comp-add--60e0f94994198537f804a375.md) | 399 | `result-track:60e0f94994198537f804a375e1bcc983cda9d444a7cf2b0896b5f08b8e63c7ea` |
| 43 | `theorem` | [add_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantde78037c611428b9191c4b2a923c7c1738c3972e801760330f78e6d899ed2495.lean/declarations/add-comp--a6079d3fc211c3e91769b3a8.md) | 402 | `result-track:a6079d3fc211c3e91769b3a8ee5cca5f9b3a72c463100b6a291fb48941cef2e0` |
| 44 | `def` | [preadditive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantde78037c611428b9191c4b2a923c7c1738c3972e801760330f78e6d899ed2495.lean/declarations/preadditive--049f922934fbcdd04497a708.md) | 406 | `declaration-track:049f922934fbcdd04497a7084e6c046d8b6b29ceff4af83225599e7a48df8fdd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
