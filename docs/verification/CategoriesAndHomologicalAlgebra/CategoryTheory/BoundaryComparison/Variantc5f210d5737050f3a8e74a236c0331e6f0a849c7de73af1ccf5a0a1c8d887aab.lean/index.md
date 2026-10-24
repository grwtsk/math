# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.BoundaryComparison.Variantc5f210d5737050f3a8e74a236c0331e6f0a849c7de73af1ccf5a0a1c8d887aab

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "28276d7d895c62f994367bbaab8a98848f458870",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variantc5f210d5737050f3a8e74a236c0331e6f0a849c7de73af1ccf5a0a1c8d887aab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variantc5f210d5737050f3a8e74a236c0331e6f0a849c7de73af1ccf5a0a1c8d887aab.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variantc5f210d5737050f3a8e74a236c0331e6f0a849c7de73af1ccf5a0a1c8d887aab.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `28276d7d895c62f994367bbaab8a98848f458870`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variantc5f210d5737050f3a8e74a236c0331e6f0a849c7de73af1ccf5a0a1c8d887aab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variantc5f210d5737050f3a8e74a236c0331e6f0a849c7de73af1ccf5a0a1c8d887aab.lean.json)

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
| 1 | `theorem` | [boundary_epi_of_hom_comparisons](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variantc5f210d5737050f3a8e74a236c0331e6f0a849c7de73af1ccf5a0a1c8d887aab.lean/declarations/boundary-epi-of-hom-comparisons--3521ef62858123a2e3510412.md) | 22 | `result-track:3521ef62858123a2e351041273af029070cd1326fdc66409336a365a6cf76995` |
| 2 | `theorem` | [boundary_identity_consumer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variantc5f210d5737050f3a8e74a236c0331e6f0a849c7de73af1ccf5a0a1c8d887aab.lean/declarations/boundary-identity-consumer--9aee031d7f38b11b4c4848f9.md) | 36 | `result-track:9aee031d7f38b11b4c4848f9f5d8d233fb71764873678e31dc1e826693d11d64` |
| 3 | `theorem` | [boundary_quotient_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variantc5f210d5737050f3a8e74a236c0331e6f0a849c7de73af1ccf5a0a1c8d887aab.lean/declarations/boundary-quotient-zero--714e48804aba9078a1b58181.md) | 43 | `result-track:714e48804aba9078a1b581813fe0cdca06a4ce82bf570e2b3b2b67b760b331dc` |
| 4 | `def` | [finiteBoundaryToUnit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variantc5f210d5737050f3a8e74a236c0331e6f0a849c7de73af1ccf5a0a1c8d887aab.lean/declarations/finiteboundarytounit--2af7956414883c4837fd8df4.md) | 55 | `declaration-track:2af7956414883c4837fd8df4e2fd40bd0236c34d604be922e27a045eb5d20479` |
| 5 | `def` | [finiteBoundaryToFinOne](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variantc5f210d5737050f3a8e74a236c0331e6f0a849c7de73af1ccf5a0a1c8d887aab.lean/declarations/finiteboundarytofinone--24eaaf7083e09939490fe955.md) | 58 | `declaration-track:24eaaf7083e09939490fe955cedef4ea99aaf45bd308aab100a3f9cf4995a9df` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variantc5f210d5737050f3a8e74a236c0331e6f0a849c7de73af1ccf5a0a1c8d887aab.lean/declarations/instance--d949d61bc5920e1f76e4be9e.md) | 60 | `declaration-track:d949d61bc5920e1f76e4be9e56941a4bedd1c22eb32e44ab1468057781e74ebd` |
| 7 | `def` | [finiteClosedFunctionComparison](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variantc5f210d5737050f3a8e74a236c0331e6f0a849c7de73af1ccf5a0a1c8d887aab.lean/declarations/finiteclosedfunctioncomparison--edfa7e08fe796bfc4386a4e7.md) | 69 | `declaration-track:edfa7e08fe796bfc4386a4e787e950f9e9be04c5c5a03b73105f9a9690fe05fe` |
| 8 | `def` | [finiteClosedHomComparison](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variantc5f210d5737050f3a8e74a236c0331e6f0a849c7de73af1ccf5a0a1c8d887aab.lean/declarations/finiteclosedhomcomparison--aaaac21592155a8f1c0c0700.md) | 79 | `declaration-track:aaaac21592155a8f1c0c07003eb645e1425742f288fe9fd9131f73534300d517` |
| 9 | `theorem` | [finite_boundary_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variantc5f210d5737050f3a8e74a236c0331e6f0a849c7de73af1ccf5a0a1c8d887aab.lean/declarations/finite-boundary-epi--d48f14662be3e5b01f05b577.md) | 84 | `result-track:d48f14662be3e5b01f05b577ca156a4fefc975a6126c08c52b5af4cc3f2e4e9e` |
| 10 | `theorem` | [degree_relevance_bounds](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variantc5f210d5737050f3a8e74a236c0331e6f0a849c7de73af1ccf5a0a1c8d887aab.lean/declarations/degree-relevance-bounds--ef297fdedb46e1ded2e95179.md) | 93 | `result-track:ef297fdedb46e1ded2e95179630b38caad84df6cb4636f7ab7a2700ac9567447` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
