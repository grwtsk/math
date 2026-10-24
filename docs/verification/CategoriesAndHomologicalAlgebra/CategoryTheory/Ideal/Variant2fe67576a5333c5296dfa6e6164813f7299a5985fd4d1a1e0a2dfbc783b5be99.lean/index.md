# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Ideal.Variant2fe67576a5333c5296dfa6e6164813f7299a5985fd4d1a1e0a2dfbc783b5be99

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e5af173b989f8103433f3771e32cd9646b9ea41e",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Ideal/Variant2fe67576a5333c5296dfa6e6164813f7299a5985fd4d1a1e0a2dfbc783b5be99.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Ideal/Variant2fe67576a5333c5296dfa6e6164813f7299a5985fd4d1a1e0a2dfbc783b5be99.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Ideal/Variant2fe67576a5333c5296dfa6e6164813f7299a5985fd4d1a1e0a2dfbc783b5be99.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e5af173b989f8103433f3771e32cd9646b9ea41e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Ideal/Variant2fe67576a5333c5296dfa6e6164813f7299a5985fd4d1a1e0a2dfbc783b5be99.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Ideal/Variant2fe67576a5333c5296dfa6e6164813f7299a5985fd4d1a1e0a2dfbc783b5be99.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.BinaryProducts` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.Terminal` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Constructions.FiniteProductsOfBinaryProducts` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monad.Limits` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.FullyFaithful` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Limits` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Reflective` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Closed.Cartesian` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Subterminal` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ExponentialIdeal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Ideal/Variant2fe67576a5333c5296dfa6e6164813f7299a5985fd4d1a1e0a2dfbc783b5be99.lean/declarations/exponentialideal--f0ff40615ac1b29991f2c77a.md) | 55 | `declaration-track:f0ff40615ac1b29991f2c77a01252736857144b41b649bd424c7b4c83a415c5b` |
| 2 | `theorem` | [ExponentialIdeal.mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Ideal/Variant2fe67576a5333c5296dfa6e6164813f7299a5985fd4d1a1e0a2dfbc783b5be99.lean/declarations/exponentialideal-mk--52ad7f380c9f48e501074b89.md) | 62 | `result-track:52ad7f380c9f48e501074b89b272b2099f6fe249f7957bcf4d1946109c7de6d9` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Ideal/Variant2fe67576a5333c5296dfa6e6164813f7299a5985fd4d1a1e0a2dfbc783b5be99.lean/declarations/instance--e735a90f02af389532ddbac8.md) | 69 | `declaration-track:e735a90f02af389532ddbac8c30638338e8eaabff5fd4104f5e708dde66027b7` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Ideal/Variant2fe67576a5333c5296dfa6e6164813f7299a5985fd4d1a1e0a2dfbc783b5be99.lean/declarations/instance--7bac7fe632f630b7d7573c03.md) | 75 | `declaration-track:7bac7fe632f630b7d7573c03990659c608dfd0e9d425af77036b1485b2e6eb77` |
| 5 | `def` | [exponentialIdealReflective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Ideal/Variant2fe67576a5333c5296dfa6e6164813f7299a5985fd4d1a1e0a2dfbc783b5be99.lean/declarations/exponentialidealreflective--fec6d19df3cde96e18d87bce.md) | 86 | `declaration-track:fec6d19df3cde96e18d87bce728717c3527fdeeff11958500a2ba3f66f12647d` |
| 6 | `theorem` | [ExponentialIdeal.mk_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Ideal/Variant2fe67576a5333c5296dfa6e6164813f7299a5985fd4d1a1e0a2dfbc783b5be99.lean/declarations/exponentialideal-mk-of-iso--adf1101bb75351e6226849d8.md) | 98 | `result-track:adf1101bb75351e6226849d8d291c2a770d20dd969d5f4ce167c11af77f255f8` |
| 7 | `theorem` | [reflective_products](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Ideal/Variant2fe67576a5333c5296dfa6e6164813f7299a5985fd4d1a1e0a2dfbc783b5be99.lean/declarations/reflective-products--26d131694eaabb1f894d9805.md) | 114 | `result-track:26d131694eaabb1f894d980508bbf3cb88a63746125f804b80e5be87255a9f0e` |
| 8 | `abbrev` | [CartesianMonoidalCategory.ofReflective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Ideal/Variant2fe67576a5333c5296dfa6e6164813f7299a5985fd4d1a1e0a2dfbc783b5be99.lean/declarations/cartesianmonoidalcategory-ofreflective--f33177d2561979938d22d57f.md) | 125 | `declaration-track:f33177d2561979938d22d57fe6595719c31c9828c68adcd6d37e089330c5deac` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Ideal/Variant2fe67576a5333c5296dfa6e6164813f7299a5985fd4d1a1e0a2dfbc783b5be99.lean/declarations/instance--d3b05781a2ae39923b4bf3d1.md) | 170 | `declaration-track:d3b05781a2ae39923b4bf3d1ac6068de3afb05781c1b17d15c1ba5088afe4b32` |
| 10 | `def` | [cartesianClosedOfReflective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Ideal/Variant2fe67576a5333c5296dfa6e6164813f7299a5985fd4d1a1e0a2dfbc783b5be99.lean/declarations/cartesianclosedofreflective--d353cbd396c5f8a3463b933a.md) | 198 | `declaration-track:d353cbd396c5f8a3463b933aaa0055ffbc0c26959fca071c6a7afdc7828410d0` |
| 11 | `def` | [bijection](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Ideal/Variant2fe67576a5333c5296dfa6e6164813f7299a5985fd4d1a1e0a2dfbc783b5be99.lean/declarations/bijection--9fda9409f39ae82c4871ca64.md) | 224 | `declaration-track:9fda9409f39ae82c4871ca64add4dfe43f53df2542129b45365ad4f53a7a3877` |
| 12 | `theorem` | [bijection_symm_apply_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Ideal/Variant2fe67576a5333c5296dfa6e6164813f7299a5985fd4d1a1e0a2dfbc783b5be99.lean/declarations/bijection-symm-apply-id--2255de7fbb120fcb3d5178de.md) | 247 | `result-track:2255de7fbb120fcb3d5178deafffbbfaf357cecde60d5b7e75f6dbe0205f0431` |
| 13 | `theorem` | [bijection_natural](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Ideal/Variant2fe67576a5333c5296dfa6e6164813f7299a5985fd4d1a1e0a2dfbc783b5be99.lean/declarations/bijection-natural--88232409f7f203a7dc0b857e.md) | 269 | `result-track:88232409f7f203a7dc0b857e37a6a3992bfbff2e1ba869cc263a913cdca319f8` |
| 14 | `theorem` | [prodComparison_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Ideal/Variant2fe67576a5333c5296dfa6e6164813f7299a5985fd4d1a1e0a2dfbc783b5be99.lean/declarations/prodcomparison-iso--509615ca5c7a85b6e5e26a36.md) | 287 | `result-track:509615ca5c7a85b6e5e26a3639f42ee2d60a71c1188caddb19c5adecc774fd81` |
| 15 | `lemma` | [preservesBinaryProducts_of_exponentialIdeal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Ideal/Variant2fe67576a5333c5296dfa6e6164813f7299a5985fd4d1a1e0a2dfbc783b5be99.lean/declarations/preservesbinaryproducts-of-exponentialideal--22edc597e3e587b25a4b4752.md) | 302 | `result-track:22edc597e3e587b25a4b4752586010a42304da0f66e25bfbad97d93f3656ae96` |
| 16 | `lemma` | [Limits.PreservesFiniteProducts.of_exponentialIdeal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Ideal/Variant2fe67576a5333c5296dfa6e6164813f7299a5985fd4d1a1e0a2dfbc783b5be99.lean/declarations/limits-preservesfiniteproducts-of-exponentialideal--7f10bf8c6466e7802249c31c.md) | 312 | `result-track:7f10bf8c6466e7802249c31c1dbb28303e11be0d0274fe1451f775932ab48443` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
