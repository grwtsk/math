# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Merge.Variant6cc7cf0ee2ec412d81132dc06d4c457e50e3cf8f473639456e375ade7fa7447a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "04232fde4cd7eda74f8e1831e5bca6ecbe1cf833",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Merge/Variant6cc7cf0ee2ec412d81132dc06d4c457e50e3cf8f473639456e375ade7fa7447a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Merge/Variant6cc7cf0ee2ec412d81132dc06d4c457e50e3cf8f473639456e375ade7fa7447a.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Merge/Variant6cc7cf0ee2ec412d81132dc06d4c457e50e3cf8f473639456e375ade7fa7447a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `04232fde4cd7eda74f8e1831e5bca6ecbe1cf833`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Merge/Variant6cc7cf0ee2ec412d81132dc06d4c457e50e3cf8f473639456e375ade7fa7447a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Merge/Variant6cc7cf0ee2ec412d81132dc06d4c457e50e3cf8f473639456e375ade7fa7447a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Data.Nat.Lemmas` — import line 7; external provider; requires a separately pinned dependency.
- `Std.Data.Ord` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mergeSortedPreservingDuplicates](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Merge/Variant6cc7cf0ee2ec412d81132dc06d4c457e50e3cf8f473639456e375ade7fa7447a.lean/declarations/mergesortedpreservingduplicates--9278f453fff22750d440885d.md) | 17 | `declaration-track:9278f453fff22750d440885dff8972bbf9aa5f2b6e57e6c3ee4889a6da6f5743` |
| 2 | `def` | [mergeSortedMergingDuplicates](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Merge/Variant6cc7cf0ee2ec412d81132dc06d4c457e50e3cf8f473639456e375ade7fa7447a.lean/declarations/mergesortedmergingduplicates--c032b9e9129a2fdad4f102b4.md) | 52 | `declaration-track:c032b9e9129a2fdad4f102b4af71c8a546b5141bae9f3766f2963895e3337a17` |
| 3 | `def` | [mergeSortedDeduplicating](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Merge/Variant6cc7cf0ee2ec412d81132dc06d4c457e50e3cf8f473639456e375ade7fa7447a.lean/declarations/mergesorteddeduplicating--28a36dd5287ee7af4db7c0cd.md) | 94 | `declaration-track:28a36dd5287ee7af4db7c0cd8a583d196b2b28e84205c72eb84957ef3ea57dce` |
| 4 | `def` | [mergeUnsortedDeduplicating](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Merge/Variant6cc7cf0ee2ec412d81132dc06d4c457e50e3cf8f473639456e375ade7fa7447a.lean/declarations/mergeunsorteddeduplicating--d80c8dc9e5dfd0b03e56f28a.md) | 103 | `declaration-track:d80c8dc9e5dfd0b03e56f28acac7c2fcfe15757a14fca158936587be14765e9f` |
| 5 | `def` | [mergeAdjacentDuplicates](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Merge/Variant6cc7cf0ee2ec412d81132dc06d4c457e50e3cf8f473639456e375ade7fa7447a.lean/declarations/mergeadjacentduplicates--5f627205492ae694ecd07834.md) | 119 | `declaration-track:5f627205492ae694ecd07834f457513e7e6a29567e87b9cc2107714d6330faee` |
| 6 | `def` | [deduplicateSorted](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Merge/Variant6cc7cf0ee2ec412d81132dc06d4c457e50e3cf8f473639456e375ade7fa7447a.lean/declarations/deduplicatesorted--4ba81edb1f1387d81f7a0d2b.md) | 139 | `declaration-track:4ba81edb1f1387d81f7a0d2b8efecccc9aa8f3dc2ed10eed4ae9da4fb5bae88d` |
| 7 | `def` | [sortAndDeduplicate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Merge/Variant6cc7cf0ee2ec412d81132dc06d4c457e50e3cf8f473639456e375ade7fa7447a.lean/declarations/sortanddeduplicate--986393d86a982feaad8f8a1d.md) | 145 | `declaration-track:986393d86a982feaad8f8a1d5b941988c04989f60c5bfa1892fe77f2a0b43fc9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
