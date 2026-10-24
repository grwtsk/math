# GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredWindingFourierBridge

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**29 observed declarations and anonymous commands**, 20 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredWindingFourierBridge.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `67adcf3f0de8eaf3e1ec9fb960717a82f52dcb2f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/NumberTheory/Moebius/RegularOrbitCenteredWindingFourierBridge.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [parityHalfIndexCenteredResidueFiberZMod](declarations/parityhalfindexcenteredresiduefiberzmod--59b3b19a4ae33e8367d38d5e.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [parityHalfIndexCenteredResidueSquareMassZMod](declarations/parityhalfindexcenteredresiduesquaremasszmod--52e900a1fba02eaf4c063a55.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [centeredResidueFiberZModSquareExpansion](declarations/centeredresiduefiberzmodsquareexpansion--b8a8bccf7bf30c979b38aa85.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [parityHalfIndexCenteredResidueSquareMassZMod_eq_congruence](declarations/parityhalfindexcenteredresiduesquaremasszmod-eq-congruence--67dc7855c4068201f8fbef70.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [parityHalfIndexCenteredResidueSquareMassZMod_eq_nat](declarations/parityhalfindexcenteredresiduesquaremasszmod-eq-nat--ff5de5764beddea09eebc423.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [sum_parityAffineShiftResidueCorrelation_eq_two_mul_centeredFiberZMod](declarations/sum-parityaffineshiftresiduecorrelation-eq-two-mul-centeredfiberzmod--05eda0bd51286d950b031948.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [parityEvenHalfShiftSignedResidueBucket_eq_two_mul_centeredFiberZMod](declarations/parityevenhalfshiftsignedresiduebucket-eq-two-mul-centeredfiberzmod--58b54d8344a90ebf634a58de.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [parityOddHalfShiftSignedResidueBucket_eq_two_mul_centeredFiberZMod](declarations/parityoddhalfshiftsignedresiduebucket-eq-two-mul-centeredfiberzmod--ef52e9d4f816f36acc189780.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [parityHalfIndexCenteredResidueFourier](declarations/parityhalfindexcenteredresiduefourier--3de8111c1e9565d73530202b.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [parityEvenHalfShiftSignedResidueFourier_eq_two_mul_centered](declarations/parityevenhalfshiftsignedresiduefourier-eq-two-mul-centered--cdc8fca8e3932adab442a1ad.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [parityOddHalfShiftSignedResidueFourier_eq_two_mul_centered](declarations/parityoddhalfshiftsignedresiduefourier-eq-two-mul-centered--d787d689daf50320ef7e77c8.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [sum_norm_sq_parityHalfIndexCenteredResidueFourier](declarations/sum-norm-sq-parityhalfindexcenteredresiduefourier--ee8c5b8770632133d257e13f.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [sum_norm_sq_two_mul_centeredResidueFourier_eq_square_mul_squareMass](declarations/sum-norm-sq-two-mul-centeredresiduefourier-eq-square-mul-squaremass--f6ae54abace6f22ed05d5dea.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [parityCenteredWindingFullFrequencyDispersion](declarations/paritycenteredwindingfullfrequencydispersion--aa089ee915b90288c41b304f.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [parityCenteredWindingFullFrequencyDispersion_eq_wrap](declarations/paritycenteredwindingfullfrequencydispersion-eq-wrap--d3eccf1593e068eed8f6fd82.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [sum_norm_sq_parityEvenHalfShiftSignedResidueFourier_eq_square_mul_squareMass](declarations/sum-norm-sq-parityevenhalfshiftsignedresiduefourier-eq-square-mul-square--cc4c432612a08536e3882d70.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [sum_norm_sq_parityOddHalfShiftSignedResidueFourier_eq_square_mul_squareMass](declarations/sum-norm-sq-parityoddhalfshiftsignedresiduefourier-eq-square-mul-squarem--d2722873a601a5d72a338b5a.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [normalized_evenFullFrequencyEnergy_eq_zeroEnergy_add_wrap](declarations/normalized-evenfullfrequencyenergy-eq-zeroenergy-add-wrap--b753e12047d18992442a38e6.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [normalized_oddFullFrequencyEnergy_eq_zeroEnergy_add_wrap](declarations/normalized-oddfullfrequencyenergy-eq-zeroenergy-add-wrap--892367723eef4de42a32ae8b.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [parityHalfIndexSignedQuarticWrap_eq_evenFullFrequency_sub_zeroEnergy](declarations/parityhalfindexsignedquarticwrap-eq-evenfullfrequency-sub-zeroenergy--ab380af9c6b7288c2dd046c9.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [parityHalfIndexSignedQuarticWrap_eq_oddFullFrequency_sub_zeroEnergy](declarations/parityhalfindexsignedquarticwrap-eq-oddfullfrequency-sub-zeroenergy--77d62517ed1ffbe61628fbf5.md) | 507 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [regularCenteredWindingFullFrequencyDispersionAtModulus](declarations/regularcenteredwindingfullfrequencydispersionatmodulus--563766863360734e9629febb.md) | 521 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [regularCenteredWindingFullFrequencyDispersionAtModulus_eq_residue](declarations/regularcenteredwindingfullfrequencydispersionatmodulus-eq-residue--07245a4dc5f643d7d228b24a.md) | 546 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [regularCenteredWindingFullFrequencyDispersionEndpoint](declarations/regularcenteredwindingfullfrequencydispersionendpoint--6b39ed357abe5ffef8bf25c8.md) | 566 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [regularCenteredWindingFullFrequencyDispersionEndpoint_eq_residue](declarations/regularcenteredwindingfullfrequencydispersionendpoint-eq-residue--cc3c17f3a0acd86741753d87.md) | 576 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [RegularCenteredWindingFullFrequencyDispersionEnvelope](declarations/regularcenteredwindingfullfrequencydispersionenvelope--711f892d0b4aff94f6f17b11.md) | 591 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [regularCenteredWindingFullFrequencyDispersionEnvelope_iff_residue](declarations/regularcenteredwindingfullfrequencydispersionenvelope-iff-residue--2f9d5e654498e3e45b61d009.md) | 598 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `structure` | [RegularCenteredWindingFullFrequencyBridgeSourceData](declarations/regularcenteredwindingfullfrequencybridgesourcedata--d37f44f0d47096e8716589e4.md) | 612 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [RegularCenteredWindingFullFrequencyBridgeSource](declarations/regularcenteredwindingfullfrequencybridgesource--6f979f5cd5af222089e97a1f.md) | 626 | `BLOCKED_NATIVE_ADMISSION` |
