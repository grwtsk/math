# Verification target: GRWTSK.Geometry.ConvexGeometry.ConvexSets.ConvexHulls.FiniteConvexCombinations.BarycentricCoefficients.FiniteSimplexGammaAndObservation.Variant5cc54b9c520347b4.FiniteRefinementParametersAndPoints

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6a54c7296afe6fb08afbc4ad8468eb71d660ebec",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ConvexGeometry/ConvexSets/ConvexHulls/FiniteConvexCombinations/BarycentricCoefficients/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/FiniteRefinementParametersAndPoints.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../../mathematics/Geometry/ConvexGeometry/ConvexSets/ConvexHulls/FiniteConvexCombinations/BarycentricCoefficients/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/FiniteRefinementParametersAndPoints.lean/index.md) · [Full source](../../../../../../../../../../mathematics/Geometry/ConvexGeometry/ConvexSets/ConvexHulls/FiniteConvexCombinations/BarycentricCoefficients/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/FiniteRefinementParametersAndPoints.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6a54c7296afe6fb08afbc4ad8468eb71d660ebec`.

Source path: `GRWTSK/Geometry/ConvexGeometry/ConvexSets/ConvexHulls/FiniteConvexCombinations/BarycentricCoefficients/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/FiniteRefinementParametersAndPoints.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ConvexGeometry/ConvexSets/ConvexHulls/FiniteConvexCombinations/BarycentricCoefficients/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/FiniteRefinementParametersAndPoints.lean.json)

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
- [`GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.Moments.FiniteSimplexGammaAndObservation.Variant5cc54b9c520347b4.PositiveShapeScaleParameterAlgebra`](../../../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/PositiveShapeScaleParameterAlgebra.lean/index.md) — import line 28; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Refinement](../../../../../../../../../../mathematics/Geometry/ConvexGeometry/ConvexSets/ConvexHulls/FiniteConvexCombinations/BarycentricCoefficients/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/FiniteRefinementParametersAndPoints.lean/declarations/refinement--37293c6eeb3226d153800600.md) | 60 | `declaration-track:37293c6eeb3226d153800600dc9734a63c11338fcce382d8904afed83668359c` |
| 2 | `def` | [mergeParameters](../../../../../../../../../../mathematics/Geometry/ConvexGeometry/ConvexSets/ConvexHulls/FiniteConvexCombinations/BarycentricCoefficients/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/FiniteRefinementParametersAndPoints.lean/declarations/mergeparameters--cea143e0a169ec14716d68c9.md) | 69 | `declaration-track:cea143e0a169ec14716d68c9f8834078e24668c0f846d92796bb87b52f62395e` |
| 3 | `def` | [mergePoint](../../../../../../../../../../mathematics/Geometry/ConvexGeometry/ConvexSets/ConvexHulls/FiniteConvexCombinations/BarycentricCoefficients/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/FiniteRefinementParametersAndPoints.lean/declarations/mergepoint--a11d8ddc3bf93a70abae38a0.md) | 82 | `declaration-track:a11d8ddc3bf93a70abae38a075e3d7227688fbd77bdc0b131501d42437b5d819` |
| 4 | `theorem` | [mergeParameters_total](../../../../../../../../../../mathematics/Geometry/ConvexGeometry/ConvexSets/ConvexHulls/FiniteConvexCombinations/BarycentricCoefficients/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/FiniteRefinementParametersAndPoints.lean/declarations/mergeparameters-total--b3fd494ee89cc0c71ffd57b3.md) | 86 | `result-track:b3fd494ee89cc0c71ffd57b35926185f02d1269281e0d1cd2dcf48f774d9578b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
