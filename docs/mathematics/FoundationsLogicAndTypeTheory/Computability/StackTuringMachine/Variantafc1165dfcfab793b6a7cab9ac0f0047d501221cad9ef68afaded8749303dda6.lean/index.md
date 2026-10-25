# GRWTSK.FoundationsLogicAndTypeTheory.Computability.StackTuringMachine.Variantafc1165dfcfab793b6a7cab9ac0f0047d501221cad9ef68afaded8749303dda6

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**57 observed declarations and anonymous commands**, 25 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/Computability/StackTuringMachine/Variantafc1165dfcfab793b6a7cab9ac0f0047d501221cad9ef68afaded8749303dda6.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `139842ce8cdc9a876486c670f92254e60bb6b224`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Computability/StackTuringMachine/Variantafc1165dfcfab793b6a7cab9ac0f0047d501221cad9ef68afaded8749303dda6.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [Stmt](declarations/stmt--cd9adea8296f739daeadf6f1.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [Stmt.inhabited](declarations/stmt-inhabited--ec5e897000de144aa7f74298.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [Cfg](declarations/cfg--7659cd956978c863f373bba4.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [Cfg.inhabited](declarations/cfg-inhabited--09762cba27e61434e3e1b41c.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [stepAux](declarations/stepaux--180bd010d5c6d5af29cf00b0.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [step](declarations/step--58d1be28d59d925e7889208d.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [Reaches](declarations/reaches--6db401e1e3510f6cd81946d7.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [SupportsStmt](declarations/supportsstmt--96b70b7c42fc4887e70b53b3.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [stmts₁](declarations/stmts--895824e69a08ccea31427b77.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [stmts₁_self](declarations/stmts-self--d5442d497221a1af0af10624.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [stmts₁_trans](declarations/stmts-trans--00e1ae38af4f0dbfc01d676f.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [stmts₁_supportsStmt_mono](declarations/stmts-supportsstmt-mono--0686b396a1dafd9cf6bbd8eb.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [stmts](declarations/stmts--ca7a87c9deab938966340014.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [stmts_trans](declarations/stmts-trans--e85113848048c365c6b18eb4.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [Supports](declarations/supports--a9c06374c7ffc5d01b382b36.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [stmts_supportsStmt](declarations/stmts-supportsstmt--132b526f19c11f5873cd9ffe.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [step_supports](declarations/step-supports--ddc687b486cc6b606d34c949.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [init](declarations/init--60e79a5586bafa8f03aa5cd2.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [eval](declarations/eval--215c31a6e89f7bd81a8244ae.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [stk_nth_val](declarations/stk-nth-val--c4913c52fb31e401619fb517.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [Γ'](declarations/anonymous--52595786aef45995f3ccbbca.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [Γ'.inhabited](declarations/inhabited--1a94f8cff573f9d639fd03a9.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [Γ'.fintype](declarations/fintype--8e521b6fc02ce43259ec30cf.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [addBottom](declarations/addbottom--0b15e44666e7b5f037a14ff4.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [addBottom_map](declarations/addbottom-map--213192c1e6bc00c64858ec7d.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [addBottom_modifyNth](declarations/addbottom-modifynth--b5a41227a4b2dbd676a8e789.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [addBottom_nth_snd](declarations/addbottom-nth-snd--c02ace1170a2d3b8c3943576.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [addBottom_nth_succ_fst](declarations/addbottom-nth-succ-fst--82e14830509c989ca513cbd3.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [addBottom_head_fst](declarations/addbottom-head-fst--4399edaba365042ec8385e0c.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `inductive` | [StAct](declarations/stact--406ab71308dd7fd3bbee12af.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [StAct.inhabited](declarations/stact-inhabited--0096eb81656b412474189878.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [stRun](declarations/strun--6b82798406995f7e6da361e5.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [stVar](declarations/stvar--f17805bccde675a50abc7d8a.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [stWrite](declarations/stwrite--6f669efcfb58d202eb2c6764.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [stmtStRec.](declarations/stmtstrec--4f832a7cac28433f1f8cfa17.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [supports_run](declarations/supports-run--4339d68aba74d70d2d818304.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `inductive` | [Λ'](declarations/anonymous--2bdd7ded5b3d2de3915c72d8.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [Λ'.inhabited](declarations/inhabited--73e5d87c3d9b7be818d80749.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [trStAct](declarations/trstact--1ab632f4ef6edfc96974d2dd.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [trInit](declarations/trinit--a0a6e40b8dbe7a728e07c8dd.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [step_run](declarations/step-run--fe0053a496109b906109faee.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [trNormal](declarations/trnormal--28ddd2a4aa925b321394b991.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [trNormal_run](declarations/trnormal-run--69731232301225d21c149998.md) | 512 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [trStmts₁](declarations/trstmts--7a93df2683ba9f5a080d848d.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [trStmts₁_run](declarations/trstmts-run--93877b6c602f9248f1764d35.md) | 528 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [tr_respects_aux₂](declarations/tr-respects-aux--02600d6751f4e12c221f9f64.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [tr](declarations/tr--b0771a0d4b1959c0cb951a3d.md) | 626 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `inductive` | [TrCfg](declarations/trcfg--8b43e203c542ea5fa87a7693.md) | 634 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [tr_respects_aux₁](declarations/tr-respects-aux--453e9481071f2183f2e567d0.md) | 639 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [tr_respects_aux₃](declarations/tr-respects-aux--f97b354c9a00c4d8478f45a1.md) | 654 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [tr_respects_aux](declarations/tr-respects-aux--9cf4810d67c0cfef2ea8bf66.md) | 666 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [tr_respects](declarations/tr-respects--19a0e43cade2056159b7fb66.md) | 689 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [trCfg_init](declarations/trcfg-init--594568d52f432df7af0dab90.md) | 711 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [tr_eval_dom](declarations/tr-eval-dom--5e3fc7e9baf3aa6060e2693f.md) | 732 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [tr_eval](declarations/tr-eval--ed3c3a255d74aba4b1e78cde.md) | 736 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [trSupp](declarations/trsupp--407ba3d06ad769d586c68a7e.md) | 755 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [tr_supports](declarations/tr-supports--b37a94b397c2e429835831cf.md) | 759 | `BLOCKED_NATIVE_ADMISSION` |
