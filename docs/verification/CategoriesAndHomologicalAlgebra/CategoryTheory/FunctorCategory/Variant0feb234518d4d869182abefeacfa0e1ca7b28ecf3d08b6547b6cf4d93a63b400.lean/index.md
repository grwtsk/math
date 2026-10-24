# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorCategory.Variant0feb234518d4d869182abefeacfa0e1ca7b28ecf3d08b6547b6cf4d93a63b400

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "264fb7f8f1a488164dcbcef510dbee0d81577f29",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant0feb234518d4d869182abefeacfa0e1ca7b28ecf3d08b6547b6cf4d93a63b400.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant0feb234518d4d869182abefeacfa0e1ca7b28ecf3d08b6547b6cf4d93a63b400.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant0feb234518d4d869182abefeacfa0e1ca7b28ecf3d08b6547b6cf4d93a63b400.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `264fb7f8f1a488164dcbcef510dbee0d81577f29`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant0feb234518d4d869182abefeacfa0e1ca7b28ecf3d08b6547b6cf4d93a63b400.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant0feb234518d4d869182abefeacfa0e1ca7b28ecf3d08b6547b6cf4d93a63b400.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Abelian.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.FunctorCategory` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.FunctorCategory.Finite` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.Kernels` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coimageObjIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant0feb234518d4d869182abefeacfa0e1ca7b28ecf3d08b6547b6cf4d93a63b400.lean/declarations/coimageobjiso--6ac7b1d1f10615b69bab520c.md) | 46 | `declaration-track:6ac7b1d1f10615b69bab520c72b62400c21f37cc4bd0f4f31a60622516095abf` |
| 2 | `def` | [imageObjIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant0feb234518d4d869182abefeacfa0e1ca7b28ecf3d08b6547b6cf4d93a63b400.lean/declarations/imageobjiso--e09d2e4881327980bd986899.md) | 56 | `declaration-track:e09d2e4881327980bd9868999ca4542a492e20086a3ce083916d798415ce8b16` |
| 3 | `theorem` | [coimageImageComparison_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant0feb234518d4d869182abefeacfa0e1ca7b28ecf3d08b6547b6cf4d93a63b400.lean/declarations/coimageimagecomparison-app--d7d4c1aa2d6288e9072fd985.md) | 66 | `result-track:d7d4c1aa2d6288e9072fd9859943a8dbdeac3daf7f082e331498d2a220e49035` |
| 4 | `theorem` | [coimageImageComparison_app'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant0feb234518d4d869182abefeacfa0e1ca7b28ecf3d08b6547b6cf4d93a63b400.lean/declarations/coimageimagecomparison-app--260304bd8e5d51f3500d0489.md) | 80 | `result-track:260304bd8e5d51f3500d048936441677d7c412e177ad50b9c92779191e5d628b` |
| 5 | `instance` | [functor_category_isIso_coimageImageComparison](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant0feb234518d4d869182abefeacfa0e1ca7b28ecf3d08b6547b6cf4d93a63b400.lean/declarations/functor-category-isiso-coimageimagecomparison--34a7e99d60b848f3abc27109.md) | 86 | `declaration-track:34a7e99d60b848f3abc271096519cfecbc57a158a4089b46452815a158772765` |
| 6 | `instance` | [functorCategoryAbelian](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant0feb234518d4d869182abefeacfa0e1ca7b28ecf3d08b6547b6cf4d93a63b400.lean/declarations/functorcategoryabelian--f86953ae976799c010ed7f4f.md) | 96 | `declaration-track:f86953ae976799c010ed7f4f6a6db093b169130635fbe43710668bba0c3c396c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
