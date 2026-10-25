# GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Norm.Variant604cefbbdacc4e21d9ed222fe37c834f197656a4e38775e4a787615b7650fc34

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant604cefbbdacc4e21d9ed222fe37c834f197656a4e38775e4a787615b7650fc34.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a4c199528916edf72b76d44e1050733b11a0399e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant604cefbbdacc4e21d9ed222fe37c834f197656a4e38775e4a787615b7650fc34.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Context](declarations/context--4c6c750904c3ff1f7813fc64.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [State](declarations/state--c9337f2d4024208eca1f8d59.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [NormM](declarations/normm--398fa1d872eaa72c8ca5299b.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [getForwardState](declarations/getforwardstate--62842aa183fb5d93db6742ef.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [getResetForwardState](declarations/getresetforwardstate--2c5ca04e438faf449d320559.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [modifyForwardState](declarations/modifyforwardstate--019784ffb46d68df3659eccb.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [updateForwardState](declarations/updateforwardstate--e3cbd7d3087621170a312ebb.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [eraseForwardRuleMatch](declarations/eraseforwardrulematch--796a427eb5073f2ba1d4810e.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [applyDiffToForwardState](declarations/applydifftoforwardstate--0dd85e08168add01bb604299.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `inductive` | [NormRuleResult](declarations/normruleresult--21acdd88042604cc6acffd94.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [newGoal?](declarations/newgoal--2dda72b1570ffa6d0846f102.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [steps?](declarations/steps--9aa9f59854da6bd0480c3047.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [optNormRuleResultEmoji](declarations/optnormruleresultemoji--149e0059baca7613a1c7167d.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [withNormTraceNode](declarations/withnormtracenode--61b998b2b1ab5f47fd545a16.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [runNormRuleTac](declarations/runnormruletac--4bb4aef41eaca3a93b3a662e.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [runNormRule](declarations/runnormrule--dfd5dc6c8f914a6a058c5891.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [runFirstNormRule](declarations/runfirstnormrule--0ece1bed27e0474195136295.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [mkNormSimpScriptStep](declarations/mknormsimpscriptstep--a3d1e4a7151327b6e69f05c9.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [normSimpCore](declarations/normsimpcore--e068d7dba8c667a839606efd.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [checkSimp](declarations/checksimp--7af8aa9826f13d190699e41b.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [normSimp](declarations/normsimp--fa657b51999ec724631cf558.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [normUnfoldCore](declarations/normunfoldcore--15e8e1e96eefe968c4b5a2e1.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [normUnfold](declarations/normunfold--db8f6cb67523ae2d4509fef2.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `inductive` | [NormSeqResult](declarations/normseqresult--91d7aa5c7ab7f9d307b463f5.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [NormRuleResult.toNormSeqResult](declarations/normruleresult-tonormseqresult--5e8958eb81380b0aa1156419.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [optNormRuleResultToNormSeqResult](declarations/optnormruleresulttonormseqresult--b84cac791131d3c91c9fe559.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `abbrev` | [NormStep](declarations/normstep--c8a595cb5416c136222321b6.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [runNormSteps](declarations/runnormsteps--66143503d76929720277cda9.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [runPreSimpRules](declarations/runpresimprules--a6a8144807f5c8c9de29a7c7.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [runPostSimpRules](declarations/runpostsimprules--298d0a744dae48aad2237efb.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [unfold](declarations/unfold--cbd5346cf27e79f5b792e706.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [simp](declarations/simp--b52beda952fb0764dd4e5f9d.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [normalizeGoalMVar](declarations/normalizegoalmvar--9c662fb9da9378eb966d2f7e.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [normalizeGoalIfNecessary](declarations/normalizegoalifnecessary--7da008676c11440d488895d7.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
