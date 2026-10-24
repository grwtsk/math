# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SmoothExplicitFormula.Variant079d9a5c334741d7b67dc4086a01d4bd868904991a0f45e981aab8412de4f9e9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "95dc03a1ed9d34723925a02d5679a4655ca0f446",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant079d9a5c334741d7b67dc4086a01d4bd868904991a0f45e981aab8412de4f9e9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant079d9a5c334741d7b67dc4086a01d4bd868904991a0f45e981aab8412de4f9e9.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant079d9a5c334741d7b67dc4086a01d4bd868904991a0f45e981aab8412de4f9e9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `95dc03a1ed9d34723925a02d5679a4655ca0f446`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant079d9a5c334741d7b67dc4086a01d4bd868904991a0f45e981aab8412de4f9e9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant079d9a5c334741d7b67dc4086a01d4bd868904991a0f45e981aab8412de4f9e9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSmoothingLogarithmic` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroShellCount` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.Convolution` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.InfiniteSum` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [polynomial_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant079d9a5c334741d7b67dc4086a01d4bd868904991a0f45e981aab8412de4f9e9.lean/declarations/polynomial-norm-le--4af84a187005a18663790775.md) | 39 | `result-track:4af84a187005a186637907757281a263c328ac65ffec21a70c89a94f84e6c80f` |
| 2 | `def` | [decayConstant](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant079d9a5c334741d7b67dc4086a01d4bd868904991a0f45e981aab8412de4f9e9.lean/declarations/decayconstant--170f93d6d85e1bcf80046af6.md) | 62 | `declaration-track:170f93d6d85e1bcf80046af622b323b64544d93d58bc44cdf9e8bc8299733270` |
| 3 | `theorem` | [transform_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant079d9a5c334741d7b67dc4086a01d4bd868904991a0f45e981aab8412de4f9e9.lean/declarations/transform-norm-le--af201e0c061e6935bb506e9a.md) | 64 | `result-track:af201e0c061e6935bb506e9a89f5b6fbd3e6e526a5a3cf179111cff508400e6d` |
| 4 | `theorem` | [transform_square_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant079d9a5c334741d7b67dc4086a01d4bd868904991a0f45e981aab8412de4f9e9.lean/declarations/transform-square-norm-le--16a9c07a6a190d4133f73b45.md) | 117 | `result-track:16a9c07a6a190d4133f73b45d632b0c4ac82536293756297d183f4543e0496bf` |
| 5 | `theorem` | [eventually_one_le_shifted_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant079d9a5c334741d7b67dc4086a01d4bd868904991a0f45e981aab8412de4f9e9.lean/declarations/eventually-one-le-shifted-norm--cd4eb6cacde09668af0bab4f.md) | 142 | `result-track:cd4eb6cacde09668af0bab4fe60d8d3ec183534e8bf28528466db2d14c7cd863` |
| 6 | `theorem` | [source_transform_square_norms_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant079d9a5c334741d7b67dc4086a01d4bd868904991a0f45e981aab8412de4f9e9.lean/declarations/source-transform-square-norms-summable--6d2bdb836411d38f6e336b23.md) | 150 | `result-track:6d2bdb836411d38f6e336b236f53e7ba9399c0d2e70e4030411ee6434374acde` |
| 7 | `theorem` | [smoothed_square_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant079d9a5c334741d7b67dc4086a01d4bd868904991a0f45e981aab8412de4f9e9.lean/declarations/smoothed-square-norm-le--c7220fa283edeb387652ec33.md) | 160 | `result-track:c7220fa283edeb387652ec330e8b53931b996b9ced8077916d4f34722b2936e8` |
| 8 | `theorem` | [smoothed_squares_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant079d9a5c334741d7b67dc4086a01d4bd868904991a0f45e981aab8412de4f9e9.lean/declarations/smoothed-squares-summable--2eb481c904827150460755f3.md) | 180 | `result-track:2eb481c904827150460755f3ae317b86f67b9db0e81ba10d38515a14d6fd0c73` |
| 9 | `def` | [correlation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant079d9a5c334741d7b67dc4086a01d4bd868904991a0f45e981aab8412de4f9e9.lean/declarations/correlation--2567a8149a8ffee63bd46f79.md) | 190 | `declaration-track:2567a8149a8ffee63bd46f79618142e229cff761ebc3653780b178f812f3a5b1` |
| 10 | `def` | [bilateral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant079d9a5c334741d7b67dc4086a01d4bd868904991a0f45e981aab8412de4f9e9.lean/declarations/bilateral--4741bd5fef886d84ecc72702.md) | 192 | `declaration-track:4741bd5fef886d84ecc727026b3ae845f612decaefa376ba73b43c452dd5e153` |
| 11 | `theorem` | [weighted_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant079d9a5c334741d7b67dc4086a01d4bd868904991a0f45e981aab8412de4f9e9.lean/declarations/weighted-integrable--b050f8d2ea1bbd40ccb49a54.md) | 195 | `result-track:b050f8d2ea1bbd40ccb49a543624d0de4c17711e391caa19c65d4f8fe61270b6` |
| 12 | `theorem` | [correlation_eq_convolution](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant079d9a5c334741d7b67dc4086a01d4bd868904991a0f45e981aab8412de4f9e9.lean/declarations/correlation-eq-convolution--a854573e34e3187eb959f300.md) | 204 | `result-track:a854573e34e3187eb959f300303d106167dfcdcf4f9bf6c9cd39fd652b59543e` |
| 13 | `theorem` | [correlation_even](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant079d9a5c334741d7b67dc4086a01d4bd868904991a0f45e981aab8412de4f9e9.lean/declarations/correlation-even--d03ac5904b0f7d96773bdd08.md) | 211 | `result-track:d03ac5904b0f7d96773bdd08124b1a899129321c909797f09de56f018874f596` |
| 14 | `theorem` | [correlation_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant079d9a5c334741d7b67dc4086a01d4bd868904991a0f45e981aab8412de4f9e9.lean/declarations/correlation-contdiff--f95a8f944fa9cd0400253691.md) | 218 | `result-track:f95a8f944fa9cd040025369133e4347c2ac583333a14356bf0b0912ba1078835` |
| 15 | `theorem` | [correlation_support_subset](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant079d9a5c334741d7b67dc4086a01d4bd868904991a0f45e981aab8412de4f9e9.lean/declarations/correlation-support-subset--bf6ffecfc1b735666a22d403.md) | 224 | `result-track:bf6ffecfc1b735666a22d403428816f335df22af3ec9a40bb5e07d995c4e69a9` |
| 16 | `theorem` | [weighted_correlation_eq_convolution](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant079d9a5c334741d7b67dc4086a01d4bd868904991a0f45e981aab8412de4f9e9.lean/declarations/weighted-correlation-eq-convolution--503d0fe1ebae36f2de286924.md) | 235 | `result-track:503d0fe1ebae36f2de28692457eca444a2bd3b8d45da4e812a10c297b3c987c6` |
| 17 | `theorem` | [weighted_product_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant079d9a5c334741d7b67dc4086a01d4bd868904991a0f45e981aab8412de4f9e9.lean/declarations/weighted-product-integrable--e764a863103ca29f2c92db51.md) | 257 | `result-track:e764a863103ca29f2c92db51f69513280b3d8e746607383cb84a8d2d983eb96f` |
| 18 | `theorem` | [bilateral_correlation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant079d9a5c334741d7b67dc4086a01d4bd868904991a0f45e981aab8412de4f9e9.lean/declarations/bilateral-correlation--f0618024aab0ff3446caf7da.md) | 266 | `result-track:f0618024aab0ff3446caf7dab431c924152854cb36d709cbd8a6e061615a6808` |
| 19 | `def` | [smoothKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant079d9a5c334741d7b67dc4086a01d4bd868904991a0f45e981aab8412de4f9e9.lean/declarations/smoothkernel--8b1595054b0e5009acf8980f.md) | 277 | `declaration-track:8b1595054b0e5009acf8980f1d8be0d17062e599e885d1d4a2c3305afd703317` |
| 20 | `def` | [smoothKernelFT](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant079d9a5c334741d7b67dc4086a01d4bd868904991a0f45e981aab8412de4f9e9.lean/declarations/smoothkernelft--f20d499d72b3d4d1bbf0e48e.md) | 281 | `declaration-track:f20d499d72b3d4d1bbf0e48ebd4939a56feac455e7fa2aa9489cec878d79de32` |
| 21 | `theorem` | [smoothKernelFT_eq_square](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant079d9a5c334741d7b67dc4086a01d4bd868904991a0f45e981aab8412de4f9e9.lean/declarations/smoothkernelft-eq-square--c0f858d83f26c898cdf8c3b5.md) | 286 | `result-track:c0f858d83f26c898cdf8c3b53c2d081d9aa459c00f5e18329cdcd67b5dbbb911` |
| 22 | `theorem` | [smoothKernelFT_shifted](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant079d9a5c334741d7b67dc4086a01d4bd868904991a0f45e981aab8412de4f9e9.lean/declarations/smoothkernelft-shifted--e76a63fa05bcc71e6961f9a3.md) | 299 | `result-track:e76a63fa05bcc71e6961f9a361ddaa488d17f4cd2069e16f12ed9221d994b13e` |
| 23 | `theorem` | [smoothed_pole_bilateral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant079d9a5c334741d7b67dc4086a01d4bd868904991a0f45e981aab8412de4f9e9.lean/declarations/smoothed-pole-bilateral--a4fc1da322cf98001e48e0e6.md) | 308 | `result-track:a4fc1da322cf98001e48e0e6db34e9ecea484c3c08d50e974495889a94bcc497` |
| 24 | `def` | [SmoothExplicitFormulaObligation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant079d9a5c334741d7b67dc4086a01d4bd868904991a0f45e981aab8412de4f9e9.lean/declarations/smoothexplicitformulaobligation--2d4733e38218bfb249935ac4.md) | 324 | `declaration-track:2d4733e38218bfb249935ac43613aef97257e2ce1e401ce5d870bbce0af117f7` |
| 25 | `theorem` | [smooth_kernel_admission](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant079d9a5c334741d7b67dc4086a01d4bd868904991a0f45e981aab8412de4f9e9.lean/declarations/smooth-kernel-admission--183445546f64d881dd95fcca.md) | 334 | `result-track:183445546f64d881dd95fccab89cae34c7717928c9482aa5db7cb7552844adc6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
