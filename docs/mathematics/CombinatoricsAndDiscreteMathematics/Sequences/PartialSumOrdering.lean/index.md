# GRWTSK.Combinatorics.Sequences.PartialSumOrdering

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 24 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Combinatorics/Sequences/PartialSumOrdering.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6e0d451eed2d082fa55d5b667183d85e6bb619cd`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/CombinatoricsAndDiscreteMathematics/Sequences/PartialSumOrdering.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [prefixSum](declarations/prefixsum--d4052307be5f742113177e3a.md) | 21 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [postSums](declarations/postsums--929e9c2005a5a58f32237ad3.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [ValidPartialSumOrder](declarations/validpartialsumorder--ffc85f976c2d481a6517d3e8.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [RootedValidPartialSumOrder](declarations/rootedvalidpartialsumorder--152f7737f1e8afd8d6d2fb47.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [DistinctNonzeroLabels](declarations/distinctnonzerolabels--6c809da4db6f691b22472c1b.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [ZeroSumInterval](declarations/zerosuminterval--26617adc7b1ab5179385e3df.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [(anonymous)](declarations/instance--d3c1b8e03933c451827f595a.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [(anonymous)](declarations/instance--696965617c5a9540d21fab76.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [(anonymous)](declarations/instance--8b7b74dc8f05c03294967ec2.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [(anonymous)](declarations/instance--4f4ba5ef25a8bed4064311ef.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [prefixSum_zero](declarations/prefixsum-zero--8f245eaefc2d334ef063c0ee.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [prefixSum_length](declarations/prefixsum-length--82b9c325e064b045c03db613.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [prefixSum_succ](declarations/prefixsum-succ--6397f6bed1cac846475e7b25.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [mem_postIndices](declarations/mem-postindices--24a9c33afd9d65d71cab3c46.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [intervalSum_eq_sub](declarations/intervalsum-eq-sub--1683585b0fbea663f3d1c909.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [zeroSumInterval_iff_prefixSum_eq](declarations/zerosuminterval-iff-prefixsum-eq--65499c8a03885afc4403b318.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [valid_iff_prefixSum_ne](declarations/valid-iff-prefixsum-ne--d5195ea7f4132980fadce8e4.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [valid_iff_no_zeroSumInterval](declarations/valid-iff-no-zerosuminterval--c176c7e1a0c569d31736d65b.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [rooted_iff_valid_and_nonzero_prefix](declarations/rooted-iff-valid-and-nonzero-prefix--e3fa02d53c61d01b0863cf24.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [rooted_iff_no_zeroSumInterval](declarations/rooted-iff-no-zerosuminterval--a0806a306fedcc7d843bd3fa.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [rooted_implies_valid](declarations/rooted-implies-valid--4f0f6e1ca12c9ffa8b4b46e1.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [nonzero_no_singleton_interval](declarations/nonzero-no-singleton-interval--2a96ec67b44c3c10ea5ee999.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [valid_iff_no_long_zeroSumInterval](declarations/valid-iff-no-long-zerosuminterval--7020bc188795b3b332893574.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [rooted_iff_no_long_zeroSumInterval](declarations/rooted-iff-no-long-zerosuminterval--eb1deb7f1798ac55881988d2.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [translated_postSums_nodup_iff](declarations/translated-postsums-nodup-iff--94d06a37a91d1f4c0e15c487.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [sum_Icc_eq_prefixSum_sub](declarations/sum-icc-eq-prefixsum-sub--a501c7e18ab8c183dca5252a.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [valid_ofFn_iff_no_zero_sum_Icc](declarations/valid-offn-iff-no-zero-sum-icc--c422e0b7a4d69885f0b21841.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [permutation_preserves_total](declarations/permutation-preserves-total--cba2d01008fb74047c51d598.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [distinctNonzeroLabels_length_le](declarations/distinctnonzerolabels-length-le--a57c00f598c71aa23e7a74a7.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [zmod5_unrooted_return](declarations/zmod5-unrooted-return--caa8c406dfa0bf6207eb0b8d.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [ordinary_does_not_imply_rooted](declarations/ordinary-does-not-imply-rooted--f180beab4d2ad721c19a70d1.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [zero_label_can_repeat_postSum](declarations/zero-label-can-repeat-postsum--0ff4a982d83aa84726c57fca.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [duplicate_labels_can_have_valid_postSums](declarations/duplicate-labels-can-have-valid-postsums--3714db11a76258c598ce8e55.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [reordering_changes_intermediate_prefix](declarations/reordering-changes-intermediate-prefix--2e37cc444fca33c8dafcc196.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
