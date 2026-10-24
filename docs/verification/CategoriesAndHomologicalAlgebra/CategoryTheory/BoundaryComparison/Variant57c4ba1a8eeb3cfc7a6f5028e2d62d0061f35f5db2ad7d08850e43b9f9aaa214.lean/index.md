# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.BoundaryComparison.Variant57c4ba1a8eeb3cfc7a6f5028e2d62d0061f35f5db2ad7d08850e43b9f9aaa214

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "804861f222f6dd398002a657d0f679b43da02afc",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variant57c4ba1a8eeb3cfc7a6f5028e2d62d0061f35f5db2ad7d08850e43b9f9aaa214.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variant57c4ba1a8eeb3cfc7a6f5028e2d62d0061f35f5db2ad7d08850e43b9f9aaa214.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variant57c4ba1a8eeb3cfc7a6f5028e2d62d0061f35f5db2ad7d08850e43b9f9aaa214.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `804861f222f6dd398002a657d0f679b43da02afc`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variant57c4ba1a8eeb3cfc7a6f5028e2d62d0061f35f5db2ad7d08850e43b9f9aaa214.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variant57c4ba1a8eeb3cfc7a6f5028e2d62d0061f35f5db2ad7d08850e43b9f9aaa214.lean.json)

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
| 1 | `theorem` | [boundary_epi_of_hom_comparisons](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variant57c4ba1a8eeb3cfc7a6f5028e2d62d0061f35f5db2ad7d08850e43b9f9aaa214.lean/declarations/boundary-epi-of-hom-comparisons--be38fd0cd2458489c9b96ad9.md) | 30 | `result-track:be38fd0cd2458489c9b96ad99d93d274199478631cd81c48f584da9f7a3bb0c5` |
| 2 | `theorem` | [boundary_identity_consumer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variant57c4ba1a8eeb3cfc7a6f5028e2d62d0061f35f5db2ad7d08850e43b9f9aaa214.lean/declarations/boundary-identity-consumer--d91b712a4a9f24f466a2d9a0.md) | 44 | `result-track:d91b712a4a9f24f466a2d9a05f7b5e515393728165948a65ec851eb41e69e0f1` |
| 3 | `theorem` | [boundary_quotient_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variant57c4ba1a8eeb3cfc7a6f5028e2d62d0061f35f5db2ad7d08850e43b9f9aaa214.lean/declarations/boundary-quotient-zero--7abb7af773b4f6215a12f4e8.md) | 51 | `result-track:7abb7af773b4f6215a12f4e8f7807ff0b9f0f5ccbd309b335d216c0b81f30113` |
| 4 | `def` | [finiteBoundaryToUnit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variant57c4ba1a8eeb3cfc7a6f5028e2d62d0061f35f5db2ad7d08850e43b9f9aaa214.lean/declarations/finiteboundarytounit--d788b3b1d03607a7d2bdf6e1.md) | 62 | `declaration-track:d788b3b1d03607a7d2bdf6e14cdbf554a578c63120f74486a3c2c3e225dd13e9` |
| 5 | `def` | [finiteBoundaryToFinOne](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variant57c4ba1a8eeb3cfc7a6f5028e2d62d0061f35f5db2ad7d08850e43b9f9aaa214.lean/declarations/finiteboundarytofinone--5703332cf51a78df0e50c9ec.md) | 64 | `declaration-track:5703332cf51a78df0e50c9ec7f4537ad83cc77941f96f951e1911903ef475066` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variant57c4ba1a8eeb3cfc7a6f5028e2d62d0061f35f5db2ad7d08850e43b9f9aaa214.lean/declarations/instance--c55a6d9a1972d2065d48be63.md) | 66 | `declaration-track:c55a6d9a1972d2065d48be631d3df2ab84d28b53571981bbfa6e21c56c0fb626` |
| 7 | `def` | [finiteClosedHomComparison](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variant57c4ba1a8eeb3cfc7a6f5028e2d62d0061f35f5db2ad7d08850e43b9f9aaa214.lean/declarations/finiteclosedhomcomparison--33fc4e9e6597290a2b02a1ee.md) | 73 | `declaration-track:33fc4e9e6597290a2b02a1ee96103998576c58fcae21fd573bbba5aa4bef0fcb` |
| 8 | `theorem` | [finite_boundary_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variant57c4ba1a8eeb3cfc7a6f5028e2d62d0061f35f5db2ad7d08850e43b9f9aaa214.lean/declarations/finite-boundary-epi--cea20a402d533ad88f3d0b1e.md) | 84 | `result-track:cea20a402d533ad88f3d0b1ec0e5577ac402d03ea6fa93588810969250174e14` |
| 9 | `theorem` | [degree_relevance_bounds](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variant57c4ba1a8eeb3cfc7a6f5028e2d62d0061f35f5db2ad7d08850e43b9f9aaa214.lean/declarations/degree-relevance-bounds--a992264c781c162a6a33791c.md) | 90 | `result-track:a992264c781c162a6a33791c6ae6656909420de86e7ca34a4067700f73c7a77e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
