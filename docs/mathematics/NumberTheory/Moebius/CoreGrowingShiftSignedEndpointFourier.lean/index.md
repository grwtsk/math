# GRWTSK.NumberTheory.Moebius.CoreGrowingShiftSignedEndpointFourier

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**29 observed declarations and anonymous commands**, 16 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointFourier.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b9deb36196c1e5f3414f44dfba228190f2f45900`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointFourier.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [zmodValEquiv](declarations/zmodvalequiv--b0673e2fcf47ca1ded321eec.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [sum_zmod_eq_sum_fin](declarations/sum-zmod-eq-sum-fin--f6736ff278a87d3a2f2c028d.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [sum_fin_pair_indicator_eq](declarations/sum-fin-pair-indicator-eq--524ec77d285764e96370efbc.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [coreGrowingShiftSignedEndpointBilinearSlice](declarations/coregrowingshiftsignedendpointbilinearslice--e33d4125e8d61cf0f8db05da.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [coreGrowingShiftSignedEndpointBilinearPacket_eq_sum_slices](declarations/coregrowingshiftsignedendpointbilinearpacket-eq-sum-slices--0d112e51e8577b5e6af7ab41.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [coreGrowingShiftEndpointMobiusZeroPad](declarations/coregrowingshiftendpointmobiuszeropad--6bf36c7405b8f688287a6fe6.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [coreGrowingShiftEndpointKernelZeroPad](declarations/coregrowingshiftendpointkernelzeropad--4b901f3b859ec47161324972.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [coreGrowingShiftSignedEndpointZeroPaddedSlice](declarations/coregrowingshiftsignedendpointzeropaddedslice--21647859e2c78e0daded84da.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [coreGrowingShiftEndpoint_natCast_injective](declarations/coregrowingshiftendpoint-natcast-injective--b8fcde092f35805114402682.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [coreGrowingShiftSignedEndpointBilinearSlice_eq_zeroPadded](declarations/coregrowingshiftsignedendpointbilinearslice-eq-zeropadded--a4a7f7eedf9d78eb17bcc682.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [finite_zmod_pairing_eq_dft](declarations/finite-zmod-pairing-eq-dft--e7144a255f79ce2e887f0405.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [finiteZModKernelDFT2](declarations/finitezmodkerneldft2--2d7cfd4fdb5c64e0346a182e.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [finite_zmod_bilinear_eq_iterated_dft](declarations/finite-zmod-bilinear-eq-iterated-dft--ea7975e04c692fd6965c7720.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [coreGrowingShiftEndpointKernelDFT2](declarations/coregrowingshiftendpointkerneldft2--a4f12e177ed44495d42d0b46.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [coreGrowingShiftSignedEndpointFourierSlice](declarations/coregrowingshiftsignedendpointfourierslice--23957e8d66593a1821b6433b.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [coreGrowingShiftSignedEndpointZeroPaddedSlice_eq_fourier](declarations/coregrowingshiftsignedendpointzeropaddedslice-eq-fourier--95ea6714a1847bdd8f0dfc42.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [coreGrowingShiftSignedEndpointFourierPacketComplex](declarations/coregrowingshiftsignedendpointfourierpacketcomplex--0791f104b443a0f2da681912.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [coreGrowingShiftSignedEndpointFourierPacket](declarations/coregrowingshiftsignedendpointfourierpacket--8e7a4bf64fb826f92cd5db6c.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [coreGrowingShiftSignedEndpointBilinearPacket_cast_eq_fourierComplex](declarations/coregrowingshiftsignedendpointbilinearpacket-cast-eq-fouriercomplex--4e8d561923cba51d32b85a56.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [coreGrowingShiftSignedEndpointFourierPacketComplex_im](declarations/coregrowingshiftsignedendpointfourierpacketcomplex-im--9d6e6c8eaa813b61b1ef6c14.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [coreGrowingShiftSignedEndpointBilinearPacket_eq_fourier](declarations/coregrowingshiftsignedendpointbilinearpacket-eq-fourier--a23d5d0ed5186b6f40c53772.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [coreGrowingShiftFirstDifferencePacket_eq_two_mul_endpointFourier](declarations/coregrowingshiftfirstdifferencepacket-eq-two-mul-endpointfourier--ce5bd6d2db8f159533254895.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [SubpolynomialCoreGrowingShiftSignedEndpointFourierPacket](declarations/subpolynomialcoregrowingshiftsignedendpointfourierpacket--903c5830a2fd59b6124e3144.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [subpolynomialCoreGrowingShiftSignedEndpointFourierPacket_iff_bilinear](declarations/subpolynomialcoregrowingshiftsignedendpointfourierpacket-iff-bilinear--739df34c76e0dad03d833f78.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [riemannHypothesis_of_subpolynomialCoreGrowingShiftSignedEndpointFourierPacket](declarations/riemannhypothesis-of-subpolynomialcoregrowingshiftsignedendpointfourierp--86f13df478b16d0545a469f8.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `structure` | [SignedEndpointFourierSource](declarations/signedendpointfouriersource--c5101f5a1018fa299716de0d.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `structure` | [ToCoreGrowingShiftSignedEndpointFourierPacket](declarations/tocoregrowingshiftsignedendpointfourierpacket--1e01617ab8cdc61210ceaf6a.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [riemannHypothesis_of_signedEndpointFourierAdapter](declarations/riemannhypothesis-of-signedendpointfourieradapter--f5f3be12af70a01597bb7c23.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [signedEndpointFourierCancellation_hostileWitness](declarations/signedendpointfouriercancellation-hostilewitness--a0c7ba542da08ab8701f87f1.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
