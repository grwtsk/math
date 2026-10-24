# GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.PrimeWalkSpatialEncoding.Variant7e057f3fdf58292ad632ecec60ff1d9b9b5d91b4c768deea0dd591061a089a34

[Complete source index](../../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**26 observed declarations and anonymous commands**, 7 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant7e057f3fdf58292ad632ecec60ff1d9b9b5d91b4c768deea0dd591061a089a34.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9d1c4ad28bb26b4e9c16fba5dd9227b888e7e15e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant7e057f3fdf58292ad632ecec60ff1d9b9b5d91b4c768deea0dd591061a089a34.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [SpatialPoint](declarations/spatialpoint--b024272debd39cbb73f67f81.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [ErrorTrajectory](declarations/errortrajectory--2f8211c7857dfa81b32e7341.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [SpatialSignal](declarations/spatialsignal--05b49ba959b8da1e0c8944d2.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [UnitTube3](declarations/unittube3--c38dfbe822969a9f085cce31.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [UnitTube3.axisSegment](declarations/unittube3-axissegment--18cc92807722edaf279ca326.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [UnitTube3.carrier](declarations/unittube3-carrier--99ee8c3de168abd9d73141f4.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [spatialFourierTransform](declarations/spatialfouriertransform--8b095de143473f806cf6c60e.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [packetSum](declarations/packetsum--7dd32dae605aa07a3a0f1982.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [reconstructionError](declarations/reconstructionerror--e9463bcd67b19882d59f4b51.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [packetSquareFunction](declarations/packetsquarefunction--16cb411b52186451bf8db8e2.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `structure` | [L2SpatialReadout](declarations/l2spatialreadout--1156f9fd66b0bb8d0f0e3f4e.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [tubeMultiplicity](declarations/tubemultiplicity--e43b339568baf4ba801776c2.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [multiplicitySuperlevelSet](declarations/multiplicitysuperlevelset--b42816b6d1934d1ae3935e84.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `structure` | [AssumedMultiplicityPowerLaw](declarations/assumedmultiplicitypowerlaw--d540780bc045199407d17ffd.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `constant` | [(anonymous)](declarations/constant--7c8cd3af7994ade213238dbb.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `constant` | [*](declarations/anonymous--d64a30a929dfe4b2f12854c4.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `structure` | [SpatialEncodedTrajectory](declarations/spatialencodedtrajectory--0c56d56670389849c252faae.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `structure` | [SomeSpatialEncodedTrajectory](declarations/somespatialencodedtrajectory--283b6c8697de663eaccd04cd.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [HasSpatialEncoding](declarations/hasspatialencoding--d2c6eb636e268ec1ddfd4800.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [spatial_reconstruction_apply](declarations/spatial-reconstruction-apply--20510a6c5e3636b1525fc28b.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [temporal_reconstruction](declarations/temporal-reconstruction--255372a79c84150319a76dba.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [temporal_residual_lpNorm_le](declarations/temporal-residual-lpnorm-le--6e8e9f0ef2ef5aa03fdae6f2.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [squareSuperlevel_eq_grainShadingUnion](declarations/squaresuperlevel-eq-grainshadingunion--b35d0712fb9aa5a7156c0fb5.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [squareSuperlevel_subset_grainShadingUnion](declarations/squaresuperlevel-subset-grainshadingunion--af591bdb11a30ae17f948441.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [measure_squareSuperlevel_le_grain_sum](declarations/measure-squaresuperlevel-le-grain-sum--64b3f761ba8087ce4846b96d.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [multiplicity_powerLaw_of_assumption](declarations/multiplicity-powerlaw-of-assumption--9465b8d990edd8c590117234.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
