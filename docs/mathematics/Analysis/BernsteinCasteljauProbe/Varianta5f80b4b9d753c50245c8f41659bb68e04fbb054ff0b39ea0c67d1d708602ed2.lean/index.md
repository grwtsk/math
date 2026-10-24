# GRWTSK.Analysis.BernsteinCasteljauProbe.Varianta5f80b4b9d753c50245c8f41659bb68e04fbb054ff0b39ea0c67d1d708602ed2

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**66 observed declarations and anonymous commands**, 40 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/BernsteinCasteljauProbe/Varianta5f80b4b9d753c50245c8f41659bb68e04fbb054ff0b39ea0c67d1d708602ed2.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `daa3620993e27109bf4addd4389bd9de4a9dcf9b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/Analysis/BernsteinCasteljauProbe/Varianta5f80b4b9d753c50245c8f41659bb68e04fbb054ff0b39ea0c67d1d708602ed2.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ControlRow](declarations/controlrow--ff3e77b260489ab3165e4af1.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [step](declarations/step--a4d9bd6b2aa888facf1073d0.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [eval](declarations/eval--67da43d3e9dc46031aff0d31.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [bernsteinWeight](declarations/bernsteinweight--e0c859be39fb1cfa371df950.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [bernsteinWeight_zero_succ](declarations/bernsteinweight-zero-succ--f4ddabd15090dd072d0edbfe.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [bernsteinWeight_succ_succ](declarations/bernsteinweight-succ-succ--f383edb1b3a4b42020c966f5.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [bernsteinSum](declarations/bernsteinsum--cf4b2933dda3df78a58ce945.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [shifted_bernsteinWeight_sum](declarations/shifted-bernsteinweight-sum--b3b518195ecff0e73dccf31e.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [bernsteinSum_succ_eq_step](declarations/bernsteinsum-succ-eq-step--f7dd412d2f87f225586ea5a8.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [eval_eq_bernsteinWeight_sum](declarations/eval-eq-bernsteinweight-sum--a3dbd1e4527ce6f39607d745.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [bernsteinWeight_eq_bernstein](declarations/bernsteinweight-eq-bernstein--e04e6a9c9dcb9e412f06ac9b.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [eval_eq_bernstein](declarations/eval-eq-bernstein--5de31e1e4d8cd44491cb911f.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [rowCombo](declarations/rowcombo--dc7ebe62b01d8171ce109fa7.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [step_rowCombo](declarations/step-rowcombo--03985e93aba7c5f5d68f17d8.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [eval_rowCombo](declarations/eval-rowcombo--50531d5f86ee55d21cc00a31.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [step_eq_rowCombo_self_step](declarations/step-eq-rowcombo-self-step--269cd90f107b6a9f36bdd83a.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [splitLeft](declarations/splitleft--8b3c46e4579e84298409d36c.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [step_splitLeft](declarations/step-splitleft--cf5a2e861b187e0fe49d9b74.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [eval_split_left_mul](declarations/eval-split-left-mul--392c68198957f5a9acf2e3b5.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [eval_split_left](declarations/eval-split-left--900c39743a74ce4137fddc84.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [eval_congr_prefix](declarations/eval-congr-prefix--c2ef048ed3e2132f873fec54.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [splitRight](declarations/splitright--e1641a953f65be915726ab35.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [step_splitRight_prefix](declarations/step-splitright-prefix--4fd74deb74952d8def297941.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [eval_split_right](declarations/eval-split-right--97b7661a2d676e9ca4b708d6.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `abbrev` | [FiniteControl](declarations/finitecontrol--b6d11445b45bd6d4d837f30d.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [extendFinite](declarations/extendfinite--085e51a492ebe873237ef4fd.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [finiteEval](declarations/finiteeval--38253a3a90670756592ceaf2.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [finiteEval_eq_bernstein](declarations/finiteeval-eq-bernstein--724c8ec2cdafd956017460d2.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [finiteSplitLeft](declarations/finitesplitleft--dc6d469b6636c01061fd4908.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [finiteSplitRight](declarations/finitesplitright--53b0018e65dd1a36b359af94.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [eval_extendFinite_finiteSplitLeft](declarations/eval-extendfinite-finitesplitleft--5e0482ca25cd5b7325ae157e.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [eval_extendFinite_finiteSplitRight](declarations/eval-extendfinite-finitesplitright--929b3237d10b7b5e0ec6ae37.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [finiteEval_split_left](declarations/finiteeval-split-left--e61c27e7fb5c82999dee0a90.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [finiteEval_split_right](declarations/finiteeval-split-right--566a254a503f94588694e5d3.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `abbrev` | [WeightedHomogeneousPoint](declarations/weightedhomogeneouspoint--ef18f50378fb8a6b4a261cd5.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `abbrev` | [FiniteWeightedControl](declarations/finiteweightedcontrol--b657fdb1fce8dfb2d5d7d478.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [weightedSplitLeft](declarations/weightedsplitleft--2cef25067a2ee2bf8cfb9024.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [weightedSplitRight](declarations/weightedsplitright--415422a5e87f0bde62503147.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [dehomogenize](declarations/dehomogenize--faca73f4d53203dfeb532824.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [rationalEval](declarations/rationaleval--698ee5abb0392ed0cd44a82b.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [rationalEval_split_left](declarations/rationaleval-split-left--d136257b4141d4931e0cc839.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [rationalEval_split_right](declarations/rationaleval-split-right--d829acff84c7ad202a9b74c2.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [eval_snd](declarations/eval-snd--b01d192f70842f5d90aaaa4b.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [eval_pos_of_prefix_pos](declarations/eval-pos-of-prefix-pos--8eb3134b48095cec95367887.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [homogeneousControl](declarations/homogeneouscontrol--36a3e596f26df43c77a0ba49.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [weightedSplitLeft_weight_pos](declarations/weightedsplitleft-weight-pos--ae17aaacd3062b0aec4f455e.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [weightedSplitRight_weight_pos](declarations/weightedsplitright-weight-pos--0b9ba172444f35d6ab9f2754.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [segmentOfPositiveHomogeneous](declarations/segmentofpositivehomogeneous--11fc52c4e77b8a228d3c9288.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [splitLeftSegment](declarations/splitleftsegment--793892652568cc8ed433915e.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [splitRightSegment](declarations/splitrightsegment--0af9810a170bd0a283f9bbc3.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [splitAt](declarations/splitat--68a9a0ba124b077e74b4c588.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [leftParameter](declarations/leftparameter--55bc45c34cd9884b17638328.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [rightParameter](declarations/rightparameter--35a3a1dc6f0e2c0189c0f58f.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [leftParameter_val](declarations/leftparameter-val--6468504a2c13d25c3bc40085.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [rightParameter_val](declarations/rightparameter-val--40e6b97c02be490fc56e67d4.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [homogeneousControl_segmentOfPositiveHomogeneous](declarations/homogeneouscontrol-segmentofpositivehomogeneous--464cb55d50212b98c4b1e74f.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [homogeneousControl_splitLeftSegment](declarations/homogeneouscontrol-splitleftsegment--487285f1dca901b822609746.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [homogeneousControl_splitRightSegment](declarations/homogeneouscontrol-splitrightsegment--45bc296e961c22d15f38db9c.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [finiteEval_homogeneousControl](declarations/finiteeval-homogeneouscontrol--908c37cde5da450e9ba822b3.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [rationalEval_homogeneousControl](declarations/rationaleval-homogeneouscontrol--c5e57ab3fdeb14a1b90189c9.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [eval_split_left_canonical](declarations/eval-split-left-canonical--a499727e2416d4ae66105b6d.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [eval_split_right_canonical](declarations/eval-split-right-canonical--c7c5aa629accd83682c5e75c.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [splitLeftSegment_eval](declarations/splitleftsegment-eval--1a1d8f5d6c488d058dcb4957.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [splitRightSegment_eval](declarations/splitrightsegment-eval--3e503b00e9d3eb48ccd50df1.md) | 542 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [splitAt_left_eval](declarations/splitat-left-eval--7738b2a31cf347a679fa994c.md) | 561 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [splitAt_right_eval](declarations/splitat-right-eval--2b4285cf72d76b69ef7044ae.md) | 566 | `BLOCKED_NATIVE_ADMISSION` |
