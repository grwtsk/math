# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Const.Variantcf7a10a4e51c0dda7873822cd00c7a65ad2a9ca0ae1d1f7f03e0dc0dce5328c9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e6bb9a40b648211d5771b9fcd7a52fc6fef9660b",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variantcf7a10a4e51c0dda7873822cd00c7a65ad2a9ca0ae1d1f7f03e0dc0dce5328c9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variantcf7a10a4e51c0dda7873822cd00c7a65ad2a9ca0ae1d1f7f03e0dc0dce5328c9.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variantcf7a10a4e51c0dda7873822cd00c7a65ad2a9ca0ae1d1f7f03e0dc0dce5328c9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e6bb9a40b648211d5771b9fcd7a52fc6fef9660b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variantcf7a10a4e51c0dda7873822cd00c7a65ad2a9ca0ae1d1f7f03e0dc0dce5328c9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variantcf7a10a4e51c0dda7873822cd00c7a65ad2a9ca0ae1d1f7f03e0dc0dce5328c9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Control.Functor.Multivariate` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.QPF.Multivariate.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Const](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variantcf7a10a4e51c0dda7873822cd00c7a65ad2a9ca0ae1d1f7f03e0dc0dce5328c9.lean/declarations/const--15c4ca33fb64c310062b81d1.md) | 30 | `declaration-track:15c4ca33fb64c310062b81d14a9037863df77a50eb30f2c80f391b4f5231c09e` |
| 2 | `instance` | [Const.inhabited](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variantcf7a10a4e51c0dda7873822cd00c7a65ad2a9ca0ae1d1f7f03e0dc0dce5328c9.lean/declarations/const-inhabited--e5cff2f479d388bfc60a00b1.md) | 32 | `declaration-track:e5cff2f479d388bfc60a00b1dc961d752ef987d49911144b8c5af0a969b12903` |
| 3 | `def` | [mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variantcf7a10a4e51c0dda7873822cd00c7a65ad2a9ca0ae1d1f7f03e0dc0dce5328c9.lean/declarations/mk--7af0b294a9fc7043c47bc764.md) | 41 | `declaration-track:7af0b294a9fc7043c47bc764f169c5cfe76fa9903a3a48e6529f559e14bccd8d` |
| 4 | `def` | [get](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variantcf7a10a4e51c0dda7873822cd00c7a65ad2a9ca0ae1d1f7f03e0dc0dce5328c9.lean/declarations/get--d9f122078e9bc81d4335584a.md) | 44 | `declaration-track:d9f122078e9bc81d4335584a217a4769b3423eb46d3e32104385af6ca6d4d155` |
| 5 | `theorem` | [mk_get](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variantcf7a10a4e51c0dda7873822cd00c7a65ad2a9ca0ae1d1f7f03e0dc0dce5328c9.lean/declarations/mk-get--97dbdc5559f008ea88958cf1.md) | 47 | `result-track:97dbdc5559f008ea88958cf11056f86aa1989dacbbbcb6c650d3d8dd52752784` |
| 6 | `theorem` | [get_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variantcf7a10a4e51c0dda7873822cd00c7a65ad2a9ca0ae1d1f7f03e0dc0dce5328c9.lean/declarations/get-mk--8f5914107e494b7ed1fb8324.md) | 50 | `result-track:8f5914107e494b7ed1fb83246a58321078fc6825e425b0e2c8ae28b670fe1b52` |
| 7 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variantcf7a10a4e51c0dda7873822cd00c7a65ad2a9ca0ae1d1f7f03e0dc0dce5328c9.lean/declarations/map--03ad59f8302c1b5f8655e832.md) | 53 | `declaration-track:03ad59f8302c1b5f8655e8320a0b10147205270c2620c93c0b985fe14d6b342d` |
| 8 | `instance` | [MvFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variantcf7a10a4e51c0dda7873822cd00c7a65ad2a9ca0ae1d1f7f03e0dc0dce5328c9.lean/declarations/mvfunctor--a3b62ef46f4f1f512941af3f.md) | 55 | `declaration-track:a3b62ef46f4f1f512941af3f7ed3d9747bc630ada7308f11fbbd10c71602f45f` |
| 9 | `theorem` | [map_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variantcf7a10a4e51c0dda7873822cd00c7a65ad2a9ca0ae1d1f7f03e0dc0dce5328c9.lean/declarations/map-mk--b0c5ba9047e423f4077f0bf7.md) | 57 | `result-track:b0c5ba9047e423f4077f0bf7217d84eb44962826ef82eb17d1eaa8b3801d6835` |
| 10 | `theorem` | [get_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variantcf7a10a4e51c0dda7873822cd00c7a65ad2a9ca0ae1d1f7f03e0dc0dce5328c9.lean/declarations/get-map--a69c513f3673321cc95f8d94.md) | 59 | `result-track:a69c513f3673321cc95f8d94b7764244093b254c2e0baab4aef4b862649c4357` |
| 11 | `instance` | [mvqpf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variantcf7a10a4e51c0dda7873822cd00c7a65ad2a9ca0ae1d1f7f03e0dc0dce5328c9.lean/declarations/mvqpf--f31f39648e222ebc87d3620c.md) | 61 | `declaration-track:f31f39648e222ebc87d3620c8fdd0ca1fffc4c0bbf51ff07d0ff2a0b74093c1f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
