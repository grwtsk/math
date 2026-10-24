# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Zero.Variantb6c77a03cf4eb0d039f9b750303e3bd853cdcf293108a081e4af58a7d76d1b8e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "327d6861096d535bf1eaf4863ffa20789a3a48d5",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variantb6c77a03cf4eb0d039f9b750303e3bd853cdcf293108a081e4af58a7d76d1b8e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variantb6c77a03cf4eb0d039f9b750303e3bd853cdcf293108a081e4af58a7d76d1b8e.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variantb6c77a03cf4eb0d039f9b750303e3bd853cdcf293108a081e4af58a7d76d1b8e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `327d6861096d535bf1eaf4863ffa20789a3a48d5`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variantb6c77a03cf4eb0d039f9b750303e3bd853cdcf293108a081e4af58a7d76d1b8e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variantb6c77a03cf4eb0d039f9b750303e3bd853cdcf293108a081e4af58a7d76d1b8e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.Terminal` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.ZeroMorphisms` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [PreservesZeroMorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variantb6c77a03cf4eb0d039f9b750303e3bd853cdcf293108a081e4af58a7d76d1b8e.lean/declarations/preserveszeromorphisms--c21ee63a9d02e7710570e24c.md) | 45 | `declaration-track:c21ee63a9d02e7710570e24c980e767b9fb4756cd872659f2ee335c4fc22a398` |
| 2 | `theorem` | [map_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variantb6c77a03cf4eb0d039f9b750303e3bd853cdcf293108a081e4af58a7d76d1b8e.lean/declarations/map-zero--a99883a2413f3411ff49d48f.md) | 51 | `result-track:a99883a2413f3411ff49d48f8ca64f8cb938e11cac73847c956eb148475d4cb5` |
| 3 | `theorem` | [zero_of_map_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variantb6c77a03cf4eb0d039f9b750303e3bd853cdcf293108a081e4af58a7d76d1b8e.lean/declarations/zero-of-map-zero--e36628eab7f4b95bb4de0715.md) | 56 | `result-track:e36628eab7f4b95bb4de07153a2890949fdb0f57a067f2f42572cb835e361daa` |
| 4 | `theorem` | [map_eq_zero_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variantb6c77a03cf4eb0d039f9b750303e3bd853cdcf293108a081e4af58a7d76d1b8e.lean/declarations/map-eq-zero-iff--d2bfaa3118849723e48cdbd1.md) | 61 | `result-track:d2bfaa3118849723e48cdbd14ff0d6f64d72d0784b93e4a5571a872058f6b81f` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variantb6c77a03cf4eb0d039f9b750303e3bd853cdcf293108a081e4af58a7d76d1b8e.lean/declarations/instance--ddc2cfdd5fb4d0ec54ed9760.md) | 68 | `declaration-track:ddc2cfdd5fb4d0ec54ed976058a554bf5894b57c31723e7d4e465ff2b0e834d5` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variantb6c77a03cf4eb0d039f9b750303e3bd853cdcf293108a081e4af58a7d76d1b8e.lean/declarations/instance--381922cc8a9c2b798cffaa4e.md) | 82 | `declaration-track:381922cc8a9c2b798cffaa4eed44242f9a37b71a9c0ce16caf9eeca57e8543d1` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variantb6c77a03cf4eb0d039f9b750303e3bd853cdcf293108a081e4af58a7d76d1b8e.lean/declarations/instance--b56d3e305b12636b4157ddae.md) | 95 | `declaration-track:b56d3e305b12636b4157ddae1956b0e10d03e7b08d6fb0826e7f051136781a40` |
| 8 | `instance` | [preservesZeroMorphisms_evaluation_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variantb6c77a03cf4eb0d039f9b750303e3bd853cdcf293108a081e4af58a7d76d1b8e.lean/declarations/preserveszeromorphisms-evaluation-obj--4420174b0bbbed218dc759d5.md) | 103 | `declaration-track:4420174b0bbbed218dc759d52621e3f79750cd8eee80bb104203ed1c6b51b379` |
| 9 | `def` | [mapZeroObject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variantb6c77a03cf4eb0d039f9b750303e3bd853cdcf293108a081e4af58a7d76d1b8e.lean/declarations/mapzeroobject--d38e65f0e1e87f3fe0f11e79.md) | 118 | `declaration-track:d38e65f0e1e87f3fe0f11e79be9366e2ec7a3f62222680818f391e369b549c7c` |
| 10 | `theorem` | [preservesZeroMorphisms_of_map_zero_object](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variantb6c77a03cf4eb0d039f9b750303e3bd853cdcf293108a081e4af58a7d76d1b8e.lean/declarations/preserveszeromorphisms-of-map-zero-object--3dc521619c2e7c3d1847ade8.md) | 127 | `result-track:3dc521619c2e7c3d1847ade87632007d293608f0b05b847d3b52b300e6a7e769` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variantb6c77a03cf4eb0d039f9b750303e3bd853cdcf293108a081e4af58a7d76d1b8e.lean/declarations/instance--a5ed9febdf78f7b7af73cb56.md) | 135 | `declaration-track:a5ed9febdf78f7b7af73cb56aeb484b27af144a0328c7e5cc7e86b7dd0982858` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variantb6c77a03cf4eb0d039f9b750303e3bd853cdcf293108a081e4af58a7d76d1b8e.lean/declarations/instance--1811056d818e02a3b99f548c.md) | 142 | `declaration-track:1811056d818e02a3b99f548c4cd3585f7d641915a6e2f7788809bd4f478a5127` |
| 13 | `def` | [preservesTerminalObjectOfPreservesZeroMorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variantb6c77a03cf4eb0d039f9b750303e3bd853cdcf293108a081e4af58a7d76d1b8e.lean/declarations/preservesterminalobjectofpreserveszeromorphisms--dadda775365654f71467b17f.md) | 152 | `declaration-track:dadda775365654f71467b17f9ac790e818850b4ef84e342450a52c9e17779bca` |
| 14 | `def` | [preservesInitialObjectOfPreservesZeroMorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variantb6c77a03cf4eb0d039f9b750303e3bd853cdcf293108a081e4af58a7d76d1b8e.lean/declarations/preservesinitialobjectofpreserveszeromorphisms--aeab86c3c6733741b5c8f22f.md) | 159 | `declaration-track:aeab86c3c6733741b5c8f22f5d54d604101e31247e0995c6e36415d92a35eaa9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
