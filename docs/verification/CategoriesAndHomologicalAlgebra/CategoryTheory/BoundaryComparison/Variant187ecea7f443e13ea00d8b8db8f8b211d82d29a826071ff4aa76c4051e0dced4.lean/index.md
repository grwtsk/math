# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.BoundaryComparison.Variant187ecea7f443e13ea00d8b8db8f8b211d82d29a826071ff4aa76c4051e0dced4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2c03fc314af4acfc1aad4f4f5baf266645b31f43",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variant187ecea7f443e13ea00d8b8db8f8b211d82d29a826071ff4aa76c4051e0dced4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variant187ecea7f443e13ea00d8b8db8f8b211d82d29a826071ff4aa76c4051e0dced4.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variant187ecea7f443e13ea00d8b8db8f8b211d82d29a826071ff4aa76c4051e0dced4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2c03fc314af4acfc1aad4f4f5baf266645b31f43`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variant187ecea7f443e13ea00d8b8db8f8b211d82d29a826071ff4aa76c4051e0dced4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variant187ecea7f443e13ea00d8b8db8f8b211d82d29a826071ff4aa76c4051e0dced4.lean.json)

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
| 1 | `theorem` | [boundary_epi_of_hom_comparisons](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variant187ecea7f443e13ea00d8b8db8f8b211d82d29a826071ff4aa76c4051e0dced4.lean/declarations/boundary-epi-of-hom-comparisons--7ed1b45c9ad867c5c24248f1.md) | 30 | `result-track:7ed1b45c9ad867c5c24248f1b70cc35224038766c41275fcbcf19d280de687c7` |
| 2 | `theorem` | [boundary_identity_consumer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variant187ecea7f443e13ea00d8b8db8f8b211d82d29a826071ff4aa76c4051e0dced4.lean/declarations/boundary-identity-consumer--da0c68e220d1c33c83b4ad99.md) | 44 | `result-track:da0c68e220d1c33c83b4ad998d8c63326b504722027ea6be0e39f20ca27e966c` |
| 3 | `theorem` | [boundary_quotient_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variant187ecea7f443e13ea00d8b8db8f8b211d82d29a826071ff4aa76c4051e0dced4.lean/declarations/boundary-quotient-zero--ef7c81aa9621b3c92cacf3f5.md) | 51 | `result-track:ef7c81aa9621b3c92cacf3f5e00c90408caba7fb05b9f1dd76fd7df18f7f88dd` |
| 4 | `def` | [finiteBoundaryToUnit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variant187ecea7f443e13ea00d8b8db8f8b211d82d29a826071ff4aa76c4051e0dced4.lean/declarations/finiteboundarytounit--73a3e2050e71fb31cb466c92.md) | 63 | `declaration-track:73a3e2050e71fb31cb466c92be2c31755a1563fe36f8a673dd42095feda9e3f5` |
| 5 | `def` | [finiteBoundaryToFinOne](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variant187ecea7f443e13ea00d8b8db8f8b211d82d29a826071ff4aa76c4051e0dced4.lean/declarations/finiteboundarytofinone--4e5287c9365a88befd5d47ad.md) | 66 | `declaration-track:4e5287c9365a88befd5d47ad39c16d04e26598e8395822921489c62761c98980` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variant187ecea7f443e13ea00d8b8db8f8b211d82d29a826071ff4aa76c4051e0dced4.lean/declarations/instance--00c1feba32cc936628910155.md) | 68 | `declaration-track:00c1feba32cc936628910155ea2ddf317ae7cf6698ce9b1710d4e306f032c732` |
| 7 | `def` | [finiteClosedFunctionComparison](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variant187ecea7f443e13ea00d8b8db8f8b211d82d29a826071ff4aa76c4051e0dced4.lean/declarations/finiteclosedfunctioncomparison--6fd97db6b2a3b8c1f306d2a3.md) | 77 | `declaration-track:6fd97db6b2a3b8c1f306d2a30bd466e589911d45ab6bf199b5c0ae52b6517367` |
| 8 | `def` | [finiteClosedHomComparison](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variant187ecea7f443e13ea00d8b8db8f8b211d82d29a826071ff4aa76c4051e0dced4.lean/declarations/finiteclosedhomcomparison--ca1886b22eb0849e2fd1a74c.md) | 87 | `declaration-track:ca1886b22eb0849e2fd1a74cfa45936f0c724a4caa438a78047ad93f3516fcfb` |
| 9 | `theorem` | [finite_boundary_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variant187ecea7f443e13ea00d8b8db8f8b211d82d29a826071ff4aa76c4051e0dced4.lean/declarations/finite-boundary-epi--df62df544bd2a34dc81e9f57.md) | 92 | `result-track:df62df544bd2a34dc81e9f579720b17ed3dcd66d34d2c699aceac5a8ce396674` |
| 10 | `theorem` | [degree_relevance_bounds](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variant187ecea7f443e13ea00d8b8db8f8b211d82d29a826071ff4aa76c4051e0dced4.lean/declarations/degree-relevance-bounds--a04f7547c339723dc928af6b.md) | 101 | `result-track:a04f7547c339723dc928af6bc19c7a002484338ca484a8d712de55094b6b496a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
