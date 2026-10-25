# GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.JoinPoints.Variant38208f4df22c363090fc21b803c16e94d306396ec33e80cc386a2e11742c69a3

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**45 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JoinPoints/Variant38208f4df22c363090fc21b803c16e94d306396ec33e80cc386a2e11742c69a3.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9f0016ee7627c965cd8d23b434459d507dd3f3ec`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JoinPoints/Variant38208f4df22c363090fc21b803c16e94d306396ec33e80cc386a2e11742c69a3.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [CandidateInfo](declarations/candidateinfo--d97cf3305e0291a739c1baeb.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [FindCtx](declarations/findctx--0a0e404d0c917cbd73135df2.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [FindState](declarations/findstate--462aaf6dcc3098278c031a07.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `abbrev` | [FindM](declarations/findm--091b7919f836522fcf97bcd7.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `abbrev` | [ReplaceCtx](declarations/replacectx--5b8d9b44594e0e194641478e.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `abbrev` | [ReplaceM](declarations/replacem--93463ad5b2d7f9fbf574a2fe.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [findCandidate?](declarations/findcandidate--9a45754d53ab8795a7dceecd.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [modifyCandidates](declarations/modifycandidates--ad506d4590db2ef32ecc1635.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [eraseCandidate](declarations/erasecandidate--651e95af448296706ac49f05.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [removeCandidatesInArg](declarations/removecandidatesinarg--74706a6fdaa2dee179d655fd.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [removeCandidatesInLetValue](declarations/removecandidatesinletvalue--8222a00d7be1060d1a60a481.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [addCandidate](declarations/addcandidate--c89d97591250d2c8cf226605.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [addDependency](declarations/adddependency--ce62425cf97068b6d1d1d9bc.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [withFnBody](declarations/withfnbody--e5a2be7daf1ea14072eb13ab.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [withFnDefined](declarations/withfndefined--c89b8bd12b09223b0b1d6d56.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [find](declarations/find--4a1a54ae9ed38074f0fd92e1.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [replace](declarations/replace--820297fe1afc3df344d514fd.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `structure` | [ExtendContext](declarations/extendcontext--aeddd61728a514c2e5f0491a.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `structure` | [ExtendState](declarations/extendstate--682574da783fdf230acd403f.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `abbrev` | [ExtendM](declarations/extendm--101e153c7e1b45087aa51543.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [replaceFVar](declarations/replacefvar--69e06c50d1a082cb344e9af6.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [withNewCandidate](declarations/withnewcandidate--d72f767812e24707091a2aae.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [withNewCandidates](declarations/withnewcandidates--0e9505a1602912ac33e94287.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [extendByIfNecessary](declarations/extendbyifnecessary--0f4387f3b9c0f4817f8759a0.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [mergeJpContextIfNecessary](declarations/mergejpcontextifnecessary--6295cf16a20b0e0ed2ff158f.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [withNewFunScope](declarations/withnewfunscope--a2cec8f77f0752b29ed411fe.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [withNewJpScope](declarations/withnewjpscope--faafdf5a0aab5ac0bd258d03.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [withNewAltScope](declarations/withnewaltscope--3340af7a7f1f4d2d4dd423f0.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [extend](declarations/extend--9affec9d713b386fd899363a.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `structure` | [AnalysisCtx](declarations/analysisctx--b9e794f61bb3fa8d8fea1b5e.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `structure` | [AnalysisState](declarations/analysisstate--c1ee0bd685eff7e2cfb41c8d.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `abbrev` | [ReduceAnalysisM](declarations/reduceanalysism--bedec4a668958d0104e11e2c.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `abbrev` | [ReduceActionM](declarations/reduceactionm--ea7b909bc075f902a859bd56.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [isInJpScope](declarations/isinjpscope--334bc87b990fd5eb892e4692.md) | 507 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [reduce](declarations/reduce--594d259caa11a9465f459c42.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [Decl.findJoinPoints?](declarations/decl-findjoinpoints--3e57f4493e93596687184652.md) | 641 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [Decl.findJoinPoints](declarations/decl-findjoinpoints--06a46c60224f261da8633bf9.md) | 653 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [findJoinPoints](declarations/findjoinpoints--635d9412a1c5ca041dd97945.md) | 656 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `builtin_initialize` | [(anonymous)](declarations/builtin-initialize--0a95610f9730959da5af3c13.md) | 659 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [Decl.extendJoinPointContext](declarations/decl-extendjoinpointcontext--05d6489abfc530e0d569eae8.md) | 662 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [extendJoinPointContext](declarations/extendjoinpointcontext--e378e4fc3b899612bedf2325.md) | 666 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `builtin_initialize` | [(anonymous)](declarations/builtin-initialize--34f980fd667d731e5797db2a.md) | 670 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [Decl.commonJoinPointArgs](declarations/decl-commonjoinpointargs--020be4343de02a92329319a7.md) | 673 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [commonJoinPointArgs](declarations/commonjoinpointargs--564dfb34cec927aaf5227a58.md) | 677 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `builtin_initialize` | [(anonymous)](declarations/builtin-initialize--7ccccd72bb776ac8e5db399d.md) | 680 | `BLOCKED_NATIVE_ADMISSION` |
