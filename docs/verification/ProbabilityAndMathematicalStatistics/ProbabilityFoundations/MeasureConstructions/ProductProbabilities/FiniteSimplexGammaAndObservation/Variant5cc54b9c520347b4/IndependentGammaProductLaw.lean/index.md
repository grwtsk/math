# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.MeasureConstructions.ProductProbabilities.FiniteSimplexGammaAndObservation.Variant5cc54b9c520347b4.IndependentGammaProductLaw

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f6c219b21adb4bc9379224bcbb31b7880a26f15a",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/MeasureConstructions/ProductProbabilities/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/IndependentGammaProductLaw.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/MeasureConstructions/ProductProbabilities/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/IndependentGammaProductLaw.lean/index.md) · [Full source](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/MeasureConstructions/ProductProbabilities/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/IndependentGammaProductLaw.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f6c219b21adb4bc9379224bcbb31b7880a26f15a`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/MeasureConstructions/ProductProbabilities/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/IndependentGammaProductLaw.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/MeasureConstructions/ProductProbabilities/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/IndependentGammaProductLaw.lean.json)

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
| 1 | `def` | [gammaProductMeasure](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/MeasureConstructions/ProductProbabilities/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/IndependentGammaProductLaw.lean/declarations/gammaproductmeasure--002100266024043453657477.md) | 60 | `declaration-track:00210026602404345365747775f9e85599622f8013f3fa3785a7e05cc147b367` |
| 2 | `theorem` | [gammaProductMeasure_probability](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/MeasureConstructions/ProductProbabilities/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/IndependentGammaProductLaw.lean/declarations/gammaproductmeasure-probability--ee1670b7edfca249d71f28fb.md) | 65 | `result-track:ee1670b7edfca249d71f28fbb98b29ab5318702d928f2ac13c6f170843b8b2cb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
