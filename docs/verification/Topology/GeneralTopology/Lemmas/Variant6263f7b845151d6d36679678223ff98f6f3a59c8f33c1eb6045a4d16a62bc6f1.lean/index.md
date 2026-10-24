# Verification target: GRWTSK.Topology.GeneralTopology.Lemmas.Variant6263f7b845151d6d36679678223ff98f6f3a59c8f33c1eb6045a4d16a62bc6f1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3b92135706cb5ff4c81e182396359b54caff47e9",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant6263f7b845151d6d36679678223ff98f6f3a59c8f33c1eb6045a4d16a62bc6f1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant6263f7b845151d6d36679678223ff98f6f3a59c8f33c1eb6045a4d16a62bc6f1.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant6263f7b845151d6d36679678223ff98f6f3a59c8f33c1eb6045a4d16a62bc6f1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3b92135706cb5ff4c81e182396359b54caff47e9`.

Source path: `GRWTSK/Topology/GeneralTopology/Lemmas/Variant6263f7b845151d6d36679678223ff98f6f3a59c8f33c1eb6045a4d16a62bc6f1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Lemmas/Variant6263f7b845151d6d36679678223ff98f6f3a59c8f33c1eb6045a4d16a62bc6f1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant6263f7b845151d6d36679678223ff98f6f3a59c8f33c1eb6045a4d16a62bc6f1.lean/declarations/instance--ac7ddf83bddcfc5254f09e04.md) | 31 | `declaration-track:ac7ddf83bddcfc5254f09e04a89570b865d94c4d0666a4941f5f793473b4b4ce` |
| 2 | `lemma` | [Real.singleton_eq_inter_Icc](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant6263f7b845151d6d36679678223ff98f6f3a59c8f33c1eb6045a4d16a62bc6f1.lean/declarations/real-singleton-eq-inter-icc--9328d4334e9c6df66c55b0a8.md) | 35 | `result-track:9328d4334e9c6df66c55b0a8baef901849a661dae4da7d67946efe329f76572b` |
| 3 | `lemma` | [squeeze_zero'](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant6263f7b845151d6d36679678223ff98f6f3a59c8f33c1eb6045a4d16a62bc6f1.lean/declarations/squeeze-zero--0c4ff2cbcd3f2729dfb1843e.md) | 40 | `result-track:0c4ff2cbcd3f2729dfb1843eac76a4579d1e73d59db9ea4513c4dfca6954366e` |
| 4 | `lemma` | [squeeze_zero](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant6263f7b845151d6d36679678223ff98f6f3a59c8f33c1eb6045a4d16a62bc6f1.lean/declarations/squeeze-zero--a89f5071a3768f39357f114d.md) | 46 | `result-track:a89f5071a3768f39357f114dca91526821247817c0c8529dfdf90d6981a47168` |
| 5 | `lemma` | [eventually_closedBall_subset](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant6263f7b845151d6d36679678223ff98f6f3a59c8f33c1eb6045a4d16a62bc6f1.lean/declarations/eventually-closedball-subset--fdffa4c181ac6ec8150ecdca.md) | 52 | `result-track:fdffa4c181ac6ec8150ecdca84ca3386437b30701b29d98772c5170d46336464` |
| 6 | `lemma` | [tendsto_closedBall_smallSets](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant6263f7b845151d6d36679678223ff98f6f3a59c8f33c1eb6045a4d16a62bc6f1.lean/declarations/tendsto-closedball-smallsets--a52357b4d19664baf509dcd6.md) | 58 | `result-track:a52357b4d19664baf509dcd6eeed359b488143a2cc4a56ced8d0c43e83a019c1` |
| 7 | `lemma` | [eventually_ball_subset](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant6263f7b845151d6d36679678223ff98f6f3a59c8f33c1eb6045a4d16a62bc6f1.lean/declarations/eventually-ball-subset--5cf97eabacc122048067f099.md) | 63 | `result-track:5cf97eabacc122048067f0993cf28ca5c323a971dae41d49a6376c086dbca4eb` |
| 8 | `lemma` | [isClosed_closedBall](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant6263f7b845151d6d36679678223ff98f6f3a59c8f33c1eb6045a4d16a62bc6f1.lean/declarations/isclosed-closedball--c0e3f7f29f288520b1deb2bb.md) | 69 | `result-track:c0e3f7f29f288520b1deb2bb7047591200d487745a6b6f649a00695bcfb67678` |
| 9 | `lemma` | [isClosed_sphere](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant6263f7b845151d6d36679678223ff98f6f3a59c8f33c1eb6045a4d16a62bc6f1.lean/declarations/isclosed-sphere--f7cd323181d04a30d7ce1320.md) | 71 | `result-track:f7cd323181d04a30d7ce13202bd9712a42d732c573d827523e2f8b307d95cb2d` |
| 10 | `lemma` | [closure_closedBall](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant6263f7b845151d6d36679678223ff98f6f3a59c8f33c1eb6045a4d16a62bc6f1.lean/declarations/closure-closedball--d85daaac99f124f136f697d4.md) | 74 | `result-track:d85daaac99f124f136f697d4f50024c0c264326a518f3404735533704ff96164` |
| 11 | `lemma` | [closure_sphere](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant6263f7b845151d6d36679678223ff98f6f3a59c8f33c1eb6045a4d16a62bc6f1.lean/declarations/closure-sphere--c958c6e860e4975455de4708.md) | 78 | `result-track:c958c6e860e4975455de47087d39f85bed8c667c1820b4f8cd1690745d843564` |
| 12 | `lemma` | [closure_ball_subset_closedBall](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant6263f7b845151d6d36679678223ff98f6f3a59c8f33c1eb6045a4d16a62bc6f1.lean/declarations/closure-ball-subset-closedball--42b89dad25e32ad2d91099bd.md) | 81 | `result-track:42b89dad25e32ad2d91099bdad587ba2709c733d2ffcab8d30ff2b0c79d40808` |
| 13 | `lemma` | [frontier_ball_subset_sphere](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant6263f7b845151d6d36679678223ff98f6f3a59c8f33c1eb6045a4d16a62bc6f1.lean/declarations/frontier-ball-subset-sphere--153007554eff8301a78c274e.md) | 84 | `result-track:153007554eff8301a78c274e68c4c421826bd9de11d403be14d31c8439aaca30` |
| 14 | `lemma` | [frontier_closedBall_subset_sphere](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant6263f7b845151d6d36679678223ff98f6f3a59c8f33c1eb6045a4d16a62bc6f1.lean/declarations/frontier-closedball-subset-sphere--4bde0a6f17a584cdd178085d.md) | 87 | `result-track:4bde0a6f17a584cdd178085dc802ace7cc0eaa667e5fbe2a14d40e01b6c437c7` |
| 15 | `lemma` | [closedBall_zero'](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant6263f7b845151d6d36679678223ff98f6f3a59c8f33c1eb6045a4d16a62bc6f1.lean/declarations/closedball-zero--8fa68d4aa0ecf397803d6b5a.md) | 90 | `result-track:8fa68d4aa0ecf397803d6b5aa4d5072c92da3abcd2c0294db92d4f6bf71ea43a` |
| 16 | `lemma` | [eventually_isCompact_closedBall](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant6263f7b845151d6d36679678223ff98f6f3a59c8f33c1eb6045a4d16a62bc6f1.lean/declarations/eventually-iscompact-closedball--73a13b22977aedee6e9203a8.md) | 96 | `result-track:73a13b22977aedee6e9203a84e06e1f7d33bd676b0ca6487aa156d19ee358cb0` |
| 17 | `lemma` | [exists_isCompact_closedBall](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant6263f7b845151d6d36679678223ff98f6f3a59c8f33c1eb6045a4d16a62bc6f1.lean/declarations/exists-iscompact-closedball--05d96fc7273a58de987cbc51.md) | 102 | `result-track:05d96fc7273a58de987cbc51d95934fb713a49f47275c5b081665e579657d5be` |
| 18 | `theorem` | [biInter_gt_closedBall](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant6263f7b845151d6d36679678223ff98f6f3a59c8f33c1eb6045a4d16a62bc6f1.lean/declarations/biinter-gt-closedball--14aa0b1e78546f730b692e77.md) | 108 | `result-track:14aa0b1e78546f730b692e77f5e1330c4c9c72974bb4116724b179f6b377511c` |
| 19 | `theorem` | [biInter_gt_ball](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant6263f7b845151d6d36679678223ff98f6f3a59c8f33c1eb6045a4d16a62bc6f1.lean/declarations/biinter-gt-ball--ab662d7a9390d1859cc0e8da.md) | 112 | `result-track:ab662d7a9390d1859cc0e8dad38fa8fa9afa06863ce1490b1607aa9c008b6d28` |
| 20 | `theorem` | [biUnion_lt_ball](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant6263f7b845151d6d36679678223ff98f6f3a59c8f33c1eb6045a4d16a62bc6f1.lean/declarations/biunion-lt-ball--74b60eaf382943171bbe9d65.md) | 116 | `result-track:74b60eaf382943171bbe9d6541a2698fbe814962a74ebedb0a9aed3960aca342` |
| 21 | `theorem` | [biUnion_lt_closedBall](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant6263f7b845151d6d36679678223ff98f6f3a59c8f33c1eb6045a4d16a62bc6f1.lean/declarations/biunion-lt-closedball--e477444c2dce52e10c8ff26a.md) | 121 | `result-track:e477444c2dce52e10c8ff26ab03aae5c8a6f95bcf45eae788aa31fbe33581d9a` |
| 22 | `theorem` | [lebesgue_number_lemma_of_metric](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant6263f7b845151d6d36679678223ff98f6f3a59c8f33c1eb6045a4d16a62bc6f1.lean/declarations/lebesgue-number-lemma-of-metric--77abde90345cbfd82ff4c118.md) | 128 | `result-track:77abde90345cbfd82ff4c11862d40a25f2387d6c66365cf36aaa7d42f5d62f1c` |
| 23 | `theorem` | [lebesgue_number_lemma_of_metric_sUnion](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant6263f7b845151d6d36679678223ff98f6f3a59c8f33c1eb6045a4d16a62bc6f1.lean/declarations/lebesgue-number-lemma-of-metric-sunion--18852f4f6bc481571b604649.md) | 133 | `result-track:18852f4f6bc481571b6046492e679a1c8ac43bf87b55be20756646ce92dd2cb5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
