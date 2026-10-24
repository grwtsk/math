# GRWTSK.CombinatoricsAndDiscreteMathematics.Subdivision.Varianta3c55b6cf4547f3956f658a9c51822095f1029416d3d6ef4da1381b07e2ea0e2

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**71 observed declarations and anonymous commands**, 42 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/Subdivision/Varianta3c55b6cf4547f3956f658a9c51822095f1029416d3d6ef4da1381b07e2ea0e2.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `05fa8ddf9a08b97097c007d30d78fd00fc6ca632`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/CombinatoricsAndDiscreteMathematics/Subdivision/Varianta3c55b6cf4547f3956f658a9c51822095f1029416d3d6ef4da1381b07e2ea0e2.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ControlRow](declarations/controlrow--c5a29f35fc0c83069002f43d.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [step](declarations/step--0af7743bf3bb0aa2f346a822.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [eval](declarations/eval--9144c7de5850cbc953720d4d.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [bernsteinWeight](declarations/bernsteinweight--1fa136bd705abf554d9291f7.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [bernsteinWeight_zero_succ](declarations/bernsteinweight-zero-succ--922a51d3a7e6eca651a99f07.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [bernsteinWeight_succ_succ](declarations/bernsteinweight-succ-succ--f22c7baba2d4ff81b55f2ab2.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [bernsteinSum](declarations/bernsteinsum--bd3598efdcf17fc20da1ba08.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [shifted_bernsteinWeight_sum](declarations/shifted-bernsteinweight-sum--acd70056ec55d4cf510bea7a.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [bernsteinSum_succ_eq_step](declarations/bernsteinsum-succ-eq-step--a6dd75e0ac3e8ff536f05f11.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [eval_eq_bernsteinWeight_sum](declarations/eval-eq-bernsteinweight-sum--2731429a5dc97efdaff25103.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [bernsteinWeight_eq_bernstein](declarations/bernsteinweight-eq-bernstein--f4bd068d74298a0094a2f9cd.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [eval_eq_bernstein](declarations/eval-eq-bernstein--f7546aa5671b88d943bcc455.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [rowCombo](declarations/rowcombo--8944bdfbc012041a9771ef5b.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [step_rowCombo](declarations/step-rowcombo--26b1436e66b91abe398af7f6.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [eval_rowCombo](declarations/eval-rowcombo--fe479d8657cd256ae6917f0a.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [step_eq_rowCombo_self_step](declarations/step-eq-rowcombo-self-step--ea48631facd832b93548ae24.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [splitLeft](declarations/splitleft--24aae7eb31229f67f4725c7d.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [step_splitLeft](declarations/step-splitleft--6bf0690f4722b32fd32e56f3.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [eval_split_left_mul](declarations/eval-split-left-mul--2406bea084a05430e140334d.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [eval_split_left](declarations/eval-split-left--d5cfebc6a9294048d779b32e.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [eval_congr_prefix](declarations/eval-congr-prefix--24b934facaeb60c7e9303f8b.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [splitRight](declarations/splitright--3a11175c51ff09d193cdc7cf.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [step_splitRight_prefix](declarations/step-splitright-prefix--949cb84242c6270311d6aead.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [eval_split_right](declarations/eval-split-right--b6d4645a0c27006fa83d6a48.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `abbrev` | [FiniteControl](declarations/finitecontrol--da49dd5458bb12c6a0db2081.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [extendFinite](declarations/extendfinite--09b13a9cb3130c0074f01119.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [finiteEval](declarations/finiteeval--871fde4a27601effc8f51066.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [finiteEval_eq_bernstein](declarations/finiteeval-eq-bernstein--b27d2f049e7d2faa9106bc40.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [finiteSplitLeft](declarations/finitesplitleft--ffe72444bddf3dd8d0a7cf16.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [finiteSplitRight](declarations/finitesplitright--e1096aa1dd4c9d749253a590.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [eval_extendFinite_finiteSplitLeft](declarations/eval-extendfinite-finitesplitleft--fad60eced6250701005dbf44.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [eval_extendFinite_finiteSplitRight](declarations/eval-extendfinite-finitesplitright--5087472cf3e00020ae7f9bee.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [finiteEval_split_left](declarations/finiteeval-split-left--ceb79b31c15636c288df4627.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [finiteEval_split_right](declarations/finiteeval-split-right--711370949023012000767ee6.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `abbrev` | [WeightedHomogeneousPoint](declarations/weightedhomogeneouspoint--210cefc1ec6de5bda16ce62c.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `abbrev` | [FiniteWeightedControl](declarations/finiteweightedcontrol--2f432c6a55801f089e558bc7.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [weightedSplitLeft](declarations/weightedsplitleft--9b39492d11701e936a962b56.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [weightedSplitRight](declarations/weightedsplitright--4ed3118c4dc21d60690a4c1c.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [dehomogenize](declarations/dehomogenize--9686d4249b97f305c9e17056.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [rationalEval](declarations/rationaleval--2e53bf9e1f5325de381110fd.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [rationalEval_split_left](declarations/rationaleval-split-left--9db86e0b42af450cb482bffe.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [rationalEval_split_right](declarations/rationaleval-split-right--07e68e1828477308c88131ac.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [eval_snd](declarations/eval-snd--9c0673821de305260710ccf6.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [eval_pos_of_prefix_pos](declarations/eval-pos-of-prefix-pos--29c030c883ebeb78f71daccf.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [homogeneousControl](declarations/homogeneouscontrol--2291a55cc6a65948a3d8808e.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [weightedSplitLeft_weight_pos](declarations/weightedsplitleft-weight-pos--5eb6d63c23895e8f0427892a.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [weightedSplitRight_weight_pos](declarations/weightedsplitright-weight-pos--d639a2b8b7f76439bedd8155.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [segmentOfPositiveHomogeneous](declarations/segmentofpositivehomogeneous--262f19e19cb4a3e7157a613c.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [splitLeftSegment](declarations/splitleftsegment--2cd0798962df39e453c45a1b.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [splitRightSegment](declarations/splitrightsegment--8a07dbad3eb8d7b42da709e1.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [splitAt](declarations/splitat--b0b2439b443b3b605fc503b6.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [leftParameter](declarations/leftparameter--5d8b65e51aebfe2e822e5e17.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [rightParameter](declarations/rightparameter--6b1b537d6643cf11f0277fa1.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [leftParameter_val](declarations/leftparameter-val--d1a39470592e3d36151b429a.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [rightParameter_val](declarations/rightparameter-val--7d7d4d67536810c48bfc4847.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [homogeneousControl_segmentOfPositiveHomogeneous](declarations/homogeneouscontrol-segmentofpositivehomogeneous--e9efcc46a8404d5100508c9c.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [homogeneousControl_splitLeftSegment](declarations/homogeneouscontrol-splitleftsegment--a197f7d9b63ee9816fe2d652.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [homogeneousControl_splitRightSegment](declarations/homogeneouscontrol-splitrightsegment--1d90508dc79e4d615cc97ea1.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [finiteEval_homogeneousControl](declarations/finiteeval-homogeneouscontrol--1f10ac92887795596d9fb109.md) | 480 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [rationalEval_homogeneousControl](declarations/rationaleval-homogeneouscontrol--42a0364f5a4cc2954fd3d820.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [splitLeftSegment_eval](declarations/splitleftsegment-eval--355002da831be815d60d5bfe.md) | 513 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [splitRightSegment_eval](declarations/splitrightsegment-eval--06628c10d610619f3e687bb2.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [splitAt_left_eval](declarations/splitat-left-eval--b48371a0acaaa119bb8577a1.md) | 552 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [splitAt_right_eval](declarations/splitat-right-eval--9c4101ce20fc053d77d38c3b.md) | 557 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [leftParameter](declarations/leftparameter--2ba26b43f4c5592fc93ae8fd.md) | 575 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [rightParameter](declarations/rightparameter--43206161adad1e6ffdcb9892.md) | 585 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [leftParameter_val](declarations/leftparameter-val--bc8b4b13484717193193349d.md) | 598 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [rightParameter_val](declarations/rightparameter-val--aac733694a91d109557bddab.md) | 603 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [splitAt](declarations/splitat--9ede5a1abec29fbe792093a7.md) | 609 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [eval_split_left](declarations/eval-split-left--8bc316da2b9c47cc92ff5bf6.md) | 616 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [eval_split_right](declarations/eval-split-right--4b56e3dd224e07eac048a632.md) | 623 | `BLOCKED_NATIVE_ADMISSION` |
