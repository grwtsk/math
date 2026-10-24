# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ZeroSmoothingLogarithmic.Variant0424cb0a4297544dcc5896b0cb0d5fce00ec837aeb7aa140f597c2c2f1008ac9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e3b7912cf1a2b757212e2a83f824b865fb9868d3",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variant0424cb0a4297544dcc5896b0cb0d5fce00ec837aeb7aa140f597c2c2f1008ac9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variant0424cb0a4297544dcc5896b0cb0d5fce00ec837aeb7aa140f597c2c2f1008ac9.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variant0424cb0a4297544dcc5896b0cb0d5fce00ec837aeb7aa140f597c2c2f1008ac9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e3b7912cf1a2b757212e2a83f824b865fb9868d3`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variant0424cb0a4297544dcc5896b0cb0d5fce00ec837aeb7aa140f597c2c2f1008ac9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variant0424cb0a4297544dcc5896b0cb0d5fce00ec837aeb7aa140f597c2c2f1008ac9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSmoothingTransform` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeFourier` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logarithmicWeight](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variant0424cb0a4297544dcc5896b0cb0d5fce00ec837aeb7aa140f597c2c2f1008ac9.lean/declarations/logarithmicweight--c193b6dd3c5dbb968eeece26.md) | 39 | `declaration-track:c193b6dd3c5dbb968eeece26747305d51694d92a549aed523c85fe8f4990c55d` |
| 2 | `theorem` | [logarithmicWeight_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variant0424cb0a4297544dcc5896b0cb0d5fce00ec837aeb7aa140f597c2c2f1008ac9.lean/declarations/logarithmicweight-nonneg--411708287290b171439e7447.md) | 42 | `result-track:411708287290b171439e74479525b697ea95f31cbbcd44003eaf5a576d699eb9` |
| 3 | `theorem` | [source_fourier_smoothing](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variant0424cb0a4297544dcc5896b0cb0d5fce00ec837aeb7aa140f597c2c2f1008ac9.lean/declarations/source-fourier-smoothing--1f5485e588da8fd3a93fc080.md) | 49 | `result-track:1f5485e588da8fd3a93fc080a1ca34360b033936fc5ac0fe89de5437e0af0169` |
| 4 | `theorem` | [fourier_multiplier_norm_le_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variant0424cb0a4297544dcc5896b0cb0d5fce00ec837aeb7aa140f597c2c2f1008ac9.lean/declarations/fourier-multiplier-norm-le-one--a84bd15e073cf34427b6c766.md) | 56 | `result-track:a84bd15e073cf34427b6c766c166091ffb66df118a2f744bd180f859456c89e8` |
| 5 | `theorem` | [smoothed_fourier_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variant0424cb0a4297544dcc5896b0cb0d5fce00ec837aeb7aa140f597c2c2f1008ac9.lean/declarations/smoothed-fourier-tendsto--800213dff010ff27465d84a9.md) | 60 | `result-track:800213dff010ff27465d84a9c9c58987755a24e8f6fe145701be26ce093c42c8` |
| 6 | `theorem` | [weighted_error_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variant0424cb0a4297544dcc5896b0cb0d5fce00ec837aeb7aa140f597c2c2f1008ac9.lean/declarations/weighted-error-le--e9d51098a5d4835b308072dc.md) | 70 | `result-track:e9d51098a5d4835b308072dcdfdde4e9b88675e4d5078d078534350b1de4cf57` |
| 7 | `theorem` | [actual_weighted_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variant0424cb0a4297544dcc5896b0cb0d5fce00ec837aeb7aa140f597c2c2f1008ac9.lean/declarations/actual-weighted-integrable--cc72aa26d7f872e171e2d62e.md) | 109 | `result-track:cc72aa26d7f872e171e2d62e4d5c310c26b91298d2869f2b27895a3f80fffdb7` |
| 8 | `theorem` | [weighted_error_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variant0424cb0a4297544dcc5896b0cb0d5fce00ec837aeb7aa140f597c2c2f1008ac9.lean/declarations/weighted-error-continuous--b4f70f9ba911ce8833a098ce.md) | 124 | `result-track:b4f70f9ba911ce8833a098cef139fd168fff1a226fc3884a9b077b231ca550db` |
| 9 | `theorem` | [weighted_error_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variant0424cb0a4297544dcc5896b0cb0d5fce00ec837aeb7aa140f597c2c2f1008ac9.lean/declarations/weighted-error-integrable--40dcf946ba67f2e035256581.md) | 138 | `result-track:40dcf946ba67f2e0352565812617c0bd91f748dd2ea47ed742d3f6d3e7f55593` |
| 10 | `theorem` | [weighted_error_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variant0424cb0a4297544dcc5896b0cb0d5fce00ec837aeb7aa140f597c2c2f1008ac9.lean/declarations/weighted-error-tendsto--21fcd7e1757ba3ff7d62cf18.md) | 149 | `result-track:21fcd7e1757ba3ff7d62cf1894059048f9457f0cb151b1d837678c4b577245e7` |
| 11 | `theorem` | [source_logarithmic_convergence](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variant0424cb0a4297544dcc5896b0cb0d5fce00ec837aeb7aa140f597c2c2f1008ac9.lean/declarations/source-logarithmic-convergence--57d7e65585638831430159b2.md) | 166 | `result-track:57d7e65585638831430159b2464ac1927458d5bc9a9cedea5d5a8a612f322ebe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
