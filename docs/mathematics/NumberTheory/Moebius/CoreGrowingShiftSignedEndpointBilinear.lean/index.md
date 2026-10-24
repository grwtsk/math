# GRWTSK.NumberTheory.Moebius.CoreGrowingShiftSignedEndpointBilinear

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**30 observed declarations and anonymous commands**, 14 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointBilinear.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f9c01da39b373e55afc2c551135031974fc4a6c8`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointBilinear.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [CoreGrowingShiftSignedEndpointSourceCell](declarations/coregrowingshiftsignedendpointsourcecell--bf4f6a3dc167788463ab6805.md) | 23 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [CoreGrowingShiftSignedEndpointIndex](declarations/coregrowingshiftsignedendpointindex--2ee5eaadbf807955de8081d6.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [coreGrowingShiftSignedEndpointSourceCells](declarations/coregrowingshiftsignedendpointsourcecells--7c9c928708639c4b41204f90.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [coreGrowingShiftSignedEndpointPairSet](declarations/coregrowingshiftsignedendpointpairset--5dd90f97a2bcda480b306e4f.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [coreGrowingShiftSignedEndpointIndices](declarations/coregrowingshiftsignedendpointindices--464d020c6b09892ea6727a01.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [mem_coreGrowingShiftSignedEndpointPairSet_iff](declarations/mem-coregrowingshiftsignedendpointpairset-iff--3102f2421539b41815be3e8b.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [coreGrowingShiftSignedEndpointPair_support](declarations/coregrowingshiftsignedendpointpair-support--307627d73ca141e937c4aa4f.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [coreGrowingShiftSignedSourceRightEndpoint_lt_rightScale](declarations/coregrowingshiftsignedsourcerightendpoint-lt-rightscale--bede9c14262e65665154e8cb.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [coreGrowingShiftSignedEndpointSourceToEndpoint](declarations/coregrowingshiftsignedendpointsourcetoendpoint--1c17d35da082d4754760a662.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [coreGrowingShiftSignedEndpointSourceToEndpoint_mem](declarations/coregrowingshiftsignedendpointsourcetoendpoint-mem--5b17e4a35ecd2f77d6347fef.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [coreGrowingShiftSignedEndpointSourceToEndpoint_injective](declarations/coregrowingshiftsignedendpointsourcetoendpoint-injective--725c42af2f8c0d2884b20ad6.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [coreGrowingShiftSignedEndpointSourceToEndpoint_surjective](declarations/coregrowingshiftsignedendpointsourcetoendpoint-surjective--0d94a4aab52e2a6b5feeac50.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [coreGrowingShiftSignedEndpointSourceValue](declarations/coregrowingshiftsignedendpointsourcevalue--8da0f104d4b60e874351c1b6.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [coreGrowingShiftSignedEndpointSourceEnergy](declarations/coregrowingshiftsignedendpointsourceenergy--ff2193543abca1b9ef94242e.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [coreGrowingShiftSignedEndpointKernel](declarations/coregrowingshiftsignedendpointkernel--39bb6e04023c063646e9582c.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [coreGrowingShiftSignedEndpointCell](declarations/coregrowingshiftsignedendpointcell--26dedb2c79b09d95844aaca4.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [coreGrowingShiftSignedEndpointBilinearPacket](declarations/coregrowingshiftsignedendpointbilinearpacket--8a8e7feb66fd90be166ffee7.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [coreGrowingShiftSignedStaircasePacket_eq_endpointSourceEnergy](declarations/coregrowingshiftsignedstaircasepacket-eq-endpointsourceenergy--aa4d3ce1e991b1911b6ef9bf.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [coreGrowingShiftSignedEndpointSourceValue_eq_endpoint](declarations/coregrowingshiftsignedendpointsourcevalue-eq-endpoint--60d91263bbbc5907cf2c8e27.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [coreGrowingShiftSignedEndpointSourceEnergy_eq_bilinear](declarations/coregrowingshiftsignedendpointsourceenergy-eq-bilinear--21d2a1f537eeecf1397d1890.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [coreGrowingShiftSignedStaircasePacket_eq_endpointBilinear](declarations/coregrowingshiftsignedstaircasepacket-eq-endpointbilinear--f80c678f4273d9b1c955fd4b.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [coreGrowingShiftFirstDifferencePacket_eq_two_mul_endpointBilinear](declarations/coregrowingshiftfirstdifferencepacket-eq-two-mul-endpointbilinear--41141ba22b5657b53c9676a8.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [SubpolynomialCoreGrowingShiftSignedEndpointBilinearPacket](declarations/subpolynomialcoregrowingshiftsignedendpointbilinearpacket--3602844d38f451ef03037007.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [subpolynomialCoreGrowingShiftSignedEndpointBilinearPacket_iff_staircase](declarations/subpolynomialcoregrowingshiftsignedendpointbilinearpacket-iff-staircase--fda521cf9c7ae5f0c360b141.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [riemannHypothesis_of_subpolynomialCoreGrowingShiftSignedEndpointBilinearPacket](declarations/riemannhypothesis-of-subpolynomialcoregrowingshiftsignedendpointbilinear--cab3d89d4a11d7f21d891497.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `structure` | [SignedEndpointBilinearSource](declarations/signedendpointbilinearsource--f83fe4a813a72fabe8841c24.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `structure` | [ToCoreGrowingShiftSignedEndpointBilinearPacket](declarations/tocoregrowingshiftsignedendpointbilinearpacket--2e94d6d2e8d7ce5d4c69b7b4.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `structure` | [SignedEndpointBilinearFourierSource](declarations/signedendpointbilinearfouriersource--a5fbfeee6052d2a7da4612bd.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `structure` | [ToCoreGrowingShiftSignedEndpointBilinearPacketFromFourier](declarations/tocoregrowingshiftsignedendpointbilinearpacketfromfourier--29adcad227154275409c9404.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [signedEndpointBilinearCancellation_hostileWitness](declarations/signedendpointbilinearcancellation-hostilewitness--ad30e9233b575eabb5156ae4.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
