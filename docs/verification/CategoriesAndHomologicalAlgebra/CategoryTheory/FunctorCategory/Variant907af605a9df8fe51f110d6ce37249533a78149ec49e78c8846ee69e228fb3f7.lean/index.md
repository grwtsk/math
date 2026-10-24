# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorCategory.Variant907af605a9df8fe51f110d6ce37249533a78149ec49e78c8846ee69e228fb3f7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "165ac5846ec0e13586049ccc1cf6c19f81d3e17c",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant907af605a9df8fe51f110d6ce37249533a78149ec49e78c8846ee69e228fb3f7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant907af605a9df8fe51f110d6ce37249533a78149ec49e78c8846ee69e228fb3f7.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant907af605a9df8fe51f110d6ce37249533a78149ec49e78c8846ee69e228fb3f7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `165ac5846ec0e13586049ccc1cf6c19f81d3e17c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant907af605a9df8fe51f110d6ce37249533a78149ec49e78c8846ee69e228fb3f7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant907af605a9df8fe51f110d6ce37249533a78149ec49e78c8846ee69e228fb3f7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.FunctorCategory` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Enriched.Ordinary.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.Category` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.End` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [diagram](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant907af605a9df8fe51f110d6ce37249533a78149ec49e78c8846ee69e228fb3f7.lean/declarations/diagram--5c821658fedaf212e0674ae6.md) | 53 | `declaration-track:5c821658fedaf212e0674ae6df2e4c7c2dfeb2245aa85e1b9e6506f18cfbbd89` |
| 2 | `abbrev` | [HasEnrichedHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant907af605a9df8fe51f110d6ce37249533a78149ec49e78c8846ee69e228fb3f7.lean/declarations/hasenrichedhom--0df58c43073ed3fc2f88d2f3.md) | 56 | `declaration-track:0df58c43073ed3fc2f88d2f380b7ebb1c5a9d5967a9efd3599ff41955088d823` |
| 3 | `abbrev` | [enrichedHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant907af605a9df8fe51f110d6ce37249533a78149ec49e78c8846ee69e228fb3f7.lean/declarations/enrichedhom--36bc56e8dc6e246c34532caf.md) | 64 | `declaration-track:36bc56e8dc6e246c34532caffe059ed652703cae508d93081165d8a8d198d0bf` |
| 4 | `abbrev` | [enrichedHomπ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant907af605a9df8fe51f110d6ce37249533a78149ec49e78c8846ee69e228fb3f7.lean/declarations/enrichedhom--5144a76448bc49567ba186fc.md) | 68 | `declaration-track:5144a76448bc49567ba186fcdf2e60cca8919dbf037073c21955df1b51f20d26` |
| 5 | `lemma` | [enrichedHom_condition](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant907af605a9df8fe51f110d6ce37249533a78149ec49e78c8846ee69e228fb3f7.lean/declarations/enrichedhom-condition--2cd9dc1ff72449a188442573.md) | 72 | `result-track:2cd9dc1ff72449a188442573c71f84f9b6e778071caffef259ea7de21669075e` |
| 6 | `lemma` | [enrichedHom_condition'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant907af605a9df8fe51f110d6ce37249533a78149ec49e78c8846ee69e228fb3f7.lean/declarations/enrichedhom-condition--d543ae5185b537be961c760c.md) | 78 | `result-track:d543ae5185b537be961c760cfeff34991867f7bbff3113882f52fdd7d0569ec3` |
| 7 | `def` | [homEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant907af605a9df8fe51f110d6ce37249533a78149ec49e78c8846ee69e228fb3f7.lean/declarations/homequiv--dd36a58921b05547199b0c92.md) | 89 | `declaration-track:dd36a58921b05547199b0c928f39ab856bba1565a8046eab0c399f750a2be6f1` |
| 8 | `lemma` | [homEquiv_apply_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant907af605a9df8fe51f110d6ce37249533a78149ec49e78c8846ee69e228fb3f7.lean/declarations/homequiv-apply--d845acaca451ce5a6699d68d.md) | 112 | `result-track:d845acaca451ce5a6699d68d81fd31d6c729a083501980ad5ebb684dba8d9fb3` |
| 9 | `def` | [enrichedId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant907af605a9df8fe51f110d6ce37249533a78149ec49e78c8846ee69e228fb3f7.lean/declarations/enrichedid--1a71e57acf140ede47b50b07.md) | 123 | `declaration-track:1a71e57acf140ede47b50b07c1e5425ec91a7f85f9e146dd81582e00cc51f39d` |
| 10 | `lemma` | [enrichedId_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant907af605a9df8fe51f110d6ce37249533a78149ec49e78c8846ee69e228fb3f7.lean/declarations/enrichedid--a3424a1298937fbd6b9bc447.md) | 126 | `result-track:a3424a1298937fbd6b9bc447e2f00b69394c26947160bc84cd234c034c40cfaf` |
| 11 | `lemma` | [homEquiv_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant907af605a9df8fe51f110d6ce37249533a78149ec49e78c8846ee69e228fb3f7.lean/declarations/homequiv-id--593429664c21c5194d32b22f.md) | 130 | `result-track:593429664c21c5194d32b22f5dc3d49da84882a53df1d8c8e32730d01fbbaded` |
| 12 | `def` | [enrichedComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant907af605a9df8fe51f110d6ce37249533a78149ec49e78c8846ee69e228fb3f7.lean/declarations/enrichedcomp--dd13aa4fcca09654f0c5ed26.md) | 139 | `declaration-track:dd13aa4fcca09654f0c5ed261036937ae1fe1cdc3e012942bfbd6b4e03b68658` |
| 13 | `lemma` | [enrichedComp_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant907af605a9df8fe51f110d6ce37249533a78149ec49e78c8846ee69e228fb3f7.lean/declarations/enrichedcomp--06070d5464d7526734135a3e.md) | 170 | `result-track:06070d5464d7526734135a3ea4a84fb05905f6fc04921452b096df2f4e8d200c` |
| 14 | `lemma` | [homEquiv_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant907af605a9df8fe51f110d6ce37249533a78149ec49e78c8846ee69e228fb3f7.lean/declarations/homequiv-comp--714ac932c0f92168db136c2a.md) | 178 | `result-track:714ac932c0f92168db136c2a465c699388f8f69f3b4c6df3df954be219a26d0c` |
| 15 | `lemma` | [enriched_id_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant907af605a9df8fe51f110d6ce37249533a78149ec49e78c8846ee69e228fb3f7.lean/declarations/enriched-id-comp--4cf9afed3eba46d924541810.md) | 188 | `result-track:4cf9afed3eba46d92454181055af99bad88da201243f895d674aab53ae201885` |
| 16 | `lemma` | [enriched_comp_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant907af605a9df8fe51f110d6ce37249533a78149ec49e78c8846ee69e228fb3f7.lean/declarations/enriched-comp-id--8148f4a6162a64e73a869663.md) | 199 | `result-track:8148f4a6162a64e73a869663042126707959489bfd3449d426d56aa971c57fb1` |
| 17 | `lemma` | [enriched_assoc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant907af605a9df8fe51f110d6ce37249533a78149ec49e78c8846ee69e228fb3f7.lean/declarations/enriched-assoc--a3783c5977d9fc65553f7399.md) | 211 | `result-track:a3783c5977d9fc65553f7399e12d4022de163cf8c73bd966da793ed0fca2c1db` |
| 18 | `def` | [enrichedOrdinaryCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant907af605a9df8fe51f110d6ce37249533a78149ec49e78c8846ee69e228fb3f7.lean/declarations/enrichedordinarycategory--f7ad3fd0ae2299b61424f376.md) | 233 | `declaration-track:f7ad3fd0ae2299b61424f3763bb7acb6d3e4006df2e6a983fe298677f3e907c7` |
| 19 | `abbrev` | [precompEnrichedHom'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant907af605a9df8fe51f110d6ce37249533a78149ec49e78c8846ee69e228fb3f7.lean/declarations/precompenrichedhom--1d29a4861f4162c00ce90f3f.md) | 255 | `declaration-track:1d29a4861f4162c00ce90f3fd3337c7018f6ce749ad26d453135064ed8287609` |
| 20 | `abbrev` | [precompEnrichedHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant907af605a9df8fe51f110d6ce37249533a78149ec49e78c8846ee69e228fb3f7.lean/declarations/precompenrichedhom--1a7d62a07175ca152f720f02.md) | 275 | `declaration-track:1a7d62a07175ca152f720f02e168f52eacc69aa5a16d593c22fbf3dffbabad9c` |
| 21 | `abbrev` | [HasFunctorEnrichedHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant907af605a9df8fe51f110d6ce37249533a78149ec49e78c8846ee69e228fb3f7.lean/declarations/hasfunctorenrichedhom--649af7b9eb5655dd57e87dda.md) | 287 | `declaration-track:649af7b9eb5655dd57e87ddad85dddf5def318a0aee9eb3cebbe07a8ca5bb30d` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant907af605a9df8fe51f110d6ce37249533a78149ec49e78c8846ee69e228fb3f7.lean/declarations/instance--e857a58bb6f90d7d06f1274b.md) | 292 | `declaration-track:e857a58bb6f90d7d06f1274bbe087c4798fde24f89c796e3d95df0effb1a804d` |
| 23 | `def` | [functorEnrichedHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant907af605a9df8fe51f110d6ce37249533a78149ec49e78c8846ee69e228fb3f7.lean/declarations/functorenrichedhom--393fe6fc0b6a1d9a5d5033ff.md) | 300 | `declaration-track:393fe6fc0b6a1d9a5d5033ff2f7c2ac8bc8132dd4b11c45222cbea5821529d86` |
| 24 | `def` | [coneFunctorEnrichedHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant907af605a9df8fe51f110d6ce37249533a78149ec49e78c8846ee69e228fb3f7.lean/declarations/conefunctorenrichedhom--89b6b02c1b667d7ca61411d0.md) | 326 | `declaration-track:89b6b02c1b667d7ca61411d0ac3f821c48c1baabe78de4fa384ee36e483420ab` |
| 25 | `def` | [lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant907af605a9df8fe51f110d6ce37249533a78149ec49e78c8846ee69e228fb3f7.lean/declarations/lift--cd1d8f9ac93913a4d4a6b87c.md) | 335 | `declaration-track:cd1d8f9ac93913a4d4a6b87cabb75def276913aa0d0e5808439362d814f0aa10` |
| 26 | `lemma` | [fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant907af605a9df8fe51f110d6ce37249533a78149ec49e78c8846ee69e228fb3f7.lean/declarations/fac--b38e4b1c5730f9ffbd64521b.md) | 351 | `result-track:b38e4b1c5730f9ffbd64521b20dc368d524ebcf1024bd5959b11de0d46b78938` |
| 27 | `def` | [isLimitConeFunctorEnrichedHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant907af605a9df8fe51f110d6ce37249533a78149ec49e78c8846ee69e228fb3f7.lean/declarations/islimitconefunctorenrichedhom--c44720b08d39879d6a83a46c.md) | 368 | `declaration-track:c44720b08d39879d6a83a46cf3f871a90f6cb794bd1deec3b1b95bac160e9f65` |
| 28 | `def` | [functorEnrichedId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant907af605a9df8fe51f110d6ce37249533a78149ec49e78c8846ee69e228fb3f7.lean/declarations/functorenrichedid--15dfb84e1f0969ec39c502d7.md) | 381 | `declaration-track:15dfb84e1f0969ec39c502d791673103e4984f6d2feccee87a6b57cd29ab9998` |
| 29 | `def` | [functorEnrichedComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant907af605a9df8fe51f110d6ce37249533a78149ec49e78c8846ee69e228fb3f7.lean/declarations/functorenrichedcomp--a768f9553f8b23905ada4a38.md) | 387 | `declaration-track:a768f9553f8b23905ada4a38e0892597d5388ccb1298aa6bc86bd202c9867e9e` |
| 30 | `lemma` | [functorEnriched_id_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant907af605a9df8fe51f110d6ce37249533a78149ec49e78c8846ee69e228fb3f7.lean/declarations/functorenriched-id-comp--2efc6a0f864343276377537e.md) | 401 | `result-track:2efc6a0f864343276377537ef54b3a582ad1eaa6aa195a4e722b72b751c5e4af` |
| 31 | `lemma` | [functorEnriched_comp_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant907af605a9df8fe51f110d6ce37249533a78149ec49e78c8846ee69e228fb3f7.lean/declarations/functorenriched-comp-id--8ee4050591ca49ba2e228f52.md) | 407 | `result-track:8ee4050591ca49ba2e228f524d98d905ec7f3e871e80e786d6fab935f7feb6e9` |
| 32 | `lemma` | [functorEnriched_assoc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant907af605a9df8fe51f110d6ce37249533a78149ec49e78c8846ee69e228fb3f7.lean/declarations/functorenriched-assoc--9465ce2fb6fd53c432ecdadd.md) | 413 | `result-track:9465ce2fb6fd53c432ecdadd3e8e4fe5e0ed0540c48cf10b7272567a30e66ae5` |
| 33 | `def` | [functorEnrichedCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant907af605a9df8fe51f110d6ce37249533a78149ec49e78c8846ee69e228fb3f7.lean/declarations/functorenrichedcategory--3e9912a2347e707babc3c435.md) | 427 | `declaration-track:3e9912a2347e707babc3c4352f6e8499e959c690ee3fa5eeec9076c67750627f` |
| 34 | `def` | [functorHomEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant907af605a9df8fe51f110d6ce37249533a78149ec49e78c8846ee69e228fb3f7.lean/declarations/functorhomequiv--e7948625d810c8727a13fc56.md) | 439 | `declaration-track:e7948625d810c8727a13fc56d37d3803673e712035a7f9bfd52e6bba44e91598` |
| 35 | `lemma` | [functorHomEquiv_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant907af605a9df8fe51f110d6ce37249533a78149ec49e78c8846ee69e228fb3f7.lean/declarations/functorhomequiv-id--02709a2e764e444469b58075.md) | 443 | `result-track:02709a2e764e444469b58075037381830a7ce83fa4208d7ca7733f7bb2fcd6a4` |
| 36 | `lemma` | [functorHomEquiv_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant907af605a9df8fe51f110d6ce37249533a78149ec49e78c8846ee69e228fb3f7.lean/declarations/functorhomequiv-comp--f62d88c2de4c1ba48aa7a22c.md) | 447 | `result-track:f62d88c2de4c1ba48aa7a22cda28c201a5b16220185320d3d64ddf87c41b556f` |
| 37 | `def` | [functorEnrichedOrdinaryCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant907af605a9df8fe51f110d6ce37249533a78149ec49e78c8846ee69e228fb3f7.lean/declarations/functorenrichedordinarycategory--e1d278e89bf87e7d04a6163b.md) | 464 | `declaration-track:e1d278e89bf87e7d04a6163bce4f77045432ad0ce67513c36674c4f885b58dec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
