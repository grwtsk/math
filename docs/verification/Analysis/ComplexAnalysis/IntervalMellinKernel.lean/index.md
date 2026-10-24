# Verification target: GRWTSK.Analysis.Complex.IntervalMellinKernel

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "28cb1e86a7b4b71d993a7934b75cf9604b369aec",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/IntervalMellinKernel.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinKernel.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinKernel.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `28cb1e86a7b4b71d993a7934b75cf9604b369aec`.

Source path: `GRWTSK/Analysis/Complex/IntervalMellinKernel.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/IntervalMellinKernel.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.ParametricIntervalIntegral` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.MeanValue` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FunProp` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.NormCast` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logPower](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinKernel.lean/declarations/logpower--33d53c0aa90cfa53beff1ce3.md) | 33 | `declaration-track:33d53c0aa90cfa53beff1ce37be5cfe2d398648034e0451f39e3d0faefe58217` |
| 2 | `def` | [density](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinKernel.lean/declarations/density--0a50c7bcd3fd051b4de5b31c.md) | 36 | `declaration-track:0a50c7bcd3fd051b4de5b31cb7f933c98f651a337082740865a47b8a7eb0b48a` |
| 3 | `def` | [kernel](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinKernel.lean/declarations/kernel--d60ba120d68d5ea2fd2cf1fc.md) | 40 | `declaration-track:d60ba120d68d5ea2fd2cf1fc3061b9ef26493eef2dffb477b8b963a697975761` |
| 4 | `def` | [logMoment](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinKernel.lean/declarations/logmoment--88e9ad439cd8e43fc8b32895.md) | 43 | `declaration-track:88e9ad439cd8e43fc8b3289558abf89c65e2ad04b8130884afc380e95e24f057` |
| 5 | `def` | [densityBound](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinKernel.lean/declarations/densitybound--774f9b5688bc0d57ed41398f.md) | 48 | `declaration-track:774f9b5688bc0d57ed41398f8f6668111a49ae6262994a20c5f97a2c296d75d4` |
| 6 | `def` | [sensitivity](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinKernel.lean/declarations/sensitivity--76b56c0c80a25b6d44535419.md) | 52 | `declaration-track:76b56c0c80a25b6d44535419a352aed26367269f51ae65449def26a59e7f505e` |
| 7 | `theorem` | [densityBound_pos](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinKernel.lean/declarations/densitybound-pos--16932c7a3ee2ede876074ede.md) | 54 | `result-track:16932c7a3ee2ede876074ededc306e93c3bd3f8fc68c9b598982e4f25c7b0452` |
| 8 | `theorem` | [sensitivity_nonneg](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinKernel.lean/declarations/sensitivity-nonneg--bb7df2eb2a69b6104210cd86.md) | 57 | `result-track:bb7df2eb2a69b6104210cd86e4412d08421e083f5501286b8b7c5d86361656bb` |
| 9 | `theorem` | [exp_real_log](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinKernel.lean/declarations/exp-real-log--877a7e1ec57ea91d1d2b5d26.md) | 63 | `result-track:877a7e1ec57ea91d1d2b5d268d5b7e59b3934f46b6469d460581a21519ff55cf` |
| 10 | `theorem` | [density_eq_logPower_div](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinKernel.lean/declarations/density-eq-logpower-div--67fdbe97af2ddb41d83f060e.md) | 67 | `result-track:67fdbe97af2ddb41d83f060edf277ae1fc5d856d88262fdec39b7e621c8d9ddd` |
| 11 | `theorem` | [density_continuousOn](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinKernel.lean/declarations/density-continuouson--06bef1cc5e8de510726f9410.md) | 73 | `result-track:06bef1cc5e8de510726f9410ed5d0c655b87edad73462a5b25d94c884a8800a8` |
| 12 | `theorem` | [weighted_density_continuousOn](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinKernel.lean/declarations/weighted-density-continuouson--5b161c0d46e35402d3054631.md) | 82 | `result-track:5b161c0d46e35402d305463153cdeb6b22c51c1667b093866f552751a3d6f274` |
| 13 | `theorem` | [density_intervalIntegrable](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinKernel.lean/declarations/density-intervalintegrable--dc4a9a833e568fe6bae4c4d1.md) | 91 | `result-track:dc4a9a833e568fe6bae4c4d19cf3ad54e854104563fe24e5ab97718deb91e957` |
| 14 | `theorem` | [weighted_density_intervalIntegrable](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinKernel.lean/declarations/weighted-density-intervalintegrable--38473f0d8e021d285b73b87f.md) | 95 | `result-track:38473f0d8e021d285b73b87f8e9089147f98212a0c3ae665ffac169f3a3f3222` |
| 15 | `theorem` | [norm_density_le](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinKernel.lean/declarations/norm-density-le--6c1eb47cffd86979c2516576.md) | 101 | `result-track:6c1eb47cffd86979c2516576b0ae62c727bd40d9206c4a2e2ec4dbaa8f79735c` |
| 16 | `theorem` | [norm_weighted_density_le](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinKernel.lean/declarations/norm-weighted-density-le--37786c1d5cef79163663c1f5.md) | 120 | `result-track:37786c1d5cef79163663c1f5e8c79541ef028a0817ec7f98cc2b0c27a1cca956` |
| 17 | `theorem` | [hasDerivAt_density](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinKernel.lean/declarations/hasderivat-density--ad959ae5af421cd7678ac994.md) | 134 | `result-track:ad959ae5af421cd7678ac994c2e12925a1d07a36b88f23902bdf6cfa1f0f4ffb` |
| 18 | `theorem` | [hasDerivAt_kernel](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinKernel.lean/declarations/hasderivat-kernel--c23e25f7d03f0b27a50f7593.md) | 142 | `result-track:c23e25f7d03f0b27a50f759333ba72bcefde29a69e38ccc6e5c11739ac3a04c3` |
| 19 | `theorem` | [differentiable_kernel](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinKernel.lean/declarations/differentiable-kernel--251c4817a4374af3f73609c3.md) | 163 | `result-track:251c4817a4374af3f73609c3b431b7b091920ee79354521b52f2ae345e1daaa4` |
| 20 | `theorem` | [deriv_kernel](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinKernel.lean/declarations/deriv-kernel--ab59cb328e591e65fd3a5429.md) | 166 | `result-track:ab59cb328e591e65fd3a5429619e3e22080d523caa91bfb79d093ad1a1b8487d` |
| 21 | `theorem` | [norm_kernel_le](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinKernel.lean/declarations/norm-kernel-le--c79130d5ba8fc250b62b8fd3.md) | 169 | `result-track:c79130d5ba8fc250b62b8fd3fdde8ab027fbbd35e2241df6266f2ad19197c2e9` |
| 22 | `theorem` | [norm_logMoment_le](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinKernel.lean/declarations/norm-logmoment-le--7c83e67c21b1ed7c5a63cffa.md) | 178 | `result-track:7c83e67c21b1ed7c5a63cffa724620adaaebeba1fef1f943197c43497f28fa92` |
| 23 | `theorem` | [convex_re_le](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinKernel.lean/declarations/convex-re-le--911a5a8d2eda9545bc897263.md) | 190 | `result-track:911a5a8d2eda9545bc8972632e2b8f88d313ee3c35905e57600b57e0e26132f3` |
| 24 | `theorem` | [norm_kernel_sub_le](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinKernel.lean/declarations/norm-kernel-sub-le--05ba21db3b03bb0eb747d0cf.md) | 200 | `result-track:05ba21db3b03bb0eb747d0cfd7044625ae3d40a81e1b262bc504f4e80e9f5ebd` |
| 25 | `theorem` | [hasDerivAt_logPower](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinKernel.lean/declarations/hasderivat-logpower--e65b632703a9be388b2c3694.md) | 208 | `result-track:e65b632703a9be388b2c3694f0ccffd868bf48e848ebaa588ddef9bbb7479631` |
| 26 | `theorem` | [parameter_mul_kernel](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinKernel.lean/declarations/parameter-mul-kernel--bc0bf9ed4b003e95e353d317.md) | 214 | `result-track:bc0bf9ed4b003e95e353d3170178aece0b352a674f434bc23b6b10f8e0405c1c` |
| 27 | `theorem` | [kernel_eq_quotient](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinKernel.lean/declarations/kernel-eq-quotient--c8d7bf2789e1f23ca982cf22.md) | 225 | `result-track:c8d7bf2789e1f23ca982cf2211c7f2fe4fe9ce5635fe828dd87ff599e4188e63` |
| 28 | `theorem` | [norm_logPower_le](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinKernel.lean/declarations/norm-logpower-le--e014a4a489b270ae71894e4a.md) | 232 | `result-track:e014a4a489b270ae71894e4adfa5702cf156d3f6891a2ccd41baf356d44ef9b4` |
| 29 | `theorem` | [norm_kernel_le_quotient_bound](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinKernel.lean/declarations/norm-kernel-le-quotient-bound--0bb73849adafef588f17339f.md) | 239 | `result-track:0bb73849adafef588f17339fbc7dffb89eb9f3ffd9a3934b14e786b1ebd5b429` |
| 30 | `theorem` | [norm_kernel_le_min](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinKernel.lean/declarations/norm-kernel-le-min--1457ab9ce8c60d9bfd6d9e60.md) | 251 | `result-track:1457ab9ce8c60d9bfd6d9e609ff3789f1da592098642475bf501af388184ac10` |
| 31 | `theorem` | [kernel_zero](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinKernel.lean/declarations/kernel-zero--72c7173b4bc7c86e178ff213.md) | 258 | `result-track:72c7173b4bc7c86e178ff21352dadecec8ee6f6ccc73ec784edd0dfdfab19c32` |
| 32 | `theorem` | [kernel_zero_ne_zero](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinKernel.lean/declarations/kernel-zero-ne-zero--d6a8d230b4aa4aa161104fd9.md) | 271 | `result-track:d6a8d230b4aa4aa161104fd939fa7d0deb917aeaa124268ad6fe1e3937548ac0` |
| 33 | `theorem` | [kernel_same](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinKernel.lean/declarations/kernel-same--649a65b74bc0958f157f2183.md) | 276 | `result-track:649a65b74bc0958f157f2183cf815b95c745e40ae932163d4017dfa7e8b7124d` |
| 34 | `theorem` | [kernel_one](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinKernel.lean/declarations/kernel-one--31c17cbd81046ceb41d6b31e.md) | 278 | `result-track:31c17cbd81046ceb41d6b31e946b0305f2381a9355ec8dcc5d795bf194e069fb` |
| 35 | `theorem` | [densityBound_of_le_one](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinKernel.lean/declarations/densitybound-of-le-one--a9df2682fa4ec5f8ce57bb3f.md) | 282 | `result-track:a9df2682fa4ec5f8ce57bb3f8cd7b46103fc00bc02a0826a3726628254b02fa4` |
| 36 | `theorem` | [finite_enclosure_error](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinKernel.lean/declarations/finite-enclosure-error--4015301b33d47f8903dca124.md) | 291 | `result-track:4015301b33d47f8903dca1249d77c50d2d71c25fb573873bfe4629b049d6d91a` |
| 37 | `theorem` | [finite_enclosure_error_with_tail](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinKernel.lean/declarations/finite-enclosure-error-with-tail--2b269544290460efdce1908e.md) | 313 | `result-track:2b269544290460efdce1908ef4c6e555148e5eb4e726ba096e01624799a6ad6b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
