# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Sinc.Variant1c67f1b16758d97d0106e58f2d1b7b2270009d30393788a4e13240490d165f12

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c155e15f1b59fe5465099559191856416a60cfd5",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Sinc/Variant1c67f1b16758d97d0106e58f2d1b7b2270009d30393788a4e13240490d165f12.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sinc/Variant1c67f1b16758d97d0106e58f2d1b7b2270009d30393788a4e13240490d165f12.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sinc/Variant1c67f1b16758d97d0106e58f2d1b7b2270009d30393788a4e13240490d165f12.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c155e15f1b59fe5465099559191856416a60cfd5`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Sinc/Variant1c67f1b16758d97d0106e58f2d1b7b2270009d30393788a4e13240490d165f12.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Sinc/Variant1c67f1b16758d97d0106e58f2d1b7b2270009d30393788a4e13240490d165f12.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Sinc` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Slope` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.MeanValue` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ParametricIntegral` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Order` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [abs_sin_sub_self_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sinc/Variant1c67f1b16758d97d0106e58f2d1b7b2270009d30393788a4e13240490d165f12.lean/declarations/abs-sin-sub-self-le--d752b172fafac07b38ec246e.md) | 52 | `result-track:d752b172fafac07b38ec246e5b006671572d3b34f2cef4ee7cb10272e6cdaaa2` |
| 2 | `theorem` | [hasDerivAt_sinc_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sinc/Variant1c67f1b16758d97d0106e58f2d1b7b2270009d30393788a4e13240490d165f12.lean/declarations/hasderivat-sinc-zero--632dcda3a4ac46ae4cfafbc8.md) | 89 | `result-track:632dcda3a4ac46ae4cfafbc8e917a6e61d472af499b11679869f5f5058c8913c` |
| 3 | `theorem` | [differentiableAt_sinc_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sinc/Variant1c67f1b16758d97d0106e58f2d1b7b2270009d30393788a4e13240490d165f12.lean/declarations/differentiableat-sinc-zero--3bdd367c4aab2a813a7a03a1.md) | 125 | `result-track:3bdd367c4aab2a813a7a03a1b52e1ebd2a6a02c25fcd89814cee4164a805819a` |
| 4 | `theorem` | [differentiableAt_sinc](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sinc/Variant1c67f1b16758d97d0106e58f2d1b7b2270009d30393788a4e13240490d165f12.lean/declarations/differentiableat-sinc--5178694567e05cfb9f52d95f.md) | 129 | `result-track:5178694567e05cfb9f52d95f204f8f7b830141cccb15ce49519ef86c017ef856` |
| 5 | `theorem` | [differentiable_sinc](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sinc/Variant1c67f1b16758d97d0106e58f2d1b7b2270009d30393788a4e13240490d165f12.lean/declarations/differentiable-sinc--514db97f57ccb212099e4675.md) | 136 | `result-track:514db97f57ccb212099e467555538086b68aef42fa3334fc4d4dbb7bc762d236` |
| 6 | `theorem` | [sinc_eq_integral_cos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sinc/Variant1c67f1b16758d97d0106e58f2d1b7b2270009d30393788a4e13240490d165f12.lean/declarations/sinc-eq-integral-cos--23264bea123d0291b865e45f.md) | 141 | `result-track:23264bea123d0291b865e45f0d16f133f938fce937273d1fe136d90642c23656` |
| 7 | `theorem` | [hasDerivAt_sinc_of_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sinc/Variant1c67f1b16758d97d0106e58f2d1b7b2270009d30393788a4e13240490d165f12.lean/declarations/hasderivat-sinc-of-ne-zero--2678adb5fbfe5b181b4b8fe7.md) | 154 | `result-track:2678adb5fbfe5b181b4b8fe7b015f8a9a78bbe4bd5218a6071178e12bff0626e` |
| 8 | `theorem` | [deriv_sinc](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sinc/Variant1c67f1b16758d97d0106e58f2d1b7b2270009d30393788a4e13240490d165f12.lean/declarations/deriv-sinc--6b594b2d5014b68da17a9da0.md) | 170 | `result-track:6b594b2d5014b68da17a9da05b1a0d5be99f1f89e2b8b093ccb6857908f8df95` |
| 9 | `theorem` | [deriv_sinc_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sinc/Variant1c67f1b16758d97d0106e58f2d1b7b2270009d30393788a4e13240490d165f12.lean/declarations/deriv-sinc-zero--c3c75ebb946c441466e2d2bf.md) | 176 | `result-track:c3c75ebb946c441466e2d2bf346facad82984b6b9645e95f21a0b366d669911b` |
| 10 | `theorem` | [abs_x_mul_cos_sub_sin_le_sq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sinc/Variant1c67f1b16758d97d0106e58f2d1b7b2270009d30393788a4e13240490d165f12.lean/declarations/abs-x-mul-cos-sub-sin-le-sq--c63cd83c4d05884fa4a58dd8.md) | 193 | `result-track:c63cd83c4d05884fa4a58dd828b66576efbe1826b8f92e00b44dbb3e676ecf6d` |
| 11 | `theorem` | [abs_deriv_sinc_le_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sinc/Variant1c67f1b16758d97d0106e58f2d1b7b2270009d30393788a4e13240490d165f12.lean/declarations/abs-deriv-sinc-le-one--d147b39065ae39883355f0d8.md) | 274 | `result-track:d147b39065ae39883355f0d89fee9d48adecceee0249307cab3d9972b648e5fd` |
| 12 | `theorem` | [deriv_sinc_mem_Icc](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sinc/Variant1c67f1b16758d97d0106e58f2d1b7b2270009d30393788a4e13240490d165f12.lean/declarations/deriv-sinc-mem-icc--7810c9eb9bd89e4872f83bb9.md) | 285 | `result-track:7810c9eb9bd89e4872f83bb94fe3de39064e5660d31ab605ca4c8f798a00aa75` |
| 13 | `theorem` | [sinc_eq_integral](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sinc/Variant1c67f1b16758d97d0106e58f2d1b7b2270009d30393788a4e13240490d165f12.lean/declarations/sinc-eq-integral--caa6c5b06cfab7210cb26aeb.md) | 307 | `result-track:caa6c5b06cfab7210cb26aeb7b4c7bd007ffae97135bb7cee41f1162c8b68aac` |
| 14 | `theorem` | [deriv_sinc_eq_dslope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sinc/Variant1c67f1b16758d97d0106e58f2d1b7b2270009d30393788a4e13240490d165f12.lean/declarations/deriv-sinc-eq-dslope--f3d46733ce31b602ed71c071.md) | 341 | `result-track:f3d46733ce31b602ed71c071c6d00da2d86d924e2d791d8345ca04415a08c79a` |
| 15 | `theorem` | [contDiffAt_sinc_of_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sinc/Variant1c67f1b16758d97d0106e58f2d1b7b2270009d30393788a4e13240490d165f12.lean/declarations/contdiffat-sinc-of-ne-zero--74847b91c37ebbceea7f1e6d.md) | 356 | `result-track:74847b91c37ebbceea7f1e6dd06d8695b0640c2531ac56170cd6c51a6db70541` |
| 16 | `theorem` | [analyticAt_sinc_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sinc/Variant1c67f1b16758d97d0106e58f2d1b7b2270009d30393788a4e13240490d165f12.lean/declarations/analyticat-sinc-zero--e2c8c79c34962a94a6b2806e.md) | 368 | `result-track:e2c8c79c34962a94a6b2806e84edeab38b55dd2146814c415713704f32edbe10` |
| 17 | `theorem` | [analyticAt_sinc](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sinc/Variant1c67f1b16758d97d0106e58f2d1b7b2270009d30393788a4e13240490d165f12.lean/declarations/analyticat-sinc--cf19bab8ce542ab0200a3674.md) | 411 | `result-track:cf19bab8ce542ab0200a3674cecc96b0c168185646980dc307a06a1d616c23f6` |
| 18 | `theorem` | [contDiff_sinc](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sinc/Variant1c67f1b16758d97d0106e58f2d1b7b2270009d30393788a4e13240490d165f12.lean/declarations/contdiff-sinc--d3e96d4e440c7d9077970f4b.md) | 420 | `result-track:d3e96d4e440c7d9077970f4baeeed6649199874644e41f502eda7b9bd5cbc930` |
| 19 | `theorem` | [analyticOnNhd_sinc](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sinc/Variant1c67f1b16758d97d0106e58f2d1b7b2270009d30393788a4e13240490d165f12.lean/declarations/analyticonnhd-sinc--e298657d583c104a2b7c686c.md) | 424 | `result-track:e298657d583c104a2b7c686ca6be8014b10ba0e09d9555d09f1c1d4de7608ab8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
