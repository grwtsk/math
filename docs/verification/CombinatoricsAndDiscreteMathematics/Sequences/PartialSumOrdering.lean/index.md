# Verification target: GRWTSK.Combinatorics.Sequences.PartialSumOrdering

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6e0d451eed2d082fa55d5b667183d85e6bb619cd",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Combinatorics/Sequences/PartialSumOrdering.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/PartialSumOrdering.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/PartialSumOrdering.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6e0d451eed2d082fa55d5b667183d85e6bb619cd`.

Source path: `GRWTSK/Combinatorics/Sequences/PartialSumOrdering.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Combinatorics/Sequences/PartialSumOrdering.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.List.Basic` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Fin` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Fin` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Nodup` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Range` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Abel` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [prefixSum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/PartialSumOrdering.lean/declarations/prefixsum--d4052307be5f742113177e3a.md) | 21 | `declaration-track:d4052307be5f742113177e3ad366a9e9b931bbdd65cc85ab0442d263d603d320` |
| 2 | `def` | [postSums](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/PartialSumOrdering.lean/declarations/postsums--929e9c2005a5a58f32237ad3.md) | 24 | `declaration-track:929e9c2005a5a58f32237ad354de7bea7f4202d65a4cc397c61d671cba92eda5` |
| 3 | `def` | [ValidPartialSumOrder](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/PartialSumOrdering.lean/declarations/validpartialsumorder--ffc85f976c2d481a6517d3e8.md) | 27 | `declaration-track:ffc85f976c2d481a6517d3e895bfd7a6896f0e6cd57e0962b55305cb2c3789e3` |
| 4 | `def` | [RootedValidPartialSumOrder](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/PartialSumOrdering.lean/declarations/rootedvalidpartialsumorder--152f7737f1e8afd8d6d2fb47.md) | 29 | `declaration-track:152f7737f1e8afd8d6d2fb47c210f73f86fbd3b9008b2ac5ec54f9aae84a6f56` |
| 5 | `def` | [DistinctNonzeroLabels](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/PartialSumOrdering.lean/declarations/distinctnonzerolabels--6c809da4db6f691b22472c1b.md) | 31 | `declaration-track:6c809da4db6f691b22472c1bacd5691c91c9d1e853a3d3abb3640f9b78ec98fd` |
| 6 | `def` | [ZeroSumInterval](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/PartialSumOrdering.lean/declarations/zerosuminterval--26617adc7b1ab5179385e3df.md) | 34 | `declaration-track:26617adc7b1ab5179385e3df8f9133f0b2a7a5d0a6163792a1c0d33c7f88a1cb` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/PartialSumOrdering.lean/declarations/instance--d3c1b8e03933c451827f595a.md) | 38 | `declaration-track:d3c1b8e03933c451827f595aba84a5f23fcb84bd0ebc2d468347c1e610e57e45` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/PartialSumOrdering.lean/declarations/instance--696965617c5a9540d21fab76.md) | 41 | `declaration-track:696965617c5a9540d21fab76bf1d087a9263f4704cdce804ad96d8c3389d62d3` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/PartialSumOrdering.lean/declarations/instance--8b7b74dc8f05c03294967ec2.md) | 44 | `declaration-track:8b7b74dc8f05c03294967ec2d46c9f1f7a6b676a484105f772f970f6b95ef692` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/PartialSumOrdering.lean/declarations/instance--4f4ba5ef25a8bed4064311ef.md) | 47 | `declaration-track:4f4ba5ef25a8bed4064311efb26bf22bcc7feaf5492846572033f74d59e478dd` |
| 11 | `theorem` | [prefixSum_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/PartialSumOrdering.lean/declarations/prefixsum-zero--8f245eaefc2d334ef063c0ee.md) | 51 | `result-track:8f245eaefc2d334ef063c0ee59b6e41499fc6244233ad67fb8b9978b362740cd` |
| 12 | `theorem` | [prefixSum_length](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/PartialSumOrdering.lean/declarations/prefixsum-length--82b9c325e064b045c03db613.md) | 54 | `result-track:82b9c325e064b045c03db6139567228e9afb8a168568391b7be6b3006a9e8078` |
| 13 | `theorem` | [prefixSum_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/PartialSumOrdering.lean/declarations/prefixsum-succ--6397f6bed1cac846475e7b25.md) | 57 | `result-track:6397f6bed1cac846475e7b25e6fece20478e6ee870269c04c20201f859d90bdb` |
| 14 | `theorem` | [mem_postIndices](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/PartialSumOrdering.lean/declarations/mem-postindices--24a9c33afd9d65d71cab3c46.md) | 61 | `result-track:24a9c33afd9d65d71cab3c468c15232fc665e5f15d8e181fca625eb40ecf98a2` |
| 15 | `theorem` | [intervalSum_eq_sub](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/PartialSumOrdering.lean/declarations/intervalsum-eq-sub--1683585b0fbea663f3d1c909.md) | 72 | `result-track:1683585b0fbea663f3d1c90975d673b023ae97714c308e06786698eb2de7fe12` |
| 16 | `theorem` | [zeroSumInterval_iff_prefixSum_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/PartialSumOrdering.lean/declarations/zerosuminterval-iff-prefixsum-eq--65499c8a03885afc4403b318.md) | 83 | `result-track:65499c8a03885afc4403b31879c2791b60a7b6b85f552092a18177574e398fd2` |
| 17 | `theorem` | [valid_iff_prefixSum_ne](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/PartialSumOrdering.lean/declarations/valid-iff-prefixsum-ne--d5195ea7f4132980fadce8e4.md) | 89 | `result-track:d5195ea7f4132980fadce8e4dba0f0e5219568ec67aa7f5fef892b1e8070ab5e` |
| 18 | `theorem` | [valid_iff_no_zeroSumInterval](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/PartialSumOrdering.lean/declarations/valid-iff-no-zerosuminterval--c176c7e1a0c569d31736d65b.md) | 107 | `result-track:c176c7e1a0c569d31736d65bdb03656934e2ba131a080c459d3962fcbdd4c853` |
| 19 | `theorem` | [rooted_iff_valid_and_nonzero_prefix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/PartialSumOrdering.lean/declarations/rooted-iff-valid-and-nonzero-prefix--e3fa02d53c61d01b0863cf24.md) | 121 | `result-track:e3fa02d53c61d01b0863cf24a0ad24b144fffb0cf0fc297062016a975445f8c3` |
| 20 | `theorem` | [rooted_iff_no_zeroSumInterval](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/PartialSumOrdering.lean/declarations/rooted-iff-no-zerosuminterval--a0806a306fedcc7d843bd3fa.md) | 138 | `result-track:a0806a306fedcc7d843bd3fa2cd5fd6094681a7140f0b2bf126dca5244b53e68` |
| 21 | `theorem` | [rooted_implies_valid](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/PartialSumOrdering.lean/declarations/rooted-implies-valid--4f0f6e1ca12c9ffa8b4b46e1.md) | 154 | `result-track:4f0f6e1ca12c9ffa8b4b46e1afe9f0754ea54a7aba9e7890cbccd4f0f035c46a` |
| 22 | `theorem` | [nonzero_no_singleton_interval](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/PartialSumOrdering.lean/declarations/nonzero-no-singleton-interval--2a96ec67b44c3c10ea5ee999.md) | 157 | `result-track:2a96ec67b44c3c10ea5ee99925cd9dd9fa7613d0ef8f03b4408cbf4fbf7d80ed` |
| 23 | `theorem` | [valid_iff_no_long_zeroSumInterval](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/PartialSumOrdering.lean/declarations/valid-iff-no-long-zerosuminterval--7020bc188795b3b332893574.md) | 173 | `result-track:7020bc188795b3b33289357465e434e1dad5002559cf5c29ea6a5dc913bb815c` |
| 24 | `theorem` | [rooted_iff_no_long_zeroSumInterval](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/PartialSumOrdering.lean/declarations/rooted-iff-no-long-zerosuminterval--eb1deb7f1798ac55881988d2.md) | 185 | `result-track:eb1deb7f1798ac55881988d2e293617a195dbcf7de24e63c2e8faa4dc5516fe9` |
| 25 | `theorem` | [translated_postSums_nodup_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/PartialSumOrdering.lean/declarations/translated-postsums-nodup-iff--94d06a37a91d1f4c0e15c487.md) | 198 | `result-track:94d06a37a91d1f4c0e15c487e680083374bf69303eeb7c673e46374a07eaee1e` |
| 26 | `theorem` | [sum_Icc_eq_prefixSum_sub](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/PartialSumOrdering.lean/declarations/sum-icc-eq-prefixsum-sub--a501c7e18ab8c183dca5252a.md) | 203 | `result-track:a501c7e18ab8c183dca5252a0afc5d79d189adbe845973a7ca2f81c190369fd4` |
| 27 | `theorem` | [valid_ofFn_iff_no_zero_sum_Icc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/PartialSumOrdering.lean/declarations/valid-offn-iff-no-zero-sum-icc--c422e0b7a4d69885f0b21841.md) | 225 | `result-track:c422e0b7a4d69885f0b218418da4a2aadb8015848a2b20f67f70034c13cb9585` |
| 28 | `theorem` | [permutation_preserves_total](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/PartialSumOrdering.lean/declarations/permutation-preserves-total--cba2d01008fb74047c51d598.md) | 253 | `result-track:cba2d01008fb74047c51d59832152ec823eb8e86f7f3d616d196abf7863c39d3` |
| 29 | `theorem` | [distinctNonzeroLabels_length_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/PartialSumOrdering.lean/declarations/distinctnonzerolabels-length-le--a57c00f598c71aa23e7a74a7.md) | 258 | `result-track:a57c00f598c71aa23e7a74a7407fbdaa184c2f3f3e2a8b0daf55467975591e0c` |
| 30 | `theorem` | [zmod5_unrooted_return](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/PartialSumOrdering.lean/declarations/zmod5-unrooted-return--caa8c406dfa0bf6207eb0b8d.md) | 268 | `result-track:caa8c406dfa0bf6207eb0b8d8363d2826db580d573606ca671f2c9b68aab516d` |
| 31 | `theorem` | [ordinary_does_not_imply_rooted](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/PartialSumOrdering.lean/declarations/ordinary-does-not-imply-rooted--f180beab4d2ad721c19a70d1.md) | 274 | `result-track:f180beab4d2ad721c19a70d1972e6dcd3040030e3edaf5669dce03228430783d` |
| 32 | `theorem` | [zero_label_can_repeat_postSum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/PartialSumOrdering.lean/declarations/zero-label-can-repeat-postsum--0ff4a982d83aa84726c57fca.md) | 279 | `result-track:0ff4a982d83aa84726c57fca9fe9ca1afda4bd521f370360485ea69bacec00f4` |
| 33 | `theorem` | [duplicate_labels_can_have_valid_postSums](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/PartialSumOrdering.lean/declarations/duplicate-labels-can-have-valid-postsums--3714db11a76258c598ce8e55.md) | 282 | `result-track:3714db11a76258c598ce8e55867884ee028953699a6ef50144dbad7ed8a99f50` |
| 34 | `theorem` | [reordering_changes_intermediate_prefix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/PartialSumOrdering.lean/declarations/reordering-changes-intermediate-prefix--2e37cc444fca33c8dafcc196.md) | 287 | `result-track:2e37cc444fca33c8dafcc196fbf30859a64a8181cce56792ea91fe63d9960c63` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
