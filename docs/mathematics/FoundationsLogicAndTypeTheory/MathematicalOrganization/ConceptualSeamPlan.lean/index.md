# GRWTSK.FoundationsLogicAndTypeTheory.MathematicalOrganization.ConceptualSeamPlan

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**38 observed declarations and anonymous commands**, 7 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalOrganization/ConceptualSeamPlan.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `59d2bb040d2b8f940c179c62a90a3cc343e8575c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/FoundationsLogicAndTypeTheory/MathematicalOrganization/ConceptualSeamPlan.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [ByteSpan](declarations/bytespan--876f7a0ee6113a7f5224a1e8.md) | 20 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [CoversFrom](declarations/coversfrom--bc0880a4fe9bf1d9bf33bdba.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [CommandIdentity](declarations/commandidentity--63d4f7d0e2e9481dd40ad396.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `inductive` | [DeclarationVisibility](declarations/declarationvisibility--ab7f432bc2e23515beb6a691.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `inductive` | [DeclarationOriginKind](declarations/declarationoriginkind--8ca5ddb57fa63830202b66db.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [DeclarationFingerprint](declarations/declarationfingerprint--2a232173c899af9e9a9e8459.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [DeclarationOrigin](declarations/declarationorigin--868d1ec143b04202cdd6267a.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [ContextState](declarations/contextstate--d178301fd44abc712ba3bc8d.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [CommandUnit](declarations/commandunit--70f6d084e77f53a5f4f6e534.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `inductive` | [DependencyKind](declarations/dependencykind--2c5a94e7f1731e5dedf30d95.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [DependencyKind.hard](declarations/dependencykind-hard--4eb431e493c906766b06407e.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `structure` | [DependencyEdge](declarations/dependencyedge--8fcdaeac048ccb36ef3d2f3b.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `structure` | [ConceptualSlice](declarations/conceptualslice--d02aa881c576aedbf9025c48.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `structure` | [ModuleDependency](declarations/moduledependency--84ed41d338a4d2368cf29163.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [AppearsBefore](declarations/appearsbefore--4cd8f3e92a55e8d1f58c3b19.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [commandOrdinals](declarations/commandordinals--cbffccb35d4b969469b91655.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [sliceCommandOrdinals](declarations/slicecommandordinals--7aba589fbb857bb180db208b.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [SlicesCoverExactly](declarations/slicescoverexactly--6efb33c665a84017d014684d.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [declarationFingerprints](declarations/declarationfingerprints--9a3aaae7b0eda8fe6ac964ac.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [CommandsCoLocated](declarations/commandscolocated--72f071ddc0ecdb906026c230.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [HardDependenciesCoLocated](declarations/harddependenciescolocated--0437fafc635c68dfba582752.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [MachineSlicesConservative](declarations/machineslicesconservative--aff2397bc0d29ea71e53015e.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [PinnedSlicesStable](declarations/pinnedslicesstable--46122a5fb6ca88c498148da0.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `structure` | [SeamPlan](declarations/seamplan--8e85f0feaf3a05c1b56c7994.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [SeamPlan.reconstructsExactBytes](declarations/seamplan-reconstructsexactbytes--9b217503a8179b98c971894f.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [SeamPlan.coversExactSourceRange](declarations/seamplan-coversexactsourcerange--f60fae7c3917aa83910088dc.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [SeamPlan.keepsHardDependenciesTogether](declarations/seamplan-keepsharddependenciestogether--e57f0d9b35543ab07195b4c6.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [SeamPlan.preservesPublicSignatures](declarations/seamplan-preservespublicsignatures--9493bd4a43bf951795e7f64f.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [SeamPlan.preservesNotices](declarations/seamplan-preservesnotices--7aa57a64ccc0c536a52f7dd5.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [SeamPlan.ordersEveryResultDependency](declarations/seamplan-orderseveryresultdependency--e080e1e8db5339c910af41c0.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [SeamPlan.noMachineImplication](declarations/seamplan-nomachineimplication--186fd6be0bb9369b64c8adbd.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [spanZeroTwo](declarations/spanzerotwo--9da09886b21cd179dc2a05d1.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [spanTwoThree](declarations/spantwothree--bd815a15205e7210f285a846.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [spanOneThree](declarations/spanonethree--d6161c5dea5bc1deda54c949.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `example` | [(anonymous)](declarations/example--0356cea639d2c0b1ce58b5d8.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `example` | [(anonymous)](declarations/example--c1e22ee585b1fdcc7d148aa0.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `example` | [(anonymous)](declarations/example--48c016eacc107b2db3fc812d.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `example` | [(anonymous)](declarations/example--9d90b75f12bb6875f478b81f.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
