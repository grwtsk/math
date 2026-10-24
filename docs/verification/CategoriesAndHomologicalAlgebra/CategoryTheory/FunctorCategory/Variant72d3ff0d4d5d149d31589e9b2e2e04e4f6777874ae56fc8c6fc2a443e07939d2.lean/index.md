# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorCategory.Variant72d3ff0d4d5d149d31589e9b2e2e04e4f6777874ae56fc8c6fc2a443e07939d2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6a805d6d384a286e96e03777dbcd5654c23df63e",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant72d3ff0d4d5d149d31589e9b2e2e04e4f6777874ae56fc8c6fc2a443e07939d2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant72d3ff0d4d5d149d31589e9b2e2e04e4f6777874ae56fc8c6fc2a443e07939d2.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant72d3ff0d4d5d149d31589e9b2e2e04e4f6777874ae56fc8c6fc2a443e07939d2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6a805d6d384a286e96e03777dbcd5654c23df63e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant72d3ff0d4d5d149d31589e9b2e2e04e4f6777874ae56fc8c6fc2a443e07939d2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant72d3ff0d4d5d149d31589e9b2e2e04e4f6777874ae56fc8c6fc2a443e07939d2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Preadditive.FunctorCategory` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Linear.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [functorCategoryLinear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant72d3ff0d4d5d149d31589e9b2e2e04e4f6777874ae56fc8c6fc2a443e07939d2.lean/declarations/functorcategorylinear--33fffebb480acd9c6df30089.md) | 32 | `declaration-track:33fffebb480acd9c6df30089ea4424e97944252f0b5c9f40454bf21c5c66ec19` |
| 2 | `def` | [appLinearMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant72d3ff0d4d5d149d31589e9b2e2e04e4f6777874ae56fc8c6fc2a443e07939d2.lean/declarations/applinearmap--9a942484c994a934d867e609.md) | 79 | `declaration-track:9a942484c994a934d867e6092586473ab64f1cf991a971c1f126ae96f93219ed` |
| 3 | `theorem` | [app_smul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant72d3ff0d4d5d149d31589e9b2e2e04e4f6777874ae56fc8c6fc2a443e07939d2.lean/declarations/app-smul--f53fb09bcfaf9f5610569849.md) | 85 | `result-track:f53fb09bcfaf9f5610569849e46c43c27730827fce3fe3671603a7546304c5bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
