# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorCategory.Variantd1ebf449869cba08d22058c4a9abd2b32a938c163d8f6efed7235fd182ad2edf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "28a3350aeb3a8584d8babd531678328fb79d33f6",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantd1ebf449869cba08d22058c4a9abd2b32a938c163d8f6efed7235fd182ad2edf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantd1ebf449869cba08d22058c4a9abd2b32a938c163d8f6efed7235fd182ad2edf.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantd1ebf449869cba08d22058c4a9abd2b32a938c163d8f6efed7235fd182ad2edf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `28a3350aeb3a8584d8babd531678328fb79d33f6`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantd1ebf449869cba08d22058c4a9abd2b32a938c163d8f6efed7235fd182ad2edf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantd1ebf449869cba08d22058c4a9abd2b32a938c163d8f6efed7235fd182ad2edf.lean.json)

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
| 1 | `def` | [coimageObjIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantd1ebf449869cba08d22058c4a9abd2b32a938c163d8f6efed7235fd182ad2edf.lean/declarations/coimageobjiso--c0cc7bafca75d96398145b38.md) | 43 | `declaration-track:c0cc7bafca75d96398145b38c8b6dda451eb4d7f384402ff1549586e33cedee4` |
| 2 | `def` | [imageObjIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantd1ebf449869cba08d22058c4a9abd2b32a938c163d8f6efed7235fd182ad2edf.lean/declarations/imageobjiso--7de6675b3c1a0f885fd73f7d.md) | 54 | `declaration-track:7de6675b3c1a0f885fd73f7daf6d34a48cb7e27699581609f9f6847f19e978d7` |
| 3 | `theorem` | [coimageImageComparison_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantd1ebf449869cba08d22058c4a9abd2b32a938c163d8f6efed7235fd182ad2edf.lean/declarations/coimageimagecomparison-app--70f364178f02573044db3409.md) | 65 | `result-track:70f364178f02573044db34093b2c632e062b6ae66cf1c84cdf16c984c3eeddfa` |
| 4 | `theorem` | [coimageImageComparison_app'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantd1ebf449869cba08d22058c4a9abd2b32a938c163d8f6efed7235fd182ad2edf.lean/declarations/coimageimagecomparison-app--d899178acf382bf14cacc83b.md) | 79 | `result-track:d899178acf382bf14cacc83b4cf875ed050a7e3fa178900cbe1464bf3fe8e372` |
| 5 | `instance` | [functor_category_isIso_coimageImageComparison](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantd1ebf449869cba08d22058c4a9abd2b32a938c163d8f6efed7235fd182ad2edf.lean/declarations/functor-category-isiso-coimageimagecomparison--04b79a5a7572d681c57cfc09.md) | 85 | `declaration-track:04b79a5a7572d681c57cfc09f76f4fda67afa056ee2eef910cb1ec93b8bbfff8` |
| 6 | `instance` | [functorCategoryAbelian](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantd1ebf449869cba08d22058c4a9abd2b32a938c163d8f6efed7235fd182ad2edf.lean/declarations/functorcategoryabelian--75703b3c0181a5f695513ca8.md) | 95 | `declaration-track:75703b3c0181a5f695513ca8493087fefaad53e1a906586303f21b941b11a7f7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
