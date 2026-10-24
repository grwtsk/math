# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Opposite.Variante47a0bd42068dca2e499b6d73de5be535f5407ecbe34489f7a31fede4449b680

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fd23047c34e393a609ee6e264965109656dbd236",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variante47a0bd42068dca2e499b6d73de5be535f5407ecbe34489f7a31fede4449b680.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variante47a0bd42068dca2e499b6d73de5be535f5407ecbe34489f7a31fede4449b680.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variante47a0bd42068dca2e499b6d73de5be535f5407ecbe34489f7a31fede4449b680.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fd23047c34e393a609ee6e264965109656dbd236`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variante47a0bd42068dca2e499b6d73de5be535f5407ecbe34489f7a31fede4449b680.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variante47a0bd42068dca2e499b6d73de5be535f5407ecbe34489f7a31fede4449b680.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.GuitartExact.VerticalComposition` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variante47a0bd42068dca2e499b6d73de5be535f5407ecbe34489f7a31fede4449b680.lean/declarations/functor--b00c136e555b4b0a983f4f00.md) | 38 | `declaration-track:b00c136e555b4b0a983f4f0025630fc27192b999d50af7e731349d5b32540c09` |
| 2 | `def` | [inverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variante47a0bd42068dca2e499b6d73de5be535f5407ecbe34489f7a31fede4449b680.lean/declarations/inverse--deb25458ceb4fc845a490d50.md) | 53 | `declaration-track:deb25458ceb4fc845a490d50f9e5202466e9c8a5e4e83ec24852715070f96475` |
| 3 | `def` | [structuredArrowRightwardsOpEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variante47a0bd42068dca2e499b6d73de5be535f5407ecbe34489f7a31fede4449b680.lean/declarations/structuredarrowrightwardsopequivalence--8ad07aa506145a393f249957.md) | 74 | `declaration-track:8ad07aa506145a393f2499574786b099892b93faf94de28c4b79468a4edce693` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variante47a0bd42068dca2e499b6d73de5be535f5407ecbe34489f7a31fede4449b680.lean/declarations/instance--539dcb1db69774d9617e52fa.md) | 84 | `declaration-track:539dcb1db69774d9617e52fabc982971e53b6ddbcdc0482f01f4eefe6700efcc` |
| 5 | `lemma` | [guitartExact_op_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variante47a0bd42068dca2e499b6d73de5be535f5407ecbe34489f7a31fede4449b680.lean/declarations/guitartexact-op-iff--81cb5ce664842d8cf414a10d.md) | 91 | `result-track:81cb5ce664842d8cf414a10d70bddba39355871b058cd7d693be2cbe1b5c585e` |
| 6 | `instance` | [guitartExact_id'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variante47a0bd42068dca2e499b6d73de5be535f5407ecbe34489f7a31fede4449b680.lean/declarations/guitartexact-id--161510c7a9c066aa1f81082e.md) | 102 | `declaration-track:161510c7a9c066aa1f81082e382303f0e70d1902cd2754deda49f8c6774d98f7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
