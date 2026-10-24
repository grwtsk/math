# Verification target: GRWTSK.Analysis.MeasureTheory.VolumeOfBalls.Variant8e262c9bd98d52c42be6014b6456e482ca61355cafd28f5023388f9313bd0b28

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d288c3ea7cf52ff89bcf39da627aee1ff7618595",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/VolumeOfBalls/Variant8e262c9bd98d52c42be6014b6456e482ca61355cafd28f5023388f9313bd0b28.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/VolumeOfBalls/Variant8e262c9bd98d52c42be6014b6456e482ca61355cafd28f5023388f9313bd0b28.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/VolumeOfBalls/Variant8e262c9bd98d52c42be6014b6456e482ca61355cafd28f5023388f9313bd0b28.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d288c3ea7cf52ff89bcf39da627aee1ff7618595`.

Source path: `GRWTSK/Analysis/MeasureTheory/VolumeOfBalls/Variant8e262c9bd98d52c42be6014b6456e482ca61355cafd28f5023388f9313bd0b28.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/VolumeOfBalls/Variant8e262c9bd98d52c42be6014b6456e482ca61355cafd28f5023388f9313bd0b28.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Complex.FiniteDimensional` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.HaarToSphere` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Gamma` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Pi` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [MeasureTheory.measure_unitBall_eq_integral_div_gamma](../../../../../mathematics/Analysis/MeasureTheory/VolumeOfBalls/Variant8e262c9bd98d52c42be6014b6456e482ca61355cafd28f5023388f9313bd0b28.lean/declarations/measuretheory-measure-unitball-eq-integral-div-gamma--1cf80842964ecfb330c686c0.md) | 46 | `result-track:1cf80842964ecfb330c686c0ada7a8160b9ae3d7538c691864e80ad540cc95fc` |
| 2 | `theorem` | [MeasureTheory.measure_lt_one_eq_integral_div_gamma](../../../../../mathematics/Analysis/MeasureTheory/VolumeOfBalls/Variant8e262c9bd98d52c42be6014b6456e482ca61355cafd28f5023388f9313bd0b28.lean/declarations/measuretheory-measure-lt-one-eq-integral-div-gamma--5911c120dfaf980bda08b1fe.md) | 75 | `result-track:5911c120dfaf980bda08b1fe8e969402f6a009052617e4aa8f8a8974590f9170` |
| 3 | `theorem` | [MeasureTheory.measure_le_eq_lt](../../../../../mathematics/Analysis/MeasureTheory/VolumeOfBalls/Variant8e262c9bd98d52c42be6014b6456e482ca61355cafd28f5023388f9313bd0b28.lean/declarations/measuretheory-measure-le-eq-lt--49c55e0e6bac4780c90e4031.md) | 119 | `result-track:49c55e0e6bac4780c90e403170bd4ab4b47f2d07aaba7f49bbdcabdb995d2e43` |
| 4 | `theorem` | [MeasureTheory.volume_sum_rpow_lt_one](../../../../../mathematics/Analysis/MeasureTheory/VolumeOfBalls/Variant8e262c9bd98d52c42be6014b6456e482ca61355cafd28f5023388f9313bd0b28.lean/declarations/measuretheory-volume-sum-rpow-lt-one--7f9481b46906f1d32ae9978f.md) | 168 | `result-track:7f9481b46906f1d32ae9978f789b62d80d1df6cfe96a5994978209c318a36c35` |
| 5 | `theorem` | [MeasureTheory.volume_sum_rpow_lt](../../../../../mathematics/Analysis/MeasureTheory/VolumeOfBalls/Variant8e262c9bd98d52c42be6014b6456e482ca61355cafd28f5023388f9313bd0b28.lean/declarations/measuretheory-volume-sum-rpow-lt--813ff624ba2c8c0d9d74d89b.md) | 200 | `result-track:813ff624ba2c8c0d9d74d89bafeecd87c97bf3b08d7b1aeec6f9d635146517fa` |
| 6 | `theorem` | [MeasureTheory.volume_sum_rpow_le](../../../../../mathematics/Analysis/MeasureTheory/VolumeOfBalls/Variant8e262c9bd98d52c42be6014b6456e482ca61355cafd28f5023388f9313bd0b28.lean/declarations/measuretheory-volume-sum-rpow-le--ad5551b3f09218cbfe1a78dd.md) | 220 | `result-track:ad5551b3f09218cbfe1a78ddba134ce2e39afa0698c9f8560da695e0eafadbdb` |
| 7 | `theorem` | [Complex.volume_sum_rpow_lt_one](../../../../../mathematics/Analysis/MeasureTheory/VolumeOfBalls/Variant8e262c9bd98d52c42be6014b6456e482ca61355cafd28f5023388f9313bd0b28.lean/declarations/complex-volume-sum-rpow-lt-one--1c4c99921f4d97f346985342.md) | 240 | `result-track:1c4c99921f4d97f346985342b0191de7c21feee0896415dc8163690a02d94e09` |
| 8 | `theorem` | [Complex.volume_sum_rpow_lt](../../../../../mathematics/Analysis/MeasureTheory/VolumeOfBalls/Variant8e262c9bd98d52c42be6014b6456e482ca61355cafd28f5023388f9313bd0b28.lean/declarations/complex-volume-sum-rpow-lt--eb3fed08c2a61ed6c8e56379.md) | 273 | `result-track:eb3fed08c2a61ed6c8e5637952cb98ead00bbe2f123c3e6d6b305b98ab72a0b0` |
| 9 | `theorem` | [Complex.volume_sum_rpow_le](../../../../../mathematics/Analysis/MeasureTheory/VolumeOfBalls/Variant8e262c9bd98d52c42be6014b6456e482ca61355cafd28f5023388f9313bd0b28.lean/declarations/complex-volume-sum-rpow-le--099c61084d9e71627bbe45d1.md) | 295 | `result-track:099c61084d9e71627bbe45d1212b0081f25ae744bb511f7cd9cca28d74711d46` |
| 10 | `theorem` | [volume_ball](../../../../../mathematics/Analysis/MeasureTheory/VolumeOfBalls/Variant8e262c9bd98d52c42be6014b6456e482ca61355cafd28f5023388f9313bd0b28.lean/declarations/volume-ball--e709030328f30ea414eb0a2c.md) | 323 | `result-track:e709030328f30ea414eb0a2c809b03913a4fafb53decd6833c9d1e6648d96b51` |
| 11 | `theorem` | [volume_closedBall](../../../../../mathematics/Analysis/MeasureTheory/VolumeOfBalls/Variant8e262c9bd98d52c42be6014b6456e482ca61355cafd28f5023388f9313bd0b28.lean/declarations/volume-closedball--9a63d64c0af4fa445989abb7.md) | 340 | `result-track:9a63d64c0af4fa445989abb7ce4ed7d2cff91f8ec2ff27947348245d3759d968` |
| 12 | `theorem` | [volume_ball](../../../../../mathematics/Analysis/MeasureTheory/VolumeOfBalls/Variant8e262c9bd98d52c42be6014b6456e482ca61355cafd28f5023388f9313bd0b28.lean/declarations/volume-ball--38eec7cd0b720aca84390261.md) | 359 | `result-track:38eec7cd0b720aca84390261bcad655726665c99659dfbd4ebb0f186a6d84a75` |
| 13 | `theorem` | [volume_closedBall](../../../../../mathematics/Analysis/MeasureTheory/VolumeOfBalls/Variant8e262c9bd98d52c42be6014b6456e482ca61355cafd28f5023388f9313bd0b28.lean/declarations/volume-closedball--34f9786d6b9ece3f962e8041.md) | 370 | `result-track:34f9786d6b9ece3f962e80413c064f6f4b6a53728d2a554e2882eee744f301bb` |
| 14 | `lemma` | [volume_ball_of_dim_even](../../../../../mathematics/Analysis/MeasureTheory/VolumeOfBalls/Variant8e262c9bd98d52c42be6014b6456e482ca61355cafd28f5023388f9313bd0b28.lean/declarations/volume-ball-of-dim-even--2a482b5b8a414e80b8d2522c.md) | 375 | `result-track:2a482b5b8a414e80b8d2522c2e441bf9b76af9bee684af6a3dc15a46c121085c` |
| 15 | `lemma` | [volume_closedBall_of_dim_even](../../../../../mathematics/Analysis/MeasureTheory/VolumeOfBalls/Variant8e262c9bd98d52c42be6014b6456e482ca61355cafd28f5023388f9313bd0b28.lean/declarations/volume-closedball-of-dim-even--65d51a353f0821a63713f41d.md) | 381 | `result-track:65d51a353f0821a63713f41dc7065f9cfc7c60851d375a4eca7988bacdfc4108` |
| 16 | `lemma` | [volume_ball_of_dim_odd](../../../../../mathematics/Analysis/MeasureTheory/VolumeOfBalls/Variant8e262c9bd98d52c42be6014b6456e482ca61355cafd28f5023388f9313bd0b28.lean/declarations/volume-ball-of-dim-odd--69d11bd7afa531c1089c6da9.md) | 387 | `result-track:69d11bd7afa531c1089c6da9215d1a2f6b68e7308713ea4e38e628333b7e397c` |
| 17 | `lemma` | [volume_closedBall_of_dim_odd](../../../../../mathematics/Analysis/MeasureTheory/VolumeOfBalls/Variant8e262c9bd98d52c42be6014b6456e482ca61355cafd28f5023388f9313bd0b28.lean/declarations/volume-closedball-of-dim-odd--0d3a5afcbaa276ac6db5dbec.md) | 400 | `result-track:0d3a5afcbaa276ac6db5dbec667438a9608cc53a5d0ba2a1de0ba45722a97499` |
| 18 | `lemma` | [volume_ball_fin_two](../../../../../mathematics/Analysis/MeasureTheory/VolumeOfBalls/Variant8e262c9bd98d52c42be6014b6456e482ca61355cafd28f5023388f9313bd0b28.lean/declarations/volume-ball-fin-two--9d3c0f9aa5a7be582376921c.md) | 413 | `result-track:9d3c0f9aa5a7be582376921c7aba48d55f5e7cf04a42dfd507a52596623a9983` |
| 19 | `lemma` | [volume_closedBall_fin_two](../../../../../mathematics/Analysis/MeasureTheory/VolumeOfBalls/Variant8e262c9bd98d52c42be6014b6456e482ca61355cafd28f5023388f9313bd0b28.lean/declarations/volume-closedball-fin-two--d602ce046baf8aa0477bfd6f.md) | 418 | `result-track:d602ce046baf8aa0477bfd6f97ad48f574ae171a72de02a1c0f9c6c9a065bd44` |
| 20 | `lemma` | [volume_ball_fin_three](../../../../../mathematics/Analysis/MeasureTheory/VolumeOfBalls/Variant8e262c9bd98d52c42be6014b6456e482ca61355cafd28f5023388f9313bd0b28.lean/declarations/volume-ball-fin-three--d024ba9bf0e4187a42a87058.md) | 423 | `result-track:d024ba9bf0e4187a42a8705814090f9dccce9bb3d799d4be366d4c909ebfcab0` |
| 21 | `lemma` | [volume_closedBall_fin_three](../../../../../mathematics/Analysis/MeasureTheory/VolumeOfBalls/Variant8e262c9bd98d52c42be6014b6456e482ca61355cafd28f5023388f9313bd0b28.lean/declarations/volume-closedball-fin-three--496cb467c9523a5dec8eb964.md) | 428 | `result-track:496cb467c9523a5dec8eb9642890a7d9236de5f345f8d63339b263b717a0fba8` |
| 22 | `theorem` | [Complex.volume_ball](../../../../../mathematics/Analysis/MeasureTheory/VolumeOfBalls/Variant8e262c9bd98d52c42be6014b6456e482ca61355cafd28f5023388f9313bd0b28.lean/declarations/complex-volume-ball--0770258707cfe9d656039b1e.md) | 439 | `result-track:0770258707cfe9d656039b1ec6afec5aae351f0bb3c6f754c2117944da2ac65c` |
| 23 | `theorem` | [Complex.volume_closedBall](../../../../../mathematics/Analysis/MeasureTheory/VolumeOfBalls/Variant8e262c9bd98d52c42be6014b6456e482ca61355cafd28f5023388f9313bd0b28.lean/declarations/complex-volume-closedball--b36b32cb28aefb5e75457c7a.md) | 445 | `result-track:b36b32cb28aefb5e75457c7ac3eb4a71f57504110575e60043183037a7e75af1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
