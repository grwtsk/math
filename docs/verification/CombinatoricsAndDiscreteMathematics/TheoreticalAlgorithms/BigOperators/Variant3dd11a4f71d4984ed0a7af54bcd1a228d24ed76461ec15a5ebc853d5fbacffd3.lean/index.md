# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BigOperators.Variant3dd11a4f71d4984ed0a7af54bcd1a228d24ed76461ec15a5ebc853d5fbacffd3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b7376e7be25872ed26f7dfbeda9fce7d5e1a8c2a",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant3dd11a4f71d4984ed0a7af54bcd1a228d24ed76461ec15a5ebc853d5fbacffd3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant3dd11a4f71d4984ed0a7af54bcd1a228d24ed76461ec15a5ebc853d5fbacffd3.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant3dd11a4f71d4984ed0a7af54bcd1a228d24ed76461ec15a5ebc853d5fbacffd3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b7376e7be25872ed26f7dfbeda9fce7d5e1a8c2a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant3dd11a4f71d4984ed0a7af54bcd1a228d24ed76461ec15a5ebc853d5fbacffd3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant3dd11a4f71d4984ed0a7af54bcd1a228d24ed76461ec15a5ebc853d5fbacffd3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finsupp.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Pairwise` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [List.support_sum_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant3dd11a4f71d4984ed0a7af54bcd1a228d24ed76461ec15a5ebc853d5fbacffd3.lean/declarations/list-support-sum-subset--8637c389d1d3ecb7a356b92c.md) | 46 | `result-track:8637c389d1d3ecb7a356b92cd1933aa9d6838ea72be51529df38c3d45db37832` |
| 2 | `theorem` | [Multiset.support_sum_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant3dd11a4f71d4984ed0a7af54bcd1a228d24ed76461ec15a5ebc853d5fbacffd3.lean/declarations/multiset-support-sum-subset--75ecbfe4d0b62927cbc05e5e.md) | 55 | `result-track:75ecbfe4d0b62927cbc05e5ec74cda50b2150ab5795240645422f5b0cf6af525` |
| 3 | `theorem` | [Finset.support_sum_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant3dd11a4f71d4984ed0a7af54bcd1a228d24ed76461ec15a5ebc853d5fbacffd3.lean/declarations/finset-support-sum-subset--37c7a47346c0cb4a577dc405.md) | 62 | `result-track:37c7a47346c0cb4a577dc405b5795ee0dc2e1c43d71c1a94b00798421c970b7d` |
| 4 | `theorem` | [List.mem_foldr_sup_support_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant3dd11a4f71d4984ed0a7af54bcd1a228d24ed76461ec15a5ebc853d5fbacffd3.lean/declarations/list-mem-foldr-sup-support-iff--3eb183ee47aa557e19bf9b6a.md) | 67 | `result-track:3eb183ee47aa557e19bf9b6a3841ace79a29ccd0a0d5f3917e93c144abbb9184` |
| 5 | `theorem` | [Multiset.mem_sup_map_support_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant3dd11a4f71d4984ed0a7af54bcd1a228d24ed76461ec15a5ebc853d5fbacffd3.lean/declarations/multiset-mem-sup-map-support-iff--57a99e8186bca3a9ba07a47c.md) | 76 | `result-track:57a99e8186bca3a9ba07a47cb4f28f54aa4264603e1532159cfcf762fba9b3dc` |
| 6 | `theorem` | [Finset.mem_sup_support_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant3dd11a4f71d4984ed0a7af54bcd1a228d24ed76461ec15a5ebc853d5fbacffd3.lean/declarations/finset-mem-sup-support-iff--e95136ab5e3439ce26277b0c.md) | 83 | `result-track:e95136ab5e3439ce26277b0cca8ecb386d8833ead18e9bf68a4ba7a52ce93b2e` |
| 7 | `theorem` | [List.support_sum_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant3dd11a4f71d4984ed0a7af54bcd1a228d24ed76461ec15a5ebc853d5fbacffd3.lean/declarations/list-support-sum-eq--bfb69d7416168c0aff73a187.md) | 88 | `result-track:bfb69d7416168c0aff73a187b6370fd510c8aeafa46f03236b72b23f3fd9cf44` |
| 8 | `theorem` | [Multiset.support_sum_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant3dd11a4f71d4984ed0a7af54bcd1a228d24ed76461ec15a5ebc853d5fbacffd3.lean/declarations/multiset-support-sum-eq--6ee9541fa34d30b858e8daa8.md) | 106 | `result-track:6ee9541fa34d30b858e8daa8feb3c08a209540638ff1bc9e57bbfb199d31f799` |
| 9 | `theorem` | [Finset.support_sum_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant3dd11a4f71d4984ed0a7af54bcd1a228d24ed76461ec15a5ebc853d5fbacffd3.lean/declarations/finset-support-sum-eq--6f976b12f9a2fcb471813c02.md) | 121 | `result-track:6f976b12f9a2fcb471813c02a518a27bf46d94dd06f21208afb09437bbd0e0f2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
