# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Count.Variant07596fbf0be3f8535641719f5765f7623c0c98810c08606510bc0bbbb88a00bb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "741dac3e58c5e1142713884b2ae429bd8b456328",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Count/Variant07596fbf0be3f8535641719f5765f7623c0c98810c08606510bc0bbbb88a00bb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant07596fbf0be3f8535641719f5765f7623c0c98810c08606510bc0bbbb88a00bb.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant07596fbf0be3f8535641719f5765f7623c0c98810c08606510bc0bbbb88a00bb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `741dac3e58c5e1142713884b2ae429bd8b456328`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Count/Variant07596fbf0be3f8535641719f5765f7623c0c98810c08606510bc0bbbb88a00bb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Count/Variant07596fbf0be3f8535641719f5765f7623c0c98810c08606510bc0bbbb88a00bb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [count](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant07596fbf0be3f8535641719f5765f7623c0c98810c08606510bc0bbbb88a00bb.lean/declarations/count--f5010fb6379d8cb4231edbce.md) | 37 | `declaration-track:f5010fb6379d8cb4231edbce66fa3d151d0d932019234140dba3a8ff2ef38238` |
| 2 | `theorem` | [count_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant07596fbf0be3f8535641719f5765f7623c0c98810c08606510bc0bbbb88a00bb.lean/declarations/count-zero--974a44c065a5875b5b44fccb.md) | 41 | `result-track:974a44c065a5875b5b44fccbc93106c0bd08eb35ef2eb43e1f16528bc30d7766` |
| 3 | `def` | [CountSet.fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant07596fbf0be3f8535641719f5765f7623c0c98810c08606510bc0bbbb88a00bb.lean/declarations/countset-fintype--f923a7e3a6a5e8e07357e211.md) | 45 | `declaration-track:f923a7e3a6a5e8e07357e211d23b0210397fc0bb2331b60a649a1001af628653` |
| 4 | `theorem` | [count_eq_card_filter_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant07596fbf0be3f8535641719f5765f7623c0c98810c08606510bc0bbbb88a00bb.lean/declarations/count-eq-card-filter-range--60bfda4aac8384e45d0a64c7.md) | 52 | `result-track:60bfda4aac8384e45d0a64c7a7155dd5ad832e93281f862e875927ad35e03874` |
| 5 | `theorem` | [count_eq_card_fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant07596fbf0be3f8535641719f5765f7623c0c98810c08606510bc0bbbb88a00bb.lean/declarations/count-eq-card-fintype--075f03c65e9728f430ce6ef3.md) | 57 | `result-track:075f03c65e9728f430ce6ef363816b6cb2d109366c4a561193b4cb494cd92103` |
| 6 | `theorem` | [count_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant07596fbf0be3f8535641719f5765f7623c0c98810c08606510bc0bbbb88a00bb.lean/declarations/count-le--e41e3a1ef693e06b0edee212.md) | 61 | `result-track:e41e3a1ef693e06b0edee2123ee76e60e5866299c878ed3ec9338012ea54c7f4` |
| 7 | `theorem` | [count_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant07596fbf0be3f8535641719f5765f7623c0c98810c08606510bc0bbbb88a00bb.lean/declarations/count-succ--e52ec80abe2df86ad4f50a7d.md) | 66 | `result-track:e52ec80abe2df86ad4f50a7d5affb3e0baab9ec75a636dfcd0eea4fe1f6fc42a` |
| 8 | `theorem` | [count_monotone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant07596fbf0be3f8535641719f5765f7623c0c98810c08606510bc0bbbb88a00bb.lean/declarations/count-monotone--8760c45c0c5fc7989b669cfc.md) | 70 | `result-track:8760c45c0c5fc7989b669cfcd6482b38d2f7843aca784017315bc9f4013e662e` |
| 9 | `theorem` | [count_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant07596fbf0be3f8535641719f5765f7623c0c98810c08606510bc0bbbb88a00bb.lean/declarations/count-add--cc276536d7813458488d9e94.md) | 73 | `result-track:cc276536d7813458488d9e943cde0da61dad7998c97531a37fa47e2ce60c419e` |
| 10 | `theorem` | [count_add'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant07596fbf0be3f8535641719f5765f7623c0c98810c08606510bc0bbbb88a00bb.lean/declarations/count-add--dcb6a0e6df570d6b84479720.md) | 76 | `result-track:dcb6a0e6df570d6b844797201681f571d4c026c1e65d5f06931ec62bf2ed1ba5` |
| 11 | `theorem` | [count_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant07596fbf0be3f8535641719f5765f7623c0c98810c08606510bc0bbbb88a00bb.lean/declarations/count-one--9f3d0b8777105c57afd8348a.md) | 80 | `result-track:9f3d0b8777105c57afd8348a753c759694badd8eba11ce56fac5ee42077621d2` |
| 12 | `theorem` | [count_succ'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant07596fbf0be3f8535641719f5765f7623c0c98810c08606510bc0bbbb88a00bb.lean/declarations/count-succ--35e86bedb1022180ad092bf1.md) | 82 | `result-track:35e86bedb1022180ad092bf129a4c192f417b5c50c69e5970a3dd512ba51b43f` |
| 13 | `theorem` | [count_lt_count_succ_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant07596fbf0be3f8535641719f5765f7623c0c98810c08606510bc0bbbb88a00bb.lean/declarations/count-lt-count-succ-iff--1efe68a405fd16cdbddc8d62.md) | 89 | `result-track:1efe68a405fd16cdbddc8d626c5189b782176bdf93c9260d75e6c5c1caa47ea2` |
| 14 | `theorem` | [count_succ_eq_succ_count_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant07596fbf0be3f8535641719f5765f7623c0c98810c08606510bc0bbbb88a00bb.lean/declarations/count-succ-eq-succ-count-iff--88f7f95b11225bc2f5cab878.md) | 91 | `result-track:88f7f95b11225bc2f5cab8782d400576264dfbb66be86a446a34dab582824756` |
| 15 | `theorem` | [count_succ_eq_count_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant07596fbf0be3f8535641719f5765f7623c0c98810c08606510bc0bbbb88a00bb.lean/declarations/count-succ-eq-count-iff--4db8dfca98d85b45bc63bc50.md) | 93 | `result-track:4db8dfca98d85b45bc63bc501e6a2a7c68c86b58cc19dabf20490ebf7fc583c1` |
| 16 | `theorem` | [lt_of_count_lt_count](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant07596fbf0be3f8535641719f5765f7623c0c98810c08606510bc0bbbb88a00bb.lean/declarations/lt-of-count-lt-count--d69bd0579d2a19306854b7c0.md) | 99 | `result-track:d69bd0579d2a19306854b7c02e50cb4c78eb8d5632d9f9854f2a6bd6e3d455d6` |
| 17 | `theorem` | [count_strict_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant07596fbf0be3f8535641719f5765f7623c0c98810c08606510bc0bbbb88a00bb.lean/declarations/count-strict-mono--c73177d766dfbc328bc50b71.md) | 102 | `result-track:c73177d766dfbc328bc50b71403e6c7e7ad86d70e7ad7f9b3657b49c1b21e782` |
| 18 | `theorem` | [count_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant07596fbf0be3f8535641719f5765f7623c0c98810c08606510bc0bbbb88a00bb.lean/declarations/count-injective--73acd4b384dea8ce2eb8395c.md) | 105 | `result-track:73acd4b384dea8ce2eb8395c58ba63f720c9bb1dfc64bb9e1a365abf8343bb99` |
| 19 | `theorem` | [count_le_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant07596fbf0be3f8535641719f5765f7623c0c98810c08606510bc0bbbb88a00bb.lean/declarations/count-le-card--01c208493e8b11da07127528.md) | 111 | `result-track:01c208493e8b11da071275280da1ec58f68178ec47a602de40698f7e76836a10` |
| 20 | `theorem` | [count_lt_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant07596fbf0be3f8535641719f5765f7623c0c98810c08606510bc0bbbb88a00bb.lean/declarations/count-lt-card--a63552538adcb1ebc6c7b429.md) | 115 | `result-track:a63552538adcb1ebc6c7b4297c533ca50fa4338904b1a709e6b246a459850076` |
| 21 | `theorem` | [count_iff_forall](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant07596fbf0be3f8535641719f5765f7623c0c98810c08606510bc0bbbb88a00bb.lean/declarations/count-iff-forall--87e705946e450b5bfe4bb9c1.md) | 118 | `result-track:87e705946e450b5bfe4bb9c1f3f26194238254b7d3fca37861aa04c8af709519` |
| 22 | `theorem` | [count_true](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant07596fbf0be3f8535641719f5765f7623c0c98810c08606510bc0bbbb88a00bb.lean/declarations/count-true--db789d413ac738335f4e5a55.md) | 124 | `result-track:db789d413ac738335f4e5a55ba700ddc7fe19a26c7dd328646a9f968d83b7270` |
| 23 | `theorem` | [count_iff_forall_not](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant07596fbf0be3f8535641719f5765f7623c0c98810c08606510bc0bbbb88a00bb.lean/declarations/count-iff-forall-not--d6d633efb282be3493be417f.md) | 126 | `result-track:d6d633efb282be3493be417f5fd95a6f022f1f726cf7de435ae19f89f3b42604` |
| 24 | `theorem` | [count_ne_iff_exists](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant07596fbf0be3f8535641719f5765f7623c0c98810c08606510bc0bbbb88a00bb.lean/declarations/count-ne-iff-exists--c27c1afdc0d64e7cc6160c17.md) | 131 | `result-track:c27c1afdc0d64e7cc6160c17f648564b4a249620fb49a55c4820d14cb669daf5` |
| 25 | `theorem` | [count_false](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant07596fbf0be3f8535641719f5765f7623c0c98810c08606510bc0bbbb88a00bb.lean/declarations/count-false--0915e0eb4705f07412e4d722.md) | 134 | `result-track:0915e0eb4705f07412e4d722eca9826594975068b687f3a70c98540a84a81145` |
| 26 | `lemma` | [exists_of_count_lt_count](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant07596fbf0be3f8535641719f5765f7623c0c98810c08606510bc0bbbb88a00bb.lean/declarations/exists-of-count-lt-count--4b93f86dc6ec6872715d5fed.md) | 137 | `result-track:4b93f86dc6ec6872715d5fedffb410afa73f589576a31edf3fc1fdbb442e31f1` |
| 27 | `theorem` | [count_mono_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant07596fbf0be3f8535641719f5765f7623c0c98810c08606510bc0bbbb88a00bb.lean/declarations/count-mono-left--16a17a0cfe287ba1f5b61bad.md) | 148 | `result-track:16a17a0cfe287ba1f5b61bad05d514037a7bb604e13c5031bfa42ea2b7d3210d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
