# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LiftingProperties.Variant39700195d05938532484001bd4bf6b3011b2d194e2c54b6dfe8caada8b144a93

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "746d825685a9a6b92ee0bbc633fa455f229b7a33",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperties/Variant39700195d05938532484001bd4bf6b3011b2d194e2c54b6dfe8caada8b144a93.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperties/Variant39700195d05938532484001bd4bf6b3011b2d194e2c54b6dfe8caada8b144a93.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperties/Variant39700195d05938532484001bd4bf6b3011b2d194e2c54b6dfe8caada8b144a93.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `746d825685a9a6b92ee0bbc633fa455f229b7a33`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperties/Variant39700195d05938532484001bd4bf6b3011b2d194e2c54b6dfe8caada8b144a93.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperties/Variant39700195d05938532484001bd4bf6b3011b2d194e2c54b6dfe8caada8b144a93.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Preadditive.Projective.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.LiftingProperty` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [hasLiftingProperty_of_isZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperties/Variant39700195d05938532484001bd4bf6b3011b2d194e2c54b6dfe8caada8b144a93.lean/declarations/hasliftingproperty-of-iszero--43d6a12e7e2db85ca3989c98.md) | 28 | `result-track:43d6a12e7e2db85ca3989c983c57fb930a6fcf0821179529156bc116a4aba698` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperties/Variant39700195d05938532484001bd4bf6b3011b2d194e2c54b6dfe8caada8b144a93.lean/declarations/instance--5e28910201fe8b5ca72ed810.md) | 35 | `declaration-track:5e28910201fe8b5ca72ed8106a0ea11395eedab1bdda77e152f4c841ddfc3653` |
| 3 | `lemma` | [projective_iff_llp_epimorphisms_of_isZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperties/Variant39700195d05938532484001bd4bf6b3011b2d194e2c54b6dfe8caada8b144a93.lean/declarations/projective-iff-llp-epimorphisms-of-iszero--4c89b53ac3f9990bdb9583ef.md) | 41 | `result-track:4c89b53ac3f9990bdb9583efd28f9f3f6b5def5f4eae9ace34c70533f8a0e4fc` |
| 4 | `lemma` | [projective_iff_llp_epimorphisms_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperties/Variant39700195d05938532484001bd4bf6b3011b2d194e2c54b6dfe8caada8b144a93.lean/declarations/projective-iff-llp-epimorphisms-zero--602551beb291a08f7c5f58df.md) | 55 | `result-track:602551beb291a08f7c5f58dffc3d8e60daca09e06241da77db3f588d44db2422` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
