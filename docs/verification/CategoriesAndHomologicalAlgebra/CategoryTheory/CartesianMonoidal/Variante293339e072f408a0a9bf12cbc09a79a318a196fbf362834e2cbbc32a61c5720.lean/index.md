# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CartesianMonoidal.Variante293339e072f408a0a9bf12cbc09a79a318a196fbf362834e2cbbc32a61c5720

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4ddebf93d61bfdd947a1c2b2d206561d5bdce353",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variante293339e072f408a0a9bf12cbc09a79a318a196fbf362834e2cbbc32a61c5720.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variante293339e072f408a0a9bf12cbc09a79a318a196fbf362834e2cbbc32a61c5720.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variante293339e072f408a0a9bf12cbc09a79a318a196fbf362834e2cbbc32a61c5720.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4ddebf93d61bfdd947a1c2b2d206561d5bdce353`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variante293339e072f408a0a9bf12cbc09a79a318a196fbf362834e2cbbc32a61c5720.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variante293339e072f408a0a9bf12cbc09a79a318a196fbf362834e2cbbc32a61c5720.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Cartesian.FunctorCategory` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Limits` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [tensorProd_isSheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variante293339e072f408a0a9bf12cbc09a79a318a196fbf362834e2cbbc32a61c5720.lean/declarations/tensorprod-issheaf--0a78a2390af81ef126e37902.md) | 38 | `result-track:0a78a2390af81ef126e37902e40230a015aa053b51e1da28826923b56e5fb263` |
| 2 | `lemma` | [tensorUnit_isSheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variante293339e072f408a0a9bf12cbc09a79a318a196fbf362834e2cbbc32a61c5720.lean/declarations/tensorunit-issheaf--5289c7bd69557614c7db0ebe.md) | 44 | `result-track:5289c7bd69557614c7db0ebe60f21b33442e8a609c4a780506a041f77631d384` |
| 3 | `instance` | [cartesianMonoidalCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variante293339e072f408a0a9bf12cbc09a79a318a196fbf362834e2cbbc32a61c5720.lean/declarations/cartesianmonoidalcategory--0e4df138e2058bb6550fec82.md) | 52 | `declaration-track:0e4df138e2058bb6550fec82b651adc4420032892d1d545a5fbdae5a284c3a97` |
| 4 | `lemma` | [cartesianMonoidalCategoryFst_val](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variante293339e072f408a0a9bf12cbc09a79a318a196fbf362834e2cbbc32a61c5720.lean/declarations/cartesianmonoidalcategoryfst-val--b080bc6cb88c313a8db3faa9.md) | 76 | `result-track:b080bc6cb88c313a8db3faa9f52ff59c37bc4beff8b7d034de6066a140853cf0` |
| 5 | `lemma` | [cartesianMonoidalCategorySnd_val](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variante293339e072f408a0a9bf12cbc09a79a318a196fbf362834e2cbbc32a61c5720.lean/declarations/cartesianmonoidalcategorysnd-val--9f3bfc8c496c9eb0b57efd48.md) | 77 | `result-track:9f3bfc8c496c9eb0b57efd484849d3380f40ce2f7f14eabb19077beced1828dc` |
| 6 | `lemma` | [cartesianMonoidalCategoryLift_val](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variante293339e072f408a0a9bf12cbc09a79a318a196fbf362834e2cbbc32a61c5720.lean/declarations/cartesianmonoidalcategorylift-val--3b4229140c635318d1a5cd34.md) | 82 | `result-track:3b4229140c635318d1a5cd34f714b7e6ed5a2beca060a7861571d017cb4d2c4e` |
| 7 | `lemma` | [cartesianMonoidalCategoryWhiskerLeft_val](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variante293339e072f408a0a9bf12cbc09a79a318a196fbf362834e2cbbc32a61c5720.lean/declarations/cartesianmonoidalcategorywhiskerleft-val--122794df86135148dc3da31d.md) | 83 | `result-track:122794df86135148dc3da31d4a42e1ec73ac32ce702790773cdd17fcad2b53a3` |
| 8 | `lemma` | [cartesianMonoidalCategoryWhiskerRight_val](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variante293339e072f408a0a9bf12cbc09a79a318a196fbf362834e2cbbc32a61c5720.lean/declarations/cartesianmonoidalcategorywhiskerright-val--b5bf6a455c4136888dbaf6ad.md) | 84 | `result-track:b5bf6a455c4136888dbaf6ade67b657027c61804bf7bf33749337041ed09ce0a` |
| 9 | `instance` | [sheafToPresheafMonoidal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variante293339e072f408a0a9bf12cbc09a79a318a196fbf362834e2cbbc32a61c5720.lean/declarations/sheaftopresheafmonoidal--4c36f478cf4e5d4b74efefeb.md) | 90 | `declaration-track:4c36f478cf4e5d4b74efefeba3b40d586271af4dc43ec2a5516e159a94b92d42` |
| 10 | `lemma` | [sheafToPresheaf_ε](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variante293339e072f408a0a9bf12cbc09a79a318a196fbf362834e2cbbc32a61c5720.lean/declarations/sheaftopresheaf--0c633630946519712526d7f5.md) | 97 | `result-track:0c633630946519712526d7f5cdfcfb6c95b2e78e751002581fa992a1997e37b6` |
| 11 | `lemma` | [sheafToPresheaf_η](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variante293339e072f408a0a9bf12cbc09a79a318a196fbf362834e2cbbc32a61c5720.lean/declarations/sheaftopresheaf--cd6f9ba77f7032e794f0a179.md) | 98 | `result-track:cd6f9ba77f7032e794f0a179b56d1880b82c3727c49f0045e5462bfce25e312d` |
| 12 | `lemma` | [sheafToPresheaf_μ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variante293339e072f408a0a9bf12cbc09a79a318a196fbf362834e2cbbc32a61c5720.lean/declarations/sheaftopresheaf--c5baf8c229817c02a95a4027.md) | 102 | `result-track:c5baf8c229817c02a95a4027527046f5aa20aba285912834971cce8c4cddf591` |
| 13 | `lemma` | [sheafToPresheaf_δ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variante293339e072f408a0a9bf12cbc09a79a318a196fbf362834e2cbbc32a61c5720.lean/declarations/sheaftopresheaf--86821ef21c533eb1fbc2d2ff.md) | 103 | `result-track:86821ef21c533eb1fbc2d2ff7c0a61b059405e79d7768083a8bf3ccebb8c3934` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
