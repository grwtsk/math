# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Skeleton.Variantccad1ffe90e80175c15bd70d3ac37d8ea282ead6d9999881edf959caf731a51a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c96e3ae8b0b8c0b6a4018b0b8e388c56ade2be1",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Variantccad1ffe90e80175c15bd70d3ac37d8ea282ead6d9999881edf959caf731a51a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Variantccad1ffe90e80175c15bd70d3ac37d8ea282ead6d9999881edf959caf731a51a.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Variantccad1ffe90e80175c15bd70d3ac37d8ea282ead6d9999881edf959caf731a51a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c96e3ae8b0b8c0b6a4018b0b8e388c56ade2be1`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Variantccad1ffe90e80175c15bd70d3ac37d8ea282ead6d9999881edf959caf731a51a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Variantccad1ffe90e80175c15bd70d3ac37d8ea282ead6d9999881edf959caf731a51a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Braided.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Transport` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Skeletal` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [monoidOfSkeletalMonoidal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Variantccad1ffe90e80175c15bd70d3ac37d8ea282ead6d9999881edf959caf731a51a.lean/declarations/monoidofskeletalmonoidal--1fc0ce35bb4e450346e7e6ec.md) | 41 | `declaration-track:1fc0ce35bb4e450346e7e6ec4e655c8adc048e2a561f41bedbd467d3acc8ecdc` |
| 2 | `def` | [commMonoidOfSkeletalBraided](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Variantccad1ffe90e80175c15bd70d3ac37d8ea282ead6d9999881edf959caf731a51a.lean/declarations/commmonoidofskeletalbraided--33c001564d1166dcdbcff19c.md) | 49 | `declaration-track:33c001564d1166dcdbcff19cec6fecd1f9019788f370decad94c23d6027b907b` |
| 3 | `instance` | [instMonoidalCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Variantccad1ffe90e80175c15bd70d3ac37d8ea282ead6d9999881edf959caf731a51a.lean/declarations/instmonoidalcategory--9995ad5423e63c47013e2d33.md) | 56 | `declaration-track:9995ad5423e63c47013e2d33aebbb129ab680c4826b22966ce29e7271cbf2462` |
| 4 | `instance` | [instMonoid](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Variantccad1ffe90e80175c15bd70d3ac37d8ea282ead6d9999881edf959caf731a51a.lean/declarations/instmonoid--861aa2a525e85450a3f450d6.md) | 63 | `declaration-track:861aa2a525e85450a3f450d624975f36d2086536ba21dea2ca83e5b2120d9731` |
| 5 | `theorem` | [mul_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Variantccad1ffe90e80175c15bd70d3ac37d8ea282ead6d9999881edf959caf731a51a.lean/declarations/mul-eq--1e97a01d2586899662cad667.md) | 66 | `result-track:1e97a01d2586899662cad6676c58b28e387f571825a62b6e5419780069253ae4` |
| 6 | `theorem` | [one_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Variantccad1ffe90e80175c15bd70d3ac37d8ea282ead6d9999881edf959caf731a51a.lean/declarations/one-eq--acc7a9040d725f21c1bdb3e7.md) | 67 | `result-track:acc7a9040d725f21c1bdb3e777000155da1d1f1d74c8af9d1fe61bf4ab76b650` |
| 7 | `theorem` | [toSkeleton_tensorObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Variantccad1ffe90e80175c15bd70d3ac37d8ea282ead6d9999881edf959caf731a51a.lean/declarations/toskeleton-tensorobj--ad9d176a03cc74289b7eff18.md) | 69 | `result-track:ad9d176a03cc74289b7eff1835e0e94a8e49491b2737fe630d2331a122d15007` |
| 8 | `instance` | [instBraidedCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Variantccad1ffe90e80175c15bd70d3ac37d8ea282ead6d9999881edf959caf731a51a.lean/declarations/instbraidedcategory--e9cf230915c00ff4ef5eed9d.md) | 74 | `declaration-track:e9cf230915c00ff4ef5eed9d717e8951c62fa49f718ab3bded0cf081aa33e903` |
| 9 | `instance` | [instCommMonoid](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Variantccad1ffe90e80175c15bd70d3ac37d8ea282ead6d9999881edf959caf731a51a.lean/declarations/instcommmonoid--1e8376063ad5f28633ec3285.md) | 84 | `declaration-track:1e8376063ad5f28633ec328515ab9aeb489dfb9f1b475ac5c56c595c614d439a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
