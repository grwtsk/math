# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.BoundaryComparison.Varianta40d7b50a55ed02e2ae8e97a36fdde875d9cca0c3fd3e2661d2b16d2d8b7568c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "155558d401db882f24a866fa21f78de0cc68f1ff",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Varianta40d7b50a55ed02e2ae8e97a36fdde875d9cca0c3fd3e2661d2b16d2d8b7568c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Varianta40d7b50a55ed02e2ae8e97a36fdde875d9cca0c3fd3e2661d2b16d2d8b7568c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Varianta40d7b50a55ed02e2ae8e97a36fdde875d9cca0c3fd3e2661d2b16d2d8b7568c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `155558d401db882f24a866fa21f78de0cc68f1ff`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Varianta40d7b50a55ed02e2ae8e97a36fdde875d9cca0c3fd3e2661d2b16d2d8b7568c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Varianta40d7b50a55ed02e2ae8e97a36fdde875d9cca0c3fd3e2661d2b16d2d8b7568c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Equivalence` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.ZeroMorphisms` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Types.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [boundary_epi_of_hom_comparisons](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Varianta40d7b50a55ed02e2ae8e97a36fdde875d9cca0c3fd3e2661d2b16d2d8b7568c.lean/declarations/boundary-epi-of-hom-comparisons--be635b82b0be9715caf72e2e.md) | 30 | `result-track:be635b82b0be9715caf72e2eaf4d3a4690b8d809d3c4889146330cf220e51679` |
| 2 | `theorem` | [boundary_identity_consumer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Varianta40d7b50a55ed02e2ae8e97a36fdde875d9cca0c3fd3e2661d2b16d2d8b7568c.lean/declarations/boundary-identity-consumer--a35c9f7af939190eca1956ba.md) | 44 | `result-track:a35c9f7af939190eca1956ba2bcc3e1a9405e103daa38afc029588162de25afc` |
| 3 | `theorem` | [boundary_quotient_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Varianta40d7b50a55ed02e2ae8e97a36fdde875d9cca0c3fd3e2661d2b16d2d8b7568c.lean/declarations/boundary-quotient-zero--0b752c85cb6bed569529a94b.md) | 51 | `result-track:0b752c85cb6bed569529a94b099ec5681fb451579e625818582c6b6a9c009580` |
| 4 | `def` | [finiteBoundaryToUnit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Varianta40d7b50a55ed02e2ae8e97a36fdde875d9cca0c3fd3e2661d2b16d2d8b7568c.lean/declarations/finiteboundarytounit--da17a62562cea4c7018a16a4.md) | 62 | `declaration-track:da17a62562cea4c7018a16a422fac731a4a4b7d2f9f5e61165c4d67bde36d6b7` |
| 5 | `def` | [finiteBoundaryToFinOne](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Varianta40d7b50a55ed02e2ae8e97a36fdde875d9cca0c3fd3e2661d2b16d2d8b7568c.lean/declarations/finiteboundarytofinone--a991d66b2b242246bc9e19a1.md) | 64 | `declaration-track:a991d66b2b242246bc9e19a1ddbac67efd57dcb8bb3dfbf0d9e319e513bc25b4` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Varianta40d7b50a55ed02e2ae8e97a36fdde875d9cca0c3fd3e2661d2b16d2d8b7568c.lean/declarations/instance--95f8b4f28d5ace2a2b1df50c.md) | 66 | `declaration-track:95f8b4f28d5ace2a2b1df50c9c24a13c72b8056ceb58d5dee1f1476b56f4095b` |
| 7 | `def` | [finiteClosedFunctionComparison](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Varianta40d7b50a55ed02e2ae8e97a36fdde875d9cca0c3fd3e2661d2b16d2d8b7568c.lean/declarations/finiteclosedfunctioncomparison--48e606e089802812370b704b.md) | 74 | `declaration-track:48e606e089802812370b704bfcd9ee1740aa8acf720f3039eb9eff57df2f253e` |
| 8 | `def` | [finiteClosedHomComparison](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Varianta40d7b50a55ed02e2ae8e97a36fdde875d9cca0c3fd3e2661d2b16d2d8b7568c.lean/declarations/finiteclosedhomcomparison--c2cde245cb93de22a1d77283.md) | 83 | `declaration-track:c2cde245cb93de22a1d77283b9e3a3a6e137bdb19309c25843ca23c18f37a1e9` |
| 9 | `theorem` | [finite_boundary_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Varianta40d7b50a55ed02e2ae8e97a36fdde875d9cca0c3fd3e2661d2b16d2d8b7568c.lean/declarations/finite-boundary-epi--980ffc8c0de69ad0cb38686c.md) | 88 | `result-track:980ffc8c0de69ad0cb38686cabc67485392b58f025d20e48b86b86eb3ff881a9` |
| 10 | `theorem` | [degree_relevance_bounds](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Varianta40d7b50a55ed02e2ae8e97a36fdde875d9cca0c3fd3e2661d2b16d2d8b7568c.lean/declarations/degree-relevance-bounds--4d5025ac0d4509def81e1482.md) | 97 | `result-track:4d5025ac0d4509def81e1482fda4541885953901a78a034622e62d997d674ff0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
