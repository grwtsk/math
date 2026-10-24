# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Merge.Variant009f3d5ecd6ee5a1a9969a75708852adb8e29cd51cb383264ef2d66d547a9c7f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "909908b2f44f088c894bc1b8d94f02dd3e4c5c54",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Merge/Variant009f3d5ecd6ee5a1a9969a75708852adb8e29cd51cb383264ef2d66d547a9c7f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Merge/Variant009f3d5ecd6ee5a1a9969a75708852adb8e29cd51cb383264ef2d66d547a9c7f.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Merge/Variant009f3d5ecd6ee5a1a9969a75708852adb8e29cd51cb383264ef2d66d547a9c7f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `909908b2f44f088c894bc1b8d94f02dd3e4c5c54`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Merge/Variant009f3d5ecd6ee5a1a9969a75708852adb8e29cd51cb383264ef2d66d547a9c7f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Merge/Variant009f3d5ecd6ee5a1a9969a75708852adb8e29cd51cb383264ef2d66d547a9c7f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Data.Nat.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Std.Data.Ord` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mergeSortedPreservingDuplicates](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Merge/Variant009f3d5ecd6ee5a1a9969a75708852adb8e29cd51cb383264ef2d66d547a9c7f.lean/declarations/mergesortedpreservingduplicates--1390bb2f6b02030143f9099c.md) | 25 | `declaration-track:1390bb2f6b02030143f9099c1ab839ae27507c863c5bf1f4cf3112043ec8b00a` |
| 2 | `def` | [mergeSortedMergingDuplicates](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Merge/Variant009f3d5ecd6ee5a1a9969a75708852adb8e29cd51cb383264ef2d66d547a9c7f.lean/declarations/mergesortedmergingduplicates--86ae275b9b633da77bace4fb.md) | 60 | `declaration-track:86ae275b9b633da77bace4fbe43eeb582649f6f9139884a2ef9bf8ebe0dcffa5` |
| 3 | `def` | [mergeSortedDeduplicating](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Merge/Variant009f3d5ecd6ee5a1a9969a75708852adb8e29cd51cb383264ef2d66d547a9c7f.lean/declarations/mergesorteddeduplicating--a7fddfa66d1dd730a457c625.md) | 102 | `declaration-track:a7fddfa66d1dd730a457c6250ff5fd479b97ff5d2dd8f78c941ae2e97110ac7f` |
| 4 | `def` | [mergeUnsortedDeduplicating](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Merge/Variant009f3d5ecd6ee5a1a9969a75708852adb8e29cd51cb383264ef2d66d547a9c7f.lean/declarations/mergeunsorteddeduplicating--2d595fc902c6c5b9acf28193.md) | 111 | `declaration-track:2d595fc902c6c5b9acf28193c95f360107b50f312f26bb003133095f03b159fc` |
| 5 | `def` | [mergeAdjacentDuplicates](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Merge/Variant009f3d5ecd6ee5a1a9969a75708852adb8e29cd51cb383264ef2d66d547a9c7f.lean/declarations/mergeadjacentduplicates--c4010d09e1d74348838ffd41.md) | 127 | `declaration-track:c4010d09e1d74348838ffd41e33ccd0d039bda6e336ea816efff5ba9c4155a85` |
| 6 | `def` | [deduplicateSorted](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Merge/Variant009f3d5ecd6ee5a1a9969a75708852adb8e29cd51cb383264ef2d66d547a9c7f.lean/declarations/deduplicatesorted--e97583768ff6af6fa82c43af.md) | 147 | `declaration-track:e97583768ff6af6fa82c43af4e3a7920d9085c1621d9fed0958cd14408011299` |
| 7 | `def` | [sortAndDeduplicate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Merge/Variant009f3d5ecd6ee5a1a9969a75708852adb8e29cd51cb383264ef2d66d547a9c7f.lean/declarations/sortanddeduplicate--fb17c6db4493a595cc1cd998.md) | 153 | `declaration-track:fb17c6db4493a595cc1cd99814d8179a6b0149afc23c47e428a75935676b7080` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
