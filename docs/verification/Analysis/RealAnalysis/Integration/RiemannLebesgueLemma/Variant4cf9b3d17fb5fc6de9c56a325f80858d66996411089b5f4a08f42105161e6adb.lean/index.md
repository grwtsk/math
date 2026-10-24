# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.RiemannLebesgueLemma.Variant4cf9b3d17fb5fc6de9c56a325f80858d66996411089b5f4a08f42105161e6adb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3cbe58cea49e0870ffdd8c94ae206a743ca5d704",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/RiemannLebesgueLemma/Variant4cf9b3d17fb5fc6de9c56a325f80858d66996411089b5f4a08f42105161e6adb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RiemannLebesgueLemma/Variant4cf9b3d17fb5fc6de9c56a325f80858d66996411089b5f4a08f42105161e6adb.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RiemannLebesgueLemma/Variant4cf9b3d17fb5fc6de9c56a325f80858d66996411089b5f4a08f42105161e6adb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3cbe58cea49e0870ffdd8c94ae206a743ca5d704`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/RiemannLebesgueLemma/Variant4cf9b3d17fb5fc6de9c56a325f80858d66996411089b5f4a08f42105161e6adb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/RiemannLebesgueLemma/Variant4cf9b3d17fb5fc6de9c56a325f80858d66996411089b5f4a08f42105161e6adb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Fourier.FourierTransform` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Dual` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.EuclideanDist` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.ContinuousMapDense` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.Integral` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.SetIntegral` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.NormedSpace` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.EMetricSpace.Paracompact` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RiemannLebesgueLemma/Variant4cf9b3d17fb5fc6de9c56a325f80858d66996411089b5f4a08f42105161e6adb.lean/declarations/macro-rules--f04c90a5f608745edc7159a6.md) | 55 | `declaration-track:f04c90a5f608745edc7159a6dcd66dccc0202a94e6f290d3b47f8c76e41fdb0f` |
| 2 | `theorem` | [fourier_integrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RiemannLebesgueLemma/Variant4cf9b3d17fb5fc6de9c56a325f80858d66996411089b5f4a08f42105161e6adb.lean/declarations/fourier-integrand-integrable--64d40235476816403dcad2ff.md) | 73 | `result-track:64d40235476816403dcad2ff1c19a16a4d2d75760ae1bd7b4150153d10acf869` |
| 3 | `theorem` | [fourier_integral_half_period_translate](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RiemannLebesgueLemma/Variant4cf9b3d17fb5fc6de9c56a325f80858d66996411089b5f4a08f42105161e6adb.lean/declarations/fourier-integral-half-period-translate--3d6e64531ad6adff3048a520.md) | 88 | `result-track:3d6e64531ad6adff3048a5200cd41eecf77f103ec591f8ad08f179c1dac21adf` |
| 4 | `theorem` | [fourier_integral_eq_half_sub_half_period_translate](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RiemannLebesgueLemma/Variant4cf9b3d17fb5fc6de9c56a325f80858d66996411089b5f4a08f42105161e6adb.lean/declarations/fourier-integral-eq-half-sub-half-period-translate--f0101c8cea735807e00f40e0.md) | 115 | `result-track:f0101c8cea735807e00f40e0fb0eea4b4b134d195ec699c1241f429ba0af7a2f` |
| 5 | `theorem` | [tendsto_integral_exp_inner_smul_cocompact_of_continuous_compact_support](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RiemannLebesgueLemma/Variant4cf9b3d17fb5fc6de9c56a325f80858d66996411089b5f4a08f42105161e6adb.lean/declarations/tendsto-integral-exp-inner-smul-cocompact-of-continuous-compact-support--d583d678c76fb17fa466ae97.md) | 130 | `result-track:d583d678c76fb17fa466ae977a1b85ee6edb9e74cc1e427e86b6974ca111adf3` |
| 6 | `theorem` | [tendsto_integral_exp_inner_smul_cocompact](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RiemannLebesgueLemma/Variant4cf9b3d17fb5fc6de9c56a325f80858d66996411089b5f4a08f42105161e6adb.lean/declarations/tendsto-integral-exp-inner-smul-cocompact--dc36310e02781a71ee9f1461.md) | 227 | `result-track:dc36310e02781a71ee9f1461c40604132353ff9e9e69ceb9f4ef28d7b1325b0e` |
| 7 | `theorem` | [Real.tendsto_integral_exp_smul_cocompact](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RiemannLebesgueLemma/Variant4cf9b3d17fb5fc6de9c56a325f80858d66996411089b5f4a08f42105161e6adb.lean/declarations/real-tendsto-integral-exp-smul-cocompact--bb04cb0f35b68abed76ee22a.md) | 259 | `result-track:bb04cb0f35b68abed76ee22a4d71e265080a0a4a88d524187a6076c26ba3e753` |
| 8 | `theorem` | [Real.zero_at_infty_fourierIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RiemannLebesgueLemma/Variant4cf9b3d17fb5fc6de9c56a325f80858d66996411089b5f4a08f42105161e6adb.lean/declarations/real-zero-at-infty-fourierintegral--ef420b0399019bee34dd2a0c.md) | 265 | `result-track:ef420b0399019bee34dd2a0c78152fb78c99079c943a86b008bf05b01aa933de` |
| 9 | `theorem` | [tendsto_integral_exp_smul_cocompact_of_inner_product](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RiemannLebesgueLemma/Variant4cf9b3d17fb5fc6de9c56a325f80858d66996411089b5f4a08f42105161e6adb.lean/declarations/tendsto-integral-exp-smul-cocompact-of-inner-product--d2d181bcbfb0ce8996d72edf.md) | 272 | `result-track:d2d181bcbfb0ce8996d72edfceb19feac4cb6af6fae8929d69bb936da0774ba9` |
| 10 | `theorem` | [tendsto_integral_exp_smul_cocompact](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RiemannLebesgueLemma/Variant4cf9b3d17fb5fc6de9c56a325f80858d66996411089b5f4a08f42105161e6adb.lean/declarations/tendsto-integral-exp-smul-cocompact--695c79ad06a693f5454a2782.md) | 301 | `result-track:695c79ad06a693f5454a2782c203cfe14727ad7bc9ed2f088d9d605be032155d` |
| 11 | `theorem` | [Real.zero_at_infty_vector_fourierIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RiemannLebesgueLemma/Variant4cf9b3d17fb5fc6de9c56a325f80858d66996411089b5f4a08f42105161e6adb.lean/declarations/real-zero-at-infty-vector-fourierintegral--9e602e800fdabd2d68ea6409.md) | 358 | `result-track:9e602e800fdabd2d68ea6409148cbc1b115d272b5e6fd4e67a9a855f6a744bda` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
