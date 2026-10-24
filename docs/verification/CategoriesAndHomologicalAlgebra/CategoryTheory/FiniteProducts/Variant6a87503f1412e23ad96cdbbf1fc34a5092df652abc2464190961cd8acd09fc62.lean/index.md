# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FiniteProducts.Variant6a87503f1412e23ad96cdbbf1fc34a5092df652abc2464190961cd8acd09fc62

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4f49a554691b4d9aad651237dcf94387cf970a15",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProducts/Variant6a87503f1412e23ad96cdbbf1fc34a5092df652abc2464190961cd8acd09fc62.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProducts/Variant6a87503f1412e23ad96cdbbf1fc34a5092df652abc2464190961cd8acd09fc62.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProducts/Variant6a87503f1412e23ad96cdbbf1fc34a5092df652abc2464190961cd8acd09fc62.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4f49a554691b4d9aad651237dcf94387cf970a15`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProducts/Variant6a87503f1412e23ad96cdbbf1fc34a5092df652abc2464190961cd8acd09fc62.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProducts/Variant6a87503f1412e23ad96cdbbf1fc34a5092df652abc2464190961cd8acd09fc62.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.FiniteLimits` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Products` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HasFiniteProducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProducts/Variant6a87503f1412e23ad96cdbbf1fc34a5092df652abc2464190961cd8acd09fc62.lean/declarations/hasfiniteproducts--6f3488b483bd5f94c20cc2bc.md) | 38 | `declaration-track:6f3488b483bd5f94c20cc2bcd564a14e9edd92044233b9106952bd6f35fc169a` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProducts/Variant6a87503f1412e23ad96cdbbf1fc34a5092df652abc2464190961cd8acd09fc62.lean/declarations/instance--1daf9c90c29c365e3ce4227c.md) | 43 | `declaration-track:1daf9c90c29c365e3ce4227c53c91ee0b7a462d14287f6d6190bd2a61a3a9320` |
| 3 | `instance` | [hasLimitsOfShape_discrete](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProducts/Variant6a87503f1412e23ad96cdbbf1fc34a5092df652abc2464190961cd8acd09fc62.lean/declarations/haslimitsofshape-discrete--3274a11a3b9c3c473b47365b.md) | 47 | `declaration-track:3274a11a3b9c3c473b47365baeb90b0a1995b7e78fd6aeeceaf7bd03db29c5ee` |
| 4 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProducts/Variant6a87503f1412e23ad96cdbbf1fc34a5092df652abc2464190961cd8acd09fc62.lean/declarations/example--d3b5fde1f22be18070cff318.md) | 54 | `declaration-track:d3b5fde1f22be18070cff3185b9a80741a8475bd2747ae0ba985eb05c3e85a2f` |
| 5 | `theorem` | [hasFiniteProducts_of_hasProducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProducts/Variant6a87503f1412e23ad96cdbbf1fc34a5092df652abc2464190961cd8acd09fc62.lean/declarations/hasfiniteproducts-of-hasproducts--a55c1dd93fa8504b538cf7e2.md) | 59 | `result-track:a55c1dd93fa8504b538cf7e2524649360d8e5449f2e10b44bcbd2d3b06874933` |
| 6 | `class` | [HasFiniteCoproducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProducts/Variant6a87503f1412e23ad96cdbbf1fc34a5092df652abc2464190961cd8acd09fc62.lean/declarations/hasfinitecoproducts--e3fa1de4c809e1b5648d1ce3.md) | 68 | `declaration-track:e3fa1de4c809e1b5648d1ce3618bf3e188435012f20cdae909045fb5f66afb48` |
| 7 | `instance` | [hasColimitsOfShape_discrete](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProducts/Variant6a87503f1412e23ad96cdbbf1fc34a5092df652abc2464190961cd8acd09fc62.lean/declarations/hascolimitsofshape-discrete--46f46cc2d085c53f7b9e6b47.md) | 74 | `declaration-track:46f46cc2d085c53f7b9e6b47b92bc5fb7ac0cdfd877cd1579ee5c65bb2eec303` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProducts/Variant6a87503f1412e23ad96cdbbf1fc34a5092df652abc2464190961cd8acd09fc62.lean/declarations/instance--df0a7b5e62b3f8d107a52d7e.md) | 81 | `declaration-track:df0a7b5e62b3f8d107a52d7e6b4fd9925f2e90b8a07290babcf44bc5f59095e3` |
| 9 | `theorem` | [hasFiniteCoproducts_of_hasCoproducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProducts/Variant6a87503f1412e23ad96cdbbf1fc34a5092df652abc2464190961cd8acd09fc62.lean/declarations/hasfinitecoproducts-of-hascoproducts--38ea9c640aece68a0bce4563.md) | 87 | `result-track:38ea9c640aece68a0bce45639eef569bacf785f23da6b91a913f35c999ce5dd2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
