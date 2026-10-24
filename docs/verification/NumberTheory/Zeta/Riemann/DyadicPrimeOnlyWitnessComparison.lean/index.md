# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.DyadicPrimeOnlyWitnessComparison

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9e03ce3e7505050efbf02d0758083f5bab764205",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyWitnessComparison.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyWitnessComparison.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyWitnessComparison.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9e03ce3e7505050efbf02d0758083f5bab764205`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyWitnessComparison.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyWitnessComparison.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.DyadicHigherPrimePowerFullResidual`](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicHigherPrimePowerFullResidual.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primeOnlyMass0](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyWitnessComparison.lean/declarations/primeonlymass0--e5b4144f32f70fcbb25a7f75.md) | 39 | `declaration-track:e5b4144f32f70fcbb25a7f754e58b36e92401bd072b7b89681ed3bfcfa792c23` |
| 2 | `def` | [primeOnlyMass1](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyWitnessComparison.lean/declarations/primeonlymass1--a01ff720522d995baed8c9b3.md) | 43 | `declaration-track:a01ff720522d995baed8c9b3142bea71b2c1d6d1317c4014677de33eff5a5138` |
| 3 | `theorem` | [mass0_eq_primeOnly_add_higherPrimePower](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyWitnessComparison.lean/declarations/mass0-eq-primeonly-add-higherprimepower--bd0c90533d1cf81e09465c79.md) | 49 | `result-track:bd0c90533d1cf81e09465c799714da22a696b3236345caccabcf70a3ed122d33` |
| 4 | `theorem` | [mass1_eq_primeOnly_add_higherPrimePower](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyWitnessComparison.lean/declarations/mass1-eq-primeonly-add-higherprimepower--fec612a866d81a5e49084425.md) | 64 | `result-track:fec612a866d81a5e490844255254078792815a05edaa03c5aa881b9056d4bbfb` |
| 5 | `def` | [greenPrimeOnlyArithmeticFourierCoordinate](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyWitnessComparison.lean/declarations/greenprimeonlyarithmeticfouriercoordinate--36a4709588f27c9b18e079e2.md) | 79 | `declaration-track:36a4709588f27c9b18e079e24eaa988b7dc43d6a653e7eb25ed04ebb50b96c17` |
| 6 | `def` | [greenHigherPrimePowerArithmeticCorrection](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyWitnessComparison.lean/declarations/greenhigherprimepowerarithmeticcorrection--0818739aaf4b03604af9060f.md) | 88 | `declaration-track:0818739aaf4b03604af9060f56abcdfc5995c3c849ea2f7b295d10571bab4550` |
| 7 | `theorem` | [greenPrimeOnlyArithmeticFourierCoordinate_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyWitnessComparison.lean/declarations/greenprimeonlyarithmeticfouriercoordinate-zero--c7e459c335428023953f4054.md) | 96 | `result-track:c7e459c335428023953f40543ac467f24e79df4334ad638c2e0b667ef92957ed` |
| 8 | `theorem` | [greenHigherPrimePowerArithmeticCorrection_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyWitnessComparison.lean/declarations/greenhigherprimepowerarithmeticcorrection-zero--173b50819ddd116929e87932.md) | 102 | `result-track:173b50819ddd116929e8793228f6d572ac1e18792b60a9a1189b4a13cad08fe0` |
| 9 | `theorem` | [greenArithmeticFourierCoordinate_eq_primeOnly_sub_higherPrimePower](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyWitnessComparison.lean/declarations/greenarithmeticfouriercoordinate-eq-primeonly-sub-higherprimepower--dc92f3212f016219f7e2c10c.md) | 109 | `result-track:dc92f3212f016219f7e2c10ca64a0bf21e9a162c7daa4e78b9284aff9df77078` |
| 10 | `theorem` | [higherPrimePowerFourierModeEnergy_eq_correction](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyWitnessComparison.lean/declarations/higherprimepowerfouriermodeenergy-eq-correction--8396f263d74c2f11ea49da60.md) | 127 | `result-track:8396f263d74c2f11ea49da6004281676b0edadde81391ba333f697a230858322` |
| 11 | `def` | [greenPrimeOnlyFourierModeEnergy](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyWitnessComparison.lean/declarations/greenprimeonlyfouriermodeenergy--8e56b491e6b5838e415f3b3b.md) | 138 | `declaration-track:8e56b491e6b5838e415f3b3b5b2ffb407a294186b8fa9ca69e5367447b11d58b` |
| 12 | `theorem` | [greenPrimeOnlyFourierModeEnergy_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyWitnessComparison.lean/declarations/greenprimeonlyfouriermodeenergy-nonnegative--fa9df882e6914eb2ad66bb1a.md) | 142 | `result-track:fa9df882e6914eb2ad66bb1a940ffc6b6ef5742d518e84af21932520f2222853` |
| 13 | `theorem` | [real_add_sq_le_two](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyWitnessComparison.lean/declarations/real-add-sq-le-two--773c9eaa79d0643813ea5195.md) | 148 | `result-track:773c9eaa79d0643813ea5195e9dc8b8f957d85d914ea76daab70f1fef655fd0e` |
| 14 | `theorem` | [real_sub_sq_le_two](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyWitnessComparison.lean/declarations/real-sub-sq-le-two--d6bc0a731fdbe0f428b7b800.md) | 153 | `result-track:d6bc0a731fdbe0f428b7b80023d044d41caf024ebc0be8c256062ba6d43bf770` |
| 15 | `theorem` | [complex_norm_add_sq_le_two](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyWitnessComparison.lean/declarations/complex-norm-add-sq-le-two--f386e53a006cfd3b38a542d6.md) | 158 | `result-track:f386e53a006cfd3b38a542d66c7650b8daaeae7690179a640c3dfacd3543acc2` |
| 16 | `theorem` | [complex_norm_sub_sq_le_two](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyWitnessComparison.lean/declarations/complex-norm-sub-sq-le-two--ec15a00b7502dabf74c4004d.md) | 168 | `result-track:ec15a00b7502dabf74c4004de7d81a2740b027491b7f2b59c3fda642a415f020` |
| 17 | `theorem` | [fullModeEnergy_le_primeOnly_add_higherPower](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyWitnessComparison.lean/declarations/fullmodeenergy-le-primeonly-add-higherpower--413ddb68787bfbfc56085a6b.md) | 179 | `result-track:413ddb68787bfbfc56085a6b20499beb4acd54ab5daf051021a1a744b563e0a2` |
| 18 | `theorem` | [primeOnlyModeEnergy_le_full_add_higherPower](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyWitnessComparison.lean/declarations/primeonlymodeenergy-le-full-add-higherpower--e9ef733d0716211938453aff.md) | 190 | `result-track:e9ef733d0716211938453aff942256c2e8042705fd0327c8a05c6399f12e4374` |
| 19 | `def` | [greenPrimeOnlyFourierShellEnergy](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyWitnessComparison.lean/declarations/greenprimeonlyfouriershellenergy--e7e32c10a4d13f83f27d8da8.md) | 208 | `declaration-track:e7e32c10a4d13f83f27d8da8bffde9d32d8ad0612ae1230bd94de665bb0cc598` |
| 20 | `def` | [greenPrimeOnlyFourierHead](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyWitnessComparison.lean/declarations/greenprimeonlyfourierhead--e94541153e985cf328b291ea.md) | 213 | `declaration-track:e94541153e985cf328b291eab20649ca010ac1c690e432153c2008e08dab2f91` |
| 21 | `theorem` | [greenPrimeOnlyFourierHead_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyWitnessComparison.lean/declarations/greenprimeonlyfourierhead-nonnegative--239c931b2289cd463729d07b.md) | 218 | `result-track:239c931b2289cd463729d07b6eb25b4bcf174d2b9ecc3283559f1e4bfc8530e2` |
| 22 | `def` | [higherPrimePowerFourierShellEnergy](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyWitnessComparison.lean/declarations/higherprimepowerfouriershellenergy--0d8a2528fd58f6f32962f3cc.md) | 228 | `declaration-track:0d8a2528fd58f6f32962f3cca9961d83bbb1b2ebd98439e61d16c61cda61986f` |
| 23 | `def` | [higherPrimePowerFourierHead](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyWitnessComparison.lean/declarations/higherprimepowerfourierhead--74130dbd6353c2a68e94d7fa.md) | 233 | `declaration-track:74130dbd6353c2a68e94d7fadcc11a70f77bc00ace77eeb0631a6757b1b8f1ce` |
| 24 | `theorem` | [higherPrimePowerFourierShellEnergy_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyWitnessComparison.lean/declarations/higherprimepowerfouriershellenergy-nonnegative--3bb114672a2269c4d862aa7e.md) | 238 | `result-track:3bb114672a2269c4d862aa7e2ac4a8cde223d64a88bbe78d624b519be3b42090` |
| 25 | `theorem` | [higherPrimePowerFourierHead_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyWitnessComparison.lean/declarations/higherprimepowerfourierhead-nonnegative--3f605ba77d447efac6ca06e2.md) | 246 | `result-track:3f605ba77d447efac6ca06e2a08a780c8f1050a11eb2aa018d867661f9bc4cfe` |
| 26 | `theorem` | [higherPrimePowerFourierHead_le_tsum](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyWitnessComparison.lean/declarations/higherprimepowerfourierhead-le-tsum--f0aa4966259cb3188386b5cc.md) | 255 | `result-track:f0aa4966259cb3188386b5cca660a9608f9c57d5ac692d70b1ce63508fb4acd1` |
| 27 | `theorem` | [fullFourierShell_le_primeOnly_add_higherPower](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyWitnessComparison.lean/declarations/fullfouriershell-le-primeonly-add-higherpower--564b0ff4951b93d33707bd5f.md) | 273 | `result-track:564b0ff4951b93d33707bd5f2f4b1ff509112b2fadc4ccee195174773e2f85ae` |
| 28 | `theorem` | [fullFourierHead_le_primeOnly_add_higherPower](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyWitnessComparison.lean/declarations/fullfourierhead-le-primeonly-add-higherpower--d3debbff97129965c35a9065.md) | 285 | `result-track:d3debbff97129965c35a9065b339e6971d27ea72421062b42cc10649539d75c9` |
| 29 | `theorem` | [primeOnlyFourierShell_le_full_add_higherPower](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyWitnessComparison.lean/declarations/primeonlyfouriershell-le-full-add-higherpower--f7e81f6520b24a3800be1617.md) | 306 | `result-track:f7e81f6520b24a3800be1617bed57bbff88028e1861b95d1eaa6c6a6d5770ddd` |
| 30 | `theorem` | [primeOnlyFourierHead_le_full_add_higherPower](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyWitnessComparison.lean/declarations/primeonlyfourierhead-le-full-add-higherpower--d1364cf71cde17fb02c588c8.md) | 318 | `result-track:d1364cf71cde17fb02c588c8884976333cb1d65251fb21f596139f5ac7829e86` |
| 31 | `def` | [fullGreenPrimeOnlyCoordinateStage](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyWitnessComparison.lean/declarations/fullgreenprimeonlycoordinatestage--9c79d50ae237844df042caf6.md) | 339 | `declaration-track:9c79d50ae237844df042caf610b06c279c638b46e34247a319b1c54758e54168` |
| 32 | `theorem` | [fullGreenPrimeOnlyCoordinateStage_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyWitnessComparison.lean/declarations/fullgreenprimeonlycoordinatestage-nonnegative--8083a7fb3eb664342d2d33ae.md) | 345 | `result-track:8083a7fb3eb664342d2d33aede1feeec95d5a45f06d21038c639198f9c44f58b` |
| 33 | `def` | [higherPrimePowerFiniteWitnessEnergy](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyWitnessComparison.lean/declarations/higherprimepowerfinitewitnessenergy--6f601fc5d673f49900046a7d.md) | 352 | `declaration-track:6f601fc5d673f49900046a7de103e2766690a57071ef730876882ab5c82c3597` |
| 34 | `theorem` | [higherPrimePowerFiniteWitnessEnergy_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyWitnessComparison.lean/declarations/higherprimepowerfinitewitnessenergy-nonnegative--04494bc70df5bd90f5294319.md) | 358 | `result-track:04494bc70df5bd90f52943197f8c89b25beb2d5542bc8ebaa97d14c49481f42e` |
| 35 | `theorem` | [higherPrimePowerFiniteWitnessEnergy_le_full](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyWitnessComparison.lean/declarations/higherprimepowerfinitewitnessenergy-le-full--efcb5dcc40b4dcb7d5b39bc1.md) | 368 | `result-track:efcb5dcc40b4dcb7d5b39bc12a2c52992c00ddd8430aaaf4322418a6c544a1e4` |
| 36 | `theorem` | [fullStage_le_two_primeOnly_add_residual](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyWitnessComparison.lean/declarations/fullstage-le-two-primeonly-add-residual--a701af64f67bd4b0432ac064.md) | 377 | `result-track:a701af64f67bd4b0432ac06422a0b5f32faf3fe2d519d483880a61ac2a8c6f37` |
| 37 | `theorem` | [primeOnlyStage_le_two_full_add_residual](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyWitnessComparison.lean/declarations/primeonlystage-le-two-full-add-residual--fa0bfd309f8a4245f30bf1fa.md) | 403 | `result-track:fa0bfd309f8a4245f30bf1fa0a4499d67a84dc66e1fd4ab9c39d829c41a879ba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
