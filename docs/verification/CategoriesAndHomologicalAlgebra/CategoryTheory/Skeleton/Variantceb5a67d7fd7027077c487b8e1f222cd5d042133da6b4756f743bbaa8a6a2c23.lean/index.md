# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Skeleton.Variantceb5a67d7fd7027077c487b8e1f222cd5d042133da6b4756f743bbaa8a6a2c23

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "20cda89ff131eabebf681e57a7f353be27140755",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Variantceb5a67d7fd7027077c487b8e1f222cd5d042133da6b4756f743bbaa8a6a2c23.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Variantceb5a67d7fd7027077c487b8e1f222cd5d042133da6b4756f743bbaa8a6a2c23.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Variantceb5a67d7fd7027077c487b8e1f222cd5d042133da6b4756f743bbaa8a6a2c23.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `20cda89ff131eabebf681e57a7f353be27140755`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Variantceb5a67d7fd7027077c487b8e1f222cd5d042133da6b4756f743bbaa8a6a2c23.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Variantceb5a67d7fd7027077c487b8e1f222cd5d042133da6b4756f743bbaa8a6a2c23.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Braided` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Transport` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Skeletal` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [monoidOfSkeletalMonoidal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Variantceb5a67d7fd7027077c487b8e1f222cd5d042133da6b4756f743bbaa8a6a2c23.lean/declarations/monoidofskeletalmonoidal--b4a4d2faf342d5c01e7f5111.md) | 30 | `declaration-track:b4a4d2faf342d5c01e7f511154af4ef276c04c9dad4d92d45f5f2a843d624018` |
| 2 | `def` | [commMonoidOfSkeletalBraided](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Variantceb5a67d7fd7027077c487b8e1f222cd5d042133da6b4756f743bbaa8a6a2c23.lean/declarations/commmonoidofskeletalbraided--9c0cbcb159b42b3a3a8d4a71.md) | 39 | `declaration-track:9c0cbcb159b42b3a3a8d4a7189b2f252b0822f483a8c52078ffa3b7a3bcb4b93` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Variantceb5a67d7fd7027077c487b8e1f222cd5d042133da6b4756f743bbaa8a6a2c23.lean/declarations/instance--800d6d2d9ef9380159df4fce.md) | 45 | `declaration-track:800d6d2d9ef9380159df4fce79e9bca01e047bddc09a075a5eb32d69ce0b08f6` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Variantceb5a67d7fd7027077c487b8e1f222cd5d042133da6b4756f743bbaa8a6a2c23.lean/declarations/instance--454b2ef38220a80b95247b6e.md) | 52 | `declaration-track:454b2ef38220a80b95247b6e826f44bf351cdaa664137039a57749d98a64659a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
