# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorToTypes.Variant7aa8f195c0cb4b3e03586c4af092e6b90f9a1c81f57dd3cf59ab69a483907341

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ae35de4ed02125687eb44b7bd6213c9a52c88e94",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variant7aa8f195c0cb4b3e03586c4af092e6b90f9a1c81f57dd3cf59ab69a483907341.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variant7aa8f195c0cb4b3e03586c4af092e6b90f9a1c81f57dd3cf59ab69a483907341.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variant7aa8f195c0cb4b3e03586c4af092e6b90f9a1c81f57dd3cf59ab69a483907341.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ae35de4ed02125687eb44b7bd6213c9a52c88e94`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variant7aa8f195c0cb4b3e03586c4af092e6b90f9a1c81f57dd3cf59ab69a483907341.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variant7aa8f195c0cb4b3e03586c4af092e6b90f9a1c81f57dd3cf59ab69a483907341.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Functor.FunctorHom` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Closed.Monoidal` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [functorHomEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variant7aa8f195c0cb4b3e03586c4af092e6b90f9a1c81f57dd3cf59ab69a483907341.lean/declarations/functorhomequiv--4af5d5ed71994bf5aba352c0.md) | 41 | `declaration-track:4af5d5ed71994bf5aba352c040dafd99312b16c13e7bf6ccd13105b78d2b6080` |
| 2 | `def` | [rightAdj_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variant7aa8f195c0cb4b3e03586c4af092e6b90f9a1c81f57dd3cf59ab69a483907341.lean/declarations/rightadj-map--74965405709d3dbcb646344d.md) | 47 | `declaration-track:74965405709d3dbcb646344d48cf4f7f620fcde64d1141f2c8465da90ea41043` |
| 3 | `def` | [rightAdj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variant7aa8f195c0cb4b3e03586c4af092e6b90f9a1c81f57dd3cf59ab69a483907341.lean/declarations/rightadj--87fa0861b4775f21158beb3f.md) | 57 | `declaration-track:87fa0861b4775f21158beb3ffd7643860580f5a4d533b6eac4ec7a3a2fca893e` |
| 4 | `def` | [adj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variant7aa8f195c0cb4b3e03586c4af092e6b90f9a1c81f57dd3cf59ab69a483907341.lean/declarations/adj--c014d4deabe87b05d4dc1f00.md) | 62 | `declaration-track:c014d4deabe87b05d4dc1f0043cafaa87e6348ae61229bb4a5c38398f91e036d` |
| 5 | `instance` | [closed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variant7aa8f195c0cb4b3e03586c4af092e6b90f9a1c81f57dd3cf59ab69a483907341.lean/declarations/closed--98b587f597a4add2579966e4.md) | 71 | `declaration-track:98b587f597a4add2579966e4d3e4b416e330531776409c4bae4c75f2103a7912` |
| 6 | `instance` | [monoidalClosed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variant7aa8f195c0cb4b3e03586c4af092e6b90f9a1c81f57dd3cf59ab69a483907341.lean/declarations/monoidalclosed--0bb81c34ac0a13a47d0076c2.md) | 75 | `declaration-track:0bb81c34ac0a13a47d0076c25db1aee21f635b782d0b2bde186bbf8615885322` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
