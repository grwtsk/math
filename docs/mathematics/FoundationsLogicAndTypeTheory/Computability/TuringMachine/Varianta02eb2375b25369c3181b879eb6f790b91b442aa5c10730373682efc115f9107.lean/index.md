# GRWTSK.FoundationsLogicAndTypeTheory.Computability.TuringMachine.Varianta02eb2375b25369c3181b879eb6f790b91b442aa5c10730373682efc115f9107

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**57 observed declarations and anonymous commands**, 25 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Varianta02eb2375b25369c3181b879eb6f790b91b442aa5c10730373682efc115f9107.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c14e91790357aeb78628835fe8af4a3d1cad9f8c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Varianta02eb2375b25369c3181b879eb6f790b91b442aa5c10730373682efc115f9107.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [Stmt](declarations/stmt--ba61b8320e742c8d2286a0a4.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [Stmt.inhabited](declarations/stmt-inhabited--97513ee6fddd20e50b76e351.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [Cfg](declarations/cfg--7692ab58a0657acc201387d5.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [Cfg.inhabited](declarations/cfg-inhabited--7c43921a14031bd948c7ff4f.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [stepAux](declarations/stepaux--98937ab4242dc0706daa4556.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [step](declarations/step--9f33347cdd9ea599033ac9f3.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [Reaches](declarations/reaches--584cbf0c8d751e860eff1f48.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [SupportsStmt](declarations/supportsstmt--3dae4cb0eed9e8f1b0cd8ece.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [stmts₁](declarations/stmts--83e187a4706b9880171c9456.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [stmts₁_self](declarations/stmts-self--88bb6721bd5260cba3c83500.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [stmts₁_trans](declarations/stmts-trans--628a4480eab5d98732c9b4ab.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [stmts₁_supportsStmt_mono](declarations/stmts-supportsstmt-mono--8458d890c9fe07d7f051c1f4.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [stmts](declarations/stmts--ed1caff62881f1671ecb7623.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [stmts_trans](declarations/stmts-trans--d0b55f8c25afea512fffce10.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [Supports](declarations/supports--f0d48af738846f774323e4be.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [stmts_supportsStmt](declarations/stmts-supportsstmt--886ca6d4c64c923dd3e3221d.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [step_supports](declarations/step-supports--467db48bb14713ab27ed7fef.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [init](declarations/init--809a136f7e1d701baff3495a.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [eval](declarations/eval--35da63008dd6f8d73ad35f41.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [stk_nth_val](declarations/stk-nth-val--3c0ec820bfcbbcb9e04b94d0.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [Γ'](declarations/anonymous--fe4909daa347e66386d14e2b.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [Γ'.inhabited](declarations/inhabited--21b93d0857e9a1f92c4a017a.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [Γ'.fintype](declarations/fintype--8401b9fd7dcf52c54297cbb9.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [addBottom](declarations/addbottom--28fa44f21312d81e05173b32.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [addBottom_map](declarations/addbottom-map--b4408e7ba6d85b4dfc846e51.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [addBottom_modifyNth](declarations/addbottom-modifynth--b1a717fff0a9bf24df7b22bd.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [addBottom_nth_snd](declarations/addbottom-nth-snd--0b718559643fce84268fc88c.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [addBottom_nth_succ_fst](declarations/addbottom-nth-succ-fst--f82ea77fce1172cf3a4cb24c.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [addBottom_head_fst](declarations/addbottom-head-fst--ca33f4bd5723d267bf28d2ef.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `inductive` | [StAct](declarations/stact--277662f86725e8eabe82b932.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [StAct.inhabited](declarations/stact-inhabited--677714b93d14f5fe783c836d.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [stRun](declarations/strun--31365c2cf790a0af594c64e4.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [stVar](declarations/stvar--d6151fe6e5e3457fb30e471f.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [stWrite](declarations/stwrite--9e35cadec03a36b7ab835763.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [stmtStRec.](declarations/stmtstrec--d83f2b8bdb23a892072df266.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [supports_run](declarations/supports-run--ba56bd69e37824dc7f89b830.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `inductive` | [Λ'](declarations/anonymous--d2a571c222b3e9a583f022f4.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [Λ'.inhabited](declarations/inhabited--7faa24517fb8b669f7bb195f.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [trStAct](declarations/trstact--d27aef04dabe276ddcb5a84c.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [trInit](declarations/trinit--a5be3924abe18511efb7ea77.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [step_run](declarations/step-run--e00ef0bc9eab8494782f6d16.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [trNormal](declarations/trnormal--c41dcd0a5e894be6f09d5975.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [trNormal_run](declarations/trnormal-run--745e95fb4defaa0c010c7d4b.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [trStmts₁](declarations/trstmts--d5c7638af4dc61f8ba6758c5.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [trStmts₁_run](declarations/trstmts-run--89c29497a067341c73b44763.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [tr_respects_aux₂](declarations/tr-respects-aux--e333b7812699b29ed86e15fc.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [tr](declarations/tr--985951006a1bf9c17c63fea9.md) | 624 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `inductive` | [TrCfg](declarations/trcfg--1a8724f7815884137b39c006.md) | 632 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [tr_respects_aux₁](declarations/tr-respects-aux--993b16983b293f18241c7223.md) | 637 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [tr_respects_aux₃](declarations/tr-respects-aux--a5d22ff1b53a78b128cc127c.md) | 650 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [tr_respects_aux](declarations/tr-respects-aux--260183c94b4e4f062e512703.md) | 660 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [tr_respects](declarations/tr-respects--4e1a767f849d69b0b5aa0f2a.md) | 683 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [trCfg_init](declarations/trcfg-init--fbc6ae7a73fe98ecc7d7ea2e.md) | 704 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [tr_eval_dom](declarations/tr-eval-dom--6f053212ea236b7a8fb97140.md) | 726 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [tr_eval](declarations/tr-eval--f1a37a80a1a7997f2ae60113.md) | 730 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [trSupp](declarations/trsupp--704996f6551df7ee93bb094a.md) | 749 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [tr_supports](declarations/tr-supports--df7b56a2cb3d47f9be7783af.md) | 753 | `BLOCKED_NATIVE_ADMISSION` |
