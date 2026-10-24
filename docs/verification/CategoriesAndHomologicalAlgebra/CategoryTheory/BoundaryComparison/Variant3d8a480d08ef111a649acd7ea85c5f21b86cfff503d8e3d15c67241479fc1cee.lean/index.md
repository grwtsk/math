# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.BoundaryComparison.Variant3d8a480d08ef111a649acd7ea85c5f21b86cfff503d8e3d15c67241479fc1cee

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3033038334271931ef2c30a5041512085c4ce363",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variant3d8a480d08ef111a649acd7ea85c5f21b86cfff503d8e3d15c67241479fc1cee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variant3d8a480d08ef111a649acd7ea85c5f21b86cfff503d8e3d15c67241479fc1cee.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variant3d8a480d08ef111a649acd7ea85c5f21b86cfff503d8e3d15c67241479fc1cee.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3033038334271931ef2c30a5041512085c4ce363`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variant3d8a480d08ef111a649acd7ea85c5f21b86cfff503d8e3d15c67241479fc1cee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variant3d8a480d08ef111a649acd7ea85c5f21b86cfff503d8e3d15c67241479fc1cee.lean.json)

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
| 1 | `theorem` | [boundary_epi_of_hom_comparisons](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variant3d8a480d08ef111a649acd7ea85c5f21b86cfff503d8e3d15c67241479fc1cee.lean/declarations/boundary-epi-of-hom-comparisons--33534fd5a9c376a6cc129a6b.md) | 22 | `result-track:33534fd5a9c376a6cc129a6b22e5b3f9051222aeeccaffc78148e5b971006b63` |
| 2 | `theorem` | [boundary_identity_consumer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variant3d8a480d08ef111a649acd7ea85c5f21b86cfff503d8e3d15c67241479fc1cee.lean/declarations/boundary-identity-consumer--889d3f9c1998b93082c80025.md) | 36 | `result-track:889d3f9c1998b93082c800250c5eda564472413ccd5abffd294e668ebeba5bd7` |
| 3 | `theorem` | [boundary_quotient_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variant3d8a480d08ef111a649acd7ea85c5f21b86cfff503d8e3d15c67241479fc1cee.lean/declarations/boundary-quotient-zero--b964ada9c0e8b6eb892e8961.md) | 43 | `result-track:b964ada9c0e8b6eb892e8961726f1d7d6492e5ce3162e590965ce226f3870cd6` |
| 4 | `def` | [finiteBoundaryToUnit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variant3d8a480d08ef111a649acd7ea85c5f21b86cfff503d8e3d15c67241479fc1cee.lean/declarations/finiteboundarytounit--ca776d821ab42b93f4fa2ed5.md) | 54 | `declaration-track:ca776d821ab42b93f4fa2ed56614d667b98a14a8967ca006c7c732407aa5e625` |
| 5 | `def` | [finiteBoundaryToFinOne](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variant3d8a480d08ef111a649acd7ea85c5f21b86cfff503d8e3d15c67241479fc1cee.lean/declarations/finiteboundarytofinone--ab339cf968556ca5953c559c.md) | 56 | `declaration-track:ab339cf968556ca5953c559c36acf62f017ff0ec0c38e3b6a3b5719383e7e42d` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variant3d8a480d08ef111a649acd7ea85c5f21b86cfff503d8e3d15c67241479fc1cee.lean/declarations/instance--803a5254f03f1e671b57120c.md) | 58 | `declaration-track:803a5254f03f1e671b57120c526494dc4bf0277839fd0e30d831618dff5f4922` |
| 7 | `def` | [finiteClosedFunctionComparison](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variant3d8a480d08ef111a649acd7ea85c5f21b86cfff503d8e3d15c67241479fc1cee.lean/declarations/finiteclosedfunctioncomparison--c8da454ed100dac76a84339b.md) | 66 | `declaration-track:c8da454ed100dac76a84339b9f565e47316a33e9572aa97ad9112b05af07bf46` |
| 8 | `def` | [finiteClosedHomComparison](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variant3d8a480d08ef111a649acd7ea85c5f21b86cfff503d8e3d15c67241479fc1cee.lean/declarations/finiteclosedhomcomparison--68a19b7f0c8e270b48f150ca.md) | 75 | `declaration-track:68a19b7f0c8e270b48f150ca7c377a6b8884a418e66d2a4818320c0cd9fc2e0a` |
| 9 | `theorem` | [finite_boundary_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variant3d8a480d08ef111a649acd7ea85c5f21b86cfff503d8e3d15c67241479fc1cee.lean/declarations/finite-boundary-epi--05f945f901e881d68dd39311.md) | 80 | `result-track:05f945f901e881d68dd39311586d27f46f45643766355fb1d740b48d7f3a9ac4` |
| 10 | `theorem` | [degree_relevance_bounds](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variant3d8a480d08ef111a649acd7ea85c5f21b86cfff503d8e3d15c67241479fc1cee.lean/declarations/degree-relevance-bounds--5d82e623dee3b2b035651628.md) | 89 | `result-track:5d82e623dee3b2b035651628d33fd640a24f90b1e85bfccf338cd9c51029f605` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
