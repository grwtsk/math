# GRWTSK.NumberTheory.Moebius.SignedResidueGrowingShiftChowla

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**26 observed declarations and anonymous commands**, 15 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Moebius/SignedResidueGrowingShiftChowla.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `09313398bceac03b13fc67b9def98561da23ea41`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/NumberTheory/Moebius/SignedResidueGrowingShiftChowla.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [parityPairShift](declarations/paritypairshift--52a4c3586785a344e3d3c7f6.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [parityGrowingShiftRange](declarations/paritygrowingshiftrange--59c30078dd89850ed8eae0ac.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [parityShiftBaseSet](declarations/parityshiftbaseset--e393c6af53269874cb715286.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [parityShiftPairSet](declarations/parityshiftpairset--78b884c29df6252cd384fb41.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [parityPairShift_pos](declarations/paritypairshift-pos--41daca3c9c26a6f266e3bccf.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [parityPair_second_eq_first_add_twiceShift](declarations/paritypair-second-eq-first-add-twiceshift--8d96062ad71212372cf05fe5.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [parityPairShift_mem_range](declarations/paritypairshift-mem-range--41ddbb24692aefd5f7b129f9.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [parityResidueCoordinate_add_shift_eq](declarations/parityresiduecoordinate-add-shift-eq--f7b4f21fae3a2e689bf9e748.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [parityPairResidueCoordinate_eq_base_shift](declarations/paritypairresiduecoordinate-eq-base-shift--209faee13e80ee31ddfe2ea5.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [mem_parityShiftPairSet_iff](declarations/mem-parityshiftpairset-iff--ce4aa87c1c03bea51fcad0ef.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [paritySignedShiftResiduePairSlice](declarations/paritysignedshiftresiduepairslice--a7a3fec5fcbb9e399d0c815f.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [paritySignedShiftResidueCorrelation](declarations/paritysignedshiftresiduecorrelation--68c82eafde1c19f0ee12bcb2.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [paritySignedShiftResiduePairSlice_eq_correlation](declarations/paritysignedshiftresiduepairslice-eq-correlation--9060e8f5634e40cf69b907fe.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [paritySignedResidueConvolutionBucket_eq_sum_shiftSlices](declarations/paritysignedresidueconvolutionbucket-eq-sum-shiftslices--16c8e04252cd77106b9dea97.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [paritySignedResidueConvolutionBucket_eq_sum_shiftCorrelations](declarations/paritysignedresidueconvolutionbucket-eq-sum-shiftcorrelations--e9817a4eaac4954ad14d64e8.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [paritySignedShiftResidueFourier](declarations/paritysignedshiftresiduefourier--b468c03249d3642d05ce88f4.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [paritySignedResidueConvolutionFourier_eq_sum_shiftFourier](declarations/paritysignedresidueconvolutionfourier-eq-sum-shiftfourier--21b1d43a4fa9b224822d8128.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [parityGrowingShiftResidueFrequencyMajorant](declarations/paritygrowingshiftresiduefrequencymajorant--0543b2f97009727228f2f97d.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [parityGrowingShiftResidueFrequencyMajorant_eq_signedConvolution](declarations/paritygrowingshiftresiduefrequencymajorant-eq-signedconvolution--4b056b2e63eab1172eb7a755.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [parityGrowingShiftResidueNonzeroModulusMajorant](declarations/paritygrowingshiftresiduenonzeromodulusmajorant--44452b2b35eb52c33fbf79ab.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [parityGrowingShiftResidueEndpointMajorant](declarations/paritygrowingshiftresidueendpointmajorant--ac67a7cb5bbbc16e3b69dd1d.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [parityGrowingShiftResidueEndpointMajorant_eq_signedConvolution](declarations/paritygrowingshiftresidueendpointmajorant-eq-signedconvolution--94c4231cd0441e289b473b13.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [DyadicNaturalScaleGrowingShiftResidueFourierBudget](declarations/dyadicnaturalscalegrowingshiftresiduefourierbudget--0a6bb67a54936fb42b8a6495.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [dyadicNaturalScaleGrowingShiftResidueFourierBudget_iff_signedConvolution](declarations/dyadicnaturalscalegrowingshiftresiduefourierbudget-iff-signedconvolution--78ea1fba891ad5f45fc7ba9f.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [dyadicNaturalScaleGrowingShiftResidueFourierBudget_iff_nonzeroParityFourier](declarations/dyadicnaturalscalegrowingshiftresiduefourierbudget-iff-nonzeroparityfour--0ab44a5290dc16aed05be0c4.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [naturalScaleCongruenceL1_of_pointwiseMertens_and_growingShiftResidue](declarations/naturalscalecongruencel1-of-pointwisemertens-and-growingshiftresidue--6603e8babc04924b5034ab0c.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
