# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ColimitLimit.Varianta4b29f7b0b22cd8ba5e8d44e5296012248d5c88c1f0ea818327d8e1fd9671fad

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e5f1cf63d77b6612da1c1afaa3c832ecf4dbc1ec",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitLimit/Varianta4b29f7b0b22cd8ba5e8d44e5296012248d5c88c1f0ea818327d8e1fd9671fad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitLimit/Varianta4b29f7b0b22cd8ba5e8d44e5296012248d5c88c1f0ea818327d8e1fd9671fad.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitLimit/Varianta4b29f7b0b22cd8ba5e8d44e5296012248d5c88c1f0ea818327d8e1fd9671fad.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e5f1cf63d77b6612da1c1afaa3c832ecf4dbc1ec`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitLimit/Varianta4b29f7b0b22cd8ba5e8d44e5296012248d5c88c1f0ea818327d8e1fd9671fad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitLimit/Varianta4b29f7b0b22cd8ba5e8d44e5296012248d5c88c1f0ea818327d8e1fd9671fad.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Types` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.Currying` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.FunctorCategory` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [map_id_left_eq_curry_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitLimit/Varianta4b29f7b0b22cd8ba5e8d44e5296012248d5c88c1f0ea818327d8e1fd9671fad.lean/declarations/map-id-left-eq-curry-map--b228d1d0b4b7aba7e5a8cddb.md) | 42 | `result-track:b228d1d0b4b7aba7e5a8cddbbf9efe0ce237300f67ece37f3d21fcd61c9d6d86` |
| 2 | `theorem` | [map_id_right_eq_curry_swap_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitLimit/Varianta4b29f7b0b22cd8ba5e8d44e5296012248d5c88c1f0ea818327d8e1fd9671fad.lean/declarations/map-id-right-eq-curry-swap-map--74ce521b34c1d9462645a5ac.md) | 47 | `result-track:74ce521b34c1d9462645a5aca4cd31777276e574290c9080d16a15707f274245` |
| 3 | `def` | [colimitLimitToLimitColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitLimit/Varianta4b29f7b0b22cd8ba5e8d44e5296012248d5c88c1f0ea818327d8e1fd9671fad.lean/declarations/colimitlimittolimitcolimit--e68e11b8e176095b24e5b5cb.md) | 59 | `declaration-track:e68e11b8e176095b24e5b5cb94ea6fa059cb97ed3ab036b323f3e6a839a27475` |
| 4 | `theorem` | [ι_colimitLimitToLimitColimit_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitLimit/Varianta4b29f7b0b22cd8ba5e8d44e5296012248d5c88c1f0ea818327d8e1fd9671fad.lean/declarations/colimitlimittolimitcolimit--c8370f113e0e8d5172d75e93.md) | 92 | `result-track:c8370f113e0e8d5172d75e930e89a5960df4a69652ae53b47ea4aca384de12e8` |
| 5 | `theorem` | [ι_colimitLimitToLimitColimit_π_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitLimit/Varianta4b29f7b0b22cd8ba5e8d44e5296012248d5c88c1f0ea818327d8e1fd9671fad.lean/declarations/colimitlimittolimitcolimit-apply--3c52c1ec1bd621bffb9c6eb1.md) | 100 | `result-track:3c52c1ec1bd621bffb9c6eb1728c5c2a7700e30d13a0d7dbd8ccefa960ed4d33` |
| 6 | `def` | [colimitLimitToLimitColimitCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitLimit/Varianta4b29f7b0b22cd8ba5e8d44e5296012248d5c88c1f0ea818327d8e1fd9671fad.lean/declarations/colimitlimittolimitcolimitcone--05300713b0650e0a3d64a02b.md) | 110 | `declaration-track:05300713b0650e0a3d64a02bdb0d418f8b5dd7a8ad8f44446b8400d6a3bea139` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
