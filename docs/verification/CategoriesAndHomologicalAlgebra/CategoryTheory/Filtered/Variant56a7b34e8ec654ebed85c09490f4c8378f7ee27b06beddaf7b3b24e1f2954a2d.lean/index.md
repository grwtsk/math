# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Filtered.Variant56a7b34e8ec654ebed85c09490f4c8378f7ee27b06beddaf7b3b24e1f2954a2d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "114b884c97a75ee836aa4894a775b6fc1bb88826",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant56a7b34e8ec654ebed85c09490f4c8378f7ee27b06beddaf7b3b24e1f2954a2d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant56a7b34e8ec654ebed85c09490f4c8378f7ee27b06beddaf7b3b24e1f2954a2d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant56a7b34e8ec654ebed85c09490f4c8378f7ee27b06beddaf7b3b24e1f2954a2d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `114b884c97a75ee836aa4894a775b6fc1bb88826`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant56a7b34e8ec654ebed85c09490f4c8378f7ee27b06beddaf7b3b24e1f2954a2d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant56a7b34e8ec654ebed85c09490f4c8378f7ee27b06beddaf7b3b24e1f2954a2d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Preserves.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Filtered` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [PreservesFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant56a7b34e8ec654ebed85c09490f4c8378f7ee27b06beddaf7b3b24e1f2954a2d.lean/declarations/preservesfilteredcolimits--a0e2293281665e0ea012e377.md) | 50 | `declaration-track:a0e2293281665e0ea012e377f66865c2ad81ada01d827ea5f962f50af1289f03` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant56a7b34e8ec654ebed85c09490f4c8378f7ee27b06beddaf7b3b24e1f2954a2d.lean/declarations/instance--9250b9229ffe1346d5442921.md) | 57 | `declaration-track:9250b9229ffe1346d54429219940519aeabb26be25920114a77a2581a1b70223` |
| 3 | `instance` | [compPreservesFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant56a7b34e8ec654ebed85c09490f4c8378f7ee27b06beddaf7b3b24e1f2954a2d.lean/declarations/comppreservesfilteredcolimits--e97283dfa22d6617cd19f1f9.md) | 62 | `declaration-track:e97283dfa22d6617cd19f1f947fea1775b202cb2c7e59c0d961ca957f1fc596a` |
| 4 | `class` | [PreservesCofilteredLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant56a7b34e8ec654ebed85c09490f4c8378f7ee27b06beddaf7b3b24e1f2954a2d.lean/declarations/preservescofilteredlimits--cde861bcaaff29e250280a7c.md) | 70 | `declaration-track:cde861bcaaff29e250280a7cabc50910f311254df829c55a4c970c214278e4ad` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant56a7b34e8ec654ebed85c09490f4c8378f7ee27b06beddaf7b3b24e1f2954a2d.lean/declarations/instance--289fa1f59e0a83b7875e950f.md) | 77 | `declaration-track:289fa1f59e0a83b7875e950f52522075c5d774c5f0e7fb6f5353ea252da129db` |
| 6 | `instance` | [compPreservesCofilteredLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant56a7b34e8ec654ebed85c09490f4c8378f7ee27b06beddaf7b3b24e1f2954a2d.lean/declarations/comppreservescofilteredlimits--f567d3168735a71b09f4e1aa.md) | 82 | `declaration-track:f567d3168735a71b09f4e1aa829aa90bba714b0e552786213ef71dd899a2598b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
