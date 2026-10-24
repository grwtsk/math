# GRWTSK.CombinatoricsAndDiscreteMathematics.Subdivision.Variantb4c2d1799d3d0b3b7de6c6dfb1ec8fb6955a6d5a7e81a4eece78b2cf8e3dc02c

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**71 observed declarations and anonymous commands**, 42 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/Subdivision/Variantb4c2d1799d3d0b3b7de6c6dfb1ec8fb6955a6d5a7e81a4eece78b2cf8e3dc02c.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `641120279d49dbefae1c893ca239537f35ba0fea`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/CombinatoricsAndDiscreteMathematics/Subdivision/Variantb4c2d1799d3d0b3b7de6c6dfb1ec8fb6955a6d5a7e81a4eece78b2cf8e3dc02c.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ControlRow](declarations/controlrow--5e702cb1ccbeb86687cf8ef3.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [step](declarations/step--4094c770e71c8765cd31f697.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [eval](declarations/eval--4d60a3600f85ed3504e4abd5.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [bernsteinWeight](declarations/bernsteinweight--0f68dd2c87377af698db0258.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [bernsteinWeight_zero_succ](declarations/bernsteinweight-zero-succ--8c66de79a652c6978b9eedea.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [bernsteinWeight_succ_succ](declarations/bernsteinweight-succ-succ--3d18e320764095776c8b8415.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [bernsteinSum](declarations/bernsteinsum--1b5e3109a4955ee0d9906f23.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [shifted_bernsteinWeight_sum](declarations/shifted-bernsteinweight-sum--4b90f8295e49f58fc3d4e8c3.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [bernsteinSum_succ_eq_step](declarations/bernsteinsum-succ-eq-step--366d211727141217d4c5f980.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [eval_eq_bernsteinWeight_sum](declarations/eval-eq-bernsteinweight-sum--4a8bcc0bb10e2e4933477f99.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [bernsteinWeight_eq_bernstein](declarations/bernsteinweight-eq-bernstein--dacba2775e74cefe5e5a524b.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [eval_eq_bernstein](declarations/eval-eq-bernstein--e047e8de2b85042d024233ec.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [rowCombo](declarations/rowcombo--20bb3d842776d0a21adcfed7.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [step_rowCombo](declarations/step-rowcombo--62bac67fdc64ac83c15007f0.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [eval_rowCombo](declarations/eval-rowcombo--c0690fb1082cbb49fe2c408a.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [step_eq_rowCombo_self_step](declarations/step-eq-rowcombo-self-step--f981478def61fb7839dd5bb4.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [splitLeft](declarations/splitleft--a3e1a277dec504d8c73e935c.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [step_splitLeft](declarations/step-splitleft--ee485778c344373ad85e8200.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [eval_split_left_mul](declarations/eval-split-left-mul--cf514b3250ff36543712e132.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [eval_split_left](declarations/eval-split-left--66d949f140c24fafea943343.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [eval_congr_prefix](declarations/eval-congr-prefix--491bdadcdba07d1d5c92af40.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [splitRight](declarations/splitright--dafce093002d233360202e48.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [step_splitRight_prefix](declarations/step-splitright-prefix--39910ab56360e41fdeeadd78.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [eval_split_right](declarations/eval-split-right--f644375846afb3001883b2c0.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `abbrev` | [FiniteControl](declarations/finitecontrol--1ea926da578c919dd3aef733.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [extendFinite](declarations/extendfinite--08e51012ee2f72d878d673e0.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [finiteEval](declarations/finiteeval--d76bb92ecb8cbfdc10ebe026.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [finiteEval_eq_bernstein](declarations/finiteeval-eq-bernstein--e83415c6742ff1784241cd9c.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [finiteSplitLeft](declarations/finitesplitleft--2cf6e6a146f645314b47d4e3.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [finiteSplitRight](declarations/finitesplitright--fabb85bbd97de40f05b6c251.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [eval_extendFinite_finiteSplitLeft](declarations/eval-extendfinite-finitesplitleft--5093defe9f20f1af4eee1dbc.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [eval_extendFinite_finiteSplitRight](declarations/eval-extendfinite-finitesplitright--9e914f998cfc0af97008763c.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [finiteEval_split_left](declarations/finiteeval-split-left--f536a214b6a0637221e454a7.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [finiteEval_split_right](declarations/finiteeval-split-right--d3487685117d7e2edc4dd3e6.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `abbrev` | [WeightedHomogeneousPoint](declarations/weightedhomogeneouspoint--8d2798ff182afb249a6024b6.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `abbrev` | [FiniteWeightedControl](declarations/finiteweightedcontrol--1e5229b9ffa0d508821e2bb9.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [weightedSplitLeft](declarations/weightedsplitleft--503bb566207a42222da16b89.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [weightedSplitRight](declarations/weightedsplitright--678e98ef6769bf94f34ce797.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [dehomogenize](declarations/dehomogenize--4ea0f775ba4f8da7c0004c45.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [rationalEval](declarations/rationaleval--cc3c7437d3f4b134d0c34639.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [rationalEval_split_left](declarations/rationaleval-split-left--5b41661537dec6d3d2f75736.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [rationalEval_split_right](declarations/rationaleval-split-right--47ad42fe91c312833b6c6fc8.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [eval_snd](declarations/eval-snd--ad9054b6dff30b3c96abf894.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [eval_pos_of_prefix_pos](declarations/eval-pos-of-prefix-pos--fe99ce4d2d4227d30e1ed2f8.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [homogeneousControl](declarations/homogeneouscontrol--9237bd273115d765dba7a00c.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [weightedSplitLeft_weight_pos](declarations/weightedsplitleft-weight-pos--f660c03db7860cdc3c962ad6.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [weightedSplitRight_weight_pos](declarations/weightedsplitright-weight-pos--279e106de363d5b291111552.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [segmentOfPositiveHomogeneous](declarations/segmentofpositivehomogeneous--735743173eb6e9777924677b.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [splitLeftSegment](declarations/splitleftsegment--8813e44536a627626cd6842d.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [splitRightSegment](declarations/splitrightsegment--4a779e23dee3ab2d5bea957e.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [splitAt](declarations/splitat--72ca8d4ff34cd999f4975a88.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [leftParameter](declarations/leftparameter--f459709ad871176d952e9564.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [rightParameter](declarations/rightparameter--d9aae54e121512c6347fb41b.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [leftParameter_val](declarations/leftparameter-val--c6a4b5b6399b465aed353f7e.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [rightParameter_val](declarations/rightparameter-val--682ade8e77ed371478f89e1f.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [homogeneousControl_segmentOfPositiveHomogeneous](declarations/homogeneouscontrol-segmentofpositivehomogeneous--1e6d3c5ab2cc7eac98aac6d6.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [homogeneousControl_splitLeftSegment](declarations/homogeneouscontrol-splitleftsegment--fdee207b7dcbc1d62d508b71.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [homogeneousControl_splitRightSegment](declarations/homogeneouscontrol-splitrightsegment--768dc6eae28d933fa6bd3d09.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [finiteEval_homogeneousControl](declarations/finiteeval-homogeneouscontrol--f0e103b35b5bfe75c13b8cf9.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [rationalEval_homogeneousControl](declarations/rationaleval-homogeneouscontrol--3de9c36784f41da85a22b669.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [splitLeftSegment_eval](declarations/splitleftsegment-eval--a9fa972f2c22e7a3a63d54f2.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [splitRightSegment_eval](declarations/splitrightsegment-eval--21a2e2dd7fb55a6e674ec88f.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [splitAt_left_eval](declarations/splitat-left-eval--d93ce1d917dcc329018dbab7.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [splitAt_right_eval](declarations/splitat-right-eval--5a79179d4711f19a90eb216a.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [leftParameter](declarations/leftparameter--d319227571077184505443c6.md) | 567 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [rightParameter](declarations/rightparameter--b98dc055ca26cf45d2634aae.md) | 577 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [leftParameter_val](declarations/leftparameter-val--781eb2055374e63baf26c56d.md) | 590 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [rightParameter_val](declarations/rightparameter-val--178bc91900a42beaec725117.md) | 595 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [splitAt](declarations/splitat--31e9423b68519a61ff49049e.md) | 601 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [eval_split_left](declarations/eval-split-left--47a1b0e74933438c925d9e21.md) | 608 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [eval_split_right](declarations/eval-split-right--b9e684a2dc23596b1b4c3783.md) | 615 | `BLOCKED_NATIVE_ADMISSION` |
