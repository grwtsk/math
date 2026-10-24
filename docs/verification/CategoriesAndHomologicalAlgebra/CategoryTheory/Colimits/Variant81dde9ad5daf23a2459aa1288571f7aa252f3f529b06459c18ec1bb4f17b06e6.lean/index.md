# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Colimits.Variant81dde9ad5daf23a2459aa1288571f7aa252f3f529b06459c18ec1bb4f17b06e6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d7dcd75a5fdf4d9f305c3f37cf30aeb23edb5fa3",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant81dde9ad5daf23a2459aa1288571f7aa252f3f529b06459c18ec1bb4f17b06e6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant81dde9ad5daf23a2459aa1288571f7aa252f3f529b06459c18ec1bb4f17b06e6.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant81dde9ad5daf23a2459aa1288571f7aa252f3f529b06459c18ec1bb4f17b06e6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d7dcd75a5fdf4d9f305c3f37cf30aeb23edb5fa3`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant81dde9ad5daf23a2459aa1288571f7aa252f3f529b06459c18ec1bb4f17b06e6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant81dde9ad5daf23a2459aa1288571f7aa252f3f529b06459c18ec1bb4f17b06e6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConcreteCategory.Elementwise` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Grp.Colimits` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coconePointSMul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant81dde9ad5daf23a2459aa1288571f7aa252f3f529b06459c18ec1bb4f17b06e6.lean/declarations/coconepointsmul--f8227e5ed7b98d4162de74e6.md) | 49 | `declaration-track:f8227e5ed7b98d4162de74e6f8140c4547572bf31ff8ca67c6151a9124c90419` |
| 2 | `def` | [colimitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant81dde9ad5daf23a2459aa1288571f7aa252f3f529b06459c18ec1bb4f17b06e6.lean/declarations/colimitcocone--4f5e8024aabf08f643015481.md) | 65 | `declaration-track:4f5e8024aabf08f643015481b203aab7bc8d48880085751d6e45772466330d42` |
| 3 | `def` | [isColimitColimitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant81dde9ad5daf23a2459aa1288571f7aa252f3f529b06459c18ec1bb4f17b06e6.lean/declarations/iscolimitcolimitcocone--47f80ff02ccdf9f6084f2eb6.md) | 81 | `declaration-track:47f80ff02ccdf9f6084f2eb6736a809517a35317386361ad93e0b27d48dd16f5` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant81dde9ad5daf23a2459aa1288571f7aa252f3f529b06459c18ec1bb4f17b06e6.lean/declarations/instance--b1408a380ac8a5e729a620d9.md) | 105 | `declaration-track:b1408a380ac8a5e729a620d92f757b1bffab900c41a94969c64a7b5d3b80094c` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant81dde9ad5daf23a2459aa1288571f7aa252f3f529b06459c18ec1bb4f17b06e6.lean/declarations/instance--2ed53e00fec0d09b8727af43.md) | 107 | `declaration-track:2ed53e00fec0d09b8727af432f2a8fc5fd231a7a5affa45777f54d9818c49271` |
| 6 | `instance` | [reflectsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant81dde9ad5daf23a2459aa1288571f7aa252f3f529b06459c18ec1bb4f17b06e6.lean/declarations/reflectscolimit--eb589999f930b2537ddc04cc.md) | 110 | `declaration-track:eb589999f930b2537ddc04cc971a6d968b773fc7bd4d128ba8055509c1c40006` |
| 7 | `instance` | [hasColimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant81dde9ad5daf23a2459aa1288571f7aa252f3f529b06459c18ec1bb4f17b06e6.lean/declarations/hascolimitsofshape--abfa87644bf3446e4a1475c2.md) | 118 | `declaration-track:abfa87644bf3446e4a1475c231958adf52a119a13eb82a73dd07a8925d9befe5` |
| 8 | `instance` | [reflectsColimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant81dde9ad5daf23a2459aa1288571f7aa252f3f529b06459c18ec1bb4f17b06e6.lean/declarations/reflectscolimitsofshape--802a4bcf11bce136f4a6bb69.md) | 121 | `declaration-track:802a4bcf11bce136f4a6bb69ffa117ed5a2c5816b8f9418899fa0f3a7521574a` |
| 9 | `instance` | [hasColimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant81dde9ad5daf23a2459aa1288571f7aa252f3f529b06459c18ec1bb4f17b06e6.lean/declarations/hascolimitsofsize--0fcd551d5679d4e88a42ce0f.md) | 124 | `declaration-track:0fcd551d5679d4e88a42ce0f4c97e2e496ec89c87fc02919ff8c2148f4b49e45` |
| 10 | `instance` | [forget₂PreservesColimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant81dde9ad5daf23a2459aa1288571f7aa252f3f529b06459c18ec1bb4f17b06e6.lean/declarations/forget-preservescolimitsofshape--de46ebb08e763a1d53f938e8.md) | 127 | `declaration-track:de46ebb08e763a1d53f938e87f829e2c6c47e0990d9a0feb147dcd56a0e34fc4` |
| 11 | `instance` | [forget₂PreservesColimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant81dde9ad5daf23a2459aa1288571f7aa252f3f529b06459c18ec1bb4f17b06e6.lean/declarations/forget-preservescolimitsofsize--a9b9c9a539b966455acd9a72.md) | 131 | `declaration-track:a9b9c9a539b966455acd9a72091e298b6655044fc8c9c2ec603943a8d97e667a` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant81dde9ad5daf23a2459aa1288571f7aa252f3f529b06459c18ec1bb4f17b06e6.lean/declarations/instance--e7d9575a8627eea3c97a8977.md) | 135 | `declaration-track:e7d9575a8627eea3c97a8977a9ea1d784d0c418f9c89d39d1549e1147af9614b` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant81dde9ad5daf23a2459aa1288571f7aa252f3f529b06459c18ec1bb4f17b06e6.lean/declarations/instance--e132e17d91ca63bb479e9aae.md) | 139 | `declaration-track:e132e17d91ca63bb479e9aae03770f43ee091de04c0531a4956842f2e1a39a9b` |
| 14 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant81dde9ad5daf23a2459aa1288571f7aa252f3f529b06459c18ec1bb4f17b06e6.lean/declarations/example--aa2951a716d61291ce603091.md) | 142 | `declaration-track:aa2951a716d61291ce603091d9a03eb8e4cde40341d0523f8b8100194f3ff485` |
| 15 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant81dde9ad5daf23a2459aa1288571f7aa252f3f529b06459c18ec1bb4f17b06e6.lean/declarations/example--2afaab83390b401f903e22c0.md) | 145 | `declaration-track:2afaab83390b401f903e22c09e656ddcaa75fb847ee755e288449e43afb7ac7a` |
| 16 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant81dde9ad5daf23a2459aa1288571f7aa252f3f529b06459c18ec1bb4f17b06e6.lean/declarations/example--701e17fe4fa55524f0bc92e3.md) | 148 | `declaration-track:701e17fe4fa55524f0bc92e369cce24d0a4b45a337e2e30f5232fca17e23caf2` |
| 17 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant81dde9ad5daf23a2459aa1288571f7aa252f3f529b06459c18ec1bb4f17b06e6.lean/declarations/example--921b6bd9316e3207cda52e24.md) | 151 | `declaration-track:921b6bd9316e3207cda52e2433690247d7072d0168920051f2dfcb1a4600c920` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant81dde9ad5daf23a2459aa1288571f7aa252f3f529b06459c18ec1bb4f17b06e6.lean/declarations/instance--735cb172101093973d1b6196.md) | 155 | `declaration-track:735cb172101093973d1b61968ae638e9f4e713a403a7a9d7b47834ef50b5ba81` |
| 19 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant81dde9ad5daf23a2459aa1288571f7aa252f3f529b06459c18ec1bb4f17b06e6.lean/declarations/example--6b2ca4a7d3f189c5a378742a.md) | 157 | `declaration-track:6b2ca4a7d3f189c5a378742adcef48c8a35145a0846b81a1412f3eb0f958ad79` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
