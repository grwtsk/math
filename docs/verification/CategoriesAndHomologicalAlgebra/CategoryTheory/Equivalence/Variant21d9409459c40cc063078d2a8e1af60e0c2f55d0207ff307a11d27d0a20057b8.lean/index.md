# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Equivalence.Variant21d9409459c40cc063078d2a8e1af60e0c2f55d0207ff307a11d27d0a20057b8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3f76b0aaa237e83bdfb84a8e17fad26c63408720",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant21d9409459c40cc063078d2a8e1af60e0c2f55d0207ff307a11d27d0a20057b8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant21d9409459c40cc063078d2a8e1af60e0c2f55d0207ff307a11d27d0a20057b8.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant21d9409459c40cc063078d2a8e1af60e0c2f55d0207ff307a11d27d0a20057b8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3f76b0aaa237e83bdfb84a8e17fad26c63408720`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant21d9409459c40cc063078d2a8e1af60e0c2f55d0207ff307a11d27d0a20057b8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant21d9409459c40cc063078d2a8e1af60e0c2f55d0207ff307a11d27d0a20057b8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Localization.Predicate` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.CatCommSq` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant21d9409459c40cc063078d2a8e1af60e0c2f55d0207ff307a11d27d0a20057b8.lean/declarations/equivalence--e36b1153540c60932ee7a227.md) | 40 | `declaration-track:e36b1153540c60932ee7a2278a4341dcb881788d4c121b70d136301d5a789815` |
| 2 | `lemma` | [equivalence_counitIso_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant21d9409459c40cc063078d2a8e1af60e0c2f55d0207ff307a11d27d0a20057b8.lean/declarations/equivalence-counitiso-app--a410b55b3f0d2b4071c33d91.md) | 45 | `result-track:a410b55b3f0d2b4071c33d9179b0de8302b46eec1c58285eb104e368b0be8ccf` |
| 3 | `lemma` | [isEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant21d9409459c40cc063078d2a8e1af60e0c2f55d0207ff307a11d27d0a20057b8.lean/declarations/isequivalence--507cfbb0ed5d0502f7674e72.md) | 56 | `result-track:507cfbb0ed5d0502f7674e7228a8111537c47c577e01ff95400b7ea3b0e4c343` |
| 4 | `lemma` | [of_equivalence_source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant21d9409459c40cc063078d2a8e1af60e0c2f55d0207ff307a11d27d0a20057b8.lean/declarations/of-equivalence-source--93906378986f1dd00765e88d.md) | 68 | `result-track:93906378986f1dd00765e88d0825d61ea9509b00e4f764a0d7e57e4e2ad49641` |
| 5 | `lemma` | [of_equivalences](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant21d9409459c40cc063078d2a8e1af60e0c2f55d0207ff307a11d27d0a20057b8.lean/declarations/of-equivalences--25503dba28dacaaf99f92937.md) | 100 | `result-track:25503dba28dacaaf99f9293778b6e2d95eeb63db74cc14faf9751929a55da623` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
