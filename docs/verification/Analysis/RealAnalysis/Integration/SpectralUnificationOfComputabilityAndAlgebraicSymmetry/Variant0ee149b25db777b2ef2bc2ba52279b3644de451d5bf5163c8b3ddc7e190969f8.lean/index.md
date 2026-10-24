# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Variant0ee149b25db777b2ef2bc2ba52279b3644de451d5bf5163c8b3ddc7e190969f8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5d8fa7049616ca22470b767d1b1acff678a248c8",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant0ee149b25db777b2ef2bc2ba52279b3644de451d5bf5163c8b3ddc7e190969f8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant0ee149b25db777b2ef2bc2ba52279b3644de451d5bf5163c8b3ddc7e190969f8.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant0ee149b25db777b2ef2bc2ba52279b3644de451d5bf5163c8b3ddc7e190969f8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5d8fa7049616ca22470b767d1b1acff678a248c8`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant0ee149b25db777b2ef2bc2ba52279b3644de451d5bf5163c8b3ddc7e190969f8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant0ee149b25db777b2ef2bc2ba52279b3644de451d5bf5163c8b3ddc7e190969f8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.ContDiff.Deriv` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.DistLEIntegral` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [leftSampleSum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant0ee149b25db777b2ef2bc2ba52279b3644de451d5bf5163c8b3ddc7e190969f8.lean/declarations/leftsamplesum--71c3b7de2982a1d406c4b06f.md) | 30 | `declaration-track:71c3b7de2982a1d406c4b06f905604454af6ce673bcb4a8dc438c1dc10232475` |
| 2 | `theorem` | [unit_sampling_error_identity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant0ee149b25db777b2ef2bc2ba52279b3644de451d5bf5163c8b3ddc7e190969f8.lean/declarations/unit-sampling-error-identity--d753b11f097c33cc558a5169.md) | 34 | `result-track:d753b11f097c33cc558a51692478aecac545a4e19d379c17d186c98fbd187ef4` |
| 3 | `theorem` | [abs_unit_sampling_error_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant0ee149b25db777b2ef2bc2ba52279b3644de451d5bf5163c8b3ddc7e190969f8.lean/declarations/abs-unit-sampling-error-le--1939a46a685147dda452b013.md) | 73 | `result-track:1939a46a685147dda452b0133eca590fd13ac52910af59f8064e7e89b47127ce` |
| 4 | `theorem` | [integral_eq_sum_unit_intervals](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant0ee149b25db777b2ef2bc2ba52279b3644de451d5bf5163c8b3ddc7e190969f8.lean/declarations/integral-eq-sum-unit-intervals--ceb1f378762d849c24a47999.md) | 102 | `result-track:ceb1f378762d849c24a47999e1cda65b8efde06b225eadf73d0dcc60edd000bb` |
| 5 | `theorem` | [abs_leftSampleSum_sub_integral_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant0ee149b25db777b2ef2bc2ba52279b3644de451d5bf5163c8b3ddc7e190969f8.lean/declarations/abs-leftsamplesum-sub-integral-le--14d93c2433a80504e9fb7589.md) | 132 | `result-track:14d93c2433a80504e9fb7589c5dccd822eeaac7179dda440232caff8cf651963` |
| 6 | `def` | [FiniteSamplingCheckpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant0ee149b25db777b2ef2bc2ba52279b3644de451d5bf5163c8b3ddc7e190969f8.lean/declarations/finitesamplingcheckpoint--4e1200e85ee21bb1e0937f1f.md) | 167 | `declaration-track:4e1200e85ee21bb1e0937f1fac520accb75332da0a25e4e7c118361213ab13a4` |
| 7 | `theorem` | [finite_sampling_checkpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant0ee149b25db777b2ef2bc2ba52279b3644de451d5bf5163c8b3ddc7e190969f8.lean/declarations/finite-sampling-checkpoint--10c1b2d56d9834e8d6b4451f.md) | 175 | `result-track:10c1b2d56d9834e8d6b4451fd33e15681232eb97c508375f4ab1dcf4035d360b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
