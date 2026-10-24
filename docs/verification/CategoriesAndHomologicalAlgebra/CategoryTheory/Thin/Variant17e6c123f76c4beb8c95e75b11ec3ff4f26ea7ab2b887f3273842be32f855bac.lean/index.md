# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Thin.Variant17e6c123f76c4beb8c95e75b11ec3ff4f26ea7ab2b887f3273842be32f855bac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a2c9cb1099b9cf28473a19d34f3dd19856d2649a",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Thin/Variant17e6c123f76c4beb8c95e75b11ec3ff4f26ea7ab2b887f3273842be32f855bac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Thin/Variant17e6c123f76c4beb8c95e75b11ec3ff4f26ea7ab2b887f3273842be32f855bac.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Thin/Variant17e6c123f76c4beb8c95e75b11ec3ff4f26ea7ab2b887f3273842be32f855bac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a2c9cb1099b9cf28473a19d34f3dd19856d2649a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Thin/Variant17e6c123f76c4beb8c95e75b11ec3ff4f26ea7ab2b887f3273842be32f855bac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Thin/Variant17e6c123f76c4beb8c95e75b11ec3ff4f26ea7ab2b887f3273842be32f855bac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Functor.Category` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Iso` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thin_category](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Thin/Variant17e6c123f76c4beb8c95e75b11ec3ff4f26ea7ab2b887f3273842be32f855bac.lean/declarations/thin-category--1af037dee4b541a5d8ef8807.md) | 35 | `declaration-track:1af037dee4b541a5d8ef8807286b2dbb4b154327ed5df0303ffbf2525603695d` |
| 2 | `instance` | [functor_thin](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Thin/Variant17e6c123f76c4beb8c95e75b11ec3ff4f26ea7ab2b887f3273842be32f855bac.lean/declarations/functor-thin--50b1662ba4463980ee717e51.md) | 46 | `declaration-track:50b1662ba4463980ee717e511fcbcd82c84e8a4f74c7334ab20ee7a35613b597` |
| 3 | `def` | [iso_of_both_ways](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Thin/Variant17e6c123f76c4beb8c95e75b11ec3ff4f26ea7ab2b887f3273842be32f855bac.lean/declarations/iso-of-both-ways--04a9ce392c7b1a172d08559a.md) | 50 | `declaration-track:04a9ce392c7b1a172d08559a8233ecebfc2b43db20a2f7800628e0b664a41e85` |
| 4 | `instance` | [subsingleton_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Thin/Variant17e6c123f76c4beb8c95e75b11ec3ff4f26ea7ab2b887f3273842be32f855bac.lean/declarations/subsingleton-iso--d336b984fcb76fecc6c646b7.md) | 55 | `declaration-track:d336b984fcb76fecc6c646b7e49d38026ac6544f0c3fce9c18044fd7eb42aa23` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
