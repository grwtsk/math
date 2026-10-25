# GRWTSK.FoundationsLogicAndTypeTheory.Computability.StackTuringMachine.Variante98390a2c66ed44680c425c4ceddca6ff2bddb32dc7aeeba48ccc596e7f06398

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**57 observed declarations and anonymous commands**, 25 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/Computability/StackTuringMachine/Variante98390a2c66ed44680c425c4ceddca6ff2bddb32dc7aeeba48ccc596e7f06398.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f4ba02815758cfb9698061c15a805920126e3787`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Computability/StackTuringMachine/Variante98390a2c66ed44680c425c4ceddca6ff2bddb32dc7aeeba48ccc596e7f06398.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [Stmt](declarations/stmt--5931eb136246ea410349cc83.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [Stmt.inhabited](declarations/stmt-inhabited--b0acc2e09755971f3f796698.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [Cfg](declarations/cfg--80d64b639dae145e2fa13a23.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [Cfg.inhabited](declarations/cfg-inhabited--64b5ec269c1b4323c5b703d6.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [stepAux](declarations/stepaux--4f7b62cddd97f3b5a28a248f.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [step](declarations/step--16187659ec298490972ae099.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [Reaches](declarations/reaches--156ea9d2bd9cce4ba221f414.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [SupportsStmt](declarations/supportsstmt--af795177dfe4f91ff938e3d7.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [stmts₁](declarations/stmts--5b927d4b0e8209002788e7c0.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [stmts₁_self](declarations/stmts-self--ac2db7176458919c7b2a5a29.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [stmts₁_trans](declarations/stmts-trans--ae1b7159c43f7e57a93ade82.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [stmts₁_supportsStmt_mono](declarations/stmts-supportsstmt-mono--dd48807ab4f15293797b5c3b.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [stmts](declarations/stmts--dfbac82a65cae6e919ccc9e5.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [stmts_trans](declarations/stmts-trans--5a13a54b52d4629452db4a6b.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [Supports](declarations/supports--1a76231cea57b21e491137ba.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [stmts_supportsStmt](declarations/stmts-supportsstmt--606d867a703658a01fbc40db.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [step_supports](declarations/step-supports--c61afb864cb309c954b96b46.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [init](declarations/init--d36c0cc1e6a4bb64456b5677.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [eval](declarations/eval--0a1f0ddd7e9c29446a8633e2.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [stk_nth_val](declarations/stk-nth-val--018317f53f4e0183ed034f52.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [Γ'](declarations/anonymous--cf30c0d596df8e6bd9d44688.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [Γ'.inhabited](declarations/inhabited--b54bbd12f59ef640edf1b9b7.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [Γ'.fintype](declarations/fintype--795b12eba6006e7f2ffc1cf5.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [addBottom](declarations/addbottom--5f7eaccfe24d75de6b4f07a6.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [addBottom_map](declarations/addbottom-map--f3c3a1283dd2bdc9df54df5c.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [addBottom_modifyNth](declarations/addbottom-modifynth--54a1bf0b33653f76c486512e.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [addBottom_nth_snd](declarations/addbottom-nth-snd--1dc39869521bba485d1f8d7b.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [addBottom_nth_succ_fst](declarations/addbottom-nth-succ-fst--127f2a91acfce407e760a7a9.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [addBottom_head_fst](declarations/addbottom-head-fst--230eab7855664487facbdf18.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `inductive` | [StAct](declarations/stact--0161005f8e4d9b77f1ffb1e1.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [StAct.inhabited](declarations/stact-inhabited--d89fea8d9d3d6e62d92f2ded.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [stRun](declarations/strun--7460b920c753e0e373155225.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [stVar](declarations/stvar--68a955f73e0f5c8ca4533295.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [stWrite](declarations/stwrite--2c2d51705544476b8cc90e7e.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [stmtStRec.](declarations/stmtstrec--69bdf1c33f34b2ecfd30d96d.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [supports_run](declarations/supports-run--f99bfa6d40cefbaba5098cc9.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `inductive` | [Λ'](declarations/anonymous--7c108c83d5e3ca561717cd14.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [Λ'.inhabited](declarations/inhabited--9f68591ab41beaa3d034cf3c.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [trStAct](declarations/trstact--250c9512a481cef6b5a8e100.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [trInit](declarations/trinit--5ed710afc9bf71efcc565136.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [step_run](declarations/step-run--98e15498c769b5a0b9f9bbea.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [trNormal](declarations/trnormal--592bc6ebb7af259c3abe4ac0.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [trNormal_run](declarations/trnormal-run--887d6da66e823f045008262b.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [trStmts₁](declarations/trstmts--367c9aa3546fa86d21d68c31.md) | 528 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [trStmts₁_run](declarations/trstmts-run--45cc8a8475710ff66728da80.md) | 536 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [tr_respects_aux₂](declarations/tr-respects-aux--ed058e3ab561c7ea6201005b.md) | 541 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [tr](declarations/tr--9127a875dcde5ad9bb70ab3a.md) | 634 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `inductive` | [TrCfg](declarations/trcfg--0021ff1f838ab47e01b904b1.md) | 642 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [tr_respects_aux₁](declarations/tr-respects-aux--f523d3bd89332f8f0d48176b.md) | 647 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [tr_respects_aux₃](declarations/tr-respects-aux--7ea9f3cc71637d7b3f6d6e8b.md) | 662 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [tr_respects_aux](declarations/tr-respects-aux--27a20272eb40370d282f1da9.md) | 674 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [tr_respects](declarations/tr-respects--dd4bd32f9b1d26b97cfa14d0.md) | 697 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [trCfg_init](declarations/trcfg-init--55f359d45fb90b251c695c61.md) | 719 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [tr_eval_dom](declarations/tr-eval-dom--47e9d8237362f1308e90b6e1.md) | 740 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [tr_eval](declarations/tr-eval--1f5beb52df584e03031148d5.md) | 744 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [trSupp](declarations/trsupp--793a4eeb4a7a4338cc515e8b.md) | 763 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [tr_supports](declarations/tr-supports--db0c3e72d164471ceb1192cc.md) | 767 | `BLOCKED_NATIVE_ADMISSION` |
