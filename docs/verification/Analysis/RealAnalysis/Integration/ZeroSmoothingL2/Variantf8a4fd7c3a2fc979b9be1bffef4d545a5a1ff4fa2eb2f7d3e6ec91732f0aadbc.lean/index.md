# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ZeroSmoothingL2.Variantf8a4fd7c3a2fc979b9be1bffef4d545a5a1ff4fa2eb2f7d3e6ec91732f0aadbc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4ef4e6471195c75022c04ba4b4e99b93a2075717",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingL2/Variantf8a4fd7c3a2fc979b9be1bffef4d545a5a1ff4fa2eb2f7d3e6ec91732f0aadbc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2/Variantf8a4fd7c3a2fc979b9be1bffef4d545a5a1ff4fa2eb2f7d3e6ec91732f0aadbc.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2/Variantf8a4fd7c3a2fc979b9be1bffef4d545a5a1ff4fa2eb2f7d3e6ec91732f0aadbc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4ef4e6471195c75022c04ba4b4e99b93a2075717`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingL2/Variantf8a4fd7c3a2fc979b9be1bffef4d545a5a1ff4fa2eb2f7d3e6ec91732f0aadbc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ZeroSmoothingL2/Variantf8a4fd7c3a2fc979b9be1bffef4d545a5a1ff4fa2eb2f7d3e6ec91732f0aadbc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSmoothingL2Core` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.L2Space` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSpace.Indicator` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSeminorm.LpNorm` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [actualTest_memLp_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2/Variantf8a4fd7c3a2fc979b9be1bffef4d545a5a1ff4fa2eb2f7d3e6ec91732f0aadbc.lean/declarations/actualtest-memlp-two--1fd90db2e9fc7dc1374d46c3.md) | 26 | `result-track:1fd90db2e9fc7dc1374d46c36334a4d6f17d74da6dcfe574adc2141d0288fdd0` |
| 2 | `theorem` | [actualTest_deriv_memLp_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2/Variantf8a4fd7c3a2fc979b9be1bffef4d545a5a1ff4fa2eb2f7d3e6ec91732f0aadbc.lean/declarations/actualtest-deriv-memlp-two--0fe90e83d4e3b224fc23d88e.md) | 32 | `result-track:0fe90e83d4e3b224fc23d88e84deabb09445ea98aa933599a8b4d4cb64987494` |
| 3 | `theorem` | [smoothedTest_memLp_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2/Variantf8a4fd7c3a2fc979b9be1bffef4d545a5a1ff4fa2eb2f7d3e6ec91732f0aadbc.lean/declarations/smoothedtest-memlp-two--6351631e8ffed0f178110732.md) | 38 | `result-track:6351631e8ffed0f1781107328c8d8dc65a8bb64d1c28bedffb91cb07b545f487` |
| 4 | `theorem` | [smoothedTest_deriv_memLp_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2/Variantf8a4fd7c3a2fc979b9be1bffef4d545a5a1ff4fa2eb2f7d3e6ec91732f0aadbc.lean/declarations/smoothedtest-deriv-memlp-two--7a093a44b807103bc2c49168.md) | 44 | `result-track:7a093a44b807103bc2c49168e5ef38c014fc2d7db8c3c0b46b8fc773d1f79a26` |
| 5 | `theorem` | [testError_memLp_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2/Variantf8a4fd7c3a2fc979b9be1bffef4d545a5a1ff4fa2eb2f7d3e6ec91732f0aadbc.lean/declarations/testerror-memlp-two--3f70560733272223f861dad0.md) | 50 | `result-track:3f70560733272223f861dad07e9c698b269e6e991719d6737b9639d833d85b33` |
| 6 | `theorem` | [derivativeError_memLp_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2/Variantf8a4fd7c3a2fc979b9be1bffef4d545a5a1ff4fa2eb2f7d3e6ec91732f0aadbc.lean/declarations/derivativeerror-memlp-two--ba57cd8540ee3955f7c82dda.md) | 55 | `result-track:ba57cd8540ee3955f7c82dda4f2bc5d2ce7f11a7c80ce152d85982220f43fc90` |
| 7 | `theorem` | [testError_sq_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2/Variantf8a4fd7c3a2fc979b9be1bffef4d545a5a1ff4fa2eb2f7d3e6ec91732f0aadbc.lean/declarations/testerror-sq-integrable--c72d0da5a90680e5eaa23651.md) | 60 | `result-track:c72d0da5a90680e5eaa23651cef92fa692302e245d34653e01f9ea40a873b881` |
| 8 | `theorem` | [derivativeError_sq_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2/Variantf8a4fd7c3a2fc979b9be1bffef4d545a5a1ff4fa2eb2f7d3e6ec91732f0aadbc.lean/declarations/derivativeerror-sq-integrable--9c9decce7a10167d8a8e1f49.md) | 65 | `result-track:9c9decce7a10167d8a8e1f49625e6ee3251241814ab3b6e4073de3b06dbd4034` |
| 9 | `def` | [h1Error](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2/Variantf8a4fd7c3a2fc979b9be1bffef4d545a5a1ff4fa2eb2f7d3e6ec91732f0aadbc.lean/declarations/h1error--d133153940036c30b4f43f9c.md) | 71 | `declaration-track:d133153940036c30b4f43f9cce75f2c86bde9b1eec4fbde0b8d29c5a6371409f` |
| 10 | `theorem` | [lpNorm_two_eq_sqrt_integral_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2/Variantf8a4fd7c3a2fc979b9be1bffef4d545a5a1ff4fa2eb2f7d3e6ec91732f0aadbc.lean/declarations/lpnorm-two-eq-sqrt-integral-sq--0fc916cd2329eae34f69225e.md) | 76 | `result-track:0fc916cd2329eae34f69225e3395da53d95941cdcc7d3c7ef4ee47afe4554693` |
| 11 | `theorem` | [lpNorm_two_eq_norm_toLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2/Variantf8a4fd7c3a2fc979b9be1bffef4d545a5a1ff4fa2eb2f7d3e6ec91732f0aadbc.lean/declarations/lpnorm-two-eq-norm-tolp--6896f6667c0aaf3272c4bc27.md) | 84 | `result-track:6896f6667c0aaf3272c4bc274eafdb22d80baae7a41b996585e6dc705c6971ee` |
| 12 | `theorem` | [tendsto_lpNorm_two_of_tendsto_integral_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2/Variantf8a4fd7c3a2fc979b9be1bffef4d545a5a1ff4fa2eb2f7d3e6ec91732f0aadbc.lean/declarations/tendsto-lpnorm-two-of-tendsto-integral-sq--cda8755c5d57be8795a73005.md) | 89 | `result-track:cda8755c5d57be8795a730054403db0fcce0f0d550af4faf4c7bdda896b6fb11` |
| 13 | `theorem` | [h1Error_eq_l2_norms](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2/Variantf8a4fd7c3a2fc979b9be1bffef4d545a5a1ff4fa2eb2f7d3e6ec91732f0aadbc.lean/declarations/h1error-eq-l2-norms--7ec39eba3a5d2757494ee63f.md) | 97 | `result-track:7ec39eba3a5d2757494ee63f7e1bd680c5bd369339abf7fcb0b0d19499908d41` |
| 14 | `theorem` | [deriv_testError](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2/Variantf8a4fd7c3a2fc979b9be1bffef4d545a5a1ff4fa2eb2f7d3e6ec91732f0aadbc.lean/declarations/deriv-testerror--45ea1a49abc220ebc4d9d5ae.md) | 109 | `result-track:45ea1a49abc220ebc4d9d5aeb88ddc06ef68d6411a9915e8422728df71fa0aa0` |
| 15 | `abbrev` | [positiveScaleAtZero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2/Variantf8a4fd7c3a2fc979b9be1bffef4d545a5a1ff4fa2eb2f7d3e6ec91732f0aadbc.lean/declarations/positivescaleatzero--3a6a09e03a04f55931bfb54d.md) | 117 | `declaration-track:3a6a09e03a04f55931bfb54dc90af3454517c03a271d65406596b87c490fd019` |
| 16 | `theorem` | [positiveScaleAtZero_neBot](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2/Variantf8a4fd7c3a2fc979b9be1bffef4d545a5a1ff4fa2eb2f7d3e6ec91732f0aadbc.lean/declarations/positivescaleatzero-nebot--4db70e556de5a857e3e265ba.md) | 121 | `result-track:4db70e556de5a857e3e265ba021a494472f1bb098ddfb547b3ad3106bef1c605` |
| 17 | `theorem` | [positiveScale_tendsto_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2/Variantf8a4fd7c3a2fc979b9be1bffef4d545a5a1ff4fa2eb2f7d3e6ec91732f0aadbc.lean/declarations/positivescale-tendsto-zero--7fb75e447bd3d42d05e313b4.md) | 125 | `result-track:7fb75e447bd3d42d05e313b48bd7b891b52aaf8fcdec65c889ff44e5f94249ea` |
| 18 | `theorem` | [actualTest_common_support](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2/Variantf8a4fd7c3a2fc979b9be1bffef4d545a5a1ff4fa2eb2f7d3e6ec91732f0aadbc.lean/declarations/actualtest-common-support--a85c8b6a8351016320ce80cf.md) | 130 | `result-track:a85c8b6a8351016320ce80cf2284008dae935970b5e280ee03d80181e273a4c0` |
| 19 | `theorem` | [testError_integral_sq_tendsto_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2/Variantf8a4fd7c3a2fc979b9be1bffef4d545a5a1ff4fa2eb2f7d3e6ec91732f0aadbc.lean/declarations/testerror-integral-sq-tendsto-zero--8b95537510c467a3f5b6bfcf.md) | 140 | `result-track:8b95537510c467a3f5b6bfcf7e187305febfdc2adba19af63308ef8b8a0b79a5` |
| 20 | `theorem` | [derivativeError_integral_sq_tendsto_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2/Variantf8a4fd7c3a2fc979b9be1bffef4d545a5a1ff4fa2eb2f7d3e6ec91732f0aadbc.lean/declarations/derivativeerror-integral-sq-tendsto-zero--771ef64998c44369ec9b175f.md) | 150 | `result-track:771ef64998c44369ec9b175f467f7f6b85de575ba870e86d5e0e3da6cebc5e97` |
| 21 | `theorem` | [testError_l2_tendsto_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2/Variantf8a4fd7c3a2fc979b9be1bffef4d545a5a1ff4fa2eb2f7d3e6ec91732f0aadbc.lean/declarations/testerror-l2-tendsto-zero--670bed7ce1eac576f46bc597.md) | 162 | `result-track:670bed7ce1eac576f46bc597aa3a1509506437cac5a3055951c19aa03363799a` |
| 22 | `theorem` | [derivativeError_l2_tendsto_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2/Variantf8a4fd7c3a2fc979b9be1bffef4d545a5a1ff4fa2eb2f7d3e6ec91732f0aadbc.lean/declarations/derivativeerror-l2-tendsto-zero--0d012f41f4ac9dec5322191e.md) | 171 | `result-track:0d012f41f4ac9dec5322191e397e6e95a248b6512050ac4a807b7cd41d63abeb` |
| 23 | `theorem` | [h1Error_tendsto_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2/Variantf8a4fd7c3a2fc979b9be1bffef4d545a5a1ff4fa2eb2f7d3e6ec91732f0aadbc.lean/declarations/h1error-tendsto-zero--d821b8073de32f973c24e4d6.md) | 181 | `result-track:d821b8073de32f973c24e4d68cd32285c827b59285f0df009141d76ee6288a69` |
| 24 | `theorem` | [source_h1_convergence](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2/Variantf8a4fd7c3a2fc979b9be1bffef4d545a5a1ff4fa2eb2f7d3e6ec91732f0aadbc.lean/declarations/source-h1-convergence--b48ce568f3faf4e415237e24.md) | 192 | `result-track:b48ce568f3faf4e415237e24747a06f643d0048542baab70cf2b2a43188072a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
