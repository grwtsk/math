# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Representability.Variantbd778c0bed8d9e563280151023754ce82583dd49db39b83197cd92ea2ac62765

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "65166238f9442a2345e8adcee58dc3492a0c667c",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variantbd778c0bed8d9e563280151023754ce82583dd49db39b83197cd92ea2ac62765.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variantbd778c0bed8d9e563280151023754ce82583dd49db39b83197cd92ea2ac62765.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variantbd778c0bed8d9e563280151023754ce82583dd49db39b83197cd92ea2ac62765.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `65166238f9442a2345e8adcee58dc3492a0c667c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variantbd778c0bed8d9e563280151023754ce82583dd49db39b83197cd92ea2ac62765.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variantbd778c0bed8d9e563280151023754ce82583dd49db39b83197cd92ea2ac62765.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.MorphismProperty.Representable` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Sites.BigZariski` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.OpenImmersion` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.GluingOneHypercover` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.LocallyBijective` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Products` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Pullback.Iso` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [glueData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variantbd778c0bed8d9e563280151023754ce82583dd49db39b83197cd92ea2ac62765.lean/declarations/gluedata--42fbe8d51b89538926591717.md) | 65 | `declaration-track:42fbe8d51b89538926591717bdca440a8d344a566d59df26527caae2bfd15817` |
| 2 | `def` | [toGlued](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variantbd778c0bed8d9e563280151023754ce82583dd49db39b83197cd92ea2ac62765.lean/declarations/toglued--bf72a1ef90ef3293c34805aa.md) | 84 | `declaration-track:bf72a1ef90ef3293c34805aaa59ab045553bb243b03222edbf2b493e658e194b` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variantbd778c0bed8d9e563280151023754ce82583dd49db39b83197cd92ea2ac62765.lean/declarations/instance--b7e9ba98f071016803d6825d.md) | 87 | `declaration-track:b7e9ba98f071016803d6825d3bb334aab633008a6125277bb6d3791c22158328` |
| 4 | `def` | [yonedaGluedToSheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variantbd778c0bed8d9e563280151023754ce82583dd49db39b83197cd92ea2ac62765.lean/declarations/yonedagluedtosheaf--7c509be3bdc49013d2004309.md) | 91 | `declaration-track:7c509be3bdc49013d2004309ab144654fdfcd6bfcfb7000847d9fd100a3e8730` |
| 5 | `lemma` | [yoneda_toGlued_yonedaGluedToSheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variantbd778c0bed8d9e563280151023754ce82583dd49db39b83197cd92ea2ac62765.lean/declarations/yoneda-toglued-yonedagluedtosheaf--c90e9c5b19e22f86d32a558c.md) | 106 | `result-track:c90e9c5b19e22f86d32a558c2f8584f9dc399feff5e5d81a4b15ea2baae0e463` |
| 6 | `lemma` | [yonedaGluedToSheaf_app_toGlued](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variantbd778c0bed8d9e563280151023754ce82583dd49db39b83197cd92ea2ac62765.lean/declarations/yonedagluedtosheaf-app-toglued--a27d58e5886df9e70fbd8b71.md) | 114 | `result-track:a27d58e5886df9e70fbd8b715218d01cba9b88e524964f4b2ded99d7f98a7fc6` |
| 7 | `lemma` | [yonedaGluedToSheaf_app_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variantbd778c0bed8d9e563280151023754ce82583dd49db39b83197cd92ea2ac62765.lean/declarations/yonedagluedtosheaf-app-comp--22baebff8fd93731eab90fbf.md) | 120 | `result-track:22baebff8fd93731eab90fbf72f572a9d3f221f3b7aac6e7aa59df30d5f9df78` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variantbd778c0bed8d9e563280151023754ce82583dd49db39b83197cd92ea2ac62765.lean/declarations/instance--de4b7d4530e705b0adad2dc4.md) | 125 | `declaration-track:de4b7d4530e705b0adad2dc437dd03a0a77a40d517c40a52fafc206b498278de` |
| 9 | `lemma` | [comp_toGlued_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variantbd778c0bed8d9e563280151023754ce82583dd49db39b83197cd92ea2ac62765.lean/declarations/comp-toglued-eq--56725bdc79e3d1e3636a7bbb.md) | 131 | `result-track:56725bdc79e3d1e3636a7bbb3878aed9ba1608d367a088d92ccc39a76fb16abd` |
| 10 | `lemma` | [glueData_openCover_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variantbd778c0bed8d9e563280151023754ce82583dd49db39b83197cd92ea2ac62765.lean/declarations/gluedata-opencover-map--2850cd500a38e5fe64149e5e.md) | 140 | `result-track:2850cd500a38e5fe64149e5ebc2e5783c56ea7a8556d19e9971ea20117602935` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variantbd778c0bed8d9e563280151023754ce82583dd49db39b83197cd92ea2ac62765.lean/declarations/instance--7a305ea90a875c391d644c9e.md) | 142 | `declaration-track:7a305ea90a875c391d644c9efb94f4271081d8b43509b2c15c498b9945e247f9` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variantbd778c0bed8d9e563280151023754ce82583dd49db39b83197cd92ea2ac62765.lean/declarations/instance--23b6ac11c667e500712153c6.md) | 160 | `declaration-track:23b6ac11c667e500712153c69358b51c62c1e2ecd3b798915523cc9c7aa9e6ed` |
| 13 | `def` | [yonedaIsoSheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variantbd778c0bed8d9e563280151023754ce82583dd49db39b83197cd92ea2ac62765.lean/declarations/yonedaisosheaf--a085fd016971cd39573d64c4.md) | 167 | `declaration-track:a085fd016971cd39573d64c4de3337cf1b83d05024c0ab1e023b7a7968d8b0fe` |
| 14 | `def` | [representableBy](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variantbd778c0bed8d9e563280151023754ce82583dd49db39b83197cd92ea2ac62765.lean/declarations/representableby--e5e8b71a0fb3a8f7de41853e.md) | 181 | `declaration-track:e5e8b71a0fb3a8f7de41853ef34fa72c42d829251003d0870c91594056f79d8d` |
| 15 | `theorem` | [isRepresentable](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variantbd778c0bed8d9e563280151023754ce82583dd49db39b83197cd92ea2ac62765.lean/declarations/isrepresentable--aea4096e3d0bf1906516f000.md) | 196 | `result-track:aea4096e3d0bf1906516f000188ca0e3ad9bba2cb3c0510a4c9f27f6e69ca511` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
