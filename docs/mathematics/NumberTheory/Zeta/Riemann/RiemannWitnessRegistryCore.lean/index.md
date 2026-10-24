# GRWTSK.NumberTheory.Zeta.Riemann.RiemannWitnessRegistryCore

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**28 observed declarations and anonymous commands**, 8 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Zeta/Riemann/RiemannWitnessRegistryCore.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7a91b53b39555bb9f166dc6580144f27c0d51495`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Zeta/Riemann/RiemannWitnessRegistryCore.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [WitnessId](declarations/witnessid--039cb034155bb4de5cffaaba.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `inductive` | [NodeKind](declarations/nodekind--22208108a76a0268033486b9.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `inductive` | [WitnessScope](declarations/witnessscope--2d479386804720c65323dd23.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `inductive` | [SourceAvailability](declarations/sourceavailability--59c2fb7d53b7b0d2a6f7f0a6.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `inductive` | [EvidenceState](declarations/evidencestate--64cecf31a5f9beb23b7766c8.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `inductive` | [RelationKind](declarations/relationkind--6f3cc38ac89dd447beacd0ec.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [RelationKind.permitsImplication](declarations/relationkind-permitsimplication--5f2312a5860e34584b68356b.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `inductive` | [EdgeAuthority](declarations/edgeauthority--faf9075784a27e1313b45def.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [EdgeAuthority.proofBearing](declarations/edgeauthority-proofbearing--cbabc3ed7f5df0685a9a34dd.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `structure` | [SourceRef](declarations/sourceref--376a89649c660d5c55c24c62.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `structure` | [ConsumerRef](declarations/consumerref--e21ef7f73a11f904bd1aae2b.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `structure` | [WitnessNode](declarations/witnessnode--2aab231202d98e1a03ad7cb3.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `structure` | [WitnessEdge](declarations/witnessedge--5bb4ba59c134a150fc41607a.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [traversable](declarations/traversable--c90943174d60cbb66088ef9a.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [traversable_iff](declarations/traversable-iff--b7f89c4366c4948c329122a3.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [noProvedConnection_not_traversable](declarations/noprovedconnection-not-traversable--2ae47928222049c8913405cd.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [relevantOnly_not_traversable](declarations/relevantonly-not-traversable--42f2c81e5159cf67352a691f.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [refutesAtScope_not_traversable](declarations/refutesatscope-not-traversable--06ac6aa2a27148a0a53e6a2a.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [externalSource_not_traversable](declarations/externalsource-not-traversable--0aad74318b87079b62908ee7.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `structure` | [WitnessRegistry](declarations/witnessregistry--7cf4578feef365731205cd14.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [nodeIds](declarations/nodeids--a86b471e61d79c1b42ec6477.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [findNode?](declarations/findnode--3980e10507b89113b6ff2549.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `structure` | [LocalClaimBinding](declarations/localclaimbinding--4b0f04f1485d7832504e35a7.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [canonicalRectangleEdgeBinding](declarations/canonicalrectangleedgebinding--7fc31aa24d660c2d0262c8c0.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [rectangleConjectureJunctionBinding](declarations/rectangleconjecturejunctionbinding--6a82efaa6e9f9a6d497c7a23.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [external_authority_is_not_proof](declarations/external-authority-is-not-proof--1a8bb1432063eb9e87bf7cc5.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [prose_authority_is_not_proof](declarations/prose-authority-is-not-proof--09955d4760d4bde739c56d10.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [unresolved_authority_is_not_proof](declarations/unresolved-authority-is-not-proof--4f1549ffd977a4ae131e8038.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
