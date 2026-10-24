# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Kleisli.Variante45f12fc1f6d19bf4f3dbe9eafd1e8b1659d72fabac46bf2a73f7f48d929c43a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3a227c64ff999194d6d2b490cb26e3aaaf065989",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kleisli/Variante45f12fc1f6d19bf4f3dbe9eafd1e8b1659d72fabac46bf2a73f7f48d929c43a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kleisli/Variante45f12fc1f6d19bf4f3dbe9eafd1e8b1659d72fabac46bf2a73f7f48d929c43a.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kleisli/Variante45f12fc1f6d19bf4f3dbe9eafd1e8b1659d72fabac46bf2a73f7f48d929c43a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3a227c64ff999194d6d2b490cb26e3aaaf065989`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kleisli/Variante45f12fc1f6d19bf4f3dbe9eafd1e8b1659d72fabac46bf2a73f7f48d929c43a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Kleisli/Variante45f12fc1f6d19bf4f3dbe9eafd1e8b1659d72fabac46bf2a73f7f48d929c43a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monad.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Kleisli](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kleisli/Variante45f12fc1f6d19bf4f3dbe9eafd1e8b1659d72fabac46bf2a73f7f48d929c43a.lean/declarations/kleisli--e0e80a604f298d320a732332.md) | 40 | `declaration-track:e0e80a604f298d320a7323325acef9ff46a437faaeb8f1e95dc68eb85fa97b1e` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kleisli/Variante45f12fc1f6d19bf4f3dbe9eafd1e8b1659d72fabac46bf2a73f7f48d929c43a.lean/declarations/instance--59b4e8b10f298b7604229131.md) | 47 | `declaration-track:59b4e8b10f298b7604229131c71aa70aed4a015770e932708647130003e3d86f` |
| 3 | `instance` | [category](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kleisli/Variante45f12fc1f6d19bf4f3dbe9eafd1e8b1659d72fabac46bf2a73f7f48d929c43a.lean/declarations/category--37a3fdf1c52c6d618ff3d8a9.md) | 52 | `declaration-track:37a3fdf1c52c6d618ff3d8a96365f348f9feebfca71af3e566e6824bc923a0fa` |
| 4 | `def` | [toKleisli](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kleisli/Variante45f12fc1f6d19bf4f3dbe9eafd1e8b1659d72fabac46bf2a73f7f48d929c43a.lean/declarations/tokleisli--df3ba7908a90d7fcf2393a40.md) | 66 | `declaration-track:df3ba7908a90d7fcf2393a40ab3df3d78c05a336a0247208e9a4e326e9f1ad48` |
| 5 | `def` | [fromKleisli](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kleisli/Variante45f12fc1f6d19bf4f3dbe9eafd1e8b1659d72fabac46bf2a73f7f48d929c43a.lean/declarations/fromkleisli--6b9eba4e738928e0434225ed.md) | 76 | `declaration-track:6b9eba4e738928e0434225edc26f6364d040d0f0cf90eae8c02709f3aef27d1e` |
| 6 | `def` | [adj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kleisli/Variante45f12fc1f6d19bf4f3dbe9eafd1e8b1659d72fabac46bf2a73f7f48d929c43a.lean/declarations/adj--b7f95e55e1cba245f46e3a84.md) | 89 | `declaration-track:b7f95e55e1cba245f46e3a84c85a19d1bd59b002f0ff938e277f3e5634996b30` |
| 7 | `def` | [toKleisliCompFromKleisliIsoSelf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kleisli/Variante45f12fc1f6d19bf4f3dbe9eafd1e8b1659d72fabac46bf2a73f7f48d929c43a.lean/declarations/tokleislicompfromkleisliisoself--805d38c234f635606410fd91.md) | 100 | `declaration-track:805d38c234f635606410fd9131999b2153593c1f02a50e6526930a81e5456210` |
| 8 | `def` | [Cokleisli](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kleisli/Variante45f12fc1f6d19bf4f3dbe9eafd1e8b1659d72fabac46bf2a73f7f48d929c43a.lean/declarations/cokleisli--7d874627b243fc38353e923d.md) | 111 | `declaration-track:7d874627b243fc38353e923d7e34f86df280272c572900edd1a78ac4a384473b` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kleisli/Variante45f12fc1f6d19bf4f3dbe9eafd1e8b1659d72fabac46bf2a73f7f48d929c43a.lean/declarations/instance--165f57ceb6c1d2a8bdcb1b7a.md) | 118 | `declaration-track:165f57ceb6c1d2a8bdcb1b7a37a6fd61c6f4b81cd168d8ba5913152b3fb867cc` |
| 10 | `instance` | [category](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kleisli/Variante45f12fc1f6d19bf4f3dbe9eafd1e8b1659d72fabac46bf2a73f7f48d929c43a.lean/declarations/category--7a55ae068dcf199831978b02.md) | 122 | `declaration-track:7a55ae068dcf199831978b02dd24fcac2557b440bfddfe002dd838a0ddccb2e2` |
| 11 | `def` | [toCokleisli](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kleisli/Variante45f12fc1f6d19bf4f3dbe9eafd1e8b1659d72fabac46bf2a73f7f48d929c43a.lean/declarations/tocokleisli--0bc27a2050fa37bf4805defc.md) | 131 | `declaration-track:0bc27a2050fa37bf4805defc3f8604d66c47a0736d2bf2e2021fdc58132e9afc` |
| 12 | `def` | [fromCokleisli](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kleisli/Variante45f12fc1f6d19bf4f3dbe9eafd1e8b1659d72fabac46bf2a73f7f48d929c43a.lean/declarations/fromcokleisli--c7a7e5310bd10b18e02fa0a7.md) | 141 | `declaration-track:c7a7e5310bd10b18e02fa0a770ac3116484e18370916d2eacfcb1e5f8d0b0563` |
| 13 | `def` | [adj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kleisli/Variante45f12fc1f6d19bf4f3dbe9eafd1e8b1659d72fabac46bf2a73f7f48d929c43a.lean/declarations/adj--396bac4a8b959befa240c9a2.md) | 154 | `declaration-track:396bac4a8b959befa240c9a2757eb6638f9456248c22c5ceecabc854bccb1b1d` |
| 14 | `def` | [toCokleisliCompFromCokleisliIsoSelf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kleisli/Variante45f12fc1f6d19bf4f3dbe9eafd1e8b1659d72fabac46bf2a73f7f48d929c43a.lean/declarations/tocokleislicompfromcokleisliisoself--05f716dcf933b64009caf3a8.md) | 164 | `declaration-track:05f716dcf933b64009caf3a8f1efbf090af8be1f63d5ae42a495475889c62bf1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
