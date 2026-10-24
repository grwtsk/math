# Verification target: GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredWindingFourierBridge

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "67adcf3f0de8eaf3e1ec9fb960717a82f52dcb2f",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredWindingFourierBridge.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingFourierBridge.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingFourierBridge.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `67adcf3f0de8eaf3e1ec9fb960717a82f52dcb2f`.

Source path: `GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredWindingFourierBridge.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/RegularOrbitCenteredWindingFourierBridge.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredWindingResidueDispersion`](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingResidueDispersion.lean/index.md) — import line 11; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.RegularOrbitFullFrequencyL2Reduction`](../../../../mathematics/NumberTheory/Moebius/RegularOrbitFullFrequencyL2Reduction.lean/index.md) — import line 12; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.ParityFourierResidueVariance`](../../../../mathematics/NumberTheory/Moebius/ParityFourierResidueVariance.lean/index.md) — import line 13; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [parityHalfIndexCenteredResidueFiberZMod](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingFourierBridge.lean/declarations/parityhalfindexcenteredresiduefiberzmod--59b3b19a4ae33e8367d38d5e.md) | 48 | `declaration-track:59b3b19a4ae33e8367d38d5e233a513bc593c54c47fd700dfecc443eab4655bc` |
| 2 | `def` | [parityHalfIndexCenteredResidueSquareMassZMod](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingFourierBridge.lean/declarations/parityhalfindexcenteredresiduesquaremasszmod--52e900a1fba02eaf4c063a55.md) | 59 | `declaration-track:52e900a1fba02eaf4c063a55b522fa046384a7cdabfa50d2cdf78b3c8fba4595` |
| 3 | `theorem` | [centeredResidueFiberZModSquareExpansion](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingFourierBridge.lean/declarations/centeredresiduefiberzmodsquareexpansion--b8a8bccf7bf30c979b38aa85.md) | 66 | `result-track:b8a8bccf7bf30c979b38aa85fddc03c06825ba38f2dbf20d27c13c2af4bbdac6` |
| 4 | `theorem` | [parityHalfIndexCenteredResidueSquareMassZMod_eq_congruence](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingFourierBridge.lean/declarations/parityhalfindexcenteredresiduesquaremasszmod-eq-congruence--67dc7855c4068201f8fbef70.md) | 129 | `result-track:67dc7855c4068201f8fbef70f663e730454df6a0eca50e5b71e3dd634d6e1f38` |
| 5 | `theorem` | [parityHalfIndexCenteredResidueSquareMassZMod_eq_nat](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingFourierBridge.lean/declarations/parityhalfindexcenteredresiduesquaremasszmod-eq-nat--ff5de5764beddea09eebc423.md) | 150 | `result-track:ff5de5764beddea09eebc423214ddb4ef628aee8016240129ccd5d97f5d8cf38` |
| 6 | `theorem` | [sum_parityAffineShiftResidueCorrelation_eq_two_mul_centeredFiberZMod](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingFourierBridge.lean/declarations/sum-parityaffineshiftresiduecorrelation-eq-two-mul-centeredfiberzmod--05eda0bd51286d950b031948.md) | 164 | `result-track:05eda0bd51286d950b031948b3241140ecd39d8d0b4a6e4fc0632848321577f5` |
| 7 | `theorem` | [parityEvenHalfShiftSignedResidueBucket_eq_two_mul_centeredFiberZMod](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingFourierBridge.lean/declarations/parityevenhalfshiftsignedresiduebucket-eq-two-mul-centeredfiberzmod--58b54d8344a90ebf634a58de.md) | 213 | `result-track:58b54d8344a90ebf634a58defc71b4708bb3f0767f142e63b534e090f59ef4ae` |
| 8 | `theorem` | [parityOddHalfShiftSignedResidueBucket_eq_two_mul_centeredFiberZMod](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingFourierBridge.lean/declarations/parityoddhalfshiftsignedresiduebucket-eq-two-mul-centeredfiberzmod--ef52e9d4f816f36acc189780.md) | 227 | `result-track:ef52e9d4f816f36acc18978058806c5f947397054ea67c21356985b27300a662` |
| 9 | `def` | [parityHalfIndexCenteredResidueFourier](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingFourierBridge.lean/declarations/parityhalfindexcenteredresiduefourier--3de8111c1e9565d73530202b.md) | 241 | `declaration-track:3de8111c1e9565d73530202bb3a0101dba3b551312ea5ac8a9719b1d10f86651` |
| 10 | `theorem` | [parityEvenHalfShiftSignedResidueFourier_eq_two_mul_centered](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingFourierBridge.lean/declarations/parityevenhalfshiftsignedresiduefourier-eq-two-mul-centered--cdc8fca8e3932adab442a1ad.md) | 251 | `result-track:cdc8fca8e3932adab442a1ad6f43a8990b941dc50c8c06ab2b914272740be0b6` |
| 11 | `theorem` | [parityOddHalfShiftSignedResidueFourier_eq_two_mul_centered](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingFourierBridge.lean/declarations/parityoddhalfshiftsignedresiduefourier-eq-two-mul-centered--d787d689daf50320ef7e77c8.md) | 286 | `result-track:d787d689daf50320ef7e77c89440391bf3ba9124abf13fddb1ab13bb88641e7a` |
| 12 | `theorem` | [sum_norm_sq_parityHalfIndexCenteredResidueFourier](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingFourierBridge.lean/declarations/sum-norm-sq-parityhalfindexcenteredresiduefourier--ee8c5b8770632133d257e13f.md) | 320 | `result-track:ee8c5b8770632133d257e13fc14b7f1cef4e2b04f6ad0e3a3955662e905ba3fb` |
| 13 | `theorem` | [sum_norm_sq_two_mul_centeredResidueFourier_eq_square_mul_squareMass](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingFourierBridge.lean/declarations/sum-norm-sq-two-mul-centeredresiduefourier-eq-square-mul-squaremass--f6ae54abace6f22ed05d5dea.md) | 337 | `result-track:f6ae54abace6f22ed05d5deaa40c0b3e55b2c3b5dd8759a3ac0ba058bde95550` |
| 14 | `def` | [parityCenteredWindingFullFrequencyDispersion](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingFourierBridge.lean/declarations/paritycenteredwindingfullfrequencydispersion--aa089ee915b90288c41b304f.md) | 374 | `declaration-track:aa089ee915b90288c41b304fe75d7a6b8022c9125d37745f238c23c28987bdad` |
| 15 | `theorem` | [parityCenteredWindingFullFrequencyDispersion_eq_wrap](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingFourierBridge.lean/declarations/paritycenteredwindingfullfrequencydispersion-eq-wrap--d3eccf1593e068eed8f6fd82.md) | 385 | `result-track:d3eccf1593e068eed8f6fd826818af1ced1b1016283a00d9b01bfbc0567fbc13` |
| 16 | `theorem` | [sum_norm_sq_parityEvenHalfShiftSignedResidueFourier_eq_square_mul_squareMass](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingFourierBridge.lean/declarations/sum-norm-sq-parityevenhalfshiftsignedresiduefourier-eq-square-mul-square--cc4c432612a08536e3882d70.md) | 400 | `result-track:cc4c432612a08536e3882d7043df539f5b7e8fa8c43f6f3af074ab113cedcecd` |
| 17 | `theorem` | [sum_norm_sq_parityOddHalfShiftSignedResidueFourier_eq_square_mul_squareMass](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingFourierBridge.lean/declarations/sum-norm-sq-parityoddhalfshiftsignedresiduefourier-eq-square-mul-squarem--d2722873a601a5d72a338b5a.md) | 427 | `result-track:d2722873a601a5d72a338b5acefc1338426cd127c6c6ffc575ba0b8898346243` |
| 18 | `theorem` | [normalized_evenFullFrequencyEnergy_eq_zeroEnergy_add_wrap](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingFourierBridge.lean/declarations/normalized-evenfullfrequencyenergy-eq-zeroenergy-add-wrap--b753e12047d18992442a38e6.md) | 454 | `result-track:b753e12047d18992442a38e65d8a616007e6eb3c6ce16669d0891401bc5c8d3d` |
| 19 | `theorem` | [normalized_oddFullFrequencyEnergy_eq_zeroEnergy_add_wrap](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingFourierBridge.lean/declarations/normalized-oddfullfrequencyenergy-eq-zeroenergy-add-wrap--892367723eef4de42a32ae8b.md) | 473 | `result-track:892367723eef4de42a32ae8b7e72e14cbf372176871a122337b64a7ba8c7495f` |
| 20 | `theorem` | [parityHalfIndexSignedQuarticWrap_eq_evenFullFrequency_sub_zeroEnergy](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingFourierBridge.lean/declarations/parityhalfindexsignedquarticwrap-eq-evenfullfrequency-sub-zeroenergy--ab380af9c6b7288c2dd046c9.md) | 492 | `result-track:ab380af9c6b7288c2dd046c907a5b8cf7e24d79de8c459000666b1d4505e125a` |
| 21 | `theorem` | [parityHalfIndexSignedQuarticWrap_eq_oddFullFrequency_sub_zeroEnergy](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingFourierBridge.lean/declarations/parityhalfindexsignedquarticwrap-eq-oddfullfrequency-sub-zeroenergy--77d62517ed1ffbe61628fbf5.md) | 507 | `result-track:77d62517ed1ffbe61628fbf57adcb10795da574607f8797004492637fe84dc0d` |
| 22 | `def` | [regularCenteredWindingFullFrequencyDispersionAtModulus](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingFourierBridge.lean/declarations/regularcenteredwindingfullfrequencydispersionatmodulus--563766863360734e9629febb.md) | 521 | `declaration-track:563766863360734e9629febb9ae1fd1e6a07d6c439862f1d07c851a5a0ea311c` |
| 23 | `theorem` | [regularCenteredWindingFullFrequencyDispersionAtModulus_eq_residue](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingFourierBridge.lean/declarations/regularcenteredwindingfullfrequencydispersionatmodulus-eq-residue--07245a4dc5f643d7d228b24a.md) | 546 | `result-track:07245a4dc5f643d7d228b24aa0fee6b9cf602a9f8df3546a1404e6236803254b` |
| 24 | `def` | [regularCenteredWindingFullFrequencyDispersionEndpoint](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingFourierBridge.lean/declarations/regularcenteredwindingfullfrequencydispersionendpoint--6b39ed357abe5ffef8bf25c8.md) | 566 | `declaration-track:6b39ed357abe5ffef8bf25c8c88976c918d869c6cfa441ae8b3105b3e386e1b4` |
| 25 | `theorem` | [regularCenteredWindingFullFrequencyDispersionEndpoint_eq_residue](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingFourierBridge.lean/declarations/regularcenteredwindingfullfrequencydispersionendpoint-eq-residue--cc3c17f3a0acd86741753d87.md) | 576 | `result-track:cc3c17f3a0acd86741753d87aaf65ee43b434f59b56c57003acf9233c3da16a4` |
| 26 | `def` | [RegularCenteredWindingFullFrequencyDispersionEnvelope](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingFourierBridge.lean/declarations/regularcenteredwindingfullfrequencydispersionenvelope--711f892d0b4aff94f6f17b11.md) | 591 | `declaration-track:711f892d0b4aff94f6f17b113002007d3ae2b13a4e435b5876f5d686a0cc21f1` |
| 27 | `theorem` | [regularCenteredWindingFullFrequencyDispersionEnvelope_iff_residue](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingFourierBridge.lean/declarations/regularcenteredwindingfullfrequencydispersionenvelope-iff-residue--2f9d5e654498e3e45b61d009.md) | 598 | `result-track:2f9d5e654498e3e45b61d009fd253f39480228af12186e2086091fedf6c9fbbc` |
| 28 | `structure` | [RegularCenteredWindingFullFrequencyBridgeSourceData](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingFourierBridge.lean/declarations/regularcenteredwindingfullfrequencybridgesourcedata--d37f44f0d47096e8716589e4.md) | 612 | `declaration-track:d37f44f0d47096e8716589e44f4f271e1405b6320884edceba20d3f67d1b7d1b` |
| 29 | `def` | [RegularCenteredWindingFullFrequencyBridgeSource](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingFourierBridge.lean/declarations/regularcenteredwindingfullfrequencybridgesource--6f979f5cd5af222089e97a1f.md) | 626 | `declaration-track:6f979f5cd5af222089e97a1f00928fa630077230ae3152e46e3257dba57f5203` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
