# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsSmall.Variant422db14634d8e32ab11a1ec62914de21a6a17ea846a8358a699a43aa593a9936

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0b361867a8f9407ea58add0a447be5fb2c0cd322",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSmall/Variant422db14634d8e32ab11a1ec62914de21a6a17ea846a8358a699a43aa593a9936.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSmall/Variant422db14634d8e32ab11a1ec62914de21a6a17ea846a8358a699a43aa593a9936.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSmall/Variant422db14634d8e32ab11a1ec62914de21a6a17ea846a8358a699a43aa593a9936.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0b361867a8f9407ea58add0a447be5fb2c0cd322`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSmall/Variant422db14634d8e32ab11a1ec62914de21a6a17ea846a8358a699a43aa593a9936.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSmall/Variant422db14634d8e32ab11a1ec62914de21a6a17ea846a8358a699a43aa593a9936.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.MorphismProperty.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Small.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsSmall](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSmall/Variant422db14634d8e32ab11a1ec62914de21a6a17ea846a8358a699a43aa593a9936.lean/declarations/issmall--1c179944a6de3642cb6ef780.md) | 30 | `declaration-track:1c179944a6de3642cb6ef7803f3c91f15e95d222b2d9adef4ecad322b7438d70` |
| 2 | `instance` | [isSmall_ofHoms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSmall/Variant422db14634d8e32ab11a1ec62914de21a6a17ea846a8358a699a43aa593a9936.lean/declarations/issmall-ofhoms--1de579b45bf0843cbb91e070.md) | 35 | `declaration-track:1de579b45bf0843cbb91e070542b804bf3d71e02bfbf30cf7d5c00df2a6d5f26` |
| 3 | `lemma` | [isSmall_iff_eq_ofHoms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSmall/Variant422db14634d8e32ab11a1ec62914de21a6a17ea846a8358a699a43aa593a9936.lean/declarations/issmall-iff-eq-ofhoms--4ad8a6c19c170abcd81e0ec2.md) | 43 | `result-track:4ad8a6c19c170abcd81e0ec23da776c37aedc7649a32da9909e9f7d8959c9307` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
