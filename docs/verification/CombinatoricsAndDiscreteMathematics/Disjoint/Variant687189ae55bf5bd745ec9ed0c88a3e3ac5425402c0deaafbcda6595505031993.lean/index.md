# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Disjoint.Variant687189ae55bf5bd745ec9ed0c88a3e3ac5425402c0deaafbcda6595505031993

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "afdcfae094932b3a9efcf95898c7b7ee5cf1583c",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Disjoint/Variant687189ae55bf5bd745ec9ed0c88a3e3ac5425402c0deaafbcda6595505031993.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjoint/Variant687189ae55bf5bd745ec9ed0c88a3e3ac5425402c0deaafbcda6595505031993.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjoint/Variant687189ae55bf5bd745ec9ed0c88a3e3ac5425402c0deaafbcda6595505031993.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `afdcfae094932b3a9efcf95898c7b7ee5cf1583c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Disjoint/Variant687189ae55bf5bd745ec9ed0c88a3e3ac5425402c0deaafbcda6595505031993.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Disjoint/Variant687189ae55bf5bd745ec9ed0c88a3e3ac5425402c0deaafbcda6595505031993.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Insert` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [disjoint_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjoint/Variant687189ae55bf5bd745ec9ed0c88a3e3ac5425402c0deaafbcda6595505031993.lean/declarations/disjoint-left--f495e397ba82dc40042e0c48.md) | 53 | `result-track:f495e397ba82dc40042e0c48974a5fb5855a5d77fc33ec6e234ce997e6bc76e8` |
| 2 | `theorem` | [disjoint_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjoint/Variant687189ae55bf5bd745ec9ed0c88a3e3ac5425402c0deaafbcda6595505031993.lean/declarations/disjoint-right--12df5b2f620283b97c6c9d10.md) | 63 | `result-track:12df5b2f620283b97c6c9d10a71c4942d9e4f173610d0bfbc75eeb6c2a556d20` |
| 3 | `theorem` | [disjoint_iff_ne](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjoint/Variant687189ae55bf5bd745ec9ed0c88a3e3ac5425402c0deaafbcda6595505031993.lean/declarations/disjoint-iff-ne--ea8f54e618c1b039ad07e5e9.md) | 71 | `result-track:ea8f54e618c1b039ad07e5e937701fd0fd61eb43673022767d20a145399a9bed` |
| 4 | `theorem` | [disjoint_val](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjoint/Variant687189ae55bf5bd745ec9ed0c88a3e3ac5425402c0deaafbcda6595505031993.lean/declarations/disjoint-val--d24ca8f9f67f3b23dc9b21bb.md) | 75 | `result-track:d24ca8f9f67f3b23dc9b21bb0ba05cbfb903ff465a0464ac5141ca171c224145` |
| 5 | `theorem` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.DisjointLeft.Variant8a871ec3fe6a0d4191089a002598949ed4a71f7784287a78c8be8692efcc775f.Disjoint.forall_ne_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjoint/Variant687189ae55bf5bd745ec9ed0c88a3e3ac5425402c0deaafbcda6595505031993.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-disjointleft-variant8a87--3af46c0b82fb37a6964bd189.md) | 78 | `result-track:3af46c0b82fb37a6964bd189020bf97d629d93d840600a77a615b17bf6bfad6c` |
| 6 | `theorem` | [not_disjoint_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjoint/Variant687189ae55bf5bd745ec9ed0c88a3e3ac5425402c0deaafbcda6595505031993.lean/declarations/not-disjoint-iff--82a09ef626efcce637f8313c.md) | 81 | `result-track:82a09ef626efcce637f8313c903c1a8481c67ed901d06ac165b0dc6fef907c05` |
| 7 | `theorem` | [disjoint_of_subset_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjoint/Variant687189ae55bf5bd745ec9ed0c88a3e3ac5425402c0deaafbcda6595505031993.lean/declarations/disjoint-of-subset-left--a608f26a5f7e3d641c26607e.md) | 85 | `result-track:a608f26a5f7e3d641c26607e4fe4193b333f6e7c7b385c0dc0e209ce84ce6587` |
| 8 | `theorem` | [disjoint_of_subset_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjoint/Variant687189ae55bf5bd745ec9ed0c88a3e3ac5425402c0deaafbcda6595505031993.lean/declarations/disjoint-of-subset-right--41e9e3a7c96914a4011926b2.md) | 88 | `result-track:41e9e3a7c96914a4011926b28f105df6c2012b01f9073d82410abdbd1538c686` |
| 9 | `theorem` | [disjoint_empty_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjoint/Variant687189ae55bf5bd745ec9ed0c88a3e3ac5425402c0deaafbcda6595505031993.lean/declarations/disjoint-empty-left--bd301b58d05afc25a77075b0.md) | 92 | `result-track:bd301b58d05afc25a77075b054bce45b0414c0b1ff4d35e989af2d407da25caf` |
| 10 | `theorem` | [disjoint_empty_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjoint/Variant687189ae55bf5bd745ec9ed0c88a3e3ac5425402c0deaafbcda6595505031993.lean/declarations/disjoint-empty-right--c7e6fc2dbb4b3c743d59fd62.md) | 96 | `result-track:c7e6fc2dbb4b3c743d59fd627cec2778f9de8a7dccdf923d428abce535795c3a` |
| 11 | `theorem` | [disjoint_singleton_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjoint/Variant687189ae55bf5bd745ec9ed0c88a3e3ac5425402c0deaafbcda6595505031993.lean/declarations/disjoint-singleton-left--a082b577c76e6480d7a01488.md) | 100 | `result-track:a082b577c76e6480d7a014880e2438d58a28bc16138b245e50dcd4e064a46a64` |
| 12 | `theorem` | [disjoint_singleton_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjoint/Variant687189ae55bf5bd745ec9ed0c88a3e3ac5425402c0deaafbcda6595505031993.lean/declarations/disjoint-singleton-right--10e5141769b5742a1209c58e.md) | 104 | `result-track:10e5141769b5742a1209c58e7d3a4b290f826bad66c64ba5d3215a1bffaee79a` |
| 13 | `theorem` | [disjoint_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjoint/Variant687189ae55bf5bd745ec9ed0c88a3e3ac5425402c0deaafbcda6595505031993.lean/declarations/disjoint-singleton--7ff11993b8ba39f05d0a20e5.md) | 108 | `result-track:7ff11993b8ba39f05d0a20e50a4baaaece88f0967eb86cf85812d942c009b433` |
| 14 | `theorem` | [disjoint_self_iff_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjoint/Variant687189ae55bf5bd745ec9ed0c88a3e3ac5425402c0deaafbcda6595505031993.lean/declarations/disjoint-self-iff-empty--7219785247d074637a8cd440.md) | 111 | `result-track:7219785247d074637a8cd44086d1fb92c1e1f57dec34e8197bdca7c5a2470e88` |
| 15 | `theorem` | [disjoint_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjoint/Variant687189ae55bf5bd745ec9ed0c88a3e3ac5425402c0deaafbcda6595505031993.lean/declarations/disjoint-coe--cbf8234e78b8c8639bf8c1df.md) | 115 | `result-track:cbf8234e78b8c8639bf8c1dfdd22f030c2928d02f8f9a444dc7c4229f8b69d24` |
| 16 | `theorem` | [pairwiseDisjoint_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjoint/Variant687189ae55bf5bd745ec9ed0c88a3e3ac5425402c0deaafbcda6595505031993.lean/declarations/pairwisedisjoint-coe--e2bf9a4d35d01f426654aa52.md) | 119 | `result-track:e2bf9a4d35d01f426654aa527631780d810cc56fc3f7890b66a8ad3947f125fa` |
| 17 | `instance` | [decidableDisjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjoint/Variant687189ae55bf5bd745ec9ed0c88a3e3ac5425402c0deaafbcda6595505031993.lean/declarations/decidabledisjoint--1e0eeaf8152703c24306eabf.md) | 125 | `declaration-track:1e0eeaf8152703c24306eabf7d94b22c540224e0beb6d9f892b69753b1884acf` |
| 18 | `def` | [disjUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjoint/Variant687189ae55bf5bd745ec9ed0c88a3e3ac5425402c0deaafbcda6595505031993.lean/declarations/disjunion--f0f847500ff87f4f21495f11.md) | 136 | `declaration-track:f0f847500ff87f4f21495f11b34dc88e8e8a68b86b91201d10b9b545fc616b6a` |
| 19 | `theorem` | [mem_disjUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjoint/Variant687189ae55bf5bd745ec9ed0c88a3e3ac5425402c0deaafbcda6595505031993.lean/declarations/mem-disjunion--3aa85a3fa2644521ee61f15b.md) | 140 | `result-track:3aa85a3fa2644521ee61f15b75199ff91228804a3863992cd327421c02628ef4` |
| 20 | `theorem` | [coe_disjUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjoint/Variant687189ae55bf5bd745ec9ed0c88a3e3ac5425402c0deaafbcda6595505031993.lean/declarations/coe-disjunion--8f238b290852fc96a8cf6008.md) | 144 | `result-track:8f238b290852fc96a8cf600801e4dbbef5c105ee42f40133cf7b2a09c15dadcc` |
| 21 | `theorem` | [disjUnion_comm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjoint/Variant687189ae55bf5bd745ec9ed0c88a3e3ac5425402c0deaafbcda6595505031993.lean/declarations/disjunion-comm--d67edc056e21dc46c8a91994.md) | 148 | `result-track:d67edc056e21dc46c8a91994f1158b0908bbfe8609650d43f7c09c83019d1bcd` |
| 22 | `theorem` | [empty_disjUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjoint/Variant687189ae55bf5bd745ec9ed0c88a3e3ac5425402c0deaafbcda6595505031993.lean/declarations/empty-disjunion--39b341df71a6a0d43b14449f.md) | 153 | `result-track:39b341df71a6a0d43b14449fe314231a7567d7210d0c7dc99372566955d2cc09` |
| 23 | `theorem` | [disjUnion_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjoint/Variant687189ae55bf5bd745ec9ed0c88a3e3ac5425402c0deaafbcda6595505031993.lean/declarations/disjunion-empty--8dde7b4598653f6df4bf146e.md) | 158 | `result-track:8dde7b4598653f6df4bf146eb5e4bc97826d4281c6153f2b483e0cf059e73d9e` |
| 24 | `theorem` | [singleton_disjUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjoint/Variant687189ae55bf5bd745ec9ed0c88a3e3ac5425402c0deaafbcda6595505031993.lean/declarations/singleton-disjunion--2986443dbace3adab8d2d621.md) | 162 | `result-track:2986443dbace3adab8d2d621f05fae464ce1281895b77383dbb615ffd661a68b` |
| 25 | `theorem` | [disjUnion_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjoint/Variant687189ae55bf5bd745ec9ed0c88a3e3ac5425402c0deaafbcda6595505031993.lean/declarations/disjunion-singleton--08352ae82638665e50c99e74.md) | 166 | `result-track:08352ae82638665e50c99e7431e3e178d3bf534d1082dc99b1adb9a46855384d` |
| 26 | `theorem` | [disjoint_insert_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjoint/Variant687189ae55bf5bd745ec9ed0c88a3e3ac5425402c0deaafbcda6595505031993.lean/declarations/disjoint-insert-left--19c8fc7e13e2d3a6b49c0ebf.md) | 177 | `result-track:19c8fc7e13e2d3a6b49c0ebf31baf251d14910d7f0fc3a2520284ebe2cd9d0cc` |
| 27 | `theorem` | [disjoint_insert_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjoint/Variant687189ae55bf5bd745ec9ed0c88a3e3ac5425402c0deaafbcda6595505031993.lean/declarations/disjoint-insert-right--3d9b0ea431acf35b0fe3df4e.md) | 181 | `result-track:3d9b0ea431acf35b0fe3df4e84cef23d2294e0ea608debdeffe04d0296949bc1` |
| 28 | `theorem` | [disjoint_toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjoint/Variant687189ae55bf5bd745ec9ed0c88a3e3ac5425402c0deaafbcda6595505031993.lean/declarations/disjoint-tofinset--f125c5acc7d4c8a224934abd.md) | 193 | `result-track:f125c5acc7d4c8a224934abd21beede4dfa05deefb66b5107db6ef20e72672f6` |
| 29 | `theorem` | [disjoint_toFinset_iff_disjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjoint/Variant687189ae55bf5bd745ec9ed0c88a3e3ac5425402c0deaafbcda6595505031993.lean/declarations/disjoint-tofinset-iff-disjoint--b4943f1dabdb08a9b71e4b5c.md) | 204 | `result-track:b4943f1dabdb08a9b71e4b5c53b25f8c2cef6714e303d933b595f5e18a4700aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
