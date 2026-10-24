# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Limits.Variantb06c29c3df698589f228a341343c33e28daa6c6de183db92fc7713b549f91577

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e6398e4ac3cf33de30c7c7ec39925eda7a1c6d2c",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb06c29c3df698589f228a341343c33e28daa6c6de183db92fc7713b549f91577.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb06c29c3df698589f228a341343c33e28daa6c6de183db92fc7713b549f91577.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb06c29c3df698589f228a341343c33e28daa6c6de183db92fc7713b549f91577.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e6398e4ac3cf33de30c7c7ec39925eda7a1c6d2c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb06c29c3df698589f228a341343c33e28daa6c6de183db92fc7713b549f91577.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb06c29c3df698589f228a341343c33e28daa6c6de183db92fc7713b549f91577.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.FGModuleCat.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Limits` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Products` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.EpiMono` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Creates` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.FiniteLimits` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Constructions.LimitsOfProductsAndEqualizers` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb06c29c3df698589f228a341343c33e28daa6c6de183db92fc7713b549f91577.lean/declarations/instance--7b9f8bcf4b356c861b349a56.md) | 38 | `declaration-track:7b9f8bcf4b356c861b349a56384a7bdcb929edeb8c376278c0878c41f49aa738` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb06c29c3df698589f228a341343c33e28daa6c6de183db92fc7713b549f91577.lean/declarations/instance--2c5c2c3ffe82a07cd7adfb20.md) | 46 | `declaration-track:2c5c2c3ffe82a07cd7adfb20b503f1f295b42e33511b8ab38330446ceadc16cf` |
| 3 | `def` | [forget₂CreatesLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb06c29c3df698589f228a341343c33e28daa6c6de183db92fc7713b549f91577.lean/declarations/forget-createslimit--ca50c25effec82933ebe4904.md) | 55 | `declaration-track:ca50c25effec82933ebe4904e2496cf558de7fd1cb8d48dc00aa6351928e0450` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb06c29c3df698589f228a341343c33e28daa6c6de183db92fc7713b549f91577.lean/declarations/instance--8fbf361bd7676c26a3f3b530.md) | 62 | `declaration-track:8fbf361bd7676c26a3f3b530228ffa54fb13448f872fe258803a2f8d377c259f` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb06c29c3df698589f228a341343c33e28daa6c6de183db92fc7713b549f91577.lean/declarations/instance--79cf447e2966f112249c5ca2.md) | 65 | `declaration-track:79cf447e2966f112249c5ca2e090df23aa9c483fb0bce18c3bba334df3f3981c` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb06c29c3df698589f228a341343c33e28daa6c6de183db92fc7713b549f91577.lean/declarations/instance--5534396367ac4d882e5c85d8.md) | 70 | `declaration-track:5534396367ac4d882e5c85d88b3730667cf158ca7d8597d44932ee7eafc378e4` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb06c29c3df698589f228a341343c33e28daa6c6de183db92fc7713b549f91577.lean/declarations/instance--6fb680c4011a7cf26497c98f.md) | 73 | `declaration-track:6fb680c4011a7cf26497c98f15fb6ab01e6a038095eabb90891947845d30ca4a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
