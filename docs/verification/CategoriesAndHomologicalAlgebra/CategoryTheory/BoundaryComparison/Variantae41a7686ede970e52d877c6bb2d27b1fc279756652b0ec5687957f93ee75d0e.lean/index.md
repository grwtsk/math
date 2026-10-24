# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.BoundaryComparison.Variantae41a7686ede970e52d877c6bb2d27b1fc279756652b0ec5687957f93ee75d0e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b95d9f27e962f07e1aba4d4a5935486f83f19c8c",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variantae41a7686ede970e52d877c6bb2d27b1fc279756652b0ec5687957f93ee75d0e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variantae41a7686ede970e52d877c6bb2d27b1fc279756652b0ec5687957f93ee75d0e.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variantae41a7686ede970e52d877c6bb2d27b1fc279756652b0ec5687957f93ee75d0e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b95d9f27e962f07e1aba4d4a5935486f83f19c8c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variantae41a7686ede970e52d877c6bb2d27b1fc279756652b0ec5687957f93ee75d0e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variantae41a7686ede970e52d877c6bb2d27b1fc279756652b0ec5687957f93ee75d0e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Equivalence` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.ZeroMorphisms` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Types.Basic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [boundary_epi_of_hom_comparisons](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variantae41a7686ede970e52d877c6bb2d27b1fc279756652b0ec5687957f93ee75d0e.lean/declarations/boundary-epi-of-hom-comparisons--b6dfca69b096e76f5e4be1ea.md) | 22 | `result-track:b6dfca69b096e76f5e4be1eaa510b331e55cbc10aa0f0da78a11742800ab4473` |
| 2 | `theorem` | [boundary_identity_consumer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variantae41a7686ede970e52d877c6bb2d27b1fc279756652b0ec5687957f93ee75d0e.lean/declarations/boundary-identity-consumer--be492fd69206997b37e1eb8c.md) | 36 | `result-track:be492fd69206997b37e1eb8cf24cfd59bd8270743a81d0b5f5276fcffdb3f3f6` |
| 3 | `theorem` | [boundary_quotient_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variantae41a7686ede970e52d877c6bb2d27b1fc279756652b0ec5687957f93ee75d0e.lean/declarations/boundary-quotient-zero--dfc0a89dc34ca0d79ea73e9f.md) | 43 | `result-track:dfc0a89dc34ca0d79ea73e9fab2ccae96c45f70340e1a80167dbf90fd5b771ce` |
| 4 | `def` | [finiteBoundaryToUnit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variantae41a7686ede970e52d877c6bb2d27b1fc279756652b0ec5687957f93ee75d0e.lean/declarations/finiteboundarytounit--af5e63d97f1fad0cd1c86685.md) | 54 | `declaration-track:af5e63d97f1fad0cd1c8668547bf1f78b55c0d6aa0101bab3626bfdafe7483cf` |
| 5 | `def` | [finiteBoundaryToFinOne](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variantae41a7686ede970e52d877c6bb2d27b1fc279756652b0ec5687957f93ee75d0e.lean/declarations/finiteboundarytofinone--1a311b984704a279115b14bf.md) | 56 | `declaration-track:1a311b984704a279115b14bf459370db5ea2a9cd5680cdc55469963142119bc3` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variantae41a7686ede970e52d877c6bb2d27b1fc279756652b0ec5687957f93ee75d0e.lean/declarations/instance--31ae6e813d0e814adf5fc30a.md) | 58 | `declaration-track:31ae6e813d0e814adf5fc30a7d85fa13e85c24301c669f430a0a3962f9bbb579` |
| 7 | `def` | [finiteClosedHomComparison](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variantae41a7686ede970e52d877c6bb2d27b1fc279756652b0ec5687957f93ee75d0e.lean/declarations/finiteclosedhomcomparison--eaea4b115dc7a07ad61c434b.md) | 65 | `declaration-track:eaea4b115dc7a07ad61c434ba9b2651d6ecc066397cedf6a757e374465fb81a6` |
| 8 | `theorem` | [finite_boundary_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variantae41a7686ede970e52d877c6bb2d27b1fc279756652b0ec5687957f93ee75d0e.lean/declarations/finite-boundary-epi--ead60538cbded847475b00b4.md) | 76 | `result-track:ead60538cbded847475b00b42c9123c33fefd7d6d335a104aecf9c78dc79271e` |
| 9 | `theorem` | [degree_relevance_bounds](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variantae41a7686ede970e52d877c6bb2d27b1fc279756652b0ec5687957f93ee75d0e.lean/declarations/degree-relevance-bounds--1a04b1af24ffd1bf393b4bf9.md) | 82 | `result-track:1a04b1af24ffd1bf393b4bf921cd89b1f605affbc19ae6a15ef3e5bcc611c018` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
