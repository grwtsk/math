# GRWTSK.NumberTheory.Moebius.AdditiveTwistParityFourierFactorization

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**23 observed declarations and anonymous commands**, 11 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Moebius/AdditiveTwistParityFourierFactorization.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `46716fe8e3f0bd6d453ac48399e2e84a36ed168b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/NumberTheory/Moebius/AdditiveTwistParityFourierFactorization.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [endpointParitySet](declarations/endpointparityset--efe959a968e7dec961827451.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [endpointParityStrictPairSet](declarations/endpointparitystrictpairset--b260c54bd5386201f8e9a321.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [parityOnePointMobiusFourierTerm](declarations/parityonepointmobiusfourierterm--85171d4f90077e7850934dd5.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [parityOnePointMobiusFourierSum](declarations/parityonepointmobiusfouriersum--62e20f850cdd1c0e12147542.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [parityOnePointMobiusFourierDiagonal](declarations/parityonepointmobiusfourierdiagonal--20a7a02aac1fc3bdaa8080bc.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [parityOnePointMobiusFourierPairSum](declarations/parityonepointmobiusfourierpairsum--59ab99a19619522d7a6cd1f9.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [finiteSquare_eq_diagonal_add_twice_strictPairs](declarations/finitesquare-eq-diagonal-add-twice-strictpairs--055df0b11dfc6ae95420117c.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [parityPairSum_eq_half_square_sub_diagonal](declarations/paritypairsum-eq-half-square-sub-diagonal--a359ebc90d400e131a9634b6.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [midpoint_eq_halves_add_parity](declarations/midpoint-eq-halves-add-parity--8611903bc2018fee3b46c147.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [midpointAdditivePhase_eq_parityProduct](declarations/midpointadditivephase-eq-parityproduct--50b680464abd85dffd0cd713.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [parityMidpointPairTwist](declarations/paritymidpointpairtwist--85bab718958d6dfb5380ceb4.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [parityMidpointPairTwist_eq_phase_mul_pairSum](declarations/paritymidpointpairtwist-eq-phase-mul-pairsum--e14d6c96acb1f671e07f1f38.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [two_mul_parityMidpointPairTwist_eq_square_sub_diagonal](declarations/two-mul-paritymidpointpairtwist-eq-square-sub-diagonal--7bda80f4270980475247986e.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [endpointSameParityStrictPairSet](declarations/endpointsameparitystrictpairset--77bfc30c88981a0934554922.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [endpointPairAdditiveTwist](declarations/endpointpairadditivetwist--d6204e38c79fc4a537b09bd4.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [additiveTwistedEndpointCrossCorrelation_eq_endpointPairs](declarations/additivetwistedendpointcrosscorrelation-eq-endpointpairs--159a3dfb50ba6a76d620ec2e.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [endpointPairAdditiveTwist_eq_even_add_odd](declarations/endpointpairadditivetwist-eq-even-add-odd--8e49e3c8cf71fe8c7be52c07.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [two_mul_additiveTwistedEndpointCrossCorrelation_eq_parityFourier](declarations/two-mul-additivetwistedendpointcrosscorrelation-eq-parityfourier--4b2d2cf2ee74d37bacc47e55.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [parityFourierQuadraticMajorant](declarations/parityfourierquadraticmajorant--b143e54106082ed25177df13.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [norm_additiveTwistedEndpointCrossCorrelation_le_parityFourierMajorant](declarations/norm-additivetwistedendpointcrosscorrelation-le-parityfouriermajorant--3cc6c802b70fbc31635b1674.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [parityFourierEndpointMajorant](declarations/parityfourierendpointmajorant--d9453b65a5c8bdd4719808c0.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [DyadicNaturalScaleParityFourierQuadraticBudget](declarations/dyadicnaturalscaleparityfourierquadraticbudget--28d28a2a4a69778f4c23ea81.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [naturalScaleSquareModulusCongruenceL1_of_parityFourierQuadraticBudget](declarations/naturalscalesquaremoduluscongruencel1-of-parityfourierquadraticbudget--73bad7c11b6087fe9d2814ef.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
