# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Replicate.Variant37723e524bf67cba0cefa5a635cd3839030965fa09b57b3014d9252dcbb1c3d6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "789c06ef5f46c9bf1144e2e5ed98181d7f87db07",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variant37723e524bf67cba0cefa5a635cd3839030965fa09b57b3014d9252dcbb1c3d6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variant37723e524bf67cba0cefa5a635cd3839030965fa09b57b3014d9252dcbb1c3d6.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variant37723e524bf67cba0cefa5a635cd3839030965fa09b57b3014d9252dcbb1c3d6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `789c06ef5f46c9bf1144e2e5ed98181d7f87db07`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variant37723e524bf67cba0cefa5a635cd3839030965fa09b57b3014d9252dcbb1c3d6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variant37723e524bf67cba0cefa5a635cd3839030965fa09b57b3014d9252dcbb1c3d6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Multiset.AddSub` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [replicate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variant37723e524bf67cba0cefa5a635cd3839030965fa09b57b3014d9252dcbb1c3d6.lean/declarations/replicate--8660b68283d7ca5067d80518.md) | 39 | `declaration-track:8660b68283d7ca5067d8051811a652336f1abc9a1ab6d2115dd169b5adff9658` |
| 2 | `theorem` | [coe_replicate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variant37723e524bf67cba0cefa5a635cd3839030965fa09b57b3014d9252dcbb1c3d6.lean/declarations/coe-replicate--57e84f27bf8611cb14298ab8.md) | 42 | `result-track:57e84f27bf8611cb14298ab8f3ed4962054d569662104749be43beddd63e0dc2` |
| 3 | `theorem` | [replicate_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variant37723e524bf67cba0cefa5a635cd3839030965fa09b57b3014d9252dcbb1c3d6.lean/declarations/replicate-zero--d1cab281e209467bee9e474b.md) | 44 | `result-track:d1cab281e209467bee9e474bc194fb6fbc0661c73c5a62b517fea09c7cc6005e` |
| 4 | `theorem` | [replicate_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variant37723e524bf67cba0cefa5a635cd3839030965fa09b57b3014d9252dcbb1c3d6.lean/declarations/replicate-succ--294462c4e387c4f12b4013d4.md) | 46 | `result-track:294462c4e387c4f12b4013d49a15c23e0aaa17aaeae9e4f3d21e6e3c69a42c94` |
| 5 | `theorem` | [replicate_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variant37723e524bf67cba0cefa5a635cd3839030965fa09b57b3014d9252dcbb1c3d6.lean/declarations/replicate-add--834cee65c206c647bfff6d75.md) | 48 | `result-track:834cee65c206c647bfff6d75a46ae85425708284b41a6308745a0cd8d931320a` |
| 6 | `theorem` | [replicate_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variant37723e524bf67cba0cefa5a635cd3839030965fa09b57b3014d9252dcbb1c3d6.lean/declarations/replicate-one--c7415e90624fa7d34b6aa80c.md) | 51 | `result-track:c7415e90624fa7d34b6aa80c979dbb4677553663507b4d6d06e2585c001bb6cd` |
| 7 | `theorem` | [card_replicate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variant37723e524bf67cba0cefa5a635cd3839030965fa09b57b3014d9252dcbb1c3d6.lean/declarations/card-replicate--51527d028b8c88ad67f3e7cc.md) | 53 | `result-track:51527d028b8c88ad67f3e7cc39a8d02b0efd4b1c12d9f57e2365f0d5126a43c8` |
| 8 | `theorem` | [mem_replicate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variant37723e524bf67cba0cefa5a635cd3839030965fa09b57b3014d9252dcbb1c3d6.lean/declarations/mem-replicate--a4d18864df0fd80b07e19d51.md) | 56 | `result-track:a4d18864df0fd80b07e19d51bfaa0ab8bc3acd06b08e8ede100dc8a0023471d2` |
| 9 | `theorem` | [eq_of_mem_replicate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variant37723e524bf67cba0cefa5a635cd3839030965fa09b57b3014d9252dcbb1c3d6.lean/declarations/eq-of-mem-replicate--0dee37862f7c8cab546f2092.md) | 59 | `result-track:0dee37862f7c8cab546f2092d04a2f44bf91d3bb55dd532c2208d5b17fe81254` |
| 10 | `theorem` | [eq_replicate_card](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variant37723e524bf67cba0cefa5a635cd3839030965fa09b57b3014d9252dcbb1c3d6.lean/declarations/eq-replicate-card--986eee8e3900e6eb50b5a9ef.md) | 62 | `result-track:986eee8e3900e6eb50b5a9efc0b58ccb198d69f77a9deba5f6ec293ccd11a68d` |
| 11 | `theorem` | [eq_replicate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variant37723e524bf67cba0cefa5a635cd3839030965fa09b57b3014d9252dcbb1c3d6.lean/declarations/eq-replicate--ebfb0fcb11a2ec9bcf33775c.md) | 67 | `result-track:ebfb0fcb11a2ec9bcf33775cd04ddfde6229e340a28431877e041f87a83596ab` |
| 12 | `theorem` | [replicate_right_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variant37723e524bf67cba0cefa5a635cd3839030965fa09b57b3014d9252dcbb1c3d6.lean/declarations/replicate-right-injective--266af68050cc923de0b34a39.md) | 72 | `result-track:266af68050cc923de0b34a3927c1989ab98ebfbd5c6928174ac8d1a03157c735` |
| 13 | `theorem` | [replicate_right_inj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variant37723e524bf67cba0cefa5a635cd3839030965fa09b57b3014d9252dcbb1c3d6.lean/declarations/replicate-right-inj--bacf3ed111a23d1e60841904.md) | 75 | `result-track:bacf3ed111a23d1e608419049c6f361df8b315bcde0ac6c387cd63286d588815` |
| 14 | `theorem` | [replicate_left_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variant37723e524bf67cba0cefa5a635cd3839030965fa09b57b3014d9252dcbb1c3d6.lean/declarations/replicate-left-injective--cb5ac613e86d7165b7f6dfa6.md) | 79 | `result-track:cb5ac613e86d7165b7f6dfa651b6bd80e470221e366a023f156189fc74b3b893` |
| 15 | `theorem` | [replicate_subset_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variant37723e524bf67cba0cefa5a635cd3839030965fa09b57b3014d9252dcbb1c3d6.lean/declarations/replicate-subset-singleton--18456beb59e4182c6d960abf.md) | 82 | `result-track:18456beb59e4182c6d960abf048d52fcab61c85d30e41429bea3cd82e7c6c975` |
| 16 | `theorem` | [replicate_le_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variant37723e524bf67cba0cefa5a635cd3839030965fa09b57b3014d9252dcbb1c3d6.lean/declarations/replicate-le-coe--56918b7f52e3d2b13910ddff.md) | 85 | `result-track:56918b7f52e3d2b13910ddff5479cb33eef5e29bfd9c8be63a421ffd608cd94b` |
| 17 | `theorem` | [replicate_le_replicate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variant37723e524bf67cba0cefa5a635cd3839030965fa09b57b3014d9252dcbb1c3d6.lean/declarations/replicate-le-replicate--1c06cbf394e51707c8fb21df.md) | 88 | `result-track:1c06cbf394e51707c8fb21df72bf95686075df92cd1ce1ae60bb8e69d748f083` |
| 18 | `theorem` | [replicate_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variant37723e524bf67cba0cefa5a635cd3839030965fa09b57b3014d9252dcbb1c3d6.lean/declarations/replicate-mono--9b10957a3004ba0fae6554b0.md) | 92 | `result-track:9b10957a3004ba0fae6554b047ca4ccdc66cab7954bf53f064a744d60c973612` |
| 19 | `theorem` | [le_replicate_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variant37723e524bf67cba0cefa5a635cd3839030965fa09b57b3014d9252dcbb1c3d6.lean/declarations/le-replicate-iff--acbd7095ddf54f688cb148b1.md) | 95 | `result-track:acbd7095ddf54f688cb148b14a7be4c9a3cf4333beb7334d4d51379ddc9aa39d` |
| 20 | `theorem` | [lt_replicate_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variant37723e524bf67cba0cefa5a635cd3839030965fa09b57b3014d9252dcbb1c3d6.lean/declarations/lt-replicate-succ--05a4b6bde3e477fbc88faa43.md) | 101 | `result-track:05a4b6bde3e477fbc88faa43ed0b42dbc2c7f53b5bca1b48b153ff1cad553283` |
| 21 | `theorem` | [count_replicate_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variant37723e524bf67cba0cefa5a635cd3839030965fa09b57b3014d9252dcbb1c3d6.lean/declarations/count-replicate-self--f02c329842f77655cf12909f.md) | 119 | `result-track:f02c329842f77655cf12909f2598e11c45b114ee727a74b4d288efe0eaf33344` |
| 22 | `theorem` | [count_replicate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variant37723e524bf67cba0cefa5a635cd3839030965fa09b57b3014d9252dcbb1c3d6.lean/declarations/count-replicate--ddb8dc2cb92ea3bda6a69623.md) | 123 | `result-track:ddb8dc2cb92ea3bda6a6962352556d3f7599a4054f497832b7a73538a901b098` |
| 23 | `theorem` | [le_count_iff_replicate_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variant37723e524bf67cba0cefa5a635cd3839030965fa09b57b3014d9252dcbb1c3d6.lean/declarations/le-count-iff-replicate-le--171a8a15881e5c875208644d.md) | 128 | `result-track:171a8a15881e5c875208644dc1a73a9ac29eefb6c5625c82199f9ac9b4a6c185` |
| 24 | `theorem` | [rel_replicate_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variant37723e524bf67cba0cefa5a635cd3839030965fa09b57b3014d9252dcbb1c3d6.lean/declarations/rel-replicate-left--c8c40a866228f7a27bf74e27.md) | 142 | `result-track:c8c40a866228f7a27bf74e27f0fbc40873ef5cd02b2899cfdc00ee12ca59e3c1` |
| 25 | `theorem` | [rel_replicate_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variant37723e524bf67cba0cefa5a635cd3839030965fa09b57b3014d9252dcbb1c3d6.lean/declarations/rel-replicate-right--712070e9021927410844784c.md) | 152 | `result-track:712070e9021927410844784ce96c16b49ff0c38e8539521a7a84bd9a928770f9` |
| 26 | `theorem` | [nodup_iff_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variant37723e524bf67cba0cefa5a635cd3839030965fa09b57b3014d9252dcbb1c3d6.lean/declarations/nodup-iff-le--d714068e1c531aaaee6f153c.md) | 162 | `result-track:d714068e1c531aaaee6f153c644660918dada05d4f25404436a5a20c0851b537` |
| 27 | `theorem` | [nodup_iff_ne_cons_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variant37723e524bf67cba0cefa5a635cd3839030965fa09b57b3014d9252dcbb1c3d6.lean/declarations/nodup-iff-ne-cons-cons--8042793e3320e50dfda7b8e9.md) | 166 | `result-track:8042793e3320e50dfda7b8e96647660ea5e2cb8ed523eb0f1233ea7954077156` |
| 28 | `theorem` | [nodup_iff_pairwise](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variant37723e524bf67cba0cefa5a635cd3839030965fa09b57b3014d9252dcbb1c3d6.lean/declarations/nodup-iff-pairwise--aeb6602254d3b3642b7769e6.md) | 172 | `result-track:aeb6602254d3b3642b7769e6e6a55c82730ace80c12759fdabec04ff143a4888` |
| 29 | `theorem` | [Nodup.pairwise](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variant37723e524bf67cba0cefa5a635cd3839030965fa09b57b3014d9252dcbb1c3d6.lean/declarations/nodup-pairwise--8ba4cf38544c97547b00285f.md) | 175 | `result-track:8ba4cf38544c97547b00285f154c26043bce7c3cb5f0c2270a25c6d4d10c0d30` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
