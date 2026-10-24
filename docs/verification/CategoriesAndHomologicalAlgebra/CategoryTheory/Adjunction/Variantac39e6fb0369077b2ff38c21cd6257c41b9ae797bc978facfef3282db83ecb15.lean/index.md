# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Adjunction.Variantac39e6fb0369077b2ff38c21cd6257c41b9ae797bc978facfef3282db83ecb15

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bd0eb80406ca62dcd5d7de337f4c580df9fd1507",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantac39e6fb0369077b2ff38c21cd6257c41b9ae797bc978facfef3282db83ecb15.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantac39e6fb0369077b2ff38c21cd6257c41b9ae797bc978facfef3282db83ecb15.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantac39e6fb0369077b2ff38c21cd6257c41b9ae797bc978facfef3282db83ecb15.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bd0eb80406ca62dcd5d7de337f4c580df9fd1507`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantac39e6fb0369077b2ff38c21cd6257c41b9ae797bc978facfef3282db83ecb15.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantac39e6fb0369077b2ff38c21cd6257c41b9ae797bc978facfef3282db83ecb15.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.Reflective` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monad.Algebra` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toMonad](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantac39e6fb0369077b2ff38c21cd6257c41b9ae797bc978facfef3282db83ecb15.lean/declarations/tomonad--2db043857c1d848e7df252ee.md) | 53 | `declaration-track:2db043857c1d848e7df252ee70004e5aa3beabf9bd90d5c6f71ac940929169ae` |
| 2 | `def` | [toComonad](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantac39e6fb0369077b2ff38c21cd6257c41b9ae797bc978facfef3282db83ecb15.lean/declarations/tocomonad--cc12eb35ae6d3a84f160ae45.md) | 71 | `declaration-track:cc12eb35ae6d3a84f160ae4535c8d343a71b4604f03e1bc3506fb2d2be54348c` |
| 3 | `def` | [adjToMonadIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantac39e6fb0369077b2ff38c21cd6257c41b9ae797bc978facfef3282db83ecb15.lean/declarations/adjtomonadiso--d2b0e47fa605e5491918d125.md) | 86 | `declaration-track:d2b0e47fa605e5491918d125503c42af69bd0775052551b71fb9ce88fc8e9c00` |
| 4 | `def` | [adjToComonadIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantac39e6fb0369077b2ff38c21cd6257c41b9ae797bc978facfef3282db83ecb15.lean/declarations/adjtocomonadiso--36ab236a7bd7e994e30697f1.md) | 91 | `declaration-track:36ab236a7bd7e994e30697f134fdc7d75824d202a326b418c67c80068d8e42e1` |
| 5 | `def` | [unitAsIsoOfIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantac39e6fb0369077b2ff38c21cd6257c41b9ae797bc978facfef3282db83ecb15.lean/declarations/unitasisoofiso--f1e6dfb39d5f6de57742a531.md) | 98 | `declaration-track:f1e6dfb39d5f6de57742a531388e04e8db05b5f84d74381f01b2b5acacef220c` |
| 6 | `lemma` | [isIso_unit_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantac39e6fb0369077b2ff38c21cd6257c41b9ae797bc978facfef3282db83ecb15.lean/declarations/isiso-unit-of-iso--595975a20d2e34f3114f73cb.md) | 111 | `result-track:595975a20d2e34f3114f73cb8019d69eb3a983818f741ece858a1732cac118f9` |
| 7 | `def` | [fullyFaithfulLOfCompIsoId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantac39e6fb0369077b2ff38c21cd6257c41b9ae797bc978facfef3282db83ecb15.lean/declarations/fullyfaithfullofcompisoid--4d649980e2af7551906971bd.md) | 118 | `declaration-track:4d649980e2af7551906971bd869ee47653cb74a4c6de8a7ce52478fbcc6fc0f8` |
| 8 | `def` | [counitAsIsoOfIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantac39e6fb0369077b2ff38c21cd6257c41b9ae797bc978facfef3282db83ecb15.lean/declarations/counitasisoofiso--c4d80a97bc0737aab9c5276d.md) | 126 | `declaration-track:c4d80a97bc0737aab9c5276d2a697f76a73f60f3cd5eeb25342042d461bc6885` |
| 9 | `lemma` | [isIso_counit_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantac39e6fb0369077b2ff38c21cd6257c41b9ae797bc978facfef3282db83ecb15.lean/declarations/isiso-counit-of-iso--71ff937c7441541a3ff7aa59.md) | 139 | `result-track:71ff937c7441541a3ff7aa59ba785c27b9363eda37d3d308426189e1f97d09fb` |
| 10 | `def` | [fullyFaithfulROfCompIsoId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantac39e6fb0369077b2ff38c21cd6257c41b9ae797bc978facfef3282db83ecb15.lean/declarations/fullyfaithfulrofcompisoid--330e24f762cb6d4d8e814158.md) | 146 | `declaration-track:330e24f762cb6d4d8e8141588bfbebb0791ba38de47eb02f210794375bd9951a` |
| 11 | `def` | [Monad.comparison](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantac39e6fb0369077b2ff38c21cd6257c41b9ae797bc978facfef3282db83ecb15.lean/declarations/monad-comparison--69ea8f9a762758d1391a3756.md) | 159 | `declaration-track:69ea8f9a762758d1391a3756100d51c8b03a9eef689c812386f874d09a2b78c6` |
| 12 | `def` | [Monad.comparisonForget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantac39e6fb0369077b2ff38c21cd6257c41b9ae797bc978facfef3282db83ecb15.lean/declarations/monad-comparisonforget--af5f73311fc101a8d3a3bba4.md) | 175 | `declaration-track:af5f73311fc101a8d3a3bba42a38a15a2cc33d6e9323743b28954fa63432fdfb` |
| 13 | `theorem` | [Monad.left_comparison](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantac39e6fb0369077b2ff38c21cd6257c41b9ae797bc978facfef3282db83ecb15.lean/declarations/monad-left-comparison--a91d079d85720124990d26f3.md) | 179 | `result-track:a91d079d85720124990d26f37fa2d7fdbc4ace2dd251f942fd24dee4a5c9c3e7` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantac39e6fb0369077b2ff38c21cd6257c41b9ae797bc978facfef3282db83ecb15.lean/declarations/instance--5b7b0c63a1cbecbfd70ef6b9.md) | 182 | `declaration-track:5b7b0c63a1cbecbfd70ef6b918a4a6c6908c42145f993c9f9c7cf35794a48c6d` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantac39e6fb0369077b2ff38c21cd6257c41b9ae797bc978facfef3282db83ecb15.lean/declarations/instance--05fca6deb3b20d174fe5d99f.md) | 185 | `declaration-track:05fca6deb3b20d174fe5d99f5ba616d66c30607986bc529dda88800d9c6e540e` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantac39e6fb0369077b2ff38c21cd6257c41b9ae797bc978facfef3282db83ecb15.lean/declarations/instance--a82baaa8596322edf22cbc5a.md) | 188 | `declaration-track:a82baaa8596322edf22cbc5a29fe4cd678cece77a4ea8ecc23e0e0365638f72f` |
| 17 | `def` | [Comonad.comparison](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantac39e6fb0369077b2ff38c21cd6257c41b9ae797bc978facfef3282db83ecb15.lean/declarations/comonad-comparison--3aa2bd8684f14b3443eaf95f.md) | 202 | `declaration-track:3aa2bd8684f14b3443eaf95f7c7f72f43ae91088c6ab0a676e8770f8576c4120` |
| 18 | `def` | [Comonad.comparisonForget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantac39e6fb0369077b2ff38c21cd6257c41b9ae797bc978facfef3282db83ecb15.lean/declarations/comonad-comparisonforget--8c945f283ba482ab8c0f15a7.md) | 219 | `declaration-track:8c945f283ba482ab8c0f15a7974627ddfdabae0b7787c92eed29b24a49fee91a` |
| 19 | `theorem` | [Comonad.left_comparison](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantac39e6fb0369077b2ff38c21cd6257c41b9ae797bc978facfef3282db83ecb15.lean/declarations/comonad-left-comparison--a8658507d1c5a35e0207f93d.md) | 224 | `result-track:a8658507d1c5a35e0207f93d83b61efe98390de19413ced44d4feed06bdd8590` |
| 20 | `instance` | [Comonad.comparison_faithful_of_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantac39e6fb0369077b2ff38c21cd6257c41b9ae797bc978facfef3282db83ecb15.lean/declarations/comonad-comparison-faithful-of-faithful--fe78a6a9e02d37859a5c3152.md) | 227 | `declaration-track:fe78a6a9e02d37859a5c3152ba45f6abd5e17425b605d86ce57353938be52af4` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantac39e6fb0369077b2ff38c21cd6257c41b9ae797bc978facfef3282db83ecb15.lean/declarations/instance--385b2a22cb34ceb2137a5157.md) | 231 | `declaration-track:385b2a22cb34ceb2137a5157388ba5e15a38949161abc69a94f6a2a4b58d5ab8` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantac39e6fb0369077b2ff38c21cd6257c41b9ae797bc978facfef3282db83ecb15.lean/declarations/instance--10fc31b4d89ace642e67b1c2.md) | 234 | `declaration-track:10fc31b4d89ace642e67b1c2e2b19cd5cbb13d0923f0e9ea5a86edea5cb2f832` |
| 23 | `class` | [MonadicRightAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantac39e6fb0369077b2ff38c21cd6257c41b9ae797bc978facfef3282db83ecb15.lean/declarations/monadicrightadjoint--21dab3b24bbe716e1d532d9e.md) | 245 | `declaration-track:21dab3b24bbe716e1d532d9eb84265c3ee53770c2a0805d4b7d9bb98096140b0` |
| 24 | `def` | [monadicLeftAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantac39e6fb0369077b2ff38c21cd6257c41b9ae797bc978facfef3282db83ecb15.lean/declarations/monadicleftadjoint--001be1e1a9e52af86d3cc391.md) | 253 | `declaration-track:001be1e1a9e52af86d3cc3911aeae3506db7729dd63be8f1f49f6cab0215ba28` |
| 25 | `def` | [monadicAdjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantac39e6fb0369077b2ff38c21cd6257c41b9ae797bc978facfef3282db83ecb15.lean/declarations/monadicadjunction--31eea0621fec942293455d66.md) | 257 | `declaration-track:31eea0621fec942293455d66cb22151fe0ad5430670ae59bb5f63066aeac1617` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantac39e6fb0369077b2ff38c21cd6257c41b9ae797bc978facfef3282db83ecb15.lean/declarations/instance--2b39106adde8c3ad30f3b8cd.md) | 261 | `declaration-track:2b39106adde8c3ad30f3b8cd50b77d54bbd01cf55b1762af3459d88fd2774c94` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantac39e6fb0369077b2ff38c21cd6257c41b9ae797bc978facfef3282db83ecb15.lean/declarations/instance--7719603a6fb9c4df91c4f56c.md) | 265 | `declaration-track:7719603a6fb9c4df91c4f56c285113dcbe8a5683c6ba72dc77fb116fc9051c39` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantac39e6fb0369077b2ff38c21cd6257c41b9ae797bc978facfef3282db83ecb15.lean/declarations/instance--30b4cbe8a6ec43b49e94c567.md) | 268 | `declaration-track:30b4cbe8a6ec43b49e94c5676f4b0f840cac37e676a66fa23b048237494db9d4` |
| 29 | `class` | [ComonadicLeftAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantac39e6fb0369077b2ff38c21cd6257c41b9ae797bc978facfef3282db83ecb15.lean/declarations/comonadicleftadjoint--abb95d4471c696a7584ad1f7.md) | 277 | `declaration-track:abb95d4471c696a7584ad1f75f559350abf56dfa42e79a28b85ac01307d2543a` |
| 30 | `def` | [comonadicRightAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantac39e6fb0369077b2ff38c21cd6257c41b9ae797bc978facfef3282db83ecb15.lean/declarations/comonadicrightadjoint--a07317b87ca01cb7d6fb84bf.md) | 285 | `declaration-track:a07317b87ca01cb7d6fb84bfcd1488ff35a9a1858a9cc8988d008f14f8895b1f` |
| 31 | `def` | [comonadicAdjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantac39e6fb0369077b2ff38c21cd6257c41b9ae797bc978facfef3282db83ecb15.lean/declarations/comonadicadjunction--20bf947116b936c3640611e0.md) | 289 | `declaration-track:20bf947116b936c3640611e0eb07b29997bc2132a1dffb6e6023681e25819aff` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantac39e6fb0369077b2ff38c21cd6257c41b9ae797bc978facfef3282db83ecb15.lean/declarations/instance--129aab3a83b824b5d5295045.md) | 293 | `declaration-track:129aab3a83b824b5d52950455e0f1c38f2b8245aafbdf34680904f83edd89c86` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantac39e6fb0369077b2ff38c21cd6257c41b9ae797bc978facfef3282db83ecb15.lean/declarations/instance--01d66524900040856d85008a.md) | 297 | `declaration-track:01d66524900040856d85008a62d824afcb5ef6bec75312f0086f30fbf7a4d42c` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantac39e6fb0369077b2ff38c21cd6257c41b9ae797bc978facfef3282db83ecb15.lean/declarations/instance--b731dc2fd9682b602e184a7b.md) | 300 | `declaration-track:b731dc2fd9682b602e184a7b79aec6be80aa82c93bd3e56c599429032047d386` |
| 35 | `instance` | [μ_iso_of_reflective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantac39e6fb0369077b2ff38c21cd6257c41b9ae797bc978facfef3282db83ecb15.lean/declarations/iso-of-reflective--a0f636060f58d539a9f30712.md) | 306 | `declaration-track:a0f636060f58d539a9f30712eb0fe75f383e88464e1eef58997cdd6c21d256d4` |
| 36 | `instance` | [δ_iso_of_coreflective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantac39e6fb0369077b2ff38c21cd6257c41b9ae797bc978facfef3282db83ecb15.lean/declarations/iso-of-coreflective--5f7f91d49dd62f44b300cda6.md) | 310 | `declaration-track:5f7f91d49dd62f44b300cda6ca8bc740529d552e731c9bacacce3d0bcb4a50e9` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantac39e6fb0369077b2ff38c21cd6257c41b9ae797bc978facfef3282db83ecb15.lean/declarations/instance--526b1ad2a610bac23a2c5ea0.md) | 319 | `declaration-track:526b1ad2a610bac23a2c5ea0877268373ed960750fdf05483f46e2a845a542b8` |
| 38 | `instance` | [comparison_essSurj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantac39e6fb0369077b2ff38c21cd6257c41b9ae797bc978facfef3282db83ecb15.lean/declarations/comparison-esssurj--58573c7269255c97d4a3b527.md) | 330 | `declaration-track:58573c7269255c97d4a3b527ae71448f017c6b18c7fd93e5a0ce3f46bc5b30f8` |
| 39 | `lemma` | [comparison_full](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantac39e6fb0369077b2ff38c21cd6257c41b9ae797bc978facfef3282db83ecb15.lean/declarations/comparison-full--1937f57afa8a78c041a37b28.md) | 344 | `result-track:1937f57afa8a78c041a37b280421e638bcf4ae409bc9f5b8f57627063ef6dcc2` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantac39e6fb0369077b2ff38c21cd6257c41b9ae797bc978facfef3282db83ecb15.lean/declarations/instance--93eeb67af1536431db178949.md) | 352 | `declaration-track:93eeb67af1536431db178949f68409ac3c645b88e48276ed24489c746d81a5a3` |
| 41 | `instance` | [comparison_essSurj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantac39e6fb0369077b2ff38c21cd6257c41b9ae797bc978facfef3282db83ecb15.lean/declarations/comparison-esssurj--8790f51ede82a8955647cbb4.md) | 362 | `declaration-track:8790f51ede82a8955647cbb4abebdcadfa2e23a22442a8375f4eace162fd06bc` |
| 42 | `lemma` | [comparison_full](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantac39e6fb0369077b2ff38c21cd6257c41b9ae797bc978facfef3282db83ecb15.lean/declarations/comparison-full--1e1df14a48ad43771891a37f.md) | 372 | `result-track:1e1df14a48ad43771891a37faf9f58915b3dadd823acd8bd3c3004c05a64048d` |
| 43 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantac39e6fb0369077b2ff38c21cd6257c41b9ae797bc978facfef3282db83ecb15.lean/declarations/instance--bd50a5b6a5d079b285373c61.md) | 383 | `declaration-track:bd50a5b6a5d079b285373c61ee3da3af57538585a6050dae310650efcb778af9` |
| 44 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantac39e6fb0369077b2ff38c21cd6257c41b9ae797bc978facfef3282db83ecb15.lean/declarations/instance--28d7a930c28d8a8cf0acf30f.md) | 391 | `declaration-track:28d7a930c28d8a8cf0acf30f1a0ff5d1b9921995f3bf7cf24d8ff652ed0e1d7e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
