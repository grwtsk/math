# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceActualRieszInitialLaplaceNative03.Varianta3ed78bfbce681e5d4d07b1d6fe03cfe7104b17ff901337033b8615bb37359c6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7463e3ea13c6f1eb257d023d7e7801617da37c78",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative03/Varianta3ed78bfbce681e5d4d07b1d6fe03cfe7104b17ff901337033b8615bb37359c6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative03/Varianta3ed78bfbce681e5d4d07b1d6fe03cfe7104b17ff901337033b8615bb37359c6.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative03/Varianta3ed78bfbce681e5d4d07b1d6fe03cfe7104b17ff901337033b8615bb37359c6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7463e3ea13c6f1eb257d023d7e7801617da37c78`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative03/Varianta3ed78bfbce681e5d4d07b1d6fe03cfe7104b17ff901337033b8615bb37359c6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative03/Varianta3ed78bfbce681e5d4d07b1d6fe03cfe7104b17ff901337033b8615bb37359c6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualRieszCenteredReconstruction` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Dirichlet` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [realRampAntiderivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative03/Varianta3ed78bfbce681e5d4d07b1d6fe03cfe7104b17ff901337033b8615bb37359c6.lean/declarations/realrampantiderivative--747e3a9c4f9f71554764fda1.md) | 20 | `declaration-track:747e3a9c4f9f71554764fda1e46d748761f80bcea956db03dba069ddc98aaead` |
| 2 | `theorem` | [realRampAntiderivative_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative03/Varianta3ed78bfbce681e5d4d07b1d6fe03cfe7104b17ff901337033b8615bb37359c6.lean/declarations/realrampantiderivative-hasderivat--9b84fb9ea72a44b870daded2.md) | 23 | `result-track:9b84fb9ea72a44b870daded2046b0d403a1b47682c07d0355df9d50bd3608d8b` |
| 3 | `theorem` | [realRampAntiderivative_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative03/Varianta3ed78bfbce681e5d4d07b1d6fe03cfe7104b17ff901337033b8615bb37359c6.lean/declarations/realrampantiderivative-tendsto--ed4cb0189fb0af6c54b1bf30.md) | 33 | `result-track:ed4cb0189fb0af6c54b1bf300071047d31bcbe62d7a5bf475a788fa2c0f62a86` |
| 4 | `theorem` | [realRamp_tail_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative03/Varianta3ed78bfbce681e5d4d07b1d6fe03cfe7104b17ff901337033b8615bb37359c6.lean/declarations/realramp-tail-integrable--7b3753d5276780111fc6dc2d.md) | 47 | `result-track:7b3753d5276780111fc6dc2daac1f8c7bb276df15f00f43209dd430a67d8d829` |
| 5 | `theorem` | [realRamp_tail_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative03/Varianta3ed78bfbce681e5d4d07b1d6fe03cfe7104b17ff901337033b8615bb37359c6.lean/declarations/realramp-tail-integral--b87d3fb414aa74b06c4e1a97.md) | 55 | `result-track:b87d3fb414aa74b06c4e1a978241638dd5aa4ef43a168306a11fae5ffc6001ea` |
| 6 | `theorem` | [zeroOn_lower_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative03/Varianta3ed78bfbce681e5d4d07b1d6fe03cfe7104b17ff901337033b8615bb37359c6.lean/declarations/zeroon-lower-integrable--a43a32b501d3aa66de6f9bd0.md) | 62 | `result-track:a43a32b501d3aa66de6f9bd0cd31cada5c5c0f0b8eb698d8142bc6883275dbd7` |
| 7 | `theorem` | [realRamp_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative03/Varianta3ed78bfbce681e5d4d07b1d6fe03cfe7104b17ff901337033b8615bb37359c6.lean/declarations/realramp-integrable--f3c5cde92481d45bb6ad28d7.md) | 68 | `result-track:f3c5cde92481d45bb6ad28d75b9c9bf699eeaecd1e0f21d6acc7d0014c4dfb68` |
| 8 | `theorem` | [realRamp_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative03/Varianta3ed78bfbce681e5d4d07b1d6fe03cfe7104b17ff901337033b8615bb37359c6.lean/declarations/realramp-integral--77f705f14619b0a994fe0c0a.md) | 78 | `result-track:77f705f14619b0a994fe0c0a5f33c5a73dfa3fd0cf47296cee5778dcc589706a` |
| 9 | `theorem` | [complexRamp_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative03/Varianta3ed78bfbce681e5d4d07b1d6fe03cfe7104b17ff901337033b8615bb37359c6.lean/declarations/complexramp-norm--9c11554168cd16d2368f13b5.md) | 96 | `result-track:9c11554168cd16d2368f13b5f8d46f8e9fb57a6ac1163975108233ccd6ee283a` |
| 10 | `theorem` | [actualSingleRieszRamp_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative03/Varianta3ed78bfbce681e5d4d07b1d6fe03cfe7104b17ff901337033b8615bb37359c6.lean/declarations/actualsinglerieszramp-integrable--df1024d1179b7f3a5b8b06eb.md) | 105 | `result-track:df1024d1179b7f3a5b8b06eb59e108bcd52b326efa3dab1d6ea8bb388ba8f42b` |
| 11 | `theorem` | [actualSingleRieszRamp_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative03/Varianta3ed78bfbce681e5d4d07b1d6fe03cfe7104b17ff901337033b8615bb37359c6.lean/declarations/actualsinglerieszramp-integral-norm--f96e1d8c4d3b0a0721c7d209.md) | 115 | `result-track:f96e1d8c4d3b0a0721c7d209ab0e1d30ea86cdcdf6418272ffaa8b0e8341dc78` |
| 12 | `def` | [complexRampAntiderivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative03/Varianta3ed78bfbce681e5d4d07b1d6fe03cfe7104b17ff901337033b8615bb37359c6.lean/declarations/complexrampantiderivative--e93613d4c616fa8593e69b58.md) | 121 | `declaration-track:e93613d4c616fa8593e69b58ea67a7518e6d7a53201e3217932738520d67fa97` |
| 13 | `theorem` | [complexRampAntiderivative_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative03/Varianta3ed78bfbce681e5d4d07b1d6fe03cfe7104b17ff901337033b8615bb37359c6.lean/declarations/complexrampantiderivative-hasderivat--49efe43534a91d1977c8824c.md) | 124 | `result-track:49efe43534a91d1977c8824cc7123ad03188396e58862b6a4fe7311b59e5d0d2` |
| 14 | `theorem` | [complex_exp_monomial_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative03/Varianta3ed78bfbce681e5d4d07b1d6fe03cfe7104b17ff901337033b8615bb37359c6.lean/declarations/complex-exp-monomial-zero--4b3737737105fa76edcafbb0.md) | 135 | `result-track:4b3737737105fa76edcafbb0876983a4a18055bbd7cc0b3e34026874087d8749` |
| 15 | `theorem` | [complexRampAntiderivative_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative03/Varianta3ed78bfbce681e5d4d07b1d6fe03cfe7104b17ff901337033b8615bb37359c6.lean/declarations/complexrampantiderivative-tendsto--5ff0dbd60ec5023bbd582ad5.md) | 149 | `result-track:5ff0dbd60ec5023bbd582ad5b83a651788f3c6fc896d58074b00cb3a088f05da` |
| 16 | `theorem` | [actualSingleRieszRamp_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative03/Varianta3ed78bfbce681e5d4d07b1d6fe03cfe7104b17ff901337033b8615bb37359c6.lean/declarations/actualsinglerieszramp-integral--f59c603a56150a85e9493c95.md) | 163 | `result-track:f59c603a56150a85e9493c959d72c4b7495be5af099613fe4a31d678183771cd` |
| 17 | `def` | [actualRieszLaplaceAtom](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative03/Varianta3ed78bfbce681e5d4d07b1d6fe03cfe7104b17ff901337033b8615bb37359c6.lean/declarations/actualrieszlaplaceatom--933917b24ba2b06f3073f8a2.md) | 196 | `declaration-track:933917b24ba2b06f3073f8a2c16fe57c14ae2e56cf6b4c41cde234dce6893d62` |
| 18 | `def` | [actualMangoldtRieszLaplace](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative03/Varianta3ed78bfbce681e5d4d07b1d6fe03cfe7104b17ff901337033b8615bb37359c6.lean/declarations/actualmangoldtrieszlaplace--d660263bac00c2a077850101.md) | 201 | `declaration-track:d660263bac00c2a0778501016739a4127fafb1362213ae532eb30927657191aa` |
| 19 | `theorem` | [atom_factor](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative03/Varianta3ed78bfbce681e5d4d07b1d6fe03cfe7104b17ff901337033b8615bb37359c6.lean/declarations/atom-factor--a568072a5da34ec256ea98c2.md) | 205 | `result-track:a568072a5da34ec256ea98c2e33463682965c0eb478a2b9e44431064c57396e3` |
| 20 | `theorem` | [actualRieszLaplaceAtom_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative03/Varianta3ed78bfbce681e5d4d07b1d6fe03cfe7104b17ff901337033b8615bb37359c6.lean/declarations/actualrieszlaplaceatom-integrable--f841f8101c8e77962de3765f.md) | 214 | `result-track:f841f8101c8e77962de3765f1ca921dc924f5524bca3048f99e9749e495a0836` |
| 21 | `theorem` | [actualRieszLaplaceAtom_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative03/Varianta3ed78bfbce681e5d4d07b1d6fe03cfe7104b17ff901337033b8615bb37359c6.lean/declarations/actualrieszlaplaceatom-integral-norm--49a273370ad89074dc3a3953.md) | 224 | `result-track:49a273370ad89074dc3a3953c42c5ce9093fad55a33338ead3e9d5687768720a` |
| 22 | `theorem` | [actualRieszLaplaceAtoms_summable_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative03/Varianta3ed78bfbce681e5d4d07b1d6fe03cfe7104b17ff901337033b8615bb37359c6.lean/declarations/actualrieszlaplaceatoms-summable-integral-norm--04b49c29e664489fd8f64c39.md) | 254 | `result-track:04b49c29e664489fd8f64c39f90502de66f88c622e9b34e11c078d0d6b3631de` |
| 23 | `theorem` | [actualRieszLaplaceAtoms_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative03/Varianta3ed78bfbce681e5d4d07b1d6fe03cfe7104b17ff901337033b8615bb37359c6.lean/declarations/actualrieszlaplaceatoms-tsum--fa52b0eb3c43f66ef07fc589.md) | 264 | `result-track:fa52b0eb3c43f66ef07fc5895553d343623975b3b0b81bbb1ab4808d4c966b89` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
