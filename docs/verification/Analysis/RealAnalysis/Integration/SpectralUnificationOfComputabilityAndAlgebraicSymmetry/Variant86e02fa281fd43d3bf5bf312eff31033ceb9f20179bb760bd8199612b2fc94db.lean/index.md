# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Variant86e02fa281fd43d3bf5bf312eff31033ceb9f20179bb760bd8199612b2fc94db

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "15a3a7a4ecb135b5ad8f4235de011219c79e2050",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant86e02fa281fd43d3bf5bf312eff31033ceb9f20179bb760bd8199612b2fc94db.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant86e02fa281fd43d3bf5bf312eff31033ceb9f20179bb760bd8199612b2fc94db.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant86e02fa281fd43d3bf5bf312eff31033ceb9f20179bb760bd8199612b2fc94db.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `15a3a7a4ecb135b5ad8f4235de011219c79e2050`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant86e02fa281fd43d3bf5bf312eff31033ceb9f20179bb760bd8199612b2fc94db.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant86e02fa281fd43d3bf5bf312eff31033ceb9f20179bb760bd8199612b2fc94db.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.ContDiff.Deriv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.DistLEIntegral` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [leftSampleSum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant86e02fa281fd43d3bf5bf312eff31033ceb9f20179bb760bd8199612b2fc94db.lean/declarations/leftsamplesum--bbf94d333bf2e2e511e6a2eb.md) | 38 | `declaration-track:bbf94d333bf2e2e511e6a2eb2ab791b5e66d966e79a65119faa31b0988a8acf3` |
| 2 | `theorem` | [unit_sampling_error_identity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant86e02fa281fd43d3bf5bf312eff31033ceb9f20179bb760bd8199612b2fc94db.lean/declarations/unit-sampling-error-identity--00a4bdcd0b81e498501b7b0a.md) | 42 | `result-track:00a4bdcd0b81e498501b7b0a2d2bbfcaf6dab07a78b6d79b9c85d2eb118d0a02` |
| 3 | `theorem` | [abs_unit_sampling_error_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant86e02fa281fd43d3bf5bf312eff31033ceb9f20179bb760bd8199612b2fc94db.lean/declarations/abs-unit-sampling-error-le--c451d68be46fc1e6ce4fda61.md) | 81 | `result-track:c451d68be46fc1e6ce4fda6194c1fd5bd96cce3fe46ce3bd1abecb3f208e69e7` |
| 4 | `theorem` | [integral_eq_sum_unit_intervals](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant86e02fa281fd43d3bf5bf312eff31033ceb9f20179bb760bd8199612b2fc94db.lean/declarations/integral-eq-sum-unit-intervals--f94760b45ae120b4a1cbb43e.md) | 110 | `result-track:f94760b45ae120b4a1cbb43ed95e4127e75c16cc51587b9208f6501095b78d81` |
| 5 | `theorem` | [abs_leftSampleSum_sub_integral_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant86e02fa281fd43d3bf5bf312eff31033ceb9f20179bb760bd8199612b2fc94db.lean/declarations/abs-leftsamplesum-sub-integral-le--2c527660d076ba2f5b7ca1b9.md) | 140 | `result-track:2c527660d076ba2f5b7ca1b95de7524da484bed43c99892360862aaaf2dd79e2` |
| 6 | `def` | [FiniteSamplingCheckpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant86e02fa281fd43d3bf5bf312eff31033ceb9f20179bb760bd8199612b2fc94db.lean/declarations/finitesamplingcheckpoint--b7b3a3f98b2f45d6e2e8c00a.md) | 175 | `declaration-track:b7b3a3f98b2f45d6e2e8c00ac72e57db9ef6f66f53b3a9bd30be3cabee79123a` |
| 7 | `theorem` | [finite_sampling_checkpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant86e02fa281fd43d3bf5bf312eff31033ceb9f20179bb760bd8199612b2fc94db.lean/declarations/finite-sampling-checkpoint--06c685244b720ece1d1b403c.md) | 183 | `result-track:06c685244b720ece1d1b403c7754aee8abbc0d9d7b4a6af94d7e716ff3f59478` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
