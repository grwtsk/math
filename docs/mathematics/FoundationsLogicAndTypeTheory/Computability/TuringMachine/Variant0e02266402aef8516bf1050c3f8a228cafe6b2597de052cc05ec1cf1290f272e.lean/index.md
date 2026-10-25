# GRWTSK.FoundationsLogicAndTypeTheory.Computability.TuringMachine.Variant0e02266402aef8516bf1050c3f8a228cafe6b2597de052cc05ec1cf1290f272e

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**57 observed declarations and anonymous commands**, 25 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Variant0e02266402aef8516bf1050c3f8a228cafe6b2597de052cc05ec1cf1290f272e.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8107e333e24b47c8510d969a2fa9c22e4528d5ab`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Variant0e02266402aef8516bf1050c3f8a228cafe6b2597de052cc05ec1cf1290f272e.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [Stmt](declarations/stmt--6c36b99a5b7860135804140c.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [Stmt.inhabited](declarations/stmt-inhabited--98fdcaf0f7174d8b6131a08b.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [Cfg](declarations/cfg--94d6f1f58953c67f44fcbe8c.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [Cfg.inhabited](declarations/cfg-inhabited--ee1389b750475479e1dc4f06.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [stepAux](declarations/stepaux--fbccf4b01153831c17f76db3.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [step](declarations/step--d05e094e28d9c3caa2f65b21.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [Reaches](declarations/reaches--9df3a1e421a847a1e339cb00.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [SupportsStmt](declarations/supportsstmt--d0733d15ea55031c90ea4319.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [stmts₁](declarations/stmts--8b23feda5b8cf33258740fb9.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [stmts₁_self](declarations/stmts-self--c9aaae3eb6c985f011c87ecf.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [stmts₁_trans](declarations/stmts-trans--60515fef409eebe6a8440f56.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [stmts₁_supportsStmt_mono](declarations/stmts-supportsstmt-mono--683a54b5c216a355b6d4f07f.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [stmts](declarations/stmts--e24dcebaccfe694d2909b773.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [stmts_trans](declarations/stmts-trans--311464d1fc20c55e63b406cb.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [Supports](declarations/supports--8d0c0a03af0777aab52562d6.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [stmts_supportsStmt](declarations/stmts-supportsstmt--8af4a7c764669d13306b2574.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [step_supports](declarations/step-supports--512f6c494eb6d35e419c4118.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [init](declarations/init--3e20db91e601a3f0cb15f8eb.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [eval](declarations/eval--a50a12a701bb0a7273d3a5bd.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [stk_nth_val](declarations/stk-nth-val--c3f034781fba1c74e94a42dd.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [Γ'](declarations/anonymous--6982de2bb721699a2bb3cdf7.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [Γ'.inhabited](declarations/inhabited--895d2746dc899428ac7df142.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [Γ'.fintype](declarations/fintype--96e53ba6a59ae26e2935a99b.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [addBottom](declarations/addbottom--b825efcd8a31bb48ab096eb6.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [addBottom_map](declarations/addbottom-map--67b1b5e02daaaad1d3377b7b.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [addBottom_modifyNth](declarations/addbottom-modifynth--da357bdd1bb917f38a7e1ae5.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [addBottom_nth_snd](declarations/addbottom-nth-snd--6e4b786472131af729e83e61.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [addBottom_nth_succ_fst](declarations/addbottom-nth-succ-fst--93d5283b5162350795b0b238.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [addBottom_head_fst](declarations/addbottom-head-fst--0881fab9dec947c6085b7a96.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `inductive` | [StAct](declarations/stact--4f83929ce8474c4d7c49ece2.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [StAct.inhabited](declarations/stact-inhabited--2931c6d410a2e495ccfb3293.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [stRun](declarations/strun--39782873964727b9e051e9c0.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [stVar](declarations/stvar--1ce86fe02118853245abefbc.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [stWrite](declarations/stwrite--3bf44385ba9eccb300bba036.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [stmtStRec.](declarations/stmtstrec--5d6785ab8397828100d4b903.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [supports_run](declarations/supports-run--602014a0179b70ce32ecfabd.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `inductive` | [Λ'](declarations/anonymous--de6fad7bb9676dd0136b40ec.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [Λ'.inhabited](declarations/inhabited--d8e235a5522e6d4a46fdbf8a.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [trStAct](declarations/trstact--75d4042b00b95f8e978bd19c.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [trInit](declarations/trinit--1315fb100a6084d8ac2b4446.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [step_run](declarations/step-run--d63fe26d02c039c36c5dc49d.md) | 483 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [trNormal](declarations/trnormal--22b076c02ce7d85052d3a276.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [trNormal_run](declarations/trnormal-run--3459b852320dfc2e5d499c11.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [trStmts₁](declarations/trstmts--619bfe74649cdc647e92d7dd.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [trStmts₁_run](declarations/trstmts-run--3e6932a61ea800fc568266fe.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [tr_respects_aux₂](declarations/tr-respects-aux--d17a4dc211cf481fcd45022a.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [tr](declarations/tr--93c40a603537105e507c64af.md) | 616 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `inductive` | [TrCfg](declarations/trcfg--90cfb1e55dbc3fa9898b89af.md) | 624 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [tr_respects_aux₁](declarations/tr-respects-aux--4d694e87c4437ce93ea32bfc.md) | 629 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [tr_respects_aux₃](declarations/tr-respects-aux--3e1a62a49ec648ec42c1b165.md) | 642 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [tr_respects_aux](declarations/tr-respects-aux--1355eb2ddff9a9737e465c99.md) | 652 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [tr_respects](declarations/tr-respects--70792ab155040b00ac784d6f.md) | 675 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [trCfg_init](declarations/trcfg-init--2f37ba3cb6ce8673646e56cd.md) | 696 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [tr_eval_dom](declarations/tr-eval-dom--3124d29f2329098f55218226.md) | 718 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [tr_eval](declarations/tr-eval--bc107970622281ff1b968a78.md) | 722 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [trSupp](declarations/trsupp--f4705f26977c562f3170af28.md) | 741 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [tr_supports](declarations/tr-supports--8a97899192df1db16c169c98.md) | 745 | `BLOCKED_NATIVE_ADMISSION` |
