# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.RegularEpi.Variantde7e07f540f0d49201ca679b94e8c766e9792cab32ea0718774fd500aa16da46

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9272c878d3ca1151f5678003ddee91377bd632c8",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularEpi/Variantde7e07f540f0d49201ca679b94e8c766e9792cab32ea0718774fd500aa16da46.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularEpi/Variantde7e07f540f0d49201ca679b94e8c766e9792cab32ea0718774fd500aa16da46.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularEpi/Variantde7e07f540f0d49201ca679b94e8c766e9792cab32ea0718774fd500aa16da46.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9272c878d3ca1151f5678003ddee91377bd632c8`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularEpi/Variantde7e07f540f0d49201ca679b94e8c766e9792cab32ea0718774fd500aa16da46.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularEpi/Variantde7e07f540f0d49201ca679b94e8c766e9792cab32ea0718774fd500aa16da46.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.RegularMono` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.EffectiveEpi.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [effectiveEpiStructOfRegularEpi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularEpi/Variantde7e07f540f0d49201ca679b94e8c766e9792cab32ea0718774fd500aa16da46.lean/declarations/effectiveepistructofregularepi--7a9fac8a525c00e87f485ec3.md) | 23 | `declaration-track:7a9fac8a525c00e87f485ec39f2c11ee5628207a76118766a2dd007b59c5c471` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularEpi/Variantde7e07f540f0d49201ca679b94e8c766e9792cab32ea0718774fd500aa16da46.lean/declarations/instance--a15f2d61e6615b140cc9b4e1.md) | 30 | `declaration-track:a15f2d61e6615b140cc9b4e1c706146fd0c8bc46d015eb96cb4b7df527447697` |
| 3 | `theorem` | [effectiveEpiOfKernelPair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularEpi/Variantde7e07f540f0d49201ca679b94e8c766e9792cab32ea0718774fd500aa16da46.lean/declarations/effectiveepiofkernelpair--1261a3f3e4e9555be3c84555.md) | 34 | `result-track:1261a3f3e4e9555be3c84555d33c3a3c68b0d9a121fb957e9b3f663394e8b342` |
| 4 | `instance` | [regularEpiOfEffectiveEpi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularEpi/Variantde7e07f540f0d49201ca679b94e8c766e9792cab32ea0718774fd500aa16da46.lean/declarations/regularepiofeffectiveepi--9aa2401c58bb64cb9bfbedac.md) | 40 | `declaration-track:9aa2401c58bb64cb9bfbedac3a6c8836eae1e875cb123bf22134ed7b2b85284d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
