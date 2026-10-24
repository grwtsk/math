# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Elements.Variant3ac5d6350a04f387a1c6ad1d058a5fc45338422596e0212968bc34f53157bf22

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2fe02b4d35004d79e5d4c8ddd996626ec62b73cd",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant3ac5d6350a04f387a1c6ad1d058a5fc45338422596e0212968bc34f53157bf22.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant3ac5d6350a04f387a1c6ad1d058a5fc45338422596e0212968bc34f53157bf22.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant3ac5d6350a04f387a1c6ad1d058a5fc45338422596e0212968bc34f53157bf22.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2fe02b4d35004d79e5d4c8ddd996626ec62b73cd`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant3ac5d6350a04f387a1c6ad1d058a5fc45338422596e0212968bc34f53157bf22.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant3ac5d6350a04f387a1c6ad1d058a5fc45338422596e0212968bc34f53157bf22.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Elements` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Types.Limits` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Creates` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Limits` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [liftedConeElement'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant3ac5d6350a04f387a1c6ad1d058a5fc45338422596e0212968bc34f53157bf22.lean/declarations/liftedconeelement--fb4887c26c27a7a6245ef0eb.md) | 37 | `declaration-track:fb4887c26c27a7a6245ef0eb3a5b97e7a444c515386edc61a1be3f800592d2b8` |
| 2 | `lemma` | [π_liftedConeElement'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant3ac5d6350a04f387a1c6ad1d058a5fc45338422596e0212968bc34f53157bf22.lean/declarations/liftedconeelement--72217d2506d60ffb671e119c.md) | 41 | `result-track:72217d2506d60ffb671e119c9a278c31d64f7fe8750ddb16a3c8e29e92b9f47c` |
| 3 | `def` | [liftedConeElement](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant3ac5d6350a04f387a1c6ad1d058a5fc45338422596e0212968bc34f53157bf22.lean/declarations/liftedconeelement--dfce924ed6c596e2cc5d3492.md) | 48 | `declaration-track:dfce924ed6c596e2cc5d3492cd769d52e6a537e547ce43b2520a7f764a1ab7b9` |
| 4 | `lemma` | [map_lift_mapCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant3ac5d6350a04f387a1c6ad1d058a5fc45338422596e0212968bc34f53157bf22.lean/declarations/map-lift-mapcone--f0eab320657b62946011d1ad.md) | 52 | `result-track:f0eab320657b62946011d1adb344db67a9549380de2ac0eac12ad7f85e71a472` |
| 5 | `lemma` | [map_π_liftedConeElement](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant3ac5d6350a04f387a1c6ad1d058a5fc45338422596e0212968bc34f53157bf22.lean/declarations/map-liftedconeelement--3de5637d5ea97ca8583a7829.md) | 62 | `result-track:3de5637d5ea97ca8583a7829b46eb9e8675271349b4193ce5ff62cd3b3b7e6c5` |
| 6 | `def` | [liftedCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant3ac5d6350a04f387a1c6ad1d058a5fc45338422596e0212968bc34f53157bf22.lean/declarations/liftedcone--07446853ce6792674bb27a9b.md) | 70 | `declaration-track:07446853ce6792674bb27a9b5cc29d57a65e69a90facd2c87874a4d78febf0d0` |
| 7 | `def` | [isValidLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant3ac5d6350a04f387a1c6ad1d058a5fc45338422596e0212968bc34f53157bf22.lean/declarations/isvalidlift--b81f4223c2e08a2204524ccf.md) | 77 | `declaration-track:b81f4223c2e08a2204524ccf28b461c29a077626213d2472ea1d43d9b6b38812` |
| 8 | `def` | [isLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant3ac5d6350a04f387a1c6ad1d058a5fc45338422596e0212968bc34f53157bf22.lean/declarations/islimit--498a639a0d50620b44527112.md) | 81 | `declaration-track:498a639a0d50620b44527112504f09a4608711d09ff22d5e869f7e8dd1f32740` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant3ac5d6350a04f387a1c6ad1d058a5fc45338422596e0212968bc34f53157bf22.lean/declarations/instance--5ca00a8ff326d65f4b6e0f0d.md) | 94 | `declaration-track:5ca00a8ff326d65f4b6e0f0dff7f90dbdacef0db68e64296abaf8309e129e8c6` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant3ac5d6350a04f387a1c6ad1d058a5fc45338422596e0212968bc34f53157bf22.lean/declarations/instance--972ce327d80208ad26ecd682.md) | 99 | `declaration-track:972ce327d80208ad26ecd682f937e931a605113bd591438e26f95ff9b6c50e0b` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant3ac5d6350a04f387a1c6ad1d058a5fc45338422596e0212968bc34f53157bf22.lean/declarations/instance--54f86e4f95c86286bf1cd33e.md) | 101 | `declaration-track:54f86e4f95c86286bf1cd33e7b59591f41e43d22773cca0586d77e84e5dd22b7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
