# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Equalizers.Variant19994ff31afcf9e119336bb16201a48e2c01acdd9ab922e3a07430840449bbb7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ea0877f19c4562bd25dd1cd4f758a4c9450416c",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant19994ff31afcf9e119336bb16201a48e2c01acdd9ab922e3a07430840449bbb7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant19994ff31afcf9e119336bb16201a48e2c01acdd9ab922e3a07430840449bbb7.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant19994ff31afcf9e119336bb16201a48e2c01acdd9ab922e3a07430840449bbb7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ea0877f19c4562bd25dd1cd4f758a4c9450416c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant19994ff31afcf9e119336bb16201a48e2c01acdd9ab922e3a07430840449bbb7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant19994ff31afcf9e119336bb16201a48e2c01acdd9ab922e3a07430840449bbb7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Equalizers` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.BinaryProducts` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.Pullbacks` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.BinaryProducts` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [constructEqualizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant19994ff31afcf9e119336bb16201a48e2c01acdd9ab922e3a07430840449bbb7.lean/declarations/constructequalizer--8ede63b5b0cad3c9d209ee57.md) | 45 | `declaration-track:8ede63b5b0cad3c9d209ee573ab1f40eded9c6ba95b7ca17b20f683a88603afd` |
| 2 | `abbrev` | [pullbackFst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant19994ff31afcf9e119336bb16201a48e2c01acdd9ab922e3a07430840449bbb7.lean/declarations/pullbackfst--bf36ad2dc0686a98c6e12792.md) | 50 | `declaration-track:bf36ad2dc0686a98c6e12792f447d791b757f1220cd34a246d7f5ee8264a7bca` |
| 3 | `theorem` | [pullbackFst_eq_pullback_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant19994ff31afcf9e119336bb16201a48e2c01acdd9ab922e3a07430840449bbb7.lean/declarations/pullbackfst-eq-pullback-snd--b051cdc020ce19743a2fb0a5.md) | 54 | `result-track:b051cdc020ce19743a2fb0a5921f46e853e1c165ab8aa3a2f400ade3e5fe28a3` |
| 4 | `abbrev` | [equalizerCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant19994ff31afcf9e119336bb16201a48e2c01acdd9ab922e3a07430840449bbb7.lean/declarations/equalizercone--5da3d1b1a43a4769961683a7.md) | 60 | `declaration-track:5da3d1b1a43a4769961683a7a9c21b186bf4a5fe70a62849b050af852af5e090` |
| 5 | `def` | [equalizerConeIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant19994ff31afcf9e119336bb16201a48e2c01acdd9ab922e3a07430840449bbb7.lean/declarations/equalizerconeislimit--655bd1f87511036b3ce02b0b.md) | 69 | `declaration-track:655bd1f87511036b3ce02b0b59dbc7a4e8b2a404febe5f848f201c602bfbb112` |
| 6 | `theorem` | [hasEqualizers_of_hasPullbacks_and_binary_products](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant19994ff31afcf9e119336bb16201a48e2c01acdd9ab922e3a07430840449bbb7.lean/declarations/hasequalizers-of-haspullbacks-and-binary-products--49c1acda979ec0eb4b203143.md) | 87 | `result-track:49c1acda979ec0eb4b20314332ad6c0c7702ea5623b0da099107af4756a1bb6c` |
| 7 | `lemma` | [preservesEqualizers_of_preservesPullbacks_and_binaryProducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant19994ff31afcf9e119336bb16201a48e2c01acdd9ab922e3a07430840449bbb7.lean/declarations/preservesequalizers-of-preservespullbacks-and-binaryproducts--990bcf22d9ddaf94d3df7b69.md) | 97 | `result-track:990bcf22d9ddaf94d3df7b6990d495fc476fe7db23734fb2bbd9ce9d6747aa80` |
| 8 | `abbrev` | [constructCoequalizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant19994ff31afcf9e119336bb16201a48e2c01acdd9ab922e3a07430840449bbb7.lean/declarations/constructcoequalizer--448256bd71d2dffa079bc62d.md) | 137 | `declaration-track:448256bd71d2dffa079bc62d48321ad9235a6dd5dea3176aac797f8f1e9685ba` |
| 9 | `abbrev` | [pushoutInl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant19994ff31afcf9e119336bb16201a48e2c01acdd9ab922e3a07430840449bbb7.lean/declarations/pushoutinl--c9c7ebdd833f7917f95300fd.md) | 142 | `declaration-track:c9c7ebdd833f7917f95300fd9a1b0f0e8f32fac839257e8f079e519df8cc6ed3` |
| 10 | `theorem` | [pushoutInl_eq_pushout_inr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant19994ff31afcf9e119336bb16201a48e2c01acdd9ab922e3a07430840449bbb7.lean/declarations/pushoutinl-eq-pushout-inr--33314dffbfdc4f132582b4be.md) | 146 | `result-track:33314dffbfdc4f132582b4be1cf6ace9e8dc7c32d7fa3f02eed0d6171d7b2c95` |
| 11 | `abbrev` | [coequalizerCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant19994ff31afcf9e119336bb16201a48e2c01acdd9ab922e3a07430840449bbb7.lean/declarations/coequalizercocone--18c1da17937448825cef9d05.md) | 152 | `declaration-track:18c1da17937448825cef9d051fb3bf397f9b4fe5e3450c13fa30a061c165ccbe` |
| 12 | `def` | [coequalizerCoconeIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant19994ff31afcf9e119336bb16201a48e2c01acdd9ab922e3a07430840449bbb7.lean/declarations/coequalizercoconeiscolimit--cb3453ba2d020219691a8645.md) | 160 | `declaration-track:cb3453ba2d020219691a8645ba08cac213273ec6bd61c39185f23cb55c366c67` |
| 13 | `theorem` | [hasCoequalizers_of_hasPushouts_and_binary_coproducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant19994ff31afcf9e119336bb16201a48e2c01acdd9ab922e3a07430840449bbb7.lean/declarations/hascoequalizers-of-haspushouts-and-binary-coproducts--985ce79d600fa900a5f0f2fd.md) | 181 | `result-track:985ce79d600fa900a5f0f2fd67cea9c93aaa780452ed58b4b1a59bb450872c27` |
| 14 | `lemma` | [preservesCoequalizers_of_preservesPushouts_and_binaryCoproducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant19994ff31afcf9e119336bb16201a48e2c01acdd9ab922e3a07430840449bbb7.lean/declarations/preservescoequalizers-of-preservespushouts-and-binarycoproducts--3e4c4daeb4cde03a52d605a3.md) | 192 | `result-track:3e4c4daeb4cde03a52d605a3067df113c52211068f8eaa1b25ecaafabdd70843` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
