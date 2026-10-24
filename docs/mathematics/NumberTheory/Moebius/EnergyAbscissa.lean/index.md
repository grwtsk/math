# GRWTSK.NumberTheory.Moebius.EnergyAbscissa

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**27 observed declarations and anonymous commands**, 22 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Moebius/EnergyAbscissa.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a107f60cf1a498be022f6547623f15b01e840c82`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/NumberTheory/Moebius/EnergyAbscissa.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [PickupEnergySubexp](declarations/pickupenergysubexp--f9006cf484c778077fde1843.md) | 22 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [PickupCrossSubexp](declarations/pickupcrosssubexp--fe5418478adce97a56d42008.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [PickupWeightedEnergyAll](declarations/pickupweightedenergyall--259dcbfc6120fea15116d85d.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [pickupEnergyPoly_subexp](declarations/pickupenergypoly-subexp--addb938a66c04c60feecc975.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [pickupCrossPoly_subexp](declarations/pickupcrosspoly-subexp--9892f4df4b1486314ca201ca.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [pickupCrossSubexp_iff_pickupEnergySubexp](declarations/pickupcrosssubexp-iff-pickupenergysubexp--b8f8a46f5d051fdf1c0e308b.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [pickupWeightedEnergyAll_of_subexp](declarations/pickupweightedenergyall-of-subexp--0ed86ee046f4dde845b9c862.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [pickupEnergy_le_weighted_integral](declarations/pickupenergy-le-weighted-integral--8c5cc2ad4c2f64f35a7c2f89.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [pickupEnergySubexp_iff_weightedEnergyAll](declarations/pickupenergysubexp-iff-weightedenergyall--67add94914c044f6136f258b.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [pickup_tilt_integrable_of_weightedEnergyAll](declarations/pickup-tilt-integrable-of-weightedenergyall--36fecd29622b1d96a563513d.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [riemannHypothesis_of_pickupWeightedEnergyAll](declarations/riemannhypothesis-of-pickupweightedenergyall--79ea2e0eebb5d2630cd1df95.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [riemannHypothesis_of_pickupEnergySubexp](declarations/riemannhypothesis-of-pickupenergysubexp--e03089f6819af5ebf6b3417b.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [riemannHypothesis_of_pickupCrossSubexp](declarations/riemannhypothesis-of-pickupcrosssubexp--47f2da1ff6951a5ae1c6bf5b.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [pickup_weighted_energy_integrable_initial](declarations/pickup-weighted-energy-integrable-initial--c0626e42f91141a26fa9df31.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [pickup_weighted_energy_integrable_mono](declarations/pickup-weighted-energy-integrable-mono--d08f66a450ff694075001478.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [pickup_weighted_energy_integral_antitone](declarations/pickup-weighted-energy-integral-antitone--eb859a1974f9a8905556ab79.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [pickupEnergyConvergenceSet](declarations/pickupenergyconvergenceset--7af775e2ecd30a941a70a6b3.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [pickupEnergyAbscissa](declarations/pickupenergyabscissa--70119fb9c496219d3834e80a.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [pickupEnergyConvergenceSet_nonempty](declarations/pickupenergyconvergenceset-nonempty--e95d4dfea808c030c065c389.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [pickupEnergyConvergenceSet_bddBelow](declarations/pickupenergyconvergenceset-bddbelow--9e6fc4ba3588e0f084ebce78.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [pickupEnergyAbscissa_nonneg](declarations/pickupenergyabscissa-nonneg--6064a6c7254bf3403a5215b7.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [pickupEnergyAbscissa_le_of_integrable](declarations/pickupenergyabscissa-le-of-integrable--1aaa3c3b7085fb3238c28b3f.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [pickupEnergyAbscissa_le_one](declarations/pickupenergyabscissa-le-one--5664eebae368868878656832.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [pickup_weighted_energy_integrable_above_abscissa](declarations/pickup-weighted-energy-integrable-above-abscissa--7f248513fd0d6c1a89a66cc2.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [pickupEnergyAbscissa_zero_iff_weightedEnergyAll](declarations/pickupenergyabscissa-zero-iff-weightedenergyall--ae64730a5df449a0181ec5f4.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [pickupEnergyAbscissa_zero_iff_crossSubexp](declarations/pickupenergyabscissa-zero-iff-crosssubexp--fdfe3771196b2056bdc5a0e3.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [riemannHypothesis_of_pickupEnergyAbscissa_zero](declarations/riemannhypothesis-of-pickupenergyabscissa-zero--96ac95f023cb8b99c3a3eb01.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
