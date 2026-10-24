# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Products.Variant3bca200058c388f259ab82c319cf8a19d98f565c02b7a201ea50f2ceb57dd534

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "29f951a760c8b713846ee8a6d8f7993ba4177f77",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant3bca200058c388f259ab82c319cf8a19d98f565c02b7a201ea50f2ceb57dd534.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant3bca200058c388f259ab82c319cf8a19d98f565c02b7a201ea50f2ceb57dd534.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant3bca200058c388f259ab82c319cf8a19d98f565c02b7a201ea50f2ceb57dd534.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `29f951a760c8b713846ee8a6d8f7993ba4177f77`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant3bca200058c388f259ab82c319cf8a19d98f565c02b7a201ea50f2ceb57dd534.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant3bca200058c388f259ab82c319cf8a19d98f565c02b7a201ea50f2ceb57dd534.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Comma.Over.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.BinaryProducts` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monad.Algebra` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [prodComonad](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant3bca200058c388f259ab82c319cf8a19d98f565c02b7a201ea50f2ceb57dd534.lean/declarations/prodcomonad--71e44df6bb3be02b16dfc1d3.md) | 42 | `declaration-track:71e44df6bb3be02b16dfc1d3fd9ed6e0434cf793239dcb5eebf17bb9cee4b93c` |
| 2 | `def` | [coalgebraToOver](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant3bca200058c388f259ab82c319cf8a19d98f565c02b7a201ea50f2ceb57dd534.lean/declarations/coalgebratoover--7854c1f4a15493d199708e9a.md) | 51 | `declaration-track:7854c1f4a15493d199708e9ae21ff175158fc86f29571e07212873cc3d309d73` |
| 3 | `def` | [overToCoalgebra](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant3bca200058c388f259ab82c319cf8a19d98f565c02b7a201ea50f2ceb57dd534.lean/declarations/overtocoalgebra--b7a934998738358a87299d47.md) | 64 | `declaration-track:b7a934998738358a87299d4788c12777832944bd9baf9d921f6eddfcbc32b702` |
| 4 | `def` | [coalgebraEquivOver](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant3bca200058c388f259ab82c319cf8a19d98f565c02b7a201ea50f2ceb57dd534.lean/declarations/coalgebraequivover--df4db72dcf339f1b59adc469.md) | 72 | `declaration-track:df4db72dcf339f1b59adc469ff311ef7ba59479285ea4a30a749ecd6faaa66e9` |
| 5 | `def` | [coprodMonad](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant3bca200058c388f259ab82c319cf8a19d98f565c02b7a201ea50f2ceb57dd534.lean/declarations/coprodmonad--dd8dd27650daeb6791021192.md) | 89 | `declaration-track:dd8dd27650daeb6791021192606a623f7fec4619fe740fa2663fa84a159e960b` |
| 6 | `def` | [algebraToUnder](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant3bca200058c388f259ab82c319cf8a19d98f565c02b7a201ea50f2ceb57dd534.lean/declarations/algebratounder--62c9678d04c24b520a7b9cae.md) | 98 | `declaration-track:62c9678d04c24b520a7b9caef00e2e16bac0b9c107ed05bf1dd56b0c7ba8184e` |
| 7 | `def` | [underToAlgebra](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant3bca200058c388f259ab82c319cf8a19d98f565c02b7a201ea50f2ceb57dd534.lean/declarations/undertoalgebra--351933d43e9b14d2497dfa5a.md) | 111 | `declaration-track:351933d43e9b14d2497dfa5afe7cb8b0e448c8f0c801296d4d286857fbff2601` |
| 8 | `def` | [algebraEquivUnder](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant3bca200058c388f259ab82c319cf8a19d98f565c02b7a201ea50f2ceb57dd534.lean/declarations/algebraequivunder--a4a5cd0732187be88d23c158.md) | 120 | `declaration-track:a4a5cd0732187be88d23c1587750f731c6d2482b12027f72cface3acf0faf015` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
