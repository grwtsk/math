# GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Norm.Variantc366e6d89d41f83eec01ebe6a704ddb1e6227cd756e35a40525da3251a13fc56

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variantc366e6d89d41f83eec01ebe6a704ddb1e6227cd756e35a40525da3251a13fc56.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `49aafd0e2479937b27e3e66b03fb9833b4548d53`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variantc366e6d89d41f83eec01ebe6a704ddb1e6227cd756e35a40525da3251a13fc56.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Context](declarations/context--d66d193c9d7d25b91481d7a0.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [State](declarations/state--a6b498babef8234f8891328a.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [NormM](declarations/normm--a0e53dabf27f36e11c35f123.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [getForwardState](declarations/getforwardstate--6ac9819a80bd12e757dcdf18.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [getResetForwardState](declarations/getresetforwardstate--812d214f70dbda3544c8371e.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [modifyForwardState](declarations/modifyforwardstate--317dc4c3492341a1dd876188.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [updateForwardState](declarations/updateforwardstate--50ebef3058629165ea7d73d3.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [eraseForwardRuleMatch](declarations/eraseforwardrulematch--900ba5a76eb3b4ddc241e849.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [applyDiffToForwardState](declarations/applydifftoforwardstate--66cde2bee536e364549373d6.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `inductive` | [NormRuleResult](declarations/normruleresult--f51977cd94452e6a48dc4ec1.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [newGoal?](declarations/newgoal--40be5f09bf0cd75c9e458b11.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [steps?](declarations/steps--4289d95e88d81e75c73f6a26.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [optNormRuleResultEmoji](declarations/optnormruleresultemoji--8d2b0a753e0f1dfd36ee385a.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [withNormTraceNode](declarations/withnormtracenode--f1e27b543231b3b8c7884b1c.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [runNormRuleTac](declarations/runnormruletac--c89c7d12f018aad445b692f0.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [runNormRule](declarations/runnormrule--81afd41dccf1dea161b810d7.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [runFirstNormRule](declarations/runfirstnormrule--8006504fcbf02679cb3d8d8a.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [mkNormSimpScriptStep](declarations/mknormsimpscriptstep--6706c8e02fe1cca653556a8a.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [normSimpCore](declarations/normsimpcore--804f89cfff13a210c409b053.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [checkSimp](declarations/checksimp--edd771cf0074089d87b48515.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [normSimp](declarations/normsimp--89920a3b37330f3b579d6cf2.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [normUnfoldCore](declarations/normunfoldcore--aec9f11f4883f5d789d3335f.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [normUnfold](declarations/normunfold--aa9a423d43097255e25deec8.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `inductive` | [NormSeqResult](declarations/normseqresult--68623e4429811a7f62380ac6.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [NormRuleResult.toNormSeqResult](declarations/normruleresult-tonormseqresult--08d10ba6fdfade2947f9ebbd.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [optNormRuleResultToNormSeqResult](declarations/optnormruleresulttonormseqresult--f0fe32ab5061dc120d13b51f.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `abbrev` | [NormStep](declarations/normstep--6d32c9c34a52fe6b13a08a40.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [runNormSteps](declarations/runnormsteps--348b6f9662171efffd12ad33.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [runPreSimpRules](declarations/runpresimprules--01a2755d066967974b5029a1.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [runPostSimpRules](declarations/runpostsimprules--0244a23a404afb4a7e532a5d.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [unfold](declarations/unfold--51a2916916ae9c6409a9ec8c.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [simp](declarations/simp--f5450d53ff866dfc2195e563.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [normalizeGoalMVar](declarations/normalizegoalmvar--b55bb000c248247f12d32dc0.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [normalizeGoalIfNecessary](declarations/normalizegoalifnecessary--41c3cfde91666859f995bbf3.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
