# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Dedup.Variant5eae557584325528e6afe65b4f34e2fa08e22ecb98665c3098a7a6fea2a82450

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d1e39a6a3f1df5c405760d77bd51d3b3700b3f97",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant5eae557584325528e6afe65b4f34e2fa08e22ecb98665c3098a7a6fea2a82450.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant5eae557584325528e6afe65b4f34e2fa08e22ecb98665c3098a7a6fea2a82450.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant5eae557584325528e6afe65b4f34e2fa08e22ecb98665c3098a7a6fea2a82450.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d1e39a6a3f1df5c405760d77bd51d3b3700b3f97`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant5eae557584325528e6afe65b4f34e2fa08e22ecb98665c3098a7a6fea2a82450.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant5eae557584325528e6afe65b4f34e2fa08e22ecb98665c3098a7a6fea2a82450.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Nodup` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [dedup_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant5eae557584325528e6afe65b4f34e2fa08e22ecb98665c3098a7a6fea2a82450.lean/declarations/dedup-nil--8b5107cbd510786495ab23a1.md) | 38 | `result-track:8b5107cbd510786495ab23a1ec4cf6e78281e3de891007378130a010a3d5fbd6` |
| 2 | `theorem` | [dedup_cons_of_mem'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant5eae557584325528e6afe65b4f34e2fa08e22ecb98665c3098a7a6fea2a82450.lean/declarations/dedup-cons-of-mem--1c650abf34912eee36b8b90e.md) | 42 | `result-track:1c650abf34912eee36b8b90e7e1666506d9ae0e199fee2f1b7dc278d8935c9f8` |
| 3 | `theorem` | [dedup_cons_of_not_mem'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant5eae557584325528e6afe65b4f34e2fa08e22ecb98665c3098a7a6fea2a82450.lean/declarations/dedup-cons-of-not-mem--9ab7ddf1b7724a770824ce63.md) | 46 | `result-track:9ab7ddf1b7724a770824ce634c3a0b0aed2ae3d7eae3010a791a20ae3dbcca4f` |
| 4 | `theorem` | [mem_dedup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant5eae557584325528e6afe65b4f34e2fa08e22ecb98665c3098a7a6fea2a82450.lean/declarations/mem-dedup--2554f0c350c84e8559c8dcd9.md) | 52 | `result-track:2554f0c350c84e8559c8dcd9b780f2d9fea5ad2454c0edb8693e6e8791cf1452` |
| 5 | `theorem` | [dedup_cons_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant5eae557584325528e6afe65b4f34e2fa08e22ecb98665c3098a7a6fea2a82450.lean/declarations/dedup-cons-of-mem--e77601aa864407cd4a091e43.md) | 60 | `result-track:e77601aa864407cd4a091e4387834884699f5384bfc798d69054809da14005db` |
| 6 | `theorem` | [dedup_cons_of_not_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant5eae557584325528e6afe65b4f34e2fa08e22ecb98665c3098a7a6fea2a82450.lean/declarations/dedup-cons-of-not-mem--b04dbeafec81839525a77675.md) | 65 | `result-track:b04dbeafec81839525a77675e7ce6dca58c42753efd4df2fb587f220c98c3648` |
| 7 | `theorem` | [dedup_sublist](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant5eae557584325528e6afe65b4f34e2fa08e22ecb98665c3098a7a6fea2a82450.lean/declarations/dedup-sublist--dff155f3be3c3ca0180f0afc.md) | 69 | `result-track:dff155f3be3c3ca0180f0afcd8b922f1899443a103022acea8f69f6eacb3a05c` |
| 8 | `theorem` | [dedup_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant5eae557584325528e6afe65b4f34e2fa08e22ecb98665c3098a7a6fea2a82450.lean/declarations/dedup-subset--a779479c8507d52c9a844612.md) | 73 | `result-track:a779479c8507d52c9a8446124cf0db874d06d810cd2b22235a132c30ed241312` |
| 9 | `theorem` | [subset_dedup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant5eae557584325528e6afe65b4f34e2fa08e22ecb98665c3098a7a6fea2a82450.lean/declarations/subset-dedup--98c1883506b6e20e9afbb46d.md) | 77 | `result-track:98c1883506b6e20e9afbb46d545803dc85a06d401d0a8c738ad7f91ee30ca0f0` |
| 10 | `theorem` | [nodup_dedup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant5eae557584325528e6afe65b4f34e2fa08e22ecb98665c3098a7a6fea2a82450.lean/declarations/nodup-dedup--91c425a542afe2f05f4a6153.md) | 80 | `result-track:91c425a542afe2f05f4a6153050fcb183c5b9b995e0149afaca002defe7a5423` |
| 11 | `theorem` | [headI_dedup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant5eae557584325528e6afe65b4f34e2fa08e22ecb98665c3098a7a6fea2a82450.lean/declarations/headi-dedup--4c23838c47b3e6755092afbc.md) | 84 | `result-track:4c23838c47b3e6755092afbceab76ef7a343b91694b5e58f355b6f823591f683` |
| 12 | `theorem` | [tail_dedup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant5eae557584325528e6afe65b4f34e2fa08e22ecb98665c3098a7a6fea2a82450.lean/declarations/tail-dedup--980b1d9740600b0388d69507.md) | 91 | `result-track:980b1d9740600b0388d6950716f4b042f05bd73f2de5b5167059ce77ebc4baa3` |
| 13 | `theorem` | [dedup_eq_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant5eae557584325528e6afe65b4f34e2fa08e22ecb98665c3098a7a6fea2a82450.lean/declarations/dedup-eq-self--139b9f290039f47ff0017e3c.md) | 98 | `result-track:139b9f290039f47ff0017e3cdf4be98850d914ede3ebab69612ebd480a1193fe` |
| 14 | `theorem` | [dedup_eq_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant5eae557584325528e6afe65b4f34e2fa08e22ecb98665c3098a7a6fea2a82450.lean/declarations/dedup-eq-cons--8d8700515d5fb45740fddbb8.md) | 102 | `result-track:8d8700515d5fb45740fddbb8596a48684c68f1d81fc1764636b3941f4a18682e` |
| 15 | `theorem` | [dedup_eq_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant5eae557584325528e6afe65b4f34e2fa08e22ecb98665c3098a7a6fea2a82450.lean/declarations/dedup-eq-nil--b79f970f39651f663cea7a8b.md) | 116 | `result-track:b79f970f39651f663cea7a8bfb37c0d19be3cce5184e90f4312c6bfa59644456` |
| 16 | `theorem` | [Nodup.dedup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant5eae557584325528e6afe65b4f34e2fa08e22ecb98665c3098a7a6fea2a82450.lean/declarations/nodup-dedup--93ede715091b1bda9d1c25f5.md) | 124 | `result-track:93ede715091b1bda9d1c25f5f1cb59dc34730188cf102d99760c7b40e89eefea` |
| 17 | `theorem` | [dedup_idempotent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant5eae557584325528e6afe65b4f34e2fa08e22ecb98665c3098a7a6fea2a82450.lean/declarations/dedup-idempotent--2bbfe77cbffe38552431cf49.md) | 129 | `result-track:2bbfe77cbffe38552431cf49651b3e789e29926622726e0a03ab5675cbf8d2a2` |
| 18 | `theorem` | [dedup_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant5eae557584325528e6afe65b4f34e2fa08e22ecb98665c3098a7a6fea2a82450.lean/declarations/dedup-append--df1bfd84d08c8da75fddc1af.md) | 133 | `result-track:df1bfd84d08c8da75fddc1afe25d6d3b3f0d9271dd02cc9f4b3f71a9ee14a408` |
| 19 | `theorem` | [replicate_dedup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant5eae557584325528e6afe65b4f34e2fa08e22ecb98665c3098a7a6fea2a82450.lean/declarations/replicate-dedup--ca76e8679029cd0b6619460a.md) | 142 | `result-track:ca76e8679029cd0b6619460a79c38b6bcab43dd8e92023e6b055f210cd03f8c4` |
| 20 | `theorem` | [count_dedup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant5eae557584325528e6afe65b4f34e2fa08e22ecb98665c3098a7a6fea2a82450.lean/declarations/count-dedup--fa5140a6860bcd0f3a29756b.md) | 150 | `result-track:fa5140a6860bcd0f3a29756bb381ef18a51731c0e9bf1969cb7aff48be014f41` |
| 21 | `theorem` | [sum_map_count_dedup_filter_eq_countP](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant5eae557584325528e6afe65b4f34e2fa08e22ecb98665c3098a7a6fea2a82450.lean/declarations/sum-map-count-dedup-filter-eq-countp--d941da82ce1783a5d30970b0.md) | 155 | `result-track:d941da82ce1783a5d30970b01289b8a7dfcbc5a5c4811ff6e7256093f64b2cf7` |
| 22 | `theorem` | [sum_map_count_dedup_eq_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant5eae557584325528e6afe65b4f34e2fa08e22ecb98665c3098a7a6fea2a82450.lean/declarations/sum-map-count-dedup-eq-length--2384e4b7f902cbd6c4c71bc6.md) | 179 | `result-track:2384e4b7f902cbd6c4c71bc6c114e02b46cee37a84cb1ca5a5720345689acf1c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
