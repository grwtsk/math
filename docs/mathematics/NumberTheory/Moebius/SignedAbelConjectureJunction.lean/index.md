# GRWTSK.NumberTheory.Moebius.SignedAbelConjectureJunction

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**29 observed declarations and anonymous commands**, 2 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Moebius/SignedAbelConjectureJunction.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e3b54738c271cb1ef9841283dd269c712b19db90`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/NumberTheory/Moebius/SignedAbelConjectureJunction.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [GrowingShiftOrdinaryTwoPointChowla](declarations/growingshiftordinarytwopointchowla--d2306a28928bb3e5093bed13.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [translatedMertensTwoPointPrefix](declarations/translatedmertenstwopointprefix--966ab343a2765c0d9b462799.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [EveryIntervalEverySubprefixTwoPointCancellation](declarations/everyintervaleverysubprefixtwopointcancellation--569e96a8371acb1169f58494.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [CorrectedElliottFamilyData](declarations/correctedelliottfamilydata--b5552c7c0256fe6fb1f4ce45.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [FamilyUniformCorrectedElliott](declarations/familyuniformcorrectedelliott--34a2467a9bce78d96d13e3eb.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [HigherOrderChowlaData](declarations/higherorderchowladata--f9d22b8730962134d818e6b6.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [HigherOrderChowla](declarations/higherorderchowla--18015cdb086df82a2d583213.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [HigherOrderCorrectedElliottData](declarations/higherordercorrectedelliottdata--6c0be81a53c8c4772be3467d.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [HigherOrderCorrectedElliott](declarations/higherordercorrectedelliott--1c563b7baf951aa74d6fb7a8.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `structure` | [SarnakLocalGowersData](declarations/sarnaklocalgowersdata--0c360a526c9ec5d069735c93.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [SarnakLocalGowersSource](declarations/sarnaklocalgowerssource--0ada14d63365d497f2c2ffc5.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `structure` | [WeakMertensData](declarations/weakmertensdata--a7efc45f46b7d4b1b8d90895.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [WeakMertensSource](declarations/weakmertenssource--290fab2bedd496dab6c49610.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `structure` | [GonekHejhalData](declarations/gonekhejhaldata--05fdbd51e06c271aec257623.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [GonekHejhalSource](declarations/gonekhejhalsource--9907c5db4537159e5b499799.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `structure` | [ToSignedAbelDepthPacketAdapter](declarations/tosignedabeldepthpacketadapter--270f83b87fd6084cda309dfe.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `abbrev` | [GrowingShiftChowlaAdapter](declarations/growingshiftchowlaadapter--3f7616ad56884db2e42dd1d7.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `abbrev` | [EveryIntervalSubprefixAdapter](declarations/everyintervalsubprefixadapter--5e44f2c0e18fe46331603ede.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `abbrev` | [CorrectedElliottFamilyAdapter](declarations/correctedelliottfamilyadapter--f024f6b5898db25a0dd0625c.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `abbrev` | [HigherOrderChowlaDepthAdapter](declarations/higherorderchowladepthadapter--123125aba6b57b16c85a3e5a.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `abbrev` | [HigherOrderCorrectedElliottDepthAdapter](declarations/higherordercorrectedelliottdepthadapter--778ff5b9c7258392827458e6.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `abbrev` | [SarnakLocalGowersDepthAdapter](declarations/sarnaklocalgowersdepthadapter--44e1e7c1b28cfef841e676b3.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `abbrev` | [WeakMertensDepthAdapter](declarations/weakmertensdepthadapter--5ec01aa7db28c2b9880cadac.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `abbrev` | [GonekHejhalDepthAdapter](declarations/gonekhejhaldepthadapter--fbd9f528eaa112f411ae34a9.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [signedAbelDepthPacket_of_adapter](declarations/signedabeldepthpacket-of-adapter--90c3a62ca15ae0ad1ec1bcdf.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [riemannHypothesis_of_signedDepthAdapter](declarations/riemannhypothesis-of-signeddepthadapter--2c2100b6d5b594ebb46d2fae.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `structure` | [FixedDataVsGrowingDepthBoundary](declarations/fixeddatavsgrowingdepthboundary--f99a2fb4f432ccc96304b98f.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `structure` | [IntervalCoverageAdapter](declarations/intervalcoverageadapter--a16b12c71b4b94810d18d8da.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `structure` | [AveragingConventionAdapter](declarations/averagingconventionadapter--d34a2af8ee938600e3f34b97.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
