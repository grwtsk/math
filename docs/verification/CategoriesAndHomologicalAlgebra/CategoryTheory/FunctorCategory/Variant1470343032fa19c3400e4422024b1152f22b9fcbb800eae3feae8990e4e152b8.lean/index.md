# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorCategory.Variant1470343032fa19c3400e4422024b1152f22b9fcbb800eae3feae8990e4e152b8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c4d055b17a2cf77771ebfebff6a14c6851e0f46",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant1470343032fa19c3400e4422024b1152f22b9fcbb800eae3feae8990e4e152b8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant1470343032fa19c3400e4422024b1152f22b9fcbb800eae3feae8990e4e152b8.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant1470343032fa19c3400e4422024b1152f22b9fcbb800eae3feae8990e4e152b8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c4d055b17a2cf77771ebfebff6a14c6851e0f46`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant1470343032fa19c3400e4422024b1152f22b9fcbb800eae3feae8990e4e152b8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant1470343032fa19c3400e4422024b1152f22b9fcbb800eae3feae8990e4e152b8.lean.json)

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
| 1 | `def` | [coimageObjIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant1470343032fa19c3400e4422024b1152f22b9fcbb800eae3feae8990e4e152b8.lean/declarations/coimageobjiso--b5e1405e152023b0ba3946c6.md) | 51 | `declaration-track:b5e1405e152023b0ba3946c650e3cbab67bed90a0e5d4456c5bf11589014e77e` |
| 2 | `def` | [imageObjIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant1470343032fa19c3400e4422024b1152f22b9fcbb800eae3feae8990e4e152b8.lean/declarations/imageobjiso--24ea1e509f8f179b703900e9.md) | 62 | `declaration-track:24ea1e509f8f179b703900e99661f0a7f5e65469f23053324368beee1f8b6784` |
| 3 | `theorem` | [coimageImageComparison_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant1470343032fa19c3400e4422024b1152f22b9fcbb800eae3feae8990e4e152b8.lean/declarations/coimageimagecomparison-app--3674ef7cad8c4621d05e1f76.md) | 73 | `result-track:3674ef7cad8c4621d05e1f764552ce25a9cb64464a2874ec2550da0750fc763d` |
| 4 | `theorem` | [coimageImageComparison_app'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant1470343032fa19c3400e4422024b1152f22b9fcbb800eae3feae8990e4e152b8.lean/declarations/coimageimagecomparison-app--15d87f33d610f04c2ca25fa1.md) | 87 | `result-track:15d87f33d610f04c2ca25fa1b1e725ad3bca9d6cb25892ed4d85175dcfb77e33` |
| 5 | `instance` | [functor_category_isIso_coimageImageComparison](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant1470343032fa19c3400e4422024b1152f22b9fcbb800eae3feae8990e4e152b8.lean/declarations/functor-category-isiso-coimageimagecomparison--43b605fa2da098575e6b8fca.md) | 93 | `declaration-track:43b605fa2da098575e6b8fcaf75529b4221f3586dbe64968cffbfbff40473083` |
| 6 | `instance` | [functorCategoryAbelian](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant1470343032fa19c3400e4422024b1152f22b9fcbb800eae3feae8990e4e152b8.lean/declarations/functorcategoryabelian--1d6c835b80e2594735aa5cde.md) | 103 | `declaration-track:1d6c835b80e2594735aa5cde1aac1c6c4041fa9d1e5c2b2dc167b83c8594ed0e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
