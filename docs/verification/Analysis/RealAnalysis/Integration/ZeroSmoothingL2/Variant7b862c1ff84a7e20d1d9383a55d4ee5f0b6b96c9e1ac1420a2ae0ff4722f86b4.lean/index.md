# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ZeroSmoothingL2.Variant7b862c1ff84a7e20d1d9383a55d4ee5f0b6b96c9e1ac1420a2ae0ff4722f86b4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c1caf539c24fca1f3a45380e56d30e82b4f6d38e",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingL2/Variant7b862c1ff84a7e20d1d9383a55d4ee5f0b6b96c9e1ac1420a2ae0ff4722f86b4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2/Variant7b862c1ff84a7e20d1d9383a55d4ee5f0b6b96c9e1ac1420a2ae0ff4722f86b4.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2/Variant7b862c1ff84a7e20d1d9383a55d4ee5f0b6b96c9e1ac1420a2ae0ff4722f86b4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c1caf539c24fca1f3a45380e56d30e82b4f6d38e`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingL2/Variant7b862c1ff84a7e20d1d9383a55d4ee5f0b6b96c9e1ac1420a2ae0ff4722f86b4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ZeroSmoothingL2/Variant7b862c1ff84a7e20d1d9383a55d4ee5f0b6b96c9e1ac1420a2ae0ff4722f86b4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSmoothingL2Core` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.L2Space` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSpace.Indicator` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSeminorm.LpNorm` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [actualTest_memLp_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2/Variant7b862c1ff84a7e20d1d9383a55d4ee5f0b6b96c9e1ac1420a2ae0ff4722f86b4.lean/declarations/actualtest-memlp-two--51cba0e5ed5f4450de6e3316.md) | 34 | `result-track:51cba0e5ed5f4450de6e3316aca2917e3f93548a87f946bb235025a421516ffe` |
| 2 | `theorem` | [actualTest_deriv_memLp_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2/Variant7b862c1ff84a7e20d1d9383a55d4ee5f0b6b96c9e1ac1420a2ae0ff4722f86b4.lean/declarations/actualtest-deriv-memlp-two--4d280178e7a2879907936720.md) | 40 | `result-track:4d280178e7a2879907936720df66eb6659eca87b7627dd90316349de9637e007` |
| 3 | `theorem` | [smoothedTest_memLp_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2/Variant7b862c1ff84a7e20d1d9383a55d4ee5f0b6b96c9e1ac1420a2ae0ff4722f86b4.lean/declarations/smoothedtest-memlp-two--2ebe8597eafe65f00b88fb6c.md) | 46 | `result-track:2ebe8597eafe65f00b88fb6c6b7690f7de969111790f17e0d448b65909e71163` |
| 4 | `theorem` | [smoothedTest_deriv_memLp_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2/Variant7b862c1ff84a7e20d1d9383a55d4ee5f0b6b96c9e1ac1420a2ae0ff4722f86b4.lean/declarations/smoothedtest-deriv-memlp-two--0eaf24510083aa88c6ed4256.md) | 52 | `result-track:0eaf24510083aa88c6ed4256d78c78ea9d30f8f97b3079f0854bfc53ac244634` |
| 5 | `theorem` | [testError_memLp_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2/Variant7b862c1ff84a7e20d1d9383a55d4ee5f0b6b96c9e1ac1420a2ae0ff4722f86b4.lean/declarations/testerror-memlp-two--a26d7b0e9416a391be269881.md) | 58 | `result-track:a26d7b0e9416a391be26988105cc20346dba187fdfe957a2ecc229820a81b7da` |
| 6 | `theorem` | [derivativeError_memLp_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2/Variant7b862c1ff84a7e20d1d9383a55d4ee5f0b6b96c9e1ac1420a2ae0ff4722f86b4.lean/declarations/derivativeerror-memlp-two--f17e1279779c2bc2a3a84425.md) | 63 | `result-track:f17e1279779c2bc2a3a84425499342497aa0074cf3325e2b354f84e78046cf77` |
| 7 | `theorem` | [testError_sq_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2/Variant7b862c1ff84a7e20d1d9383a55d4ee5f0b6b96c9e1ac1420a2ae0ff4722f86b4.lean/declarations/testerror-sq-integrable--87d5598c19576e392ecb1a4f.md) | 68 | `result-track:87d5598c19576e392ecb1a4ff913a61e34858cce07d40f97c981701774e8968b` |
| 8 | `theorem` | [derivativeError_sq_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2/Variant7b862c1ff84a7e20d1d9383a55d4ee5f0b6b96c9e1ac1420a2ae0ff4722f86b4.lean/declarations/derivativeerror-sq-integrable--be7bfa62819b6e726a65757f.md) | 73 | `result-track:be7bfa62819b6e726a65757fee7061aae76db49c37e90884647de02388df27be` |
| 9 | `def` | [h1Error](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2/Variant7b862c1ff84a7e20d1d9383a55d4ee5f0b6b96c9e1ac1420a2ae0ff4722f86b4.lean/declarations/h1error--2ed3ceba6480281c75b1d92b.md) | 79 | `declaration-track:2ed3ceba6480281c75b1d92b96beeab5581ceb6190dfabcff969b1cf5edd38d9` |
| 10 | `theorem` | [lpNorm_two_eq_sqrt_integral_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2/Variant7b862c1ff84a7e20d1d9383a55d4ee5f0b6b96c9e1ac1420a2ae0ff4722f86b4.lean/declarations/lpnorm-two-eq-sqrt-integral-sq--bc3f89f654c2aa0320eb1af5.md) | 84 | `result-track:bc3f89f654c2aa0320eb1af57ac398272625dd73c7d4728f282bf1243fd5b889` |
| 11 | `theorem` | [lpNorm_two_eq_norm_toLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2/Variant7b862c1ff84a7e20d1d9383a55d4ee5f0b6b96c9e1ac1420a2ae0ff4722f86b4.lean/declarations/lpnorm-two-eq-norm-tolp--7e8ce25fd64e3a3700c033bb.md) | 92 | `result-track:7e8ce25fd64e3a3700c033bb3ae71876c1857a736eea96505abda2fa55b2c077` |
| 12 | `theorem` | [tendsto_lpNorm_two_of_tendsto_integral_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2/Variant7b862c1ff84a7e20d1d9383a55d4ee5f0b6b96c9e1ac1420a2ae0ff4722f86b4.lean/declarations/tendsto-lpnorm-two-of-tendsto-integral-sq--e7b701da0b410067860f3f22.md) | 97 | `result-track:e7b701da0b410067860f3f225eed3058ed9d4ad7eb3a08d16d04fcf67cae760c` |
| 13 | `theorem` | [h1Error_eq_l2_norms](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2/Variant7b862c1ff84a7e20d1d9383a55d4ee5f0b6b96c9e1ac1420a2ae0ff4722f86b4.lean/declarations/h1error-eq-l2-norms--a065902406bcb52177571670.md) | 105 | `result-track:a065902406bcb5217757167074f95d7b6e592c665fd7a9d755642bcf4d9aec5c` |
| 14 | `theorem` | [deriv_testError](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2/Variant7b862c1ff84a7e20d1d9383a55d4ee5f0b6b96c9e1ac1420a2ae0ff4722f86b4.lean/declarations/deriv-testerror--e4df2a303d6cf1cfbb15b325.md) | 117 | `result-track:e4df2a303d6cf1cfbb15b3259f7cffe10d64e3b1ed315b229ab4a3310a2773c8` |
| 15 | `abbrev` | [positiveScaleAtZero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2/Variant7b862c1ff84a7e20d1d9383a55d4ee5f0b6b96c9e1ac1420a2ae0ff4722f86b4.lean/declarations/positivescaleatzero--24c88b8413a9f878b729f93c.md) | 125 | `declaration-track:24c88b8413a9f878b729f93c8ea13d2a1a7e9034c608af20b708e3d6f143384e` |
| 16 | `theorem` | [positiveScaleAtZero_neBot](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2/Variant7b862c1ff84a7e20d1d9383a55d4ee5f0b6b96c9e1ac1420a2ae0ff4722f86b4.lean/declarations/positivescaleatzero-nebot--04abdb5943006aed2361f501.md) | 129 | `result-track:04abdb5943006aed2361f5016131beb49d333b49967358d243a28a072652ab5c` |
| 17 | `theorem` | [positiveScale_tendsto_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2/Variant7b862c1ff84a7e20d1d9383a55d4ee5f0b6b96c9e1ac1420a2ae0ff4722f86b4.lean/declarations/positivescale-tendsto-zero--94da602b2816af9aefdd95d1.md) | 133 | `result-track:94da602b2816af9aefdd95d1d9016699fafe3717484c17cecf76ab5be197f438` |
| 18 | `theorem` | [actualTest_common_support](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2/Variant7b862c1ff84a7e20d1d9383a55d4ee5f0b6b96c9e1ac1420a2ae0ff4722f86b4.lean/declarations/actualtest-common-support--e0f0938d075fe6d2db01277b.md) | 138 | `result-track:e0f0938d075fe6d2db01277b07737d1f9ada41d74d7190a11f345e9967497aed` |
| 19 | `theorem` | [testError_integral_sq_tendsto_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2/Variant7b862c1ff84a7e20d1d9383a55d4ee5f0b6b96c9e1ac1420a2ae0ff4722f86b4.lean/declarations/testerror-integral-sq-tendsto-zero--7884b96e18a606aa3f681336.md) | 148 | `result-track:7884b96e18a606aa3f681336855e9005daca25399ce518023bd224a35c56fa3a` |
| 20 | `theorem` | [derivativeError_integral_sq_tendsto_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2/Variant7b862c1ff84a7e20d1d9383a55d4ee5f0b6b96c9e1ac1420a2ae0ff4722f86b4.lean/declarations/derivativeerror-integral-sq-tendsto-zero--8fb88c96f2adb5302ab34ed8.md) | 158 | `result-track:8fb88c96f2adb5302ab34ed8fe25aa497c2e663f796f8bdf8b961735042eec4d` |
| 21 | `theorem` | [testError_l2_tendsto_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2/Variant7b862c1ff84a7e20d1d9383a55d4ee5f0b6b96c9e1ac1420a2ae0ff4722f86b4.lean/declarations/testerror-l2-tendsto-zero--a01fdf76711aa2d3da7ac452.md) | 170 | `result-track:a01fdf76711aa2d3da7ac452711aeb435ad5757274994607a9260e3044524f02` |
| 22 | `theorem` | [derivativeError_l2_tendsto_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2/Variant7b862c1ff84a7e20d1d9383a55d4ee5f0b6b96c9e1ac1420a2ae0ff4722f86b4.lean/declarations/derivativeerror-l2-tendsto-zero--084cf0124a354f72efee5db8.md) | 179 | `result-track:084cf0124a354f72efee5db84a2057acfe4670dd54c1d6870eef368c1d2e0b97` |
| 23 | `theorem` | [h1Error_tendsto_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2/Variant7b862c1ff84a7e20d1d9383a55d4ee5f0b6b96c9e1ac1420a2ae0ff4722f86b4.lean/declarations/h1error-tendsto-zero--8383832c4201f36d1c7bfd57.md) | 189 | `result-track:8383832c4201f36d1c7bfd5747dfc8291d6af1f4a3c8421a8a719cfc177eb1ec` |
| 24 | `theorem` | [source_h1_convergence](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2/Variant7b862c1ff84a7e20d1d9383a55d4ee5f0b6b96c9e1ac1420a2ae0ff4722f86b4.lean/declarations/source-h1-convergence--884798d6b22cb92148735e3a.md) | 200 | `result-track:884798d6b22cb92148735e3a671ff5c5fda0dff8c563c37157b12da413a84abb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
