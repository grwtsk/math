# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Widesubcategory.Variantbb937be6ec00581cb4946a7c86057160329e4f01be869145664683fbe596569a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4a9779b92eb3b7ab8534ccf3add947c0bdbfc43e",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Widesubcategory/Variantbb937be6ec00581cb4946a7c86057160329e4f01be869145664683fbe596569a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Widesubcategory/Variantbb937be6ec00581cb4946a7c86057160329e4f01be869145664683fbe596569a.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Widesubcategory/Variantbb937be6ec00581cb4946a7c86057160329e4f01be869145664683fbe596569a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4a9779b92eb3b7ab8534ccf3add947c0bdbfc43e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Widesubcategory/Variantbb937be6ec00581cb4946a7c86057160329e4f01be869145664683fbe596569a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Widesubcategory/Variantbb937be6ec00581cb4946a7c86057160329e4f01be869145664683fbe596569a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Functor.FullyFaithful` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.Composition` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [InducedWideCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Widesubcategory/Variantbb937be6ec00581cb4946a7c86057160329e4f01be869145664683fbe596569a.lean/declarations/inducedwidecategory--d65b8a19eddd74a361381814.md) | 43 | `declaration-track:d65b8a19eddd74a361381814d797ff4a6b37a2dc9b277bcd8d99eb9c5249173b` |
| 2 | `instance` | [InducedWideCategory.hasCoeToSort](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Widesubcategory/Variantbb937be6ec00581cb4946a7c86057160329e4f01be869145664683fbe596569a.lean/declarations/inducedwidecategory-hascoetosort--2b40910486cfb33fa1a9c12f.md) | 48 | `declaration-track:2b40910486cfb33fa1a9c12fa9a93765e5d2bed73bf2655eeca7ec6803eb8f56` |
| 3 | `instance` | [InducedWideCategory.category](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Widesubcategory/Variantbb937be6ec00581cb4946a7c86057160329e4f01be869145664683fbe596569a.lean/declarations/inducedwidecategory-category--623919a04ef53e03fb680c08.md) | 53 | `declaration-track:623919a04ef53e03fb680c0845f6d764e1c3f99a623347c2ffc550ee354cd3b0` |
| 4 | `def` | [wideInducedFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Widesubcategory/Variantbb937be6ec00581cb4946a7c86057160329e4f01be869145664683fbe596569a.lean/declarations/wideinducedfunctor--bec68b2b0b0d46864502025c.md) | 61 | `declaration-track:bec68b2b0b0d46864502025c283d629b19da458ec2d6585c8a7aca4ee456093a` |
| 5 | `instance` | [InducedWideCategory.faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Widesubcategory/Variantbb937be6ec00581cb4946a7c86057160329e4f01be869145664683fbe596569a.lean/declarations/inducedwidecategory-faithful--10c6adb5c07f972118eed21f.md) | 67 | `declaration-track:10c6adb5c07f972118eed21f9f14364ea7fda6b52fac39ec5b496babf108e7ff` |
| 6 | `structure` | [WideSubcategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Widesubcategory/Variantbb937be6ec00581cb4946a7c86057160329e4f01be869145664683fbe596569a.lean/declarations/widesubcategory--ca044a0da1dcae0a3ed68d94.md) | 84 | `declaration-track:ca044a0da1dcae0a3ed68d94638be1831511498047cfb606ab4395617f78978a` |
| 7 | `instance` | [WideSubcategory.category](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Widesubcategory/Variantbb937be6ec00581cb4946a7c86057160329e4f01be869145664683fbe596569a.lean/declarations/widesubcategory-category--a9c0e9f24a22d390b23eb2b5.md) | 88 | `declaration-track:a9c0e9f24a22d390b23eb2b5ab7c30d197689ccdf30ecbefb9434ed528f8ad43` |
| 8 | `lemma` | [WideSubcategory.id_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Widesubcategory/Variantbb937be6ec00581cb4946a7c86057160329e4f01be869145664683fbe596569a.lean/declarations/widesubcategory-id-def--ee57b1033e9c893f626524e0.md) | 92 | `result-track:ee57b1033e9c893f626524e0406184bdd06f680c1670d2467c10518c1614ef56` |
| 9 | `lemma` | [WideSubcategory.comp_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Widesubcategory/Variantbb937be6ec00581cb4946a7c86057160329e4f01be869145664683fbe596569a.lean/declarations/widesubcategory-comp-def--c94ecdb6c05d5e37fe3b6a91.md) | 95 | `result-track:c94ecdb6c05d5e37fe3b6a911ed5277b489141a924e9975b00c4d3f577fa0bcd` |
| 10 | `def` | [wideSubcategoryInclusion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Widesubcategory/Variantbb937be6ec00581cb4946a7c86057160329e4f01be869145664683fbe596569a.lean/declarations/widesubcategoryinclusion--a68a46873785f9df401a1842.md) | 101 | `declaration-track:a68a46873785f9df401a1842c43a05d0e56a07bcb0ac18927b9b5926d02aef86` |
| 11 | `theorem` | [wideSubcategoryInclusion.obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Widesubcategory/Variantbb937be6ec00581cb4946a7c86057160329e4f01be869145664683fbe596569a.lean/declarations/widesubcategoryinclusion-obj--23d009011684689dc492d399.md) | 105 | `result-track:23d009011684689dc492d399f8163667608fe33c2fee26c8a433c8dbf84ab7ad` |
| 12 | `theorem` | [wideSubcategoryInclusion.map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Widesubcategory/Variantbb937be6ec00581cb4946a7c86057160329e4f01be869145664683fbe596569a.lean/declarations/widesubcategoryinclusion-map--4dfaa35425ef549506571ae3.md) | 109 | `result-track:4dfaa35425ef549506571ae3e66e097993a43f8dff83ce24215a4509d56f9974` |
| 13 | `instance` | [wideSubcategory.faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Widesubcategory/Variantbb937be6ec00581cb4946a7c86057160329e4f01be869145664683fbe596569a.lean/declarations/widesubcategory-faithful--7a62836eba171226025463f0.md) | 114 | `declaration-track:7a62836eba171226025463f0880078f5e0f250ca794d23dc494a00a8bd8a4f6c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
