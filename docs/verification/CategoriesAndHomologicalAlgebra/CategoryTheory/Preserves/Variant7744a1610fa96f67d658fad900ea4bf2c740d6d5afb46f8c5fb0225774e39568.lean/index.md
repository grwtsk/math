# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Preserves.Variant7744a1610fa96f67d658fad900ea4bf2c740d6d5afb46f8c5fb0225774e39568

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b0d3eebe558c6163493fb6ea9c7fc748cb49b512",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant7744a1610fa96f67d658fad900ea4bf2c740d6d5afb46f8c5fb0225774e39568.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant7744a1610fa96f67d658fad900ea4bf2c740d6d5afb46f8c5fb0225774e39568.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant7744a1610fa96f67d658fad900ea4bf2c740d6d5afb46f8c5fb0225774e39568.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b0d3eebe558c6163493fb6ea9c7fc748cb49b512`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant7744a1610fa96f67d658fad900ea4bf2c740d6d5afb46f8c5fb0225774e39568.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant7744a1610fa96f67d658fad900ea4bf2c740d6d5afb46f8c5fb0225774e39568.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Preadditive.Projective.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Functor.PreservesProjectiveObjects](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant7744a1610fa96f67d658fad900ea4bf2c740d6d5afb46f8c5fb0225774e39568.lean/declarations/functor-preservesprojectiveobjects--22eebe90fe1dca6caaef6c2a.md) | 26 | `declaration-track:22eebe90fe1dca6caaef6c2a45034911789dc284a8c9b7d11f5c2ab649effa63` |
| 2 | `instance` | [Functor.projective_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant7744a1610fa96f67d658fad900ea4bf2c740d6d5afb46f8c5fb0225774e39568.lean/declarations/functor-projective-obj--ee63d58d0a8befae84b409c3.md) | 31 | `declaration-track:ee63d58d0a8befae84b409c36e0d5497b7971743e392cc089dbf6ae3487dfb7c` |
| 3 | `theorem` | [Functor.projective_obj_of_projective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant7744a1610fa96f67d658fad900ea4bf2c740d6d5afb46f8c5fb0225774e39568.lean/declarations/functor-projective-obj-of-projective--4c4d6848e07939c86826028f.md) | 36 | `result-track:4c4d6848e07939c86826028f3cb9058e8f160f363897a9876d6ab59b959c8bf8` |
| 4 | `instance` | [Functor.preservesProjectiveObjects_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant7744a1610fa96f67d658fad900ea4bf2c740d6d5afb46f8c5fb0225774e39568.lean/declarations/functor-preservesprojectiveobjects-comp--10eed20ef97713f55fd81486.md) | 40 | `declaration-track:10eed20ef97713f55fd81486ccd0ce1500f2a159e8d4e716695f2ac68c808f0f` |
| 5 | `theorem` | [Functor.preservesProjectiveObjects_of_adjunction_of_preservesEpimorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant7744a1610fa96f67d658fad900ea4bf2c740d6d5afb46f8c5fb0225774e39568.lean/declarations/functor-preservesprojectiveobjects-of-adjunction-of-preservesepimorphism--3fb15ce567bb7fde430fc86b.md) | 45 | `result-track:3fb15ce567bb7fde430fc86baa6af40117526eed82c328ab9f153a8cd32a4743` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant7744a1610fa96f67d658fad900ea4bf2c740d6d5afb46f8c5fb0225774e39568.lean/declarations/instance--dfebf87dd5762d77a2a4812d.md) | 50 | `declaration-track:dfebf87dd5762d77a2a4812d31d055764753f3d651ea545b3dfd3ab841de5a7d` |
| 7 | `theorem` | [Functor.preservesEpimorphisms_of_adjunction_of_preservesProjectiveObjects](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant7744a1610fa96f67d658fad900ea4bf2c740d6d5afb46f8c5fb0225774e39568.lean/declarations/functor-preservesepimorphisms-of-adjunction-of-preservesprojectiveobject--f92e46022df790d1a4ea9d07.md) | 54 | `result-track:f92e46022df790d1a4ea9d07a912a7181a28a1a9aa9fc2fb22a008a3e9bdc18f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
