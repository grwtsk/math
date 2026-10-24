# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Subgraph.Variantf0d9daedf85ad41e4bc73072e4131c8510b35393057971919f586a250b355032

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "683649fc6592526a7f9411dcf12796bf335e1f53",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variantf0d9daedf85ad41e4bc73072e4131c8510b35393057971919f586a250b355032.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variantf0d9daedf85ad41e4bc73072e4131c8510b35393057971919f586a250b355032.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variantf0d9daedf85ad41e4bc73072e4131c8510b35393057971919f586a250b355032.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `683649fc6592526a7f9411dcf12796bf335e1f53`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variantf0d9daedf85ad41e4bc73072e4131c8510b35393057971919f586a250b355032.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variantf0d9daedf85ad41e4bc73072e4131c8510b35393057971919f586a250b355032.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Connectivity` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Preconnected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variantf0d9daedf85ad41e4bc73072e4131c8510b35393057971919f586a250b355032.lean/declarations/preconnected--fd7d5d158cca811ce65958f8.md) | 29 | `declaration-track:fd7d5d158cca811ce65958f877ca3e7f51b3cf8f1284352d18290c38a5eb23ac` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variantf0d9daedf85ad41e4bc73072e4131c8510b35393057971919f586a250b355032.lean/declarations/instance--267865b7be941832e4088a3e.md) | 32 | `declaration-track:267865b7be941832e4088a3e420522dded8e2d274c004e8e71ede3b73ae2a13b` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variantf0d9daedf85ad41e4bc73072e4131c8510b35393057971919f586a250b355032.lean/declarations/instance--007f3cbf67781716a8a2f7e3.md) | 34 | `declaration-track:007f3cbf67781716a8a2f7e398baebbecc18e39fe50272de00e0db2124108299` |
| 4 | `lemma` | [preconnected_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variantf0d9daedf85ad41e4bc73072e4131c8510b35393057971919f586a250b355032.lean/declarations/preconnected-iff--7449d002077c645877374f82.md) | 37 | `result-track:7449d002077c645877374f82975968e31c6fe7255b5805f2f6bd8f37acb39fe9` |
| 5 | `structure` | [Connected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variantf0d9daedf85ad41e4bc73072e4131c8510b35393057971919f586a250b355032.lean/declarations/connected--ccf58f9724947a6cb01bebc0.md) | 43 | `declaration-track:ccf58f9724947a6cb01bebc03f5a1b37ffdc67313771ae7d11a3255e31d7a74b` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variantf0d9daedf85ad41e4bc73072e4131c8510b35393057971919f586a250b355032.lean/declarations/instance--edbf9f7e7c4151dec49fe3a0.md) | 47 | `declaration-track:edbf9f7e7c4151dec49fe3a0c6c788b66c9a37fd291055756d0be4ebcd77be00` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variantf0d9daedf85ad41e4bc73072e4131c8510b35393057971919f586a250b355032.lean/declarations/instance--40f5fdd58c5db02d42d73fc6.md) | 49 | `declaration-track:40f5fdd58c5db02d42d73fc680734d6df6afb3ee6ddce0405adcb49fb77a4f8f` |
| 8 | `lemma` | [connected_iff'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variantf0d9daedf85ad41e4bc73072e4131c8510b35393057971919f586a250b355032.lean/declarations/connected-iff--723a577732ffa46530ae84bd.md) | 52 | `result-track:723a577732ffa46530ae84bdc9f6df6a84e16433460398fa71d6839f1bb458ea` |
| 9 | `lemma` | [connected_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variantf0d9daedf85ad41e4bc73072e4131c8510b35393057971919f586a250b355032.lean/declarations/connected-iff--1d5cf9aa4d9d61add5b32dc5.md) | 55 | `result-track:1d5cf9aa4d9d61add5b32dc5a4c4d500c4eff726cacd7c79a9490d51b22300fd` |
| 10 | `lemma` | [Connected.preconnected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variantf0d9daedf85ad41e4bc73072e4131c8510b35393057971919f586a250b355032.lean/declarations/connected-preconnected--95fd75190d4941a04cf52c43.md) | 59 | `result-track:95fd75190d4941a04cf52c43489a5ce82a9db79cd8b2cb14d9108b79d5e2621a` |
| 11 | `lemma` | [Connected.nonempty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variantf0d9daedf85ad41e4bc73072e4131c8510b35393057971919f586a250b355032.lean/declarations/connected-nonempty--ecaf2aebb76d91cbafc2def7.md) | 62 | `result-track:ecaf2aebb76d91cbafc2def7f9625b7d7a2fee60db04c6d189a76a57116ff864` |
| 12 | `theorem` | [singletonSubgraph_connected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variantf0d9daedf85ad41e4bc73072e4131c8510b35393057971919f586a250b355032.lean/declarations/singletonsubgraph-connected--bde725e59fe595672561a0df.md) | 65 | `result-track:bde725e59fe595672561a0df8e79850f12d142761564708bb53a464e15dafc8f` |
| 13 | `theorem` | [subgraphOfAdj_connected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variantf0d9daedf85ad41e4bc73072e4131c8510b35393057971919f586a250b355032.lean/declarations/subgraphofadj-connected--a73ee908543d5b4b1e9e97d5.md) | 74 | `result-track:a73ee908543d5b4b1e9e97d5bae8c232661e370ba20ff906de2b33e47cc6fa22` |
| 14 | `lemma` | [top_induce_pair_connected_of_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variantf0d9daedf85ad41e4bc73072e4131c8510b35393057971919f586a250b355032.lean/declarations/top-induce-pair-connected-of-adj--02b6e6494116c201a4acfa07.md) | 82 | `result-track:02b6e6494116c201a4acfa07090be5c88d06acb40b8731b07961f21cd930b57b` |
| 15 | `lemma` | [Connected.mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variantf0d9daedf85ad41e4bc73072e4131c8510b35393057971919f586a250b355032.lean/declarations/connected-mono--72cd647581af86bf2ca13a56.md) | 88 | `result-track:72cd647581af86bf2ca13a56c3ef09ece8917d2fa1e3969206d12324f503a63c` |
| 16 | `lemma` | [Connected.mono'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variantf0d9daedf85ad41e4bc73072e4131c8510b35393057971919f586a250b355032.lean/declarations/connected-mono--5c32b16b6c81a97e1728a896.md) | 95 | `result-track:5c32b16b6c81a97e1728a896247e079a19f0c5e93c1dc7e1ca2c50237802bd30` |
| 17 | `lemma` | [Connected.sup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variantf0d9daedf85ad41e4bc73072e4131c8510b35393057971919f586a250b355032.lean/declarations/connected-sup--569ddcc93b6ea15014d1766f.md) | 100 | `result-track:569ddcc93b6ea15014d1766fdbac7d2507192087414056d6cc201ef1828b378d` |
| 18 | `lemma` | [_root_.SimpleGraph.Walk.toSubgraph_connected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variantf0d9daedf85ad41e4bc73072e4131c8510b35393057971919f586a250b355032.lean/declarations/root-simplegraph-walk-tosubgraph-connected--f26e4ca897f963ad9e7d25df.md) | 110 | `result-track:f26e4ca897f963ad9e7d25dfacaa0688566765da416b50b301758102ce2b8a9c` |
| 19 | `lemma` | [induce_union_connected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variantf0d9daedf85ad41e4bc73072e4131c8510b35393057971919f586a250b355032.lean/declarations/induce-union-connected--4ad7bcaefea5622ca5424096.md) | 120 | `result-track:4ad7bcaefea5622ca542409620e85ed77fac7d299c734716da87baf7353ebc9e` |
| 20 | `lemma` | [Connected.adj_union](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variantf0d9daedf85ad41e4bc73072e4131c8510b35393057971919f586a250b355032.lean/declarations/connected-adj-union--919f8c2d3823f17a24e9582e.md) | 128 | `result-track:919f8c2d3823f17a24e9582ed32d4a4d5c25aa96449af65fe873576c96149811` |
| 21 | `lemma` | [preconnected_iff_forall_exists_walk_subgraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variantf0d9daedf85ad41e4bc73072e4131c8510b35393057971919f586a250b355032.lean/declarations/preconnected-iff-forall-exists-walk-subgraph--a1ec9584345513fe4d0b500f.md) | 136 | `result-track:a1ec9584345513fe4d0b500f841b1ffcae973e177c47ee071bb2693945c4e2a6` |
| 22 | `lemma` | [connected_iff_forall_exists_walk_subgraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variantf0d9daedf85ad41e4bc73072e4131c8510b35393057971919f586a250b355032.lean/declarations/connected-iff-forall-exists-walk-subgraph--d167af8e24bcd3adf9cc2ec0.md) | 150 | `result-track:d167af8e24bcd3adf9cc2ec0a1067d3fce07e98168d3eaa3cd5b1016d0565d87` |
| 23 | `lemma` | [connected_induce_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variantf0d9daedf85ad41e4bc73072e4131c8510b35393057971919f586a250b355032.lean/declarations/connected-induce-iff--2e07b3e73eb2bfa9d13fe833.md) | 159 | `result-track:2e07b3e73eb2bfa9d13fe8337f10759029e304720fe11beb67deef5f0757e6ad` |
| 24 | `lemma` | [induce_union_connected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variantf0d9daedf85ad41e4bc73072e4131c8510b35393057971919f586a250b355032.lean/declarations/induce-union-connected--f94bc55651cf555ffc5413d7.md) | 162 | `result-track:f94bc55651cf555ffc5413d7c89e6125014198bca220f27386ae6958e68fcf1f` |
| 25 | `lemma` | [induce_pair_connected_of_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variantf0d9daedf85ad41e4bc73072e4131c8510b35393057971919f586a250b355032.lean/declarations/induce-pair-connected-of-adj--102548da93cb830d2c842b7b.md) | 169 | `result-track:102548da93cb830d2c842b7bbfa78d5a84f03611f921edac6095ad75928515df` |
| 26 | `lemma` | [Subgraph.Connected.induce_verts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variantf0d9daedf85ad41e4bc73072e4131c8510b35393057971919f586a250b355032.lean/declarations/subgraph-connected-induce-verts--a53fd9f18cb153209efb6ba7.md) | 174 | `result-track:a53fd9f18cb153209efb6ba7f460ceae41b8818f4cfde845ab6d16f4200e4458` |
| 27 | `lemma` | [Walk.connected_induce_support](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variantf0d9daedf85ad41e4bc73072e4131c8510b35393057971919f586a250b355032.lean/declarations/walk-connected-induce-support--33eba3a6f733be4a301f7df2.md) | 179 | `result-track:33eba3a6f733be4a301f7df2bdf2145ef776699ff483fc0a103656f438d87fa3` |
| 28 | `lemma` | [induce_connected_adj_union](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variantf0d9daedf85ad41e4bc73072e4131c8510b35393057971919f586a250b355032.lean/declarations/induce-connected-adj-union--7e4e738b4c4e507675512e78.md) | 184 | `result-track:7e4e738b4c4e507675512e78cf027534766b6d5a1983bbc53d2d329867bcdfeb` |
| 29 | `lemma` | [induce_connected_of_patches](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variantf0d9daedf85ad41e4bc73072e4131c8510b35393057971919f586a250b355032.lean/declarations/induce-connected-of-patches--d6e61ed68d35447596b7bd1f.md) | 198 | `result-track:d6e61ed68d35447596b7bd1fa2e80c643221204c84d8f43bffb8b4e54168a0a1` |
| 30 | `lemma` | [induce_sUnion_connected_of_pairwise_not_disjoint](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variantf0d9daedf85ad41e4bc73072e4131c8510b35393057971919f586a250b355032.lean/declarations/induce-sunion-connected-of-pairwise-not-disjoint--d498cacdc92a89b2d29e6125.md) | 207 | `result-track:d498cacdc92a89b2d29e61257e66657ca31130dc7ab2e8d94c41f2e725158f00` |
| 31 | `lemma` | [extend_finset_to_connected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variantf0d9daedf85ad41e4bc73072e4131c8510b35393057971919f586a250b355032.lean/declarations/extend-finset-to-connected--9533f896e594d313d8466ac2.md) | 220 | `result-track:9533f896e594d313d8466ac2f24fb171cec3cc40909d6846d8275adf8c5eec20` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
