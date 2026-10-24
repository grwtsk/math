# Verification target: GRWTSK.Analysis.MeasureTheory.Prod.Variant88593447f72eb3a1d1856e7605b36a58b529b3a6672fa2ba08499f1071b5c2c1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d7897f0e8ef08349b61e1897a96c13f7f05274cc",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Prod/Variant88593447f72eb3a1d1856e7605b36a58b529b3a6672fa2ba08499f1071b5c2c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant88593447f72eb3a1d1856e7605b36a58b529b3a6672fa2ba08499f1071b5c2c1.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant88593447f72eb3a1d1856e7605b36a58b529b3a6672fa2ba08499f1071b5c2c1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d7897f0e8ef08349b61e1897a96c13f7f05274cc`.

Source path: `GRWTSK/Analysis/MeasureTheory/Prod/Variant88593447f72eb3a1d1856e7605b36a58b529b3a6672fa2ba08499f1071b5c2c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Prod/Variant88593447f72eb3a1d1856e7605b36a58b529b3a6672fa2ba08499f1071b5c2c1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Group.Measure` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Prod` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [MeasurableEquiv.shearMulRight](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant88593447f72eb3a1d1856e7605b36a58b529b3a6672fa2ba08499f1071b5c2c1.lean/declarations/measurableequiv-shearmulright--ed387ed43f5c67c85fb9f35d.md) | 65 | `declaration-track:ed387ed43f5c67c85fb9f35d6c5aad8273ef8e384ba4afe60e05562747d49d71` |
| 2 | `def` | [MeasurableEquiv.shearDivRight](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant88593447f72eb3a1d1856e7605b36a58b529b3a6672fa2ba08499f1071b5c2c1.lean/declarations/measurableequiv-sheardivright--554cafe25a278604b609a2f4.md) | 73 | `declaration-track:554cafe25a278604b609a2f4ca008b3fcd40ffbca92ea29e0de13ff867998325` |
| 3 | `theorem` | [measurePreserving_prod_mul](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant88593447f72eb3a1d1856e7605b36a58b529b3a6672fa2ba08499f1071b5c2c1.lean/declarations/measurepreserving-prod-mul--009bfbe4a81987c0c0d1dc1d.md) | 91 | `result-track:009bfbe4a81987c0c0d1dc1da755894b2cbe6a2bc4d41882bde0c3f3b1c808c6` |
| 4 | `theorem` | [measurePreserving_prod_mul_swap](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant88593447f72eb3a1d1856e7605b36a58b529b3a6672fa2ba08499f1071b5c2c1.lean/declarations/measurepreserving-prod-mul-swap--f3f477e605269801951277a9.md) | 101 | `result-track:f3f477e605269801951277a9cad5ea0143d1910d1955f5167f9d14e1ce89fe88` |
| 5 | `theorem` | [measurable_measure_mul_right](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant88593447f72eb3a1d1856e7605b36a58b529b3a6672fa2ba08499f1071b5c2c1.lean/declarations/measurable-measure-mul-right--b2ae48ce1248ba2d10213e28.md) | 106 | `result-track:b2ae48ce1248ba2d10213e289c10cda499e945643832a7eabac3391b0f56e6aa` |
| 6 | `theorem` | [measurePreserving_prod_inv_mul](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant88593447f72eb3a1d1856e7605b36a58b529b3a6672fa2ba08499f1071b5c2c1.lean/declarations/measurepreserving-prod-inv-mul--6d56fa5a9ad2c1bee8f03438.md) | 123 | `result-track:6d56fa5a9ad2c1bee8f034385435907067cba460e78b006139c4874cbf2e9051` |
| 7 | `theorem` | [measurePreserving_prod_inv_mul_swap](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant88593447f72eb3a1d1856e7605b36a58b529b3a6672fa2ba08499f1071b5c2c1.lean/declarations/measurepreserving-prod-inv-mul-swap--52c8e80c0f89a16d181ada79.md) | 134 | `result-track:52c8e80c0f89a16d181ada79b10fbe097eb7f0cbb00006422997297684651d43` |
| 8 | `theorem` | [measurePreserving_mul_prod_inv](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant88593447f72eb3a1d1856e7605b36a58b529b3a6672fa2ba08499f1071b5c2c1.lean/declarations/measurepreserving-mul-prod-inv--e90ad7a6a493c9a5d495d2d1.md) | 143 | `result-track:e90ad7a6a493c9a5d495d2d11b2a4bb7ea5dc8b7a350ba46df81529ad80584a3` |
| 9 | `theorem` | [quasiMeasurePreserving_inv](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant88593447f72eb3a1d1856e7605b36a58b529b3a6672fa2ba08499f1071b5c2c1.lean/declarations/quasimeasurepreserving-inv--dc42cd885c320bf1bad1d514.md) | 151 | `result-track:dc42cd885c320bf1bad1d5140f57393ca0e4e4c81e9ea6fff576b66bce7d3c81` |
| 10 | `theorem` | [measure_inv_null](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant88593447f72eb3a1d1856e7605b36a58b529b3a6672fa2ba08499f1071b5c2c1.lean/declarations/measure-inv-null--bbf3cbe4a8615006659755bf.md) | 165 | `result-track:bbf3cbe4a8615006659755bfad908dc9fdc162dbc8f10e07d9085f0b4629abee` |
| 11 | `theorem` | [inv_ae](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant88593447f72eb3a1d1856e7605b36a58b529b3a6672fa2ba08499f1071b5c2c1.lean/declarations/inv-ae--22f26008330679ace9c46939.md) | 171 | `result-track:22f26008330679ace9c46939aed93f97683c4d131fde9893d1a5a47337433b31` |
| 12 | `theorem` | [eventuallyConst_inv_set_ae](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant88593447f72eb3a1d1856e7605b36a58b529b3a6672fa2ba08499f1071b5c2c1.lean/declarations/eventuallyconst-inv-set-ae--0bdcd2aacae1de3107607787.md) | 177 | `result-track:0bdcd2aacae1de3107607787a1559d81ac29266b63085a082d7e20285d4e4446` |
| 13 | `theorem` | [inv_absolutelyContinuous](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant88593447f72eb3a1d1856e7605b36a58b529b3a6672fa2ba08499f1071b5c2c1.lean/declarations/inv-absolutelycontinuous--49447c6cd5a15dd9c11e775f.md) | 182 | `result-track:49447c6cd5a15dd9c11e775fe0119ae79e9cb0f8abbe38ced6cb6cea02104a7d` |
| 14 | `theorem` | [absolutelyContinuous_inv](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant88593447f72eb3a1d1856e7605b36a58b529b3a6672fa2ba08499f1071b5c2c1.lean/declarations/absolutelycontinuous-inv--3bf5cc8ffbaf3ba3473136d2.md) | 186 | `result-track:3bf5cc8ffbaf3ba3473136d27899b835765a90dac085bbf81f8570588d546fc9` |
| 15 | `theorem` | [lintegral_lintegral_mul_inv](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant88593447f72eb3a1d1856e7605b36a58b529b3a6672fa2ba08499f1071b5c2c1.lean/declarations/lintegral-lintegral-mul-inv--28dcd90f928b1da819880075.md) | 191 | `result-track:28dcd90f928b1da819880075b2fd19898c106000a5acc6a91c2d39725690c5f7` |
| 16 | `theorem` | [measure_mul_right_null](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant88593447f72eb3a1d1856e7605b36a58b529b3a6672fa2ba08499f1071b5c2c1.lean/declarations/measure-mul-right-null--76fffbcd5f40b5b35ec16771.md) | 206 | `result-track:76fffbcd5f40b5b35ec1677163b7776d36338984fbdaa65c8940886dcb7b70e5` |
| 17 | `theorem` | [measure_mul_right_ne_zero](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant88593447f72eb3a1d1856e7605b36a58b529b3a6672fa2ba08499f1071b5c2c1.lean/declarations/measure-mul-right-ne-zero--3e849e2077f19506e60e3c5b.md) | 213 | `result-track:3e849e2077f19506e60e3c5b5a7d92cd4c2fee68eed60e1743afac40c1dc3a2a` |
| 18 | `theorem` | [absolutelyContinuous_map_mul_right](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant88593447f72eb3a1d1856e7605b36a58b529b3a6672fa2ba08499f1071b5c2c1.lean/declarations/absolutelycontinuous-map-mul-right--fb942c669d89632347e61c68.md) | 217 | `result-track:fb942c669d89632347e61c681fce7a57fa4fdf91f666c52c7b2d46e2a595a8ad` |
| 19 | `theorem` | [absolutelyContinuous_map_div_left](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant88593447f72eb3a1d1856e7605b36a58b529b3a6672fa2ba08499f1071b5c2c1.lean/declarations/absolutelycontinuous-map-div-left--d3611a081dbe3d5675a4f0eb.md) | 222 | `result-track:d3611a081dbe3d5675a4f0eb7967c7051e47a996a33a65afa3be85b9921c16b4` |
| 20 | `theorem` | [measure_mul_lintegral_eq](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant88593447f72eb3a1d1856e7605b36a58b529b3a6672fa2ba08499f1071b5c2c1.lean/declarations/measure-mul-lintegral-eq--97e3d3ecc53994e86b7ff773.md) | 232 | `result-track:97e3d3ecc53994e86b7ff773af7690ab916f6d691318ee615e32989ca30782ad` |
| 21 | `theorem` | [absolutelyContinuous_of_isMulLeftInvariant](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant88593447f72eb3a1d1856e7605b36a58b529b3a6672fa2ba08499f1071b5c2c1.lean/declarations/absolutelycontinuous-of-ismulleftinvariant--1ffb028765cb9ad70b116c1d.md) | 252 | `result-track:1ffb028765cb9ad70b116c1d4fd57c81cf22fdcc040d6ad0aba4487ec5ca86c1` |
| 22 | `theorem` | [ae_measure_preimage_mul_right_lt_top](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant88593447f72eb3a1d1856e7605b36a58b529b3a6672fa2ba08499f1071b5c2c1.lean/declarations/ae-measure-preimage-mul-right-lt-top--19c575fe4526ec3508e7fb41.md) | 265 | `result-track:19c575fe4526ec3508e7fb4159b9ea9b306b83460ab383d16277537031eb86d1` |
| 23 | `theorem` | [ae_measure_preimage_mul_right_lt_top_of_ne_zero](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant88593447f72eb3a1d1856e7605b36a58b529b3a6672fa2ba08499f1071b5c2c1.lean/declarations/ae-measure-preimage-mul-right-lt-top-of-ne-zero--4c97fc7036751ca0be80c0b1.md) | 283 | `result-track:4c97fc7036751ca0be80c0b11e69ac47051a07e1fb6d9a51afe1a4a7d196b6e6` |
| 24 | `constant` | [&#96;c&#96;](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant88593447f72eb3a1d1856e7605b36a58b529b3a6672fa2ba08499f1071b5c2c1.lean/declarations/c--c1177f88aa61f3cc3da7290b.md) | 303 | `declaration-track:c1177f88aa61f3cc3da7290b319a95c9bcfbeed1b5a1de232fb5685d0340761c` |
| 25 | `theorem` | [measure_lintegral_div_measure](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant88593447f72eb3a1d1856e7605b36a58b529b3a6672fa2ba08499f1071b5c2c1.lean/declarations/measure-lintegral-div-measure--9c7d775140d4c0358f84e4e6.md) | 309 | `result-track:9c7d775140d4c0358f84e4e624605c9996d23177f031bc9c506d1e5041e3e0e7` |
| 26 | `theorem` | [measure_mul_measure_eq](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant88593447f72eb3a1d1856e7605b36a58b529b3a6672fa2ba08499f1071b5c2c1.lean/declarations/measure-mul-measure-eq--a722cbc8eb087e9a2039c2e5.md) | 321 | `result-track:a722cbc8eb087e9a2039c2e5e4ac49065bd178714bb58d28ce10f569eabe9634` |
| 27 | `theorem` | [measure_eq_div_smul](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant88593447f72eb3a1d1856e7605b36a58b529b3a6672fa2ba08499f1071b5c2c1.lean/declarations/measure-eq-div-smul--674019a2499f51df22386b2e.md) | 339 | `result-track:674019a2499f51df22386b2ec1c91255dacb0ed7af98f926c6b495ff69f25266` |
| 28 | `theorem` | [measurePreserving_prod_mul_right](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant88593447f72eb3a1d1856e7605b36a58b529b3a6672fa2ba08499f1071b5c2c1.lean/declarations/measurepreserving-prod-mul-right--e34f92006fd72a1936283da0.md) | 352 | `result-track:e34f92006fd72a1936283da046f3fe55c7fb38388b8058e8a5c6f90adb83635a` |
| 29 | `theorem` | [measurePreserving_prod_mul_swap_right](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant88593447f72eb3a1d1856e7605b36a58b529b3a6672fa2ba08499f1071b5c2c1.lean/declarations/measurepreserving-prod-mul-swap-right--d68c235f0d7ac57d51a41d26.md) | 360 | `result-track:d68c235f0d7ac57d51a41d26a3d2d200bcacdb9eb7f23819e4a55f4984b79d6e` |
| 30 | `theorem` | [measurePreserving_mul_prod](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant88593447f72eb3a1d1856e7605b36a58b529b3a6672fa2ba08499f1071b5c2c1.lean/declarations/measurepreserving-mul-prod--e71873d7d7e779c37fcc8bae.md) | 367 | `result-track:e71873d7d7e779c37fcc8bae33dc283ec5ed21b8a5ec86cba225d515c067d26c` |
| 31 | `theorem` | [measurePreserving_prod_div](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant88593447f72eb3a1d1856e7605b36a58b529b3a6672fa2ba08499f1071b5c2c1.lean/declarations/measurepreserving-prod-div--6288b673b496f0dd8ebf3288.md) | 375 | `result-track:6288b673b496f0dd8ebf3288245d048dda75e0c2e07912267fac23bf637d6148` |
| 32 | `theorem` | [measurePreserving_prod_div_swap](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant88593447f72eb3a1d1856e7605b36a58b529b3a6672fa2ba08499f1071b5c2c1.lean/declarations/measurepreserving-prod-div-swap--774ac3f7c89df24a8869ebbc.md) | 382 | `result-track:774ac3f7c89df24a8869ebbc14942340cdcdf7cdfb8763132f2de7ecdec8a852` |
| 33 | `theorem` | [measurePreserving_div_prod](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant88593447f72eb3a1d1856e7605b36a58b529b3a6672fa2ba08499f1071b5c2c1.lean/declarations/measurepreserving-div-prod--acaa985d3f19845207b6896a.md) | 389 | `result-track:acaa985d3f19845207b6896a4f2001c732c8be00ce78153d2d9af35d01e96ccb` |
| 34 | `theorem` | [measurePreserving_mul_prod_inv_right](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant88593447f72eb3a1d1856e7605b36a58b529b3a6672fa2ba08499f1071b5c2c1.lean/declarations/measurepreserving-mul-prod-inv-right--fec0b937712685d2367fc392.md) | 396 | `result-track:fec0b937712685d2367fc39260a54babc0e3ffbb925c5bd7469d9c4150c2eb57` |
| 35 | `theorem` | [quasiMeasurePreserving_inv_of_right_invariant](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant88593447f72eb3a1d1856e7605b36a58b529b3a6672fa2ba08499f1071b5c2c1.lean/declarations/quasimeasurepreserving-inv-of-right-invariant--25cb6f11a8c29f816b97f0f6.md) | 410 | `result-track:25cb6f11a8c29f816b97f0f6b719bdc5dd5eb4a26d3d2f4317a7dd251ee3801b` |
| 36 | `theorem` | [quasiMeasurePreserving_div_left](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant88593447f72eb3a1d1856e7605b36a58b529b3a6672fa2ba08499f1071b5c2c1.lean/declarations/quasimeasurepreserving-div-left--711dcb058e0edecf4b7218a7.md) | 418 | `result-track:711dcb058e0edecf4b7218a75501dbac5350bb957fc0f26a9f79d1fee5b9c012` |
| 37 | `theorem` | [quasiMeasurePreserving_div_left_of_right_invariant](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant88593447f72eb3a1d1856e7605b36a58b529b3a6672fa2ba08499f1071b5c2c1.lean/declarations/quasimeasurepreserving-div-left-of-right-invariant--3729948f2534543f87733ee5.md) | 425 | `result-track:3729948f2534543f87733ee5184dc3aaa4a4b061d75e2b40dbeb38d09f27b52b` |
| 38 | `theorem` | [quasiMeasurePreserving_div_of_right_invariant](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant88593447f72eb3a1d1856e7605b36a58b529b3a6672fa2ba08499f1071b5c2c1.lean/declarations/quasimeasurepreserving-div-of-right-invariant--3f3adea735a7eb4519f9b57f.md) | 433 | `result-track:3f3adea735a7eb4519f9b57f13df187f3deed044784c3c2e87f7b44735546dfd` |
| 39 | `theorem` | [quasiMeasurePreserving_div](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant88593447f72eb3a1d1856e7605b36a58b529b3a6672fa2ba08499f1071b5c2c1.lean/declarations/quasimeasurepreserving-div--5193d85e1008d317b7a63e1e.md) | 439 | `result-track:5193d85e1008d317b7a63e1eac1b537de9b27b98639c9f1468738dc9f48677dc` |
| 40 | `theorem` | [quasiMeasurePreserving_mul_right](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant88593447f72eb3a1d1856e7605b36a58b529b3a6672fa2ba08499f1071b5c2c1.lean/declarations/quasimeasurepreserving-mul-right--eb56c6255d0b8d47f3e9ff14.md) | 449 | `result-track:eb56c6255d0b8d47f3e9ff145cdaf0f8a4f78a7f8dcc8e5dbcbea893293b0603` |
| 41 | `theorem` | [quasiMeasurePreserving_mul_left](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant88593447f72eb3a1d1856e7605b36a58b529b3a6672fa2ba08499f1071b5c2c1.lean/declarations/quasimeasurepreserving-mul-left--327dc4968257779e873ed27c.md) | 459 | `result-track:327dc4968257779e873ed27cb2e954f4c867c8922a9bb251387492f307e8a216` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
