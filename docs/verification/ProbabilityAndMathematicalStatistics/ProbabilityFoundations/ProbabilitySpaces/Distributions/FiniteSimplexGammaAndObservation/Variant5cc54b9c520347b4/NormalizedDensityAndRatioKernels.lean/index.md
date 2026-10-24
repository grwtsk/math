# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Distributions.FiniteSimplexGammaAndObservation.Variant5cc54b9c520347b4.NormalizedDensityAndRatioKernels

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7267b04d061cdec0da93159339844d09405f39d4",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/NormalizedDensityAndRatioKernels.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/NormalizedDensityAndRatioKernels.lean/index.md) · [Full source](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/NormalizedDensityAndRatioKernels.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7267b04d061cdec0da93159339844d09405f39d4`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/NormalizedDensityAndRatioKernels.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/NormalizedDensityAndRatioKernels.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Probability.Simplex` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Beta` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.Pi` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Basic` — import line 23; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Decomposition.RadonNikodym` — import line 24; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Distributions.Gamma` — import line 25; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 26; external provider; requires a separately pinned dependency.
- [`GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.Moments.FiniteSimplexGammaAndObservation.Variant5cc54b9c520347b4.PositiveShapeScaleParameterAlgebra`](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/PositiveShapeScaleParameterAlgebra.lean/index.md) — import line 28; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [prod_rpow_eq_rpow_sum](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/NormalizedDensityAndRatioKernels.lean/declarations/prod-rpow-eq-rpow-sum--c1a7f3cb1679fda0f7990d5b.md) | 58 | `result-track:c1a7f3cb1679fda0f7990d5b3668c36966e9ceb7aa39ec063e3f67d00889d050` |
| 2 | `def` | [weightedInverseScaleSum](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/NormalizedDensityAndRatioKernels.lean/declarations/weightedinversescalesum--fcf2af9a7bb701f5fa1c0534.md) | 69 | `declaration-track:fcf2af9a7bb701f5fa1c0534e15699a465855457318e9387fa21b9221a2a19df` |
| 3 | `theorem` | [weightedInverseScaleSum_pos](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/NormalizedDensityAndRatioKernels.lean/declarations/weightedinversescalesum-pos--158d61b30b1015f8c32a3faa.md) | 73 | `result-track:158d61b30b1015f8c32a3faaf8a9450355dcf1717dd5ebabcbcb4875de1d08f2` |
| 4 | `def` | [normalizedGammaDensity](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/NormalizedDensityAndRatioKernels.lean/declarations/normalizedgammadensity--5a75897b008b91438db8f16b.md) | 81 | `declaration-track:5a75897b008b91438db8f16b99cb4889dca38b2bc747e96c6f5b9bcf07275ed1` |
| 5 | `theorem` | [normalizedGammaDensity_pos](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/NormalizedDensityAndRatioKernels.lean/declarations/normalizedgammadensity-pos--8607f02fcf02de6097af9c86.md) | 88 | `result-track:8607f02fcf02de6097af9c86969f68aa66261ede9ce975684607540dfce39ba3` |
| 6 | `def` | [dirichletDensity](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/NormalizedDensityAndRatioKernels.lean/declarations/dirichletdensity--4edfd1ea5a3d681aac37d994.md) | 103 | `declaration-track:4edfd1ea5a3d681aac37d994a7a9a168a91b4cf3d04559409e42cd3f788f56f8` |
| 7 | `theorem` | [dirichletDensity_pos](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/NormalizedDensityAndRatioKernels.lean/declarations/dirichletdensity-pos--1e179667ed35bffe368fb711.md) | 108 | `result-track:1e179667ed35bffe368fb711244b039dedf935e2203611f39e1d7b0a88f29f8d` |
| 8 | `theorem` | [normalizedGammaDensity_equalScale](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/NormalizedDensityAndRatioKernels.lean/declarations/normalizedgammadensity-equalscale--90759e6691de5eab1a3410e5.md) | 116 | `result-track:90759e6691de5eab1a3410e5c5c1bd451b0c7314cca339b92eb91728e153cdd9` |
| 9 | `theorem` | [normalizedGammaDensity_scaleAll](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/NormalizedDensityAndRatioKernels.lean/declarations/normalizedgammadensity-scaleall--232c75e0e4102cc8c76ae838.md) | 164 | `result-track:232c75e0e4102cc8c76ae838a2104038ce637743543ccc412952363df781fb67` |
| 10 | `def` | [transportKernel](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/NormalizedDensityAndRatioKernels.lean/declarations/transportkernel--8575d4c33d8d6c98f69080ee.md) | 245 | `declaration-track:8575d4c33d8d6c98f69080ee12beab6b9de5ef08e228fff7209fdb734e1ae100` |
| 11 | `theorem` | [transportKernel_self](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/NormalizedDensityAndRatioKernels.lean/declarations/transportkernel-self--1711798c9d9609563be417c5.md) | 251 | `result-track:1711798c9d9609563be417c59a82a85911dbc28c8332485f738123b9f77d2623` |
| 12 | `theorem` | [transportKernel_cocycle](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/NormalizedDensityAndRatioKernels.lean/declarations/transportkernel-cocycle--973b1e6e45405dea8485c595.md) | 256 | `result-track:973b1e6e45405dea8485c5951850b257d0ffd8a968e12320d566f57ca3209dc1` |
| 13 | `theorem` | [transportKernel_inverse](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/NormalizedDensityAndRatioKernels.lean/declarations/transportkernel-inverse--8675bb1fc71958d7f13ebcfc.md) | 266 | `result-track:8675bb1fc71958d7f13ebcfc6e1d62fa9aaefbcee97cc0c8e7bf662bb8c07a3b` |
| 14 | `theorem` | [normalizedGammaDensity_reindex](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/NormalizedDensityAndRatioKernels.lean/declarations/normalizedgammadensity-reindex--df1c2a86fa8aeecf26283345.md) | 273 | `result-track:df1c2a86fa8aeecf26283345bea1ebab6228be0006c489d0c4c8d7ddf920125f` |
| 15 | `theorem` | [transportKernel_reindex](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/NormalizedDensityAndRatioKernels.lean/declarations/transportkernel-reindex--729c042c5188b6aa9f2cb347.md) | 302 | `result-track:729c042c5188b6aa9f2cb347f9b3a4fc1ec8a87132b6648f2e38d7646b407c7a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
