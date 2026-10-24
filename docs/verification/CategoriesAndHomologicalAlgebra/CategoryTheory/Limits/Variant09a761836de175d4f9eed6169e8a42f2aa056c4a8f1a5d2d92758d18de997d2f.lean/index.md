# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Limits.Variant09a761836de175d4f9eed6169e8a42f2aa056c4a8f1a5d2d92758d18de997d2f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1aac3fbfaf3c94f5ea4bab807619fdc7d78ad9b9",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant09a761836de175d4f9eed6169e8a42f2aa056c4a8f1a5d2d92758d18de997d2f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant09a761836de175d4f9eed6169e8a42f2aa056c4a8f1a5d2d92758d18de997d2f.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant09a761836de175d4f9eed6169e8a42f2aa056c4a8f1a5d2d92758d18de997d2f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1aac3fbfaf3c94f5ea4bab807619fdc7d78ad9b9`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant09a761836de175d4f9eed6169e8a42f2aa056c4a8f1a5d2d92758d18de997d2f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant09a761836de175d4f9eed6169e8a42f2aa056c4a8f1a5d2d92758d18de997d2f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Functorial` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.FunctorCategory` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.HasLimits` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [limitFunctorial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant09a761836de175d4f9eed6169e8a42f2aa056c4a8f1a5d2d92758d18de997d2f.lean/declarations/limitfunctorial--2fc5573ec5595d75e7c4b526.md) | 37 | `declaration-track:2fc5573ec5595d75e7c4b526cebd3cb4798994f0c07655906ce84f7d929e50a9` |
| 2 | `theorem` | [limitFunctorial_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant09a761836de175d4f9eed6169e8a42f2aa056c4a8f1a5d2d92758d18de997d2f.lean/declarations/limitfunctorial-map--6fb59521658e10cf6f53b336.md) | 42 | `result-track:6fb59521658e10cf6f53b3364d187cc129c64f78e33c646ddeae647b9e8574fe` |
| 3 | `instance` | [limitLaxMonoidal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant09a761836de175d4f9eed6169e8a42f2aa056c4a8f1a5d2d92758d18de997d2f.lean/declarations/limitlaxmonoidal--a5cbdd366edfc4046a992988.md) | 50 | `declaration-track:a5cbdd366edfc4046a992988aa3d3264d8ac9f7f7aa729ac1a306296c081727e` |
| 4 | `def` | [limLax](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant09a761836de175d4f9eed6169e8a42f2aa056c4a8f1a5d2d92758d18de997d2f.lean/declarations/limlax--1f34c82b871ade39c6234187.md) | 105 | `declaration-track:1f34c82b871ade39c6234187ce453df2e735c9e97edbc73f763677a73afabca4` |
| 5 | `theorem` | [limLax_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant09a761836de175d4f9eed6169e8a42f2aa056c4a8f1a5d2d92758d18de997d2f.lean/declarations/limlax-obj--dae9f1e4322d3b46d412979d.md) | 110 | `result-track:dae9f1e4322d3b46d412979d78747e42e617dbd080c891ba93c6de291728550a` |
| 6 | `theorem` | [limLax_obj'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant09a761836de175d4f9eed6169e8a42f2aa056c4a8f1a5d2d92758d18de997d2f.lean/declarations/limlax-obj--4a84e9afe21d8d3a2c2d2b7e.md) | 114 | `result-track:4a84e9afe21d8d3a2c2d2b7e37e5055202552dbe1ca7c6f8f2f069d1bdf33616` |
| 7 | `theorem` | [limLax_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant09a761836de175d4f9eed6169e8a42f2aa056c4a8f1a5d2d92758d18de997d2f.lean/declarations/limlax-map--7d2ad678cf9476cc11f3b60f.md) | 119 | `result-track:7d2ad678cf9476cc11f3b60f64bb47a012355e8f7fdfe20ea5a5de8b6edbd199` |
| 8 | `theorem` | [limLax_ε](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant09a761836de175d4f9eed6169e8a42f2aa056c4a8f1a5d2d92758d18de997d2f.lean/declarations/limlax--ac2aa44932466d49a8c465e3.md) | 124 | `result-track:ac2aa44932466d49a8c465e3aa092b1d70177dbf5e3ea689e1a36b7bdb373e55` |
| 9 | `theorem` | [limLax_μ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant09a761836de175d4f9eed6169e8a42f2aa056c4a8f1a5d2d92758d18de997d2f.lean/declarations/limlax--084e377d1ea918ad3db425a4.md) | 133 | `result-track:084e377d1ea918ad3db425a417c2a2e633cf087b4471c476b69991628a293454` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
