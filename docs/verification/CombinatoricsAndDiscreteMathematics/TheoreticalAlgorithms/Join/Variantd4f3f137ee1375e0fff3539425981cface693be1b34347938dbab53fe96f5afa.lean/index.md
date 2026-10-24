# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Join.Variantd4f3f137ee1375e0fff3539425981cface693be1b34347938dbab53fe96f5afa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "beace6213e1a5d25a06056a30fbd75e719059e7b",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Join/Variantd4f3f137ee1375e0fff3539425981cface693be1b34347938dbab53fe96f5afa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Join/Variantd4f3f137ee1375e0fff3539425981cface693be1b34347938dbab53fe96f5afa.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Join/Variantd4f3f137ee1375e0fff3539425981cface693be1b34347938dbab53fe96f5afa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `beace6213e1a5d25a06056a30fbd75e719059e7b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Join/Variantd4f3f137ee1375e0fff3539425981cface693be1b34347938dbab53fe96f5afa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Join/Variantd4f3f137ee1375e0fff3539425981cface693be1b34347938dbab53fe96f5afa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.BigOperators.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [join_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Join/Variantd4f3f137ee1375e0fff3539425981cface693be1b34347938dbab53fe96f5afa.lean/declarations/join-singleton--a0482f942e3daf6554546fc9.md) | 34 | `result-track:a0482f942e3daf6554546fc9071f8f784d1c4a4ed95b999eccf8bf5e6fa864a0` |
| 2 | `theorem` | [join_eq_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Join/Variantd4f3f137ee1375e0fff3539425981cface693be1b34347938dbab53fe96f5afa.lean/declarations/join-eq-nil--5a88a47551f8d13f69f03cb2.md) | 38 | `result-track:5a88a47551f8d13f69f03cb28fabb15b9a8c2041b15c2ae6488e976eb5569dda` |
| 3 | `theorem` | [join_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Join/Variantd4f3f137ee1375e0fff3539425981cface693be1b34347938dbab53fe96f5afa.lean/declarations/join-append--ffedce42263e8025a0a2cfc8.md) | 44 | `result-track:ffedce42263e8025a0a2cfc8c9fb33b86bbb3ab2aa649ea098573932d8ca9aba` |
| 4 | `theorem` | [join_concat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Join/Variantd4f3f137ee1375e0fff3539425981cface693be1b34347938dbab53fe96f5afa.lean/declarations/join-concat--c4700fc8195e5652bdcecb87.md) | 50 | `result-track:c4700fc8195e5652bdcecb87b1eb9c8fb1d1409bd8c62d8b757dedd4784251ff` |
| 5 | `theorem` | [join_filter_isEmpty_eq_false](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Join/Variantd4f3f137ee1375e0fff3539425981cface693be1b34347938dbab53fe96f5afa.lean/declarations/join-filter-isempty-eq-false--a3c3b89d63f6f08b9c2c87a0.md) | 57 | `result-track:a3c3b89d63f6f08b9c2c87a0f0471ee32e877d1c9a7e58524caba55238d4e889` |
| 6 | `theorem` | [join_filter_ne_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Join/Variantd4f3f137ee1375e0fff3539425981cface693be1b34347938dbab53fe96f5afa.lean/declarations/join-filter-ne-nil--d57a352278ea0c8c9e756da8.md) | 68 | `result-track:d57a352278ea0c8c9e756da815522a0ea7d670f92072c1c50bbcf931c2106489` |
| 7 | `theorem` | [join_join](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Join/Variantd4f3f137ee1375e0fff3539425981cface693be1b34347938dbab53fe96f5afa.lean/declarations/join-join--90f63bfd461caacd46f0d842.md) | 73 | `result-track:90f63bfd461caacd46f0d842a5185a24db090dacf9ff7859dc975bdb5b0e6aec` |
| 8 | `theorem` | [length_join](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Join/Variantd4f3f137ee1375e0fff3539425981cface693be1b34347938dbab53fe96f5afa.lean/declarations/length-join--ffdb32b4018ad8b53e91aac6.md) | 78 | `result-track:ffdb32b4018ad8b53e91aac6520f9d13dd336c56006c94c4cb5e079f95687cfe` |
| 9 | `theorem` | [length_bind](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Join/Variantd4f3f137ee1375e0fff3539425981cface693be1b34347938dbab53fe96f5afa.lean/declarations/length-bind--9cf392fd08d940e01bb93158.md) | 83 | `result-track:9cf392fd08d940e01bb93158928eb66d71d57d0994df375c9865dd2d4c4d924b` |
| 10 | `theorem` | [bind_eq_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Join/Variantd4f3f137ee1375e0fff3539425981cface693be1b34347938dbab53fe96f5afa.lean/declarations/bind-eq-nil--6bf87f158becdd8d24509e6a.md) | 88 | `result-track:6bf87f158becdd8d24509e6a8c91d93a1afb9eceea8cf02ca20e4931c5efbabc` |
| 11 | `theorem` | [take_sum_join](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Join/Variantd4f3f137ee1375e0fff3539425981cface693be1b34347938dbab53fe96f5afa.lean/declarations/take-sum-join--53a330b2d16b400e6b0e5a3e.md) | 95 | `result-track:53a330b2d16b400e6b0e5a3ea84ea16601beecf51ba3328e399ad92f87493a25` |
| 12 | `theorem` | [drop_sum_join](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Join/Variantd4f3f137ee1375e0fff3539425981cface693be1b34347938dbab53fe96f5afa.lean/declarations/drop-sum-join--684a84def24fd104b3a4a820.md) | 104 | `result-track:684a84def24fd104b3a4a8208852aee7ecf4d9e85e47d14ef158c25f401aef1e` |
| 13 | `theorem` | [drop_take_succ_eq_cons_get](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Join/Variantd4f3f137ee1375e0fff3539425981cface693be1b34347938dbab53fe96f5afa.lean/declarations/drop-take-succ-eq-cons-get--d60112647407717f4ad81cb6.md) | 113 | `result-track:d60112647407717f4ad81cb69eeab40534403d3c98df7538ef81f5bc0eb9180d` |
| 14 | `theorem` | [drop_take_succ_eq_cons_nthLe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Join/Variantd4f3f137ee1375e0fff3539425981cface693be1b34347938dbab53fe96f5afa.lean/declarations/drop-take-succ-eq-cons-nthle--10cef096b089d7ff2c48dc41.md) | 125 | `result-track:10cef096b089d7ff2c48dc41db8beafa394b6a12f958b0d76646efeb14ae13a1` |
| 15 | `theorem` | [drop_take_succ_join_eq_get](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Join/Variantd4f3f137ee1375e0fff3539425981cface693be1b34347938dbab53fe96f5afa.lean/declarations/drop-take-succ-join-eq-get--9ea31725119d48169bba8984.md) | 143 | `result-track:9ea31725119d48169bba898498cd1b33ccc8a37f10eeb388a0e3fb0929ffabf7` |
| 16 | `theorem` | [drop_take_succ_join_eq_nthLe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Join/Variantd4f3f137ee1375e0fff3539425981cface693be1b34347938dbab53fe96f5afa.lean/declarations/drop-take-succ-join-eq-nthle--f9390c45ce7278adb233c492.md) | 156 | `result-track:f9390c45ce7278adb233c492ce0bc4d02f1b5568945fb435f9bdf1fc54835f2d` |
| 17 | `theorem` | [sum_take_map_length_lt1](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Join/Variantd4f3f137ee1375e0fff3539425981cface693be1b34347938dbab53fe96f5afa.lean/declarations/sum-take-map-length-lt1--c2bebf6220b924feeb82467b.md) | 167 | `result-track:c2bebf6220b924feeb82467b61f2ca5ae784feee402c178af7a57eb396352a8e` |
| 18 | `theorem` | [sum_take_map_length_lt2](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Join/Variantd4f3f137ee1375e0fff3539425981cface693be1b34347938dbab53fe96f5afa.lean/declarations/sum-take-map-length-lt2--2a559629991e62bb678c80ea.md) | 176 | `result-track:2a559629991e62bb678c80ea1dfca4d5d46b249b2b0e7755bf2fe3b0c4bab12d` |
| 19 | `theorem` | [nthLe_join](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Join/Variantd4f3f137ee1375e0fff3539425981cface693be1b34347938dbab53fe96f5afa.lean/declarations/nthle-join--72a847a8138b4adf58f3ddb0.md) | 188 | `result-track:72a847a8138b4adf58f3ddb06520cdd297f8dbae65c7fd00803e83838cabc24e` |
| 20 | `theorem` | [eq_iff_join_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Join/Variantd4f3f137ee1375e0fff3539425981cface693be1b34347938dbab53fe96f5afa.lean/declarations/eq-iff-join-eq--d1ecc323497dadec92bf91ea.md) | 198 | `result-track:d1ecc323497dadec92bf91eac36f1ad1fb9d0edd80cf2d3e8f5a31ede67f7fc6` |
| 21 | `theorem` | [join_drop_length_sub_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Join/Variantd4f3f137ee1375e0fff3539425981cface693be1b34347938dbab53fe96f5afa.lean/declarations/join-drop-length-sub-one--77f8133a566c7d855c9c63e6.md) | 209 | `result-track:77f8133a566c7d855c9c63e6496282ebe4ff3815d8a7201e5242b2eed0030a68` |
| 22 | `theorem` | [append_join_map_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Join/Variantd4f3f137ee1375e0fff3539425981cface693be1b34347938dbab53fe96f5afa.lean/declarations/append-join-map-append--aa56fcd8337012a1158d1c78.md) | 218 | `result-track:aa56fcd8337012a1158d1c78ce015d8c3f3d4c0980008114be7290e6e8f74455` |
| 23 | `theorem` | [reverse_join](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Join/Variantd4f3f137ee1375e0fff3539425981cface693be1b34347938dbab53fe96f5afa.lean/declarations/reverse-join--26b042c5e5b07e4b85456987.md) | 226 | `result-track:26b042c5e5b07e4b85456987325b0e2e3bc5edf5703a8332783bc241e6ce8286` |
| 24 | `theorem` | [join_reverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Join/Variantd4f3f137ee1375e0fff3539425981cface693be1b34347938dbab53fe96f5afa.lean/declarations/join-reverse--0e5d64ae319371a393f03b92.md) | 234 | `result-track:0e5d64ae319371a393f03b92547219e505854af985a5aef43ca9deb74684704b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
