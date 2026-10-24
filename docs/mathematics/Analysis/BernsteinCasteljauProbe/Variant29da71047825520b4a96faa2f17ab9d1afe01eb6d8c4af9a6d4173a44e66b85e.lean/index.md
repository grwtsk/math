# GRWTSK.Analysis.BernsteinCasteljauProbe.Variant29da71047825520b4a96faa2f17ab9d1afe01eb6d8c4af9a6d4173a44e66b85e

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**66 observed declarations and anonymous commands**, 40 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/BernsteinCasteljauProbe/Variant29da71047825520b4a96faa2f17ab9d1afe01eb6d8c4af9a6d4173a44e66b85e.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bcb8a391e0329bd57112f9691e07d0754590ceb6`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/Analysis/BernsteinCasteljauProbe/Variant29da71047825520b4a96faa2f17ab9d1afe01eb6d8c4af9a6d4173a44e66b85e.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ControlRow](declarations/controlrow--d0484bd77bf9031c29d93967.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [step](declarations/step--3c2d3a4d4385151c52c714ea.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [eval](declarations/eval--93d6f8e929ea5c30513fb5c5.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [bernsteinWeight](declarations/bernsteinweight--f2a250c42e15ed1273138755.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [bernsteinWeight_zero_succ](declarations/bernsteinweight-zero-succ--f5aab5ff24600a0d56a529ba.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [bernsteinWeight_succ_succ](declarations/bernsteinweight-succ-succ--ca935a561e1e5966e41b9e7a.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [bernsteinSum](declarations/bernsteinsum--fee2ca251c954b0046a0b5f1.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [shifted_bernsteinWeight_sum](declarations/shifted-bernsteinweight-sum--185a00eb21994adbe1440fe9.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [bernsteinSum_succ_eq_step](declarations/bernsteinsum-succ-eq-step--e817a8593c52bb8558e69600.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [eval_eq_bernsteinWeight_sum](declarations/eval-eq-bernsteinweight-sum--ed45973b54e6cde829a0de17.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [bernsteinWeight_eq_bernstein](declarations/bernsteinweight-eq-bernstein--e423022c1eb1cfee872b6a62.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [eval_eq_bernstein](declarations/eval-eq-bernstein--617738c36d464f6d6ab2b977.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [rowCombo](declarations/rowcombo--bb37884eb00cd8baba7a8df3.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [step_rowCombo](declarations/step-rowcombo--96a1741f9dd272d797c56e6b.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [eval_rowCombo](declarations/eval-rowcombo--d56c25acec95703c1df23cfb.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [step_eq_rowCombo_self_step](declarations/step-eq-rowcombo-self-step--9a1e4dd713ed313792cb8dc2.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [splitLeft](declarations/splitleft--3af4fdd429de3d052a1edb7d.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [step_splitLeft](declarations/step-splitleft--4e6ab53fe496b5416e353c62.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [eval_split_left_mul](declarations/eval-split-left-mul--80c23f7fadbf6ce301ed8cc7.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [eval_split_left](declarations/eval-split-left--217277057e30df0e3921fb4e.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [eval_congr_prefix](declarations/eval-congr-prefix--824aa1e91274c403b9a76ff1.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [splitRight](declarations/splitright--f6082dff7262fe6c5b515576.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [step_splitRight_prefix](declarations/step-splitright-prefix--9cd360f5336387702a581cfa.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [eval_split_right](declarations/eval-split-right--064cad021d12bf0086356c5a.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `abbrev` | [FiniteControl](declarations/finitecontrol--491428e0b3812ea094f00ecf.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [extendFinite](declarations/extendfinite--a6040759e9c38bf2860f8725.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [finiteEval](declarations/finiteeval--6314fcae6e13ce2f2afcc92b.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [finiteEval_eq_bernstein](declarations/finiteeval-eq-bernstein--3be5dee05ffc6cb800d0e5ce.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [finiteSplitLeft](declarations/finitesplitleft--b45eb2fa6878e3dab10c6cf4.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [finiteSplitRight](declarations/finitesplitright--1ab47bead2f6cdbcb02323cc.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [eval_extendFinite_finiteSplitLeft](declarations/eval-extendfinite-finitesplitleft--05dae89d86f40dd52d6780df.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [eval_extendFinite_finiteSplitRight](declarations/eval-extendfinite-finitesplitright--5eb8340eb811706dfbb9948a.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [finiteEval_split_left](declarations/finiteeval-split-left--444664bac6615b456cf79e2f.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [finiteEval_split_right](declarations/finiteeval-split-right--eefa5f10025279bdc697fe91.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `abbrev` | [WeightedHomogeneousPoint](declarations/weightedhomogeneouspoint--db21dc6a9aa3da0406df04ab.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `abbrev` | [FiniteWeightedControl](declarations/finiteweightedcontrol--c868a9a88420f6e2381af1d0.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [weightedSplitLeft](declarations/weightedsplitleft--10240d011f33d0e843a9e750.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [weightedSplitRight](declarations/weightedsplitright--bca331561140c36d50514f32.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [dehomogenize](declarations/dehomogenize--dc085d8f4d1ad1f877543551.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [rationalEval](declarations/rationaleval--97eabc3ffa7cce44b94ad3a2.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [rationalEval_split_left](declarations/rationaleval-split-left--d2c84ae3171f7e7f84f7a362.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [rationalEval_split_right](declarations/rationaleval-split-right--0fe3537f934016bc8167158a.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [eval_snd](declarations/eval-snd--e4b0963fa4e4eb90b7069f9a.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [eval_pos_of_prefix_pos](declarations/eval-pos-of-prefix-pos--bc42b243189d693437ac2056.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [homogeneousControl](declarations/homogeneouscontrol--6ff7d0b050194dae5f79162d.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [weightedSplitLeft_weight_pos](declarations/weightedsplitleft-weight-pos--1973f4975d7d239d14019c10.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [weightedSplitRight_weight_pos](declarations/weightedsplitright-weight-pos--5d22b9ebdd34d579ddb51911.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [segmentOfPositiveHomogeneous](declarations/segmentofpositivehomogeneous--2ae33ce52d01adae0ec19145.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [splitLeftSegment](declarations/splitleftsegment--42acc55ec3cce549fb3ed69c.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [splitRightSegment](declarations/splitrightsegment--9d558ce099df13443b088c9c.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [splitAt](declarations/splitat--7ad467ab49a237ea086c0c59.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [leftParameter](declarations/leftparameter--029187478ec05b8f91bd89c6.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [rightParameter](declarations/rightparameter--1f0def4d4ae55408c0c24efd.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [leftParameter_val](declarations/leftparameter-val--a9dd8c18eb43831b92f64adb.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [rightParameter_val](declarations/rightparameter-val--9d293d53724a01874f8df139.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [homogeneousControl_segmentOfPositiveHomogeneous](declarations/homogeneouscontrol-segmentofpositivehomogeneous--ad551f534f0e6ec3c58a7d70.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [homogeneousControl_splitLeftSegment](declarations/homogeneouscontrol-splitleftsegment--21a4ec6ffb4d5f0761a2669b.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [homogeneousControl_splitRightSegment](declarations/homogeneouscontrol-splitrightsegment--f05b461bc27ac271834088b2.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [finiteEval_homogeneousControl](declarations/finiteeval-homogeneouscontrol--48b73bebba0fcd476708ad6f.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [rationalEval_homogeneousControl](declarations/rationaleval-homogeneouscontrol--306370a0067aa662eb6a6ac8.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [eval_split_left_canonical](declarations/eval-split-left-canonical--fdd9696cbc4c4e7d1c453052.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [eval_split_right_canonical](declarations/eval-split-right-canonical--f041724c06058ff0097487e4.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [splitLeftSegment_eval](declarations/splitleftsegment-eval--52fb6668fab4d915f9262f2b.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [splitRightSegment_eval](declarations/splitrightsegment-eval--d5db3acaecc74d368c50e839.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [splitAt_left_eval](declarations/splitat-left-eval--ea87525c4774068ccacdf050.md) | 569 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [splitAt_right_eval](declarations/splitat-right-eval--13fe4e93676cee5f58acb094.md) | 574 | `BLOCKED_NATIVE_ADMISSION` |
