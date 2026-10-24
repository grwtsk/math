# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LocallySmall.Variantbfdf6cccb9934e720813f717e3cb9c5df8b6cff744c354c90458340b5a137b71

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aa40bde3866e7d6013afb530afbf094a5bafcdc2",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySmall/Variantbfdf6cccb9934e720813f717e3cb9c5df8b6cff744c354c90458340b5a137b71.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySmall/Variantbfdf6cccb9934e720813f717e3cb9c5df8b6cff744c354c90458340b5a137b71.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySmall/Variantbfdf6cccb9934e720813f717e3cb9c5df8b6cff744c354c90458340b5a137b71.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aa40bde3866e7d6013afb530afbf094a5bafcdc2`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySmall/Variantbfdf6cccb9934e720813f717e3cb9c5df8b6cff744c354c90458340b5a137b71.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySmall/Variantbfdf6cccb9934e720813f717e3cb9c5df8b6cff744c354c90458340b5a137b71.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Preserves.Ulift` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.IndYoneda` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Indization.IndObject` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [colimitYonedaHomEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySmall/Variantbfdf6cccb9934e720813f717e3cb9c5df8b6cff744c354c90458340b5a137b71.lean/declarations/colimityonedahomequiv--ea75b50631733d67bee69491.md) | 48 | `declaration-track:ea75b50631733d67bee6949124cc5cfdaca655c796e6a47c5c5a0c827e3d705f` |
| 2 | `theorem` | [colimitYonedaHomEquiv_π_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySmall/Variantbfdf6cccb9934e720813f717e3cb9c5df8b6cff744c354c90458340b5a137b71.lean/declarations/colimityonedahomequiv-apply--c2778122a6beaff2022cfbdf.md) | 58 | `result-track:c2778122a6beaff2022cfbdf51ff71fe8cf9d9d12c03c19d6f0ac75549f276e7` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySmall/Variantbfdf6cccb9934e720813f717e3cb9c5df8b6cff744c354c90458340b5a137b71.lean/declarations/instance--59a6556576d5a19f80713f32.md) | 71 | `declaration-track:59a6556576d5a19f80713f3214c65445ac526299785c8bd017201e41bfc73a5e` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySmall/Variantbfdf6cccb9934e720813f717e3cb9c5df8b6cff744c354c90458340b5a137b71.lean/declarations/instance--cb63b34ca1c595814162a96a.md) | 76 | `declaration-track:cb63b34ca1c595814162a96a5cfc0b792e6afcbd069f67c5bb6e98fa683b138e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
