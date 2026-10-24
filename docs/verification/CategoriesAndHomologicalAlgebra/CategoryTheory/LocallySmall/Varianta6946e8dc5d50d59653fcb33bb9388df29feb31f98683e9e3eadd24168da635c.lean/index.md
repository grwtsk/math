# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LocallySmall.Varianta6946e8dc5d50d59653fcb33bb9388df29feb31f98683e9e3eadd24168da635c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "598223a0a24fbd702e706bf7c8b2665ae8c5f69e",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySmall/Varianta6946e8dc5d50d59653fcb33bb9388df29feb31f98683e9e3eadd24168da635c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySmall/Varianta6946e8dc5d50d59653fcb33bb9388df29feb31f98683e9e3eadd24168da635c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySmall/Varianta6946e8dc5d50d59653fcb33bb9388df29feb31f98683e9e3eadd24168da635c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `598223a0a24fbd702e706bf7c8b2665ae8c5f69e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySmall/Varianta6946e8dc5d50d59653fcb33bb9388df29feb31f98683e9e3eadd24168da635c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySmall/Varianta6946e8dc5d50d59653fcb33bb9388df29feb31f98683e9e3eadd24168da635c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Comma.StructuredArrow.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Comma.Over.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.EssentiallySmall` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Comma.locallySmall](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySmall/Varianta6946e8dc5d50d59653fcb33bb9388df29feb31f98683e9e3eadd24168da635c.lean/declarations/comma-locallysmall--d9f74e2c761e9394d13aaef5.md) | 35 | `declaration-track:d9f74e2c761e9394d13aaef5175e578639a8cf077513a4413835ac4ca0b7771d` |
| 2 | `instance` | [StructuredArrow.locallySmall](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySmall/Varianta6946e8dc5d50d59653fcb33bb9388df29feb31f98683e9e3eadd24168da635c.lean/declarations/structuredarrow-locallysmall--42ccc4ecbec0c0ff8adafebc.md) | 42 | `declaration-track:42ccc4ecbec0c0ff8adafebcc94b1c4ac934f21850e3b8150cd09d99b5b62623` |
| 3 | `instance` | [CostructuredArrow.locallySmall](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySmall/Varianta6946e8dc5d50d59653fcb33bb9388df29feb31f98683e9e3eadd24168da635c.lean/declarations/costructuredarrow-locallysmall--df22d5ed07e8b5da2a52e287.md) | 47 | `declaration-track:df22d5ed07e8b5da2a52e28757cdbaaf21b5ee45590399a8b358700c408fcfaa` |
| 4 | `instance` | [Over.locallySmall](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySmall/Varianta6946e8dc5d50d59653fcb33bb9388df29feb31f98683e9e3eadd24168da635c.lean/declarations/over-locallysmall--4cb2d44020b49e1d48259410.md) | 52 | `declaration-track:4cb2d44020b49e1d482594100f71afe167e7b80685303915b28d8dac102225da` |
| 5 | `instance` | [Under.locallySmall](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySmall/Varianta6946e8dc5d50d59653fcb33bb9388df29feb31f98683e9e3eadd24168da635c.lean/declarations/under-locallysmall--5be2e8ccd61997452149e8a3.md) | 56 | `declaration-track:5be2e8ccd61997452149e8a3e613b65e5c2b91a31534e9ff71515660f1af473f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
