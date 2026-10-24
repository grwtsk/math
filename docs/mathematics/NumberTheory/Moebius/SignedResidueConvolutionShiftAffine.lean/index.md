# GRWTSK.NumberTheory.Moebius.SignedResidueConvolutionShiftAffine

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**26 observed declarations and anonymous commands**, 15 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Moebius/SignedResidueConvolutionShiftAffine.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7236c21cf397007ff1cdb40726e575081a87ce71`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/NumberTheory/Moebius/SignedResidueConvolutionShiftAffine.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [positiveEndpointShiftSet](declarations/positiveendpointshiftset--210c6adfbf2520a5471ca505.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [parityAffineShiftBaseSet](declarations/parityaffineshiftbaseset--cf0bb3bc15d9a90b0a35f961.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [endpointParityFixedShiftPairSet](declarations/endpointparityfixedshiftpairset--7135e8032574a45b2a730bc0.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [endpointParityStrictPair_shift_spec](declarations/endpointparitystrictpair-shift-spec--dd11e4526bf630e70a558705.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [endpointParityStrictPair_shift_mem](declarations/endpointparitystrictpair-shift-mem--b4f79da2c07782628586b3c1.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [half_add_two_mul](declarations/half-add-two-mul--5ce39f61a43eca468dd292a7.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [parityResidueCoordinate_add_two_shift](declarations/parityresiduecoordinate-add-two-shift--c577f6bbe7afc197ec23f95e.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [parityAffineShiftResidueCoordinate](declarations/parityaffineshiftresiduecoordinate--562c988d357dee446f3b366b.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [pairResidueCoordinate_eq_affineShift](declarations/pairresiduecoordinate-eq-affineshift--9edfb3e04aea2b0b60dcbd34.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [parityPairShiftResidueCorrelation](declarations/paritypairshiftresiduecorrelation--9de0bae3d5649c20252b75d1.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [parityAffineShiftResidueCorrelation](declarations/parityaffineshiftresiduecorrelation--66cded38a3667311e83e641b.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [parityPairShiftResidueCorrelation_eq_affine](declarations/paritypairshiftresiduecorrelation-eq-affine--fb5ddf832a421389f33ea8d1.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [paritySignedResidueConvolutionBucket_eq_sum_pairShifts](declarations/paritysignedresidueconvolutionbucket-eq-sum-pairshifts--09a25a0a35ff88f48ab8641c.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [paritySignedResidueConvolutionBucket_eq_sum_affineShifts](declarations/paritysignedresidueconvolutionbucket-eq-sum-affineshifts--79763f46719adfd3a52eec43.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [parityGrowingShiftAffineChowlaTwist](declarations/paritygrowingshiftaffinechowlatwist--6b0a5ec8ff1ca024209fce81.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [sum_shiftResidueCorrelation_mul_char](declarations/sum-shiftresiduecorrelation-mul-char--84210c40bf33f278383fd57c.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [paritySignedResidueConvolutionFourier_eq_sum_affineChowlaTwists](declarations/paritysignedresidueconvolutionfourier-eq-sum-affinechowlatwists--e2acde4898c881a0eb143058.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [parityGrowingShiftAffineChowlaFrequencyMajorant](declarations/paritygrowingshiftaffinechowlafrequencymajorant--c2391c98998b406009fbe4e8.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [parityGrowingShiftAffineChowlaFrequencyMajorant_eq_signed](declarations/paritygrowingshiftaffinechowlafrequencymajorant-eq-signed--e3f3c561982e81723b9451c5.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [parityGrowingShiftAffineChowlaNonzeroModulusMajorant](declarations/paritygrowingshiftaffinechowlanonzeromodulusmajorant--6672244f86dd4529b79d1fd4.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [parityGrowingShiftAffineChowlaNonzeroModulusMajorant_eq_signed](declarations/paritygrowingshiftaffinechowlanonzeromodulusmajorant-eq-signed--53df7475b1718cb74858849c.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [parityGrowingShiftAffineChowlaEndpointMajorant](declarations/paritygrowingshiftaffinechowlaendpointmajorant--23d6a2d9c0ce8ad823ab7304.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [parityGrowingShiftAffineChowlaEndpointMajorant_eq_signed](declarations/paritygrowingshiftaffinechowlaendpointmajorant-eq-signed--b0244aa56dec6f1a6131414f.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [DyadicNaturalScaleGrowingShiftAffineChowlaBudget](declarations/dyadicnaturalscalegrowingshiftaffinechowlabudget--65e21536e370779dacadb5a4.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [dyadicNaturalScaleGrowingShiftAffineChowlaBudget_iff_signedResidueConvolution](declarations/dyadicnaturalscalegrowingshiftaffinechowlabudget-iff-signedresidueconvol--407a96ea9c6dda2ba146fa35.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [naturalScaleCongruenceL1_of_pointwiseMertens_and_growingShiftAffineChowla](declarations/naturalscalecongruencel1-of-pointwisemertens-and-growingshiftaffinechowl--c391c106ed331c44680bb7b5.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
