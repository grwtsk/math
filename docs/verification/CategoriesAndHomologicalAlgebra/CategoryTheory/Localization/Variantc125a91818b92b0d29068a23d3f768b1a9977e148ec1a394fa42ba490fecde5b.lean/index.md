# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Localization.Variantc125a91818b92b0d29068a23d3f768b1a9977e148ec1a394fa42ba490fecde5b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b4a64d6c5ddd2380814069c7e7f7e1a8e9e69261",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variantc125a91818b92b0d29068a23d3f768b1a9977e148ec1a394fa42ba490fecde5b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variantc125a91818b92b0d29068a23d3f768b1a9977e148ec1a394fa42ba490fecde5b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variantc125a91818b92b0d29068a23d3f768b1a9977e148ec1a394fa42ba490fecde5b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b4a64d6c5ddd2380814069c7e7f7e1a8e9e69261`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variantc125a91818b92b0d29068a23d3f768b1a9977e148ec1a394fa42ba490fecde5b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variantc125a91818b92b0d29068a23d3f768b1a9977e148ec1a394fa42ba490fecde5b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Center.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Localization.Predicate` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.AdditiveFunctor` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [localization](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variantc125a91818b92b0d29068a23d3f768b1a9977e148ec1a394fa42ba490fecde5b.lean/declarations/localization--26f8e50d77c2c5a7b139172a.md) | 40 | `declaration-track:26f8e50d77c2c5a7b139172ae82a1d2a8ef817c29fd59905b258f7555635cf9a` |
| 2 | `lemma` | [localization_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variantc125a91818b92b0d29068a23d3f768b1a9977e148ec1a394fa42ba490fecde5b.lean/declarations/localization-app--5f888c27d811a7ae9879dfd0.md) | 44 | `result-track:5f888c27d811a7ae9879dfd02183b28193b1631497b3537b9ecf305a31aff401` |
| 3 | `lemma` | [ext_of_localization](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variantc125a91818b92b0d29068a23d3f768b1a9977e148ec1a394fa42ba490fecde5b.lean/declarations/ext-of-localization--8c183d6de086bfe538c019cc.md) | 52 | `result-track:8c183d6de086bfe538c019cc177d692f3df6aec12201e102545fc0421e3cf56e` |
| 4 | `lemma` | [localization_one](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variantc125a91818b92b0d29068a23d3f768b1a9977e148ec1a394fa42ba490fecde5b.lean/declarations/localization-one--79f72f52fe228b55a7f9ac66.md) | 56 | `result-track:79f72f52fe228b55a7f9ac661ce0c609f73022cc0f98a2273bd3a7face5eb708` |
| 5 | `lemma` | [localization_mul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variantc125a91818b92b0d29068a23d3f768b1a9977e148ec1a394fa42ba490fecde5b.lean/declarations/localization-mul--314e6f73329aa58e194601db.md) | 60 | `result-track:314e6f73329aa58e194601dbf7bc2bd87e1bf8b4c3ce21537e321f4fc23f33e2` |
| 6 | `lemma` | [localization_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variantc125a91818b92b0d29068a23d3f768b1a9977e148ec1a394fa42ba490fecde5b.lean/declarations/localization-zero--9b5edb16342bd3a22f9c7212.md) | 68 | `result-track:9b5edb16342bd3a22f9c72122981979b02f3d5b66cdf2b790e15968fd1ee50f5` |
| 7 | `lemma` | [localization_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variantc125a91818b92b0d29068a23d3f768b1a9977e148ec1a394fa42ba490fecde5b.lean/declarations/localization-add--eda76550187d8a639b8531ed.md) | 72 | `result-track:eda76550187d8a639b8531ed2aa2d34f3f67f653e943dc8c8057e0281f7be738` |
| 8 | `def` | [localizationRingHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variantc125a91818b92b0d29068a23d3f768b1a9977e148ec1a394fa42ba490fecde5b.lean/declarations/localizationringhom--057e5143d3c0a6d2af620e80.md) | 80 | `declaration-track:057e5143d3c0a6d2af620e80930caadf8c3e466460675ab1424062f6898ca4c3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
