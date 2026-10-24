# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PresentationCategory.Variantb4422f919b551b2dc4a9ba299d3493cad85e0af2ff73a1ecbf661b6e5cbba9eb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "26dbd3c1c0b6078b59e18c830ac8d2c60d2d4fdb",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PresentationCategory/Variantb4422f919b551b2dc4a9ba299d3493cad85e0af2ff73a1ecbf661b6e5cbba9eb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresentationCategory/Variantb4422f919b551b2dc4a9ba299d3493cad85e0af2ff73a1ecbf661b6e5cbba9eb.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresentationCategory/Variantb4422f919b551b2dc4a9ba299d3493cad85e0af2ff73a1ecbf661b6e5cbba9eb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `26dbd3c1c0b6078b59e18c830ac8d2c60d2d4fdb`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PresentationCategory/Variantb4422f919b551b2dc4a9ba299d3493cad85e0af2ff73a1ecbf661b6e5cbba9eb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/PresentationCategory/Variantb4422f919b551b2dc4a9ba299d3493cad85e0af2ff73a1ecbf661b6e5cbba9eb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Fabric.Presentation` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Category.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.EqToHom` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [PresentationCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresentationCategory/Variantb4422f919b551b2dc4a9ba299d3493cad85e0af2ff73a1ecbf661b6e5cbba9eb.lean/declarations/presentationcat--9d00d36ce0f57dcaafc00848.md) | 16 | `declaration-track:9d00d36ce0f57dcaafc0084824d64caff0851de6757c6db794b39bc85e415a9b` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresentationCategory/Variantb4422f919b551b2dc4a9ba299d3493cad85e0af2ff73a1ecbf661b6e5cbba9eb.lean/declarations/instance--19ad2138e091bb89154a9c0e.md) | 18 | `declaration-track:19ad2138e091bb89154a9c0eebc5e77e41e3a39d81e22877c901e16e26285dfd` |
| 3 | `def` | [castTarget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresentationCategory/Variantb4422f919b551b2dc4a9ba299d3493cad85e0af2ff73a1ecbf661b6e5cbba9eb.lean/declarations/casttarget--9b897ad52a2f684f14dd5690.md) | 33 | `declaration-track:9b897ad52a2f684f14dd5690b9cd88ba5ff3424c0a161cc9fc7b6fb12c80de9f` |
| 4 | `def` | [castSource](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresentationCategory/Variantb4422f919b551b2dc4a9ba299d3493cad85e0af2ff73a1ecbf661b6e5cbba9eb.lean/declarations/castsource--316507ac01ad2b770cf74618.md) | 38 | `declaration-track:316507ac01ad2b770cf74618ad8f0e7f5a809fff41edb9873e552f3d6ba45afb` |
| 5 | `theorem` | [castTarget_rfl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresentationCategory/Variantb4422f919b551b2dc4a9ba299d3493cad85e0af2ff73a1ecbf661b6e5cbba9eb.lean/declarations/casttarget-rfl--acab3a483f6a918aec6ff26c.md) | 43 | `result-track:acab3a483f6a918aec6ff26c1d866e2d9cf52cf4a3b984f7a4f6a69b4295cc82` |
| 6 | `theorem` | [castSource_rfl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresentationCategory/Variantb4422f919b551b2dc4a9ba299d3493cad85e0af2ff73a1ecbf661b6e5cbba9eb.lean/declarations/castsource-rfl--5a4ab2a95bf8a4e6d720ff21.md) | 48 | `result-track:5a4ab2a95bf8a4e6d720ff218dd0b11865c4fce9a2e5120de3926239cbd02ead` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
