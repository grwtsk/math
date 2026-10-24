# Verification target: GRWTSK.Analysis.MeasureTheory.IntegrationTheorems.RadonNikodymTheorem.FiniteSimplexGammaAndObservation.Variant5cc54b9c520347b4.SuppliedAnalyticMomentAndTransportLaws

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0e95ac54b46ee626bb275a5067b7d720c3b65e6f",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/IntegrationTheorems/RadonNikodymTheorem/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/SuppliedAnalyticMomentAndTransportLaws.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../mathematics/Analysis/MeasureTheory/IntegrationTheorems/RadonNikodymTheorem/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/SuppliedAnalyticMomentAndTransportLaws.lean/index.md) · [Full source](../../../../../../../../mathematics/Analysis/MeasureTheory/IntegrationTheorems/RadonNikodymTheorem/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/SuppliedAnalyticMomentAndTransportLaws.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0e95ac54b46ee626bb275a5067b7d720c3b65e6f`.

Source path: `GRWTSK/Analysis/MeasureTheory/IntegrationTheorems/RadonNikodymTheorem/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/SuppliedAnalyticMomentAndTransportLaws.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/IntegrationTheorems/RadonNikodymTheorem/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/SuppliedAnalyticMomentAndTransportLaws.lean.json)

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
- [`GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Distributions.FiniteSimplexGammaAndObservation.Variant5cc54b9c520347b4.NormalizedDensityAndRatioKernels`](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/NormalizedDensityAndRatioKernels.lean/index.md) — import line 28; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [interiorSimplexMeasurableSpace](../../../../../../../../mathematics/Analysis/MeasureTheory/IntegrationTheorems/RadonNikodymTheorem/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/SuppliedAnalyticMomentAndTransportLaws.lean/declarations/interiorsimplexmeasurablespace--bca8b9247d19536f26187df3.md) | 59 | `declaration-track:bca8b9247d19536f26187df3385e7a12d0a5b2538c742c4bb38de994c6da6ace` |
| 2 | `structure` | [AnalyticLaw](../../../../../../../../mathematics/Analysis/MeasureTheory/IntegrationTheorems/RadonNikodymTheorem/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/SuppliedAnalyticMomentAndTransportLaws.lean/declarations/analyticlaw--84a473d40c7e77b61b9ed7e1.md) | 66 | `declaration-track:84a473d40c7e77b61b9ed7e1a57d2c64b8d2efedfea86e51a6a26436acf36502` |
| 3 | `structure` | [MeanLaw](../../../../../../../../mathematics/Analysis/MeasureTheory/IntegrationTheorems/RadonNikodymTheorem/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/SuppliedAnalyticMomentAndTransportLaws.lean/declarations/meanlaw--0b87a5fc77c8160b2b169ddb.md) | 76 | `declaration-track:0b87a5fc77c8160b2b169ddb2b3c8ec2bcf0963f79d3de18c47fb32a29b39ad6` |
| 4 | `structure` | [EqualScaleMeanLaw](../../../../../../../../mathematics/Analysis/MeasureTheory/IntegrationTheorems/RadonNikodymTheorem/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/SuppliedAnalyticMomentAndTransportLaws.lean/declarations/equalscalemeanlaw--32f289a7e58588808c137e10.md) | 85 | `declaration-track:32f289a7e58588808c137e104d47cf81c83a69212e25d5c5094c22fd581ebefa` |
| 5 | `structure` | [DirichletMomentLaw](../../../../../../../../mathematics/Analysis/MeasureTheory/IntegrationTheorems/RadonNikodymTheorem/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/SuppliedAnalyticMomentAndTransportLaws.lean/declarations/dirichletmomentlaw--2488b3bcf472a2358878bd37.md) | 93 | `declaration-track:2488b3bcf472a2358878bd378e352995c0859fad9ebd15bf56d86446ecf251eb` |
| 6 | `structure` | [ChangeOfMeasure](../../../../../../../../mathematics/Analysis/MeasureTheory/IntegrationTheorems/RadonNikodymTheorem/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/SuppliedAnalyticMomentAndTransportLaws.lean/declarations/changeofmeasure--1e94729334ea4649c9936499.md) | 109 | `declaration-track:1e94729334ea4649c9936499bf3ffadf853a277bf5db47f4c0265150a0ca0e29` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
