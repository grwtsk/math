# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Traversable.Variant5f2b536e3a0f05693ea10d02100086aabf7ea8808bf01e6134c1d25aa3a8784e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0613f3ed27b90a875bd83b98ed85885a07cceba8",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Traversable/Variant5f2b536e3a0f05693ea10d02100086aabf7ea8808bf01e6134c1d25aa3a8784e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Traversable/Variant5f2b536e3a0f05693ea10d02100086aabf7ea8808bf01e6134c1d25aa3a8784e.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Traversable/Variant5f2b536e3a0f05693ea10d02100086aabf7ea8808bf01e6134c1d25aa3a8784e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0613f3ed27b90a875bd83b98ed85885a07cceba8`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Traversable/Variant5f2b536e3a0f05693ea10d02100086aabf7ea8808bf01e6134c1d25aa3a8784e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Traversable/Variant5f2b536e3a0f05693ea10d02100086aabf7ea8808bf01e6134c1d25aa3a8784e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Tree.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Applicative` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Traversable.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Traversable/Variant5f2b536e3a0f05693ea10d02100086aabf7ea8808bf01e6134c1d25aa3a8784e.lean/declarations/instance--e02461007784d6f4566074d4.md) | 31 | `declaration-track:e02461007784d6f4566074d4a4ed9f3129a7ad3199c58189334dc371d2add42b` |
| 2 | `lemma` | [comp_traverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Traversable/Variant5f2b536e3a0f05693ea10d02100086aabf7ea8808bf01e6134c1d25aa3a8784e.lean/declarations/comp-traverse--fd97455baa5bd16288c796b9.md) | 35 | `result-track:fd97455baa5bd16288c796b9bd75a6bd2a53c492a812d43006289d5fe3003eea` |
| 3 | `lemma` | [traverse_eq_map_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Traversable/Variant5f2b536e3a0f05693ea10d02100086aabf7ea8808bf01e6134c1d25aa3a8784e.lean/declarations/traverse-eq-map-id--db3549c89e26457a94b90bf9.md) | 48 | `result-track:db3549c89e26457a94b90bf9a70c877631163ee854df0b1ef099c67928cadb0c` |
| 4 | `lemma` | [naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Traversable/Variant5f2b536e3a0f05693ea10d02100086aabf7ea8808bf01e6134c1d25aa3a8784e.lean/declarations/naturality--764909d10cbd3d8703f60c31.md) | 56 | `result-track:764909d10cbd3d8703f60c31cf8d7e8bfbb0ba778338dec0d5374a01d83ec410` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Traversable/Variant5f2b536e3a0f05693ea10d02100086aabf7ea8808bf01e6134c1d25aa3a8784e.lean/declarations/instance--05d60407a372efe62bfe7954.md) | 65 | `declaration-track:05d60407a372efe62bfe7954a73111da36c32b0512c39f0761b75bf12bd24801` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
