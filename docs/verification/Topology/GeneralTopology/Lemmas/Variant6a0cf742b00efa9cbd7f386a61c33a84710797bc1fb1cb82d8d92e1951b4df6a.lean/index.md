# Verification target: GRWTSK.Topology.GeneralTopology.Lemmas.Variant6a0cf742b00efa9cbd7f386a61c33a84710797bc1fb1cb82d8d92e1951b4df6a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f43009fa8c4bfcb46f82727fece38bf05b7b65d7",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant6a0cf742b00efa9cbd7f386a61c33a84710797bc1fb1cb82d8d92e1951b4df6a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant6a0cf742b00efa9cbd7f386a61c33a84710797bc1fb1cb82d8d92e1951b4df6a.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant6a0cf742b00efa9cbd7f386a61c33a84710797bc1fb1cb82d8d92e1951b4df6a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f43009fa8c4bfcb46f82727fece38bf05b7b65d7`.

Source path: `GRWTSK/Topology/GeneralTopology/Lemmas/Variant6a0cf742b00efa9cbd7f386a61c33a84710797bc1fb1cb82d8d92e1951b4df6a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Lemmas/Variant6a0cf742b00efa9cbd7f386a61c33a84710797bc1fb1cb82d8d92e1951b4df6a.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant6a0cf742b00efa9cbd7f386a61c33a84710797bc1fb1cb82d8d92e1951b4df6a.lean/declarations/instance--66b182d01ccc967c2539f8e1.md) | 23 | `declaration-track:66b182d01ccc967c2539f8e1685d86f935a92bd51e04abcfc301d09ad511e4f8` |
| 2 | `lemma` | [Real.singleton_eq_inter_Icc](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant6a0cf742b00efa9cbd7f386a61c33a84710797bc1fb1cb82d8d92e1951b4df6a.lean/declarations/real-singleton-eq-inter-icc--19dc9df74e2beb46c5fd6c61.md) | 27 | `result-track:19dc9df74e2beb46c5fd6c61a6d389e71c709c369dab6ee4ab94ba4943d1ce0c` |
| 3 | `lemma` | [squeeze_zero'](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant6a0cf742b00efa9cbd7f386a61c33a84710797bc1fb1cb82d8d92e1951b4df6a.lean/declarations/squeeze-zero--5d140a8051471a2f3903a6ee.md) | 32 | `result-track:5d140a8051471a2f3903a6eee95425a998269f56d7c4c91d1789996663d47e39` |
| 4 | `lemma` | [squeeze_zero](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant6a0cf742b00efa9cbd7f386a61c33a84710797bc1fb1cb82d8d92e1951b4df6a.lean/declarations/squeeze-zero--aff6fc1b83c36eb8006982bc.md) | 38 | `result-track:aff6fc1b83c36eb8006982bca41ba313f0f67a5e7394522c8f6d40d97daac028` |
| 5 | `lemma` | [eventually_closedBall_subset](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant6a0cf742b00efa9cbd7f386a61c33a84710797bc1fb1cb82d8d92e1951b4df6a.lean/declarations/eventually-closedball-subset--25f64fcfe20f0ddcb04287a0.md) | 44 | `result-track:25f64fcfe20f0ddcb04287a0266286ba3763ce57d765c537b462a8c1c4bacf93` |
| 6 | `lemma` | [tendsto_closedBall_smallSets](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant6a0cf742b00efa9cbd7f386a61c33a84710797bc1fb1cb82d8d92e1951b4df6a.lean/declarations/tendsto-closedball-smallsets--605e4f9e27419119f464a83f.md) | 50 | `result-track:605e4f9e27419119f464a83f07ef75c89b099ea124c4b13405eb5d00c89dddd7` |
| 7 | `lemma` | [eventually_ball_subset](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant6a0cf742b00efa9cbd7f386a61c33a84710797bc1fb1cb82d8d92e1951b4df6a.lean/declarations/eventually-ball-subset--70410b39d2d395b833b86315.md) | 55 | `result-track:70410b39d2d395b833b863152d302956e85d0511c951514c5dcf00e0f15d20b4` |
| 8 | `lemma` | [isClosed_closedBall](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant6a0cf742b00efa9cbd7f386a61c33a84710797bc1fb1cb82d8d92e1951b4df6a.lean/declarations/isclosed-closedball--cf3dd9a84434bd5e018f343c.md) | 61 | `result-track:cf3dd9a84434bd5e018f343c8b19509432bc5392b614614c9cb6d0a39a9537c3` |
| 9 | `lemma` | [isClosed_sphere](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant6a0cf742b00efa9cbd7f386a61c33a84710797bc1fb1cb82d8d92e1951b4df6a.lean/declarations/isclosed-sphere--269b826d54fd8fcbc6f53c82.md) | 63 | `result-track:269b826d54fd8fcbc6f53c821106210bf1c6019463b73bc296ab3b91f76b4d73` |
| 10 | `lemma` | [closure_closedBall](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant6a0cf742b00efa9cbd7f386a61c33a84710797bc1fb1cb82d8d92e1951b4df6a.lean/declarations/closure-closedball--cb7e1b0ca7c6750eb32c3625.md) | 66 | `result-track:cb7e1b0ca7c6750eb32c362586e66b639936e5cea83ef9516311c531bd2d05d4` |
| 11 | `lemma` | [closure_sphere](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant6a0cf742b00efa9cbd7f386a61c33a84710797bc1fb1cb82d8d92e1951b4df6a.lean/declarations/closure-sphere--983e0186564bcef553db9ff5.md) | 70 | `result-track:983e0186564bcef553db9ff52232cc12dae52a080546ce7af7f81de25c507f02` |
| 12 | `lemma` | [closure_ball_subset_closedBall](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant6a0cf742b00efa9cbd7f386a61c33a84710797bc1fb1cb82d8d92e1951b4df6a.lean/declarations/closure-ball-subset-closedball--9aeca527cb077576f580c9d4.md) | 73 | `result-track:9aeca527cb077576f580c9d4465b086183d4f3785c14a9fc773fd5b2c8bf4b26` |
| 13 | `lemma` | [frontier_ball_subset_sphere](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant6a0cf742b00efa9cbd7f386a61c33a84710797bc1fb1cb82d8d92e1951b4df6a.lean/declarations/frontier-ball-subset-sphere--2ea5136bd9686bc1302d0b7b.md) | 76 | `result-track:2ea5136bd9686bc1302d0b7b49a9b5219d3d22493b9f1113fc53bb8f123e9ceb` |
| 14 | `lemma` | [frontier_closedBall_subset_sphere](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant6a0cf742b00efa9cbd7f386a61c33a84710797bc1fb1cb82d8d92e1951b4df6a.lean/declarations/frontier-closedball-subset-sphere--8d21f24c506ab9905040d978.md) | 79 | `result-track:8d21f24c506ab9905040d978676de424e9478241834ac5e882fbfcc45290be90` |
| 15 | `lemma` | [closedBall_zero'](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant6a0cf742b00efa9cbd7f386a61c33a84710797bc1fb1cb82d8d92e1951b4df6a.lean/declarations/closedball-zero--2da1daa954c0bd8fed2a37c0.md) | 82 | `result-track:2da1daa954c0bd8fed2a37c0c7bbd29dd1633119483a2f5bbee7c340720b5db4` |
| 16 | `lemma` | [eventually_isCompact_closedBall](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant6a0cf742b00efa9cbd7f386a61c33a84710797bc1fb1cb82d8d92e1951b4df6a.lean/declarations/eventually-iscompact-closedball--71b0214ece6b3f26127c7617.md) | 88 | `result-track:71b0214ece6b3f26127c7617a60eb4412a7de2561ad033347543350a3ae9c5c8` |
| 17 | `lemma` | [exists_isCompact_closedBall](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant6a0cf742b00efa9cbd7f386a61c33a84710797bc1fb1cb82d8d92e1951b4df6a.lean/declarations/exists-iscompact-closedball--be6fa38f744f0438c2f2736c.md) | 94 | `result-track:be6fa38f744f0438c2f2736cfa993b791c0109d3905efa8d32155c985f6b7214` |
| 18 | `theorem` | [biInter_gt_closedBall](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant6a0cf742b00efa9cbd7f386a61c33a84710797bc1fb1cb82d8d92e1951b4df6a.lean/declarations/biinter-gt-closedball--a96e6f4cfa6c1e34d0c7a655.md) | 100 | `result-track:a96e6f4cfa6c1e34d0c7a6559e545176022dda75da8f2efe9d81e9cc1cb7fa5c` |
| 19 | `theorem` | [biInter_gt_ball](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant6a0cf742b00efa9cbd7f386a61c33a84710797bc1fb1cb82d8d92e1951b4df6a.lean/declarations/biinter-gt-ball--c651e2543a1f1d48bc12b202.md) | 104 | `result-track:c651e2543a1f1d48bc12b202004e7fb05967b7759e1657385529b2b3a75bab97` |
| 20 | `theorem` | [biUnion_lt_ball](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant6a0cf742b00efa9cbd7f386a61c33a84710797bc1fb1cb82d8d92e1951b4df6a.lean/declarations/biunion-lt-ball--955cf2b343196c66d161cc1e.md) | 108 | `result-track:955cf2b343196c66d161cc1e2adce08eb8ac686dfdaf727b5b645a6ad5e9f395` |
| 21 | `theorem` | [biUnion_lt_closedBall](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant6a0cf742b00efa9cbd7f386a61c33a84710797bc1fb1cb82d8d92e1951b4df6a.lean/declarations/biunion-lt-closedball--dfc9e308dff7265b767d634a.md) | 113 | `result-track:dfc9e308dff7265b767d634aefe88ff74b04a843ee6cbdab6dac902860a20839` |
| 22 | `theorem` | [lebesgue_number_lemma_of_metric](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant6a0cf742b00efa9cbd7f386a61c33a84710797bc1fb1cb82d8d92e1951b4df6a.lean/declarations/lebesgue-number-lemma-of-metric--9e1e5cf87fb68d085529c457.md) | 120 | `result-track:9e1e5cf87fb68d085529c457d57bdbffb860c82e7d8e64ef90207ce2da489a62` |
| 23 | `theorem` | [lebesgue_number_lemma_of_metric_sUnion](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant6a0cf742b00efa9cbd7f386a61c33a84710797bc1fb1cb82d8d92e1951b4df6a.lean/declarations/lebesgue-number-lemma-of-metric-sunion--c8fedb5378dbdd6d26153961.md) | 125 | `result-track:c8fedb5378dbdd6d261539613e0065e77b538ac0e3522fb7012eeb070d9d5504` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
