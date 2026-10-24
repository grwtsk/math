# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Filtered.Variantc9d9f5ddc0ee4fe9da71254a9df25b387acb6fa60a813af3b5e5304129719431

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3614260515e38f83f3f0ba21b07b6996cefbe64b",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantc9d9f5ddc0ee4fe9da71254a9df25b387acb6fa60a813af3b5e5304129719431.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantc9d9f5ddc0ee4fe9da71254a9df25b387acb6fa60a813af3b5e5304129719431.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantc9d9f5ddc0ee4fe9da71254a9df25b387acb6fa60a813af3b5e5304129719431.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3614260515e38f83f3f0ba21b07b6996cefbe64b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantc9d9f5ddc0ee4fe9da71254a9df25b387acb6fa60a813af3b5e5304129719431.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantc9d9f5ddc0ee4fe9da71254a9df25b387acb6fa60a813af3b5e5304129719431.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Preserves.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Filtered` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [PreservesFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantc9d9f5ddc0ee4fe9da71254a9df25b387acb6fa60a813af3b5e5304129719431.lean/declarations/preservesfilteredcolimits--2ab7dc1b923504dac0fd23d7.md) | 42 | `declaration-track:2ab7dc1b923504dac0fd23d78431899e9e560b467d5af8b73fab1c9f29cbe2ec` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantc9d9f5ddc0ee4fe9da71254a9df25b387acb6fa60a813af3b5e5304129719431.lean/declarations/instance--ffdd5a60c11bed8cbcd0abd4.md) | 49 | `declaration-track:ffdd5a60c11bed8cbcd0abd445d012daa33f561f534f548e8331879f1ef49026` |
| 3 | `instance` | [compPreservesFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantc9d9f5ddc0ee4fe9da71254a9df25b387acb6fa60a813af3b5e5304129719431.lean/declarations/comppreservesfilteredcolimits--631e5f6e02d1a6ffdd9f2a78.md) | 54 | `declaration-track:631e5f6e02d1a6ffdd9f2a785673ef99973c4a194ec8b3fc5d620bf0378b4a81` |
| 4 | `class` | [PreservesCofilteredLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantc9d9f5ddc0ee4fe9da71254a9df25b387acb6fa60a813af3b5e5304129719431.lean/declarations/preservescofilteredlimits--8275e90d003885675bf946f5.md) | 62 | `declaration-track:8275e90d003885675bf946f5a761a0af165a62bdc25ffb1c0ed15da58f55b49f` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantc9d9f5ddc0ee4fe9da71254a9df25b387acb6fa60a813af3b5e5304129719431.lean/declarations/instance--6998070567951a72356d4c76.md) | 69 | `declaration-track:6998070567951a72356d4c76132991164958098f5eb945bd23420415af6bcce9` |
| 6 | `instance` | [compPreservesCofilteredLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantc9d9f5ddc0ee4fe9da71254a9df25b387acb6fa60a813af3b5e5304129719431.lean/declarations/comppreservescofilteredlimits--b040b60fe75ee2146b48e58b.md) | 74 | `declaration-track:b040b60fe75ee2146b48e58b6d4527b3ff9afa3c3052c27522f6ff1a83dea9eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
