# GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MetavarContext.Variante13d9cd0a9e068e59d04923cdd63f20e6c3d18967d6647ad2e08c311e8f6476a

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**140 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetavarContext/Variante13d9cd0a9e068e59d04923cdd63f20e6c3d18967d6647ad2e08c311e8f6476a.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7cc887a99e6fe7674299b71e0cc65b26fc6bd4cc`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetavarContext/Variante13d9cd0a9e068e59d04923cdd63f20e6c3d18967d6647ad2e08c311e8f6476a.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [LevelMetavarDecl](declarations/levelmetavardecl--f4a4de40c552de8a133587ff.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [LocalInstance](declarations/localinstance--033ab249eeb6e37da623116e.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [LocalInstances](declarations/localinstances--171e4793987caa5abc9747e9.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance--a5dbfe19c58735738d498ba4.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance--46ba36cc790860affbf1d22e.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [LocalInstances.erase](declarations/localinstances-erase--e905f6e8f41b382d88055634.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `inductive` | [MetavarKind](declarations/metavarkind--c7d4c9fd2f499d541373e1cb.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [MetavarKind.isSyntheticOpaque](declarations/metavarkind-issyntheticopaque--18ae7e38b519c7e143988d95.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [MetavarKind.isNatural](declarations/metavarkind-isnatural--7fd2d2a60ac6a2b692420ed2.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `structure` | [MetavarDecl](declarations/metavardecl--3bbe73ca8bdf225cd33a5adb.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `structure` | [DelayedMetavarAssignment](declarations/delayedmetavarassignment--658d4f0dcdb93f86cd9c7144.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `structure` | [MetavarContext](declarations/metavarcontext--103fd1ce6003a551ee70386c.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [(anonymous)](declarations/instance--fb3649185aa903d0a6ed7093.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `class` | [MonadMCtx](declarations/monadmctx--af4e8a5023f87cda18e401ec.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [(anonymous)](declarations/instance--9a5ca00571c1a3d0fb39cf2a.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [(anonymous)](declarations/instance--555e9e8caae3b7baee91ea24.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `abbrev` | [setMCtx](declarations/setmctx--cddd45f9942ad6ab49a95656.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `abbrev` | [getLevelMVarAssignment?](declarations/getlevelmvarassignment--9d7a19d6172186620f518c15.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [getLevelMVarAssignmentExp](declarations/getlevelmvarassignmentexp--231b22d198cff186b8027748.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [MetavarContext.getExprAssignmentCore?](declarations/metavarcontext-getexprassignmentcore--dc84a1011e9e1e836c9df0a0.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [MetavarContext.getExprAssignmentExp](declarations/metavarcontext-getexprassignmentexp--bdc8cff26a126e244b914022.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [getExprMVarAssignment?](declarations/getexprmvarassignment--9d4587788863833b4dc80ca4.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [MetavarContext.getDelayedMVarAssignmentCore?](declarations/metavarcontext-getdelayedmvarassignmentcore--522f8b3dffdd470889f0a5b6.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [MetavarContext.getDelayedMVarAssignmentExp](declarations/metavarcontext-getdelayedmvarassignmentexp--0caf1557b7d287eb274d7b4c.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [DelayedMetavarAssignment.fvarsExp](declarations/delayedmetavarassignment-fvarsexp--715464deb53f68134b4f14a7.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [DelayedMetavarAssignment.mvarIdPendingExp](declarations/delayedmetavarassignment-mvaridpendingexp--9fb5466d33a513253893b1e7.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [getDelayedMVarAssignment?](declarations/getdelayedmvarassignment--4450e14bce857c0a885dcb3c.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [getDelayedMVarRoot](declarations/getdelayedmvarroot--9a974e22734c145e5f0df48b.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [isLevelMVarAssigned](declarations/islevelmvarassigned--8714a4f63049489bfc75bd6a.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LevelMetavarDecl.Variantc077803ff87931e95ab13401b9119317a4268206814ace2a2d9586c9786355af.Lean.MVarId.isAssigned](declarations/root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-level--e660015a62f773565fecf2c1.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LevelMetavarDecl.Variantc077803ff87931e95ab13401b9119317a4268206814ace2a2d9586c9786355af.Lean.MVarId.isDelayedAssigned](declarations/root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-level--0927849807420fa87893d148.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LevelMetavarDecl.Variantc077803ff87931e95ab13401b9119317a4268206814ace2a2d9586c9786355af.Lean.MVarId.isAssignedOrDelayedAssigned](declarations/root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-level--12da0c3f082dd52c302439b9.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [MetavarContext.findLevelDecl?](declarations/metavarcontext-findleveldecl--7635b7e2676d8c43d7fc0b9c.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [MetavarContext.getLevelDecl](declarations/metavarcontext-getleveldecl--e4d7a40624e897e82ea483b1.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [isLevelMVarAssignable](declarations/islevelmvarassignable--7ded25423d9a03f5865271f5.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [MetavarContext.findDecl?](declarations/metavarcontext-finddecl--6df27696b68b1dee3d44b0c2.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [MetavarContext.getDecl](declarations/metavarcontext-getdecl--05b8f2f70eca9f0b6ff16455.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LevelMetavarDecl.Variantc077803ff87931e95ab13401b9119317a4268206814ace2a2d9586c9786355af.Lean.MVarId.isAssignable](declarations/root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-level--2a783ff4a6eec76a115fff83.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [hasAssignedLevelMVar](declarations/hasassignedlevelmvar--ce1ff35910fb386eb41c5f9f.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [hasAssignedMVar](declarations/hasassignedmvar--9f91591ac0b3535ab4a2cd22.md) | 507 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [assignLevelMVar](declarations/assignlevelmvar--9de7c57cb4cf9732aa1d0461.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [assignLevelMVarExp](declarations/assignlevelmvarexp--2751a0b661e053555c0a8152.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LevelMetavarDecl.Variantc077803ff87931e95ab13401b9119317a4268206814ace2a2d9586c9786355af.Lean.MVarId.assign](declarations/root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-level--55026f3e35125cbf2dd121c4.md) | 540 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [assignExp](declarations/assignexp--84fb1438e2f397c570661799.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [assignDelayedMVar](declarations/assigndelayedmvar--80166003c14eae514d856d32.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `opaque` | [instantiateLevelMVarsImp](declarations/instantiatelevelmvarsimp--24943c8377f21edef330fdcb.md) | 577 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [instantiateLevelMVars](declarations/instantiatelevelmvars--df2e9266350dd4ac25a57a8c.md) | 579 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `opaque` | [instantiateExprMVarsImp](declarations/instantiateexprmvarsimp--edd76931d7255da9fa19bc2c.md) | 585 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [instantiateExprMVars](declarations/instantiateexprmvars--083c3334acd1e21df6111435.md) | 588 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `instance` | [(anonymous)](declarations/instance--3dae22ed1831398cff5e114c.md) | 593 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [instantiateMVarsCore](declarations/instantiatemvarscore--3ace01e951f93169a5b12c0d.md) | 597 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [instantiateMVars](declarations/instantiatemvars--fade5731584306e43d08854e.md) | 628 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [instantiateLCtxMVars](declarations/instantiatelctxmvars--f3b655c6f1ecf2601bf3d944.md) | 636 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [instantiateMVarDeclMVars](declarations/instantiatemvardeclmvars--b387df0ac1d72dbd75ff0ead.md) | 654 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [instantiateLocalDeclMVars](declarations/instantiatelocaldeclmvars--17f5e56234e63b524ba728fa.md) | 661 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `structure` | [State](declarations/state--d319c23c025f09b871ee5be7.md) | 670 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `abbrev` | [M](declarations/m--76346f8ecf77dc7a0106e0aa.md) | 674 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `instance` | [(anonymous)](declarations/instance--8e93dd4d9dc35e290939b950.md) | 676 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [shouldVisit](declarations/shouldvisit--366e08ce16963f54ada2d124.md) | 680 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [dep](declarations/dep--0b48f584fb44ad2663c8e4e1.md) | 689 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [main](declarations/main--dbdb982b5ee37fa8d96f893e.md) | 730 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [findExprDependsOn](declarations/findexprdependson--abb723d76c6ab5ea72c33f41.md) | 741 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [findLocalDeclDependsOn](declarations/findlocaldecldependson--d84671a091d5dd10e7f1818c.md) | 752 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [exprDependsOn](declarations/exprdependson--133a0d9a70bc8f6854023ad8.md) | 763 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [dependsOn](declarations/dependson--c0c8caf80c05ab435b5ffd7b.md) | 767 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [localDeclDependsOn](declarations/localdecldependson--c32ad011dc7347231353a5cc.md) | 775 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [exprDependsOn'](declarations/exprdependson--1c454c2d5ac9df9290e14a73.md) | 779 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [localDeclDependsOn'](declarations/localdecldependson--f147be0f51886afa35acc911.md) | 788 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [dependsOnPred](declarations/dependsonpred--9dc00aac49c70e236c2ae7f1.md) | 797 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [localDeclDependsOnPred](declarations/localdecldependsonpred--431f48c2fb679a493faf9a6d.md) | 801 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [addExprMVarDecl](declarations/addexprmvardecl--eda82e0537bf2d518ff59da6.md) | 810 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [addExprMVarDeclExp](declarations/addexprmvardeclexp--87b1ecd0ee4772a0ab17366d.md) | 831 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [addLevelMVarDecl](declarations/addlevelmvardecl--08c12972a43dc459e2888446.md) | 838 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [findUserName?](declarations/findusername--b0f1abde84b7048260eb25d2.md) | 845 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `def` | [modifyExprMVarDecl](declarations/modifyexprmvardecl--c2698610b1b5b278716faa7b.md) | 855 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `def` | [setMVarKind](declarations/setmvarkind--aa1d9cd0eb20f5ffdb594fbf.md) | 862 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [setMVarUserName](declarations/setmvarusername--451556a32d976f479a09e2c5.md) | 869 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [setMVarUserNameTemporarily](declarations/setmvarusernametemporarily--e13e62ef62b013609463744b.md) | 883 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `def` | [setMVarType](declarations/setmvartype--bf27eec5117de0a3bb396d81.md) | 889 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `def` | [modifyExprMVarLCtx](declarations/modifyexprmvarlctx--313f434408470a2b4204df08.md) | 900 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [setFVarKind](declarations/setfvarkind--0e0f5b6947b83f637e03d69b.md) | 909 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [setFVarBinderInfo](declarations/setfvarbinderinfo--e9fdc834b2abaa92e715b0b5.md) | 918 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `def` | [setFVarType](declarations/setfvartype--718b9c4163ac1d1654f0badc.md) | 922 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `def` | [findLevelDepth?](declarations/findleveldepth--981f389295a9397d239b9364.md) | 926 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [getLevelDepth](declarations/getleveldepth--f8f7100d05d01afeb207cb33.md) | 929 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `def` | [findLevelIndex?](declarations/findlevelindex--c4fce00713e0c13736206179.md) | 932 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `def` | [isAnonymousMVar](declarations/isanonymousmvar--b6ddfcd570a16170695755f7.md) | 935 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `def` | [incDepth](declarations/incdepth--32a16ccbfc32a013b1cb4d06.md) | 940 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `inductive` | [Exception](declarations/exception--f38274e026e72b3fe68942b9.md) | 948 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `instance` | [(anonymous)](declarations/instance--8e782456587e9ee1f7ea6dd3.md) | 951 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `structure` | [State](declarations/state--9210367858386462a2b5061b.md) | 964 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `structure` | [Context](declarations/context--327c3e51cf9241eb5c8a43de.md) | 970 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `abbrev` | [MCore](declarations/mcore--6713e52e23293bbfb460cd9e.md) | 978 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `abbrev` | [M](declarations/m--16e2dc8e3ab2e2937af121ba.md) | 979 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `instance` | [(anonymous)](declarations/instance--6d056c573d1f0638ce9203d6.md) | 981 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `def` | [mkFreshBinderName](declarations/mkfreshbindername--37905bed258e90bb1ebfe6b9.md) | 985 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `def` | [preserveOrder](declarations/preserveorder--23a7dccf394228c0ed6d183e.md) | 989 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `instance` | [(anonymous)](declarations/instance--7443f4bd6380d93f6c9bd068.md) | 992 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `def` | [getLocalDeclWithSmallestIdx](declarations/getlocaldeclwithsmallestidx--a700905ae53ef65ab5a591af.md) | 997 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `def` | [collectForwardDeps](declarations/collectforwarddeps--f28708eaa48b9b45a1f1af24.md) | 1045 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `def` | [reduceLocalContext](declarations/reducelocalcontext--325e86c68c411dc2dbafe199.md) | 1073 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `def` | [getInScope](declarations/getinscope--1f58755440bfe94e6c402b62.md) | 1078 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `def` | [withFreshCache](declarations/withfreshcache--05c224ccaa34b1fd330bcfdf.md) | 1088 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `def` | [mkMVarApp](declarations/mkmvarapp--ec88aa381ba9278438994f54.md) | 1098 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `def` | [visit](declarations/visit--df599bfee7bae627f397a1e3.md) | 1109 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `def` | [elim](declarations/elim--4111043fa8e78025d171d863.md) | 1112 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `def` | [mkAuxMVarType](declarations/mkauxmvartype--56cc2971640b9bd4915f307d.md) | 1131 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `def` | [elimMVar](declarations/elimmvar--59439d8c0a6a720758de9c10.md) | 1184 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `def` | [elimApp](declarations/elimapp--7ac0fde251dd75fbc9d38f06.md) | 1238 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `def` | [elimMVarDeps](declarations/elimmvardeps--c29913945702ab03112c6242.md) | 1260 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `def` | [revert](declarations/revert--6ed935d3fbf546f5fa7279ee.md) | 1274 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `def` | [abstractRange](declarations/abstractrange--fb940a3f126d8bbd824a21d4.md) | 1285 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `def` | [mkLambda'](declarations/mklambda--34d67c3e1420c22600d271e0.md) | 1289 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `def` | [mkBinding](declarations/mkbinding--a2ca2e55d83fe7dfecae1aa0.md) | 1320 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `structure` | [MkBindingM.Context](declarations/mkbindingm-context--9eca3e7b889316a1212547f3.md) | 1359 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `abbrev` | [MkBindingM](declarations/mkbindingm--a6cb6c6fee9855d0d6f2baab.md) | 1363 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `def` | [elimMVarDeps](declarations/elimmvardeps--7445c0430be31e682499fd5c.md) | 1365 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `def` | [revert](declarations/revert--dc43d0c7bb3fc67e6457ce4d.md) | 1368 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `def` | [mkBinding](declarations/mkbinding--0b9c460fb8ebe256801417eb.md) | 1371 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `def` | [mkLambda](declarations/mklambda--d89c7c8b49e336ce2eb2c6cd.md) | 1375 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `def` | [mkForall](declarations/mkforall--05476afce3dc3a737d72f955.md) | 1378 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `def` | [abstractRange](declarations/abstractrange--6c4f9d936cf9b49fd03123de.md) | 1381 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `def` | [collectForwardDeps](declarations/collectforwarddeps--b5fb4c8f25eb1568abae2578.md) | 1384 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `def` | [isWellFormed](declarations/iswellformed--9b38b9b92157eb9b74854127.md) | 1391 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `structure` | [Context](declarations/context--680a3e99987777bb1ae7fd75.md) | 1413 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `structure` | [State](declarations/state--85511d672ab59b0bb9b0c7b1.md) | 1418 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `abbrev` | [M](declarations/m--468e5dfc23e7c764ff9708b6.md) | 1424 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `instance` | [(anonymous)](declarations/instance--06a0db0293566f9886d721b3.md) | 1426 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `instance` | [(anonymous)](declarations/instance--7ac04ad36547aa0f5be4f8e9.md) | 1430 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `def` | [mkParamName](declarations/mkparamname--e7a370dbca59782f8e2aa221.md) | 1434 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `def` | [visitLevel](declarations/visitlevel--e4586b26a01b3b8bf43d94f0.md) | 1445 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `def` | [main](declarations/main--dd4487d507201b36954abdad.md) | 1464 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `structure` | [UnivMVarParamResult](declarations/univmvarparamresult--9201dd7b1f0bf31b01b471f4.md) | 1491 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `def` | [levelMVarToParam](declarations/levelmvartoparam--030ba62d9054718b45c7ba6f.md) | 1497 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `def` | [getExprAssignmentDomain](declarations/getexprassignmentdomain--1c360e8b2f39217617551fdc.md) | 1505 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `def` | [modifyDecl](declarations/modifydecl--39a89f2272cfcccf23e26f4d.md) | 1519 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `def` | [modifyLCtx](declarations/modifylctx--4474603811be42943eefa0d7.md) | 1530 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `def` | [setFVarKind](declarations/setfvarkind--2ece8b71c34f17adf8afc755.md) | 1538 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `def` | [setFVarBinderInfo](declarations/setfvarbinderinfo--53930eca2795750bdd68dbaa.md) | 1546 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `def` | [setFVarType](declarations/setfvartype--d6263b38774e73f3f62eb724.md) | 1554 | `BLOCKED_NATIVE_ADMISSION` |
