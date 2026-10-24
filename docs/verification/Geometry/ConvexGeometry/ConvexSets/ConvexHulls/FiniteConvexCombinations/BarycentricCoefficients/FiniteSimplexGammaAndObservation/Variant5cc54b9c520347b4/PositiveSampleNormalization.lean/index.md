# Verification target: GRWTSK.Geometry.ConvexGeometry.ConvexSets.ConvexHulls.FiniteConvexCombinations.BarycentricCoefficients.FiniteSimplexGammaAndObservation.Variant5cc54b9c520347b4.PositiveSampleNormalization

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8425a90b5f8c1e44026a73f742945706445b10b6",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ConvexGeometry/ConvexSets/ConvexHulls/FiniteConvexCombinations/BarycentricCoefficients/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/PositiveSampleNormalization.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../../mathematics/Geometry/ConvexGeometry/ConvexSets/ConvexHulls/FiniteConvexCombinations/BarycentricCoefficients/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/PositiveSampleNormalization.lean/index.md) · [Full source](../../../../../../../../../../mathematics/Geometry/ConvexGeometry/ConvexSets/ConvexHulls/FiniteConvexCombinations/BarycentricCoefficients/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/PositiveSampleNormalization.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8425a90b5f8c1e44026a73f742945706445b10b6`.

Source path: `GRWTSK/Geometry/ConvexGeometry/ConvexSets/ConvexHulls/FiniteConvexCombinations/BarycentricCoefficients/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/PositiveSampleNormalization.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ConvexGeometry/ConvexSets/ConvexHulls/FiniteConvexCombinations/BarycentricCoefficients/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/PositiveSampleNormalization.lean.json)

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

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PositiveSample](../../../../../../../../../../mathematics/Geometry/ConvexGeometry/ConvexSets/ConvexHulls/FiniteConvexCombinations/BarycentricCoefficients/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/PositiveSampleNormalization.lean/declarations/positivesample--c9738bc19d2d2abe4f057f44.md) | 57 | `declaration-track:c9738bc19d2d2abe4f057f445d9464c2b4529d6de1c4770961e3517faf4b31f8` |
| 2 | `def` | [total](../../../../../../../../../../mathematics/Geometry/ConvexGeometry/ConvexSets/ConvexHulls/FiniteConvexCombinations/BarycentricCoefficients/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/PositiveSampleNormalization.lean/declarations/total--e142bc2bf8cb3a27efc2ef0c.md) | 65 | `declaration-track:e142bc2bf8cb3a27efc2ef0cf34292ebbe3316e7cb1b0876a8e01ec94a4f5053` |
| 3 | `theorem` | [total_pos](../../../../../../../../../../mathematics/Geometry/ConvexGeometry/ConvexSets/ConvexHulls/FiniteConvexCombinations/BarycentricCoefficients/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/PositiveSampleNormalization.lean/declarations/total-pos--504ceacb325687efa1e1a196.md) | 68 | `result-track:504ceacb325687efa1e1a196bc3c847b2d2bc075af4515bc598016493e4f7d1f` |
| 4 | `def` | [normalize](../../../../../../../../../../mathematics/Geometry/ConvexGeometry/ConvexSets/ConvexHulls/FiniteConvexCombinations/BarycentricCoefficients/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/PositiveSampleNormalization.lean/declarations/normalize--5678995f8230fe105d748177.md) | 72 | `declaration-track:5678995f8230fe105d748177364cbaab354f778557197351972dc56a6b30ba09` |
| 5 | `def` | [scale](../../../../../../../../../../mathematics/Geometry/ConvexGeometry/ConvexSets/ConvexHulls/FiniteConvexCombinations/BarycentricCoefficients/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/PositiveSampleNormalization.lean/declarations/scale--de2a1706e12fda927cb094f8.md) | 83 | `declaration-track:de2a1706e12fda927cb094f8758b8bd1c806bf4b1d38b5059221ce4e7b73a0a5` |
| 6 | `theorem` | [scale_total](../../../../../../../../../../mathematics/Geometry/ConvexGeometry/ConvexSets/ConvexHulls/FiniteConvexCombinations/BarycentricCoefficients/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/PositiveSampleNormalization.lean/declarations/scale-total--15c338ca87ccc292b8779966.md) | 89 | `result-track:15c338ca87ccc292b8779966eab07bfc90aa5ecb9e0553c3c530fc4501b2e247` |
| 7 | `theorem` | [normalize_scale](../../../../../../../../../../mathematics/Geometry/ConvexGeometry/ConvexSets/ConvexHulls/FiniteConvexCombinations/BarycentricCoefficients/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/PositiveSampleNormalization.lean/declarations/normalize-scale--803d2245196766332c639e1f.md) | 95 | `result-track:803d2245196766332c639e1fdd8735e45de0f131a73e9d03c53ae21a866499b5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
