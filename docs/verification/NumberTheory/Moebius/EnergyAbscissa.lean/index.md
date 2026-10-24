# Verification target: GRWTSK.NumberTheory.Moebius.EnergyAbscissa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a107f60cf1a498be022f6547623f15b01e840c82",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/EnergyAbscissa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/EnergyAbscissa.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/EnergyAbscissa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a107f60cf1a498be022f6547623f15b01e840c82`.

Source path: `GRWTSK/NumberTheory/Moebius/EnergyAbscissa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/EnergyAbscissa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.AsymptoticAnalysis.PolynomialSubexponential`](../../../../mathematics/Analysis/AsymptoticAnalysis/PolynomialSubexponential__SourceOccurrence48d1d73acfa925f4e3363e99.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.LaplaceTransform.ExponentialEnergy`](../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/ExponentialEnergy.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.UnsignedEnergyBound`](../../../../mathematics/NumberTheory/Moebius/UnsignedEnergyBound.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PickupEnergySubexp](../../../../mathematics/NumberTheory/Moebius/EnergyAbscissa.lean/declarations/pickupenergysubexp--f9006cf484c778077fde1843.md) | 22 | `declaration-track:f9006cf484c778077fde1843aa9e9646e4eb8013dc6bd48f8081286dae25a09d` |
| 2 | `def` | [PickupCrossSubexp](../../../../mathematics/NumberTheory/Moebius/EnergyAbscissa.lean/declarations/pickupcrosssubexp--fe5418478adce97a56d42008.md) | 24 | `declaration-track:fe5418478adce97a56d42008d483d94c34a5d5032c06ce37603e54b7e562a3ab` |
| 3 | `def` | [PickupWeightedEnergyAll](../../../../mathematics/NumberTheory/Moebius/EnergyAbscissa.lean/declarations/pickupweightedenergyall--259dcbfc6120fea15116d85d.md) | 26 | `declaration-track:259dcbfc6120fea15116d85d59887c573288aca66858d69b5253becb7c249ff3` |
| 4 | `theorem` | [pickupEnergyPoly_subexp](../../../../mathematics/NumberTheory/Moebius/EnergyAbscissa.lean/declarations/pickupenergypoly-subexp--addb938a66c04c60feecc975.md) | 30 | `result-track:addb938a66c04c60feecc975f5de996581479248118a7974dcd7688e2d9370fb` |
| 5 | `theorem` | [pickupCrossPoly_subexp](../../../../mathematics/NumberTheory/Moebius/EnergyAbscissa.lean/declarations/pickupcrosspoly-subexp--9892f4df4b1486314ca201ca.md) | 34 | `result-track:9892f4df4b1486314ca201caee4f3f4a1448d6690adb688acc1c8870bddbb885` |
| 6 | `theorem` | [pickupCrossSubexp_iff_pickupEnergySubexp](../../../../mathematics/NumberTheory/Moebius/EnergyAbscissa.lean/declarations/pickupcrosssubexp-iff-pickupenergysubexp--b8f8a46f5d051fdf1c0e308b.md) | 39 | `result-track:b8f8a46f5d051fdf1c0e308b259612efea4ffd3db6f59e31be6f7c50a99a682b` |
| 7 | `theorem` | [pickupWeightedEnergyAll_of_subexp](../../../../mathematics/NumberTheory/Moebius/EnergyAbscissa.lean/declarations/pickupweightedenergyall-of-subexp--0ed86ee046f4dde845b9c862.md) | 56 | `result-track:0ed86ee046f4dde845b9c8625e63baaedc89ef008944f1d16a0d2c5653fb1588` |
| 8 | `theorem` | [pickupEnergy_le_weighted_integral](../../../../mathematics/NumberTheory/Moebius/EnergyAbscissa.lean/declarations/pickupenergy-le-weighted-integral--8c5cc2ad4c2f64f35a7c2f89.md) | 63 | `result-track:8c5cc2ad4c2f64f35a7c2f89318f8cd531f36efe0121b08ec6c4b8ab131dfa31` |
| 9 | `theorem` | [pickupEnergySubexp_iff_weightedEnergyAll](../../../../mathematics/NumberTheory/Moebius/EnergyAbscissa.lean/declarations/pickupenergysubexp-iff-weightedenergyall--67add94914c044f6136f258b.md) | 95 | `result-track:67add94914c044f6136f258b23a8ac87994290615292b198be8402b1673e5908` |
| 10 | `theorem` | [pickup_tilt_integrable_of_weightedEnergyAll](../../../../mathematics/NumberTheory/Moebius/EnergyAbscissa.lean/declarations/pickup-tilt-integrable-of-weightedenergyall--36fecd29622b1d96a563513d.md) | 104 | `result-track:36fecd29622b1d96a563513d163e7862d135a9e03caf7acaa8530a5626b36fa9` |
| 11 | `theorem` | [riemannHypothesis_of_pickupWeightedEnergyAll](../../../../mathematics/NumberTheory/Moebius/EnergyAbscissa.lean/declarations/riemannhypothesis-of-pickupweightedenergyall--79ea2e0eebb5d2630cd1df95.md) | 121 | `result-track:79ea2e0eebb5d2630cd1df958634b2ef9f21899f4b77ce64518e97d8235f9980` |
| 12 | `theorem` | [riemannHypothesis_of_pickupEnergySubexp](../../../../mathematics/NumberTheory/Moebius/EnergyAbscissa.lean/declarations/riemannhypothesis-of-pickupenergysubexp--e03089f6819af5ebf6b3417b.md) | 128 | `result-track:e03089f6819af5ebf6b3417b826e66b946921d4c6d7237efd5b9567277a157eb` |
| 13 | `theorem` | [riemannHypothesis_of_pickupCrossSubexp](../../../../mathematics/NumberTheory/Moebius/EnergyAbscissa.lean/declarations/riemannhypothesis-of-pickupcrosssubexp--47f2da1ff6951a5ae1c6bf5b.md) | 133 | `result-track:47f2da1ff6951a5ae1c6bf5ba2ccfc1e0092c34ab57571a03ac62a5c8a17b0a0` |
| 14 | `theorem` | [pickup_weighted_energy_integrable_initial](../../../../mathematics/NumberTheory/Moebius/EnergyAbscissa.lean/declarations/pickup-weighted-energy-integrable-initial--c0626e42f91141a26fa9df31.md) | 138 | `result-track:c0626e42f91141a26fa9df3167faf13b92a6dc45411f5f4f1dbd1541905cb1bd` |
| 15 | `theorem` | [pickup_weighted_energy_integrable_mono](../../../../mathematics/NumberTheory/Moebius/EnergyAbscissa.lean/declarations/pickup-weighted-energy-integrable-mono--d08f66a450ff694075001478.md) | 155 | `result-track:d08f66a450ff694075001478f821c0cd4168d1739f3ba2e16adb9c72e615c526` |
| 16 | `theorem` | [pickup_weighted_energy_integral_antitone](../../../../mathematics/NumberTheory/Moebius/EnergyAbscissa.lean/declarations/pickup-weighted-energy-integral-antitone--eb859a1974f9a8905556ab79.md) | 168 | `result-track:eb859a1974f9a8905556ab79bbe24a8d786da60d807f3dc0377f818835534d41` |
| 17 | `def` | [pickupEnergyConvergenceSet](../../../../mathematics/NumberTheory/Moebius/EnergyAbscissa.lean/declarations/pickupenergyconvergenceset--7af775e2ecd30a941a70a6b3.md) | 177 | `declaration-track:7af775e2ecd30a941a70a6b367d7a7e5a8c637fe1687d9008e63dc0662b0b734` |
| 18 | `def` | [pickupEnergyAbscissa](../../../../mathematics/NumberTheory/Moebius/EnergyAbscissa.lean/declarations/pickupenergyabscissa--70119fb9c496219d3834e80a.md) | 180 | `declaration-track:70119fb9c496219d3834e80a3bbb04d8ce04d432df268997d953a9ec2ad437c8` |
| 19 | `theorem` | [pickupEnergyConvergenceSet_nonempty](../../../../mathematics/NumberTheory/Moebius/EnergyAbscissa.lean/declarations/pickupenergyconvergenceset-nonempty--e95d4dfea808c030c065c389.md) | 182 | `result-track:e95d4dfea808c030c065c389457a08ee1d6b6ac0583757fb4170bad861f47287` |
| 20 | `theorem` | [pickupEnergyConvergenceSet_bddBelow](../../../../mathematics/NumberTheory/Moebius/EnergyAbscissa.lean/declarations/pickupenergyconvergenceset-bddbelow--9e6fc4ba3588e0f084ebce78.md) | 185 | `result-track:9e6fc4ba3588e0f084ebce78b89f87dc88c4e709e3b333937793c362989b97c1` |
| 21 | `theorem` | [pickupEnergyAbscissa_nonneg](../../../../mathematics/NumberTheory/Moebius/EnergyAbscissa.lean/declarations/pickupenergyabscissa-nonneg--6064a6c7254bf3403a5215b7.md) | 188 | `result-track:6064a6c7254bf3403a5215b70519b65a44c315de9801be581a1cdb8aedd840b3` |
| 22 | `theorem` | [pickupEnergyAbscissa_le_of_integrable](../../../../mathematics/NumberTheory/Moebius/EnergyAbscissa.lean/declarations/pickupenergyabscissa-le-of-integrable--1aaa3c3b7085fb3238c28b3f.md) | 191 | `result-track:1aaa3c3b7085fb3238c28b3f1df61dbc34acc7904187008440d4236b0b77155b` |
| 23 | `theorem` | [pickupEnergyAbscissa_le_one](../../../../mathematics/NumberTheory/Moebius/EnergyAbscissa.lean/declarations/pickupenergyabscissa-le-one--5664eebae368868878656832.md) | 196 | `result-track:5664eebae368868878656832a0248042d31d9258cf7536bb5a9ba62004e20a17` |
| 24 | `theorem` | [pickup_weighted_energy_integrable_above_abscissa](../../../../mathematics/NumberTheory/Moebius/EnergyAbscissa.lean/declarations/pickup-weighted-energy-integrable-above-abscissa--7f248513fd0d6c1a89a66cc2.md) | 204 | `result-track:7f248513fd0d6c1a89a66cc2b1f67edcca95df330617a33f997fcef3e2d50634` |
| 25 | `theorem` | [pickupEnergyAbscissa_zero_iff_weightedEnergyAll](../../../../mathematics/NumberTheory/Moebius/EnergyAbscissa.lean/declarations/pickupenergyabscissa-zero-iff-weightedenergyall--ae64730a5df449a0181ec5f4.md) | 210 | `result-track:ae64730a5df449a0181ec5f4417d82595e2b670b34084825837bcd981ecc7520` |
| 26 | `theorem` | [pickupEnergyAbscissa_zero_iff_crossSubexp](../../../../mathematics/NumberTheory/Moebius/EnergyAbscissa.lean/declarations/pickupenergyabscissa-zero-iff-crosssubexp--fdfe3771196b2056bdc5a0e3.md) | 223 | `result-track:fdfe3771196b2056bdc5a0e34ae08041cc869ad501314b435e1bd66042cb6cfd` |
| 27 | `theorem` | [riemannHypothesis_of_pickupEnergyAbscissa_zero](../../../../mathematics/NumberTheory/Moebius/EnergyAbscissa.lean/declarations/riemannhypothesis-of-pickupenergyabscissa-zero--96ac95f023cb8b99c3a3eb01.md) | 228 | `result-track:96ac95f023cb8b99c3a3eb01f474e7d9d4694c44e312a5b71c85df9b2d785ff0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
