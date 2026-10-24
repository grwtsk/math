# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceLaplaceDetectionOriginal.Variant913b96715136e39f0d8496665b21ecbfae2110aecfe913790c5d4798e6cc8c43

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e66b101930822c98363e2ca4ebcd43dff251f0d1",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaplaceDetectionOriginal/Variant913b96715136e39f0d8496665b21ecbfae2110aecfe913790c5d4798e6cc8c43.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaplaceDetectionOriginal/Variant913b96715136e39f0d8496665b21ecbfae2110aecfe913790c5d4798e6cc8c43.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaplaceDetectionOriginal/Variant913b96715136e39f0d8496665b21ecbfae2110aecfe913790c5d4798e6cc8c43.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e66b101930822c98363e2ca4ebcd43dff251f0d1`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaplaceDetectionOriginal/Variant913b96715136e39f0d8496665b21ecbfae2110aecfe913790c5d4798e6cc8c43.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaplaceDetectionOriginal/Variant913b96715136e39f0d8496665b21ecbfae2110aecfe913790c5d4798e6cc8c43.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.PoleDifferentialCorrelation` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.GeneralizedPoleMoments` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceBumpLaplace` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.NormedSpace` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bilateralLaplace](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaplaceDetectionOriginal/Variant913b96715136e39f0d8496665b21ecbfae2110aecfe913790c5d4798e6cc8c43.lean/declarations/bilaterallaplace--9e9d0d6d822ec4d347bbaef4.md) | 34 | `declaration-track:9e9d0d6d822ec4d347bbaef4e8640621782bde75995452d0010759dd5668b73f` |
| 2 | `def` | [sourceLaplace](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaplaceDetectionOriginal/Variant913b96715136e39f0d8496665b21ecbfae2110aecfe913790c5d4798e6cc8c43.lean/declarations/sourcelaplace--89b40f4adc2efbcd5067b7ad.md) | 38 | `declaration-track:89b40f4adc2efbcd5067b7ad46a967159a53554ce8bd89f5478d3908cdeac1ef` |
| 3 | `theorem` | [compact_laplace_integrable](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaplaceDetectionOriginal/Variant913b96715136e39f0d8496665b21ecbfae2110aecfe913790c5d4798e6cc8c43.lean/declarations/compact-laplace-integrable--ca9efaf9b03d82e6d401683b.md) | 42 | `result-track:ca9efaf9b03d82e6d401683bed45da7158fa207f1d93b29cfcd3a9d5eb2d7d72` |
| 4 | `theorem` | [reflected_laplace_integrable](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaplaceDetectionOriginal/Variant913b96715136e39f0d8496665b21ecbfae2110aecfe913790c5d4798e6cc8c43.lean/declarations/reflected-laplace-integrable--fe3a8856a6e632929fa1f121.md) | 52 | `result-track:fe3a8856a6e632929fa1f121bc5d5e7cd062b85cb9a63e269b5fa80291e1847e` |
| 5 | `theorem` | [complex_weighted_correlation_eq_convolution](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaplaceDetectionOriginal/Variant913b96715136e39f0d8496665b21ecbfae2110aecfe913790c5d4798e6cc8c43.lean/declarations/complex-weighted-correlation-eq-convolution--31b114d64ad44292bf0a7129.md) | 58 | `result-track:31b114d64ad44292bf0a7129404dc9e0ff49e38e1a2842359c0f308d6acc7824` |
| 6 | `theorem` | [complex_weighted_correlation_integrable](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaplaceDetectionOriginal/Variant913b96715136e39f0d8496665b21ecbfae2110aecfe913790c5d4798e6cc8c43.lean/declarations/complex-weighted-correlation-integrable--4f7b13055565296b80619749.md) | 79 | `result-track:4f7b13055565296b8061974948496719643d2a08b62963be4c8f76a3e7a15cb8` |
| 7 | `theorem` | [bilateral_laplace_correlation](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaplaceDetectionOriginal/Variant913b96715136e39f0d8496665b21ecbfae2110aecfe913790c5d4798e6cc8c43.lean/declarations/bilateral-laplace-correlation--3128e6ddc18f65d701ea76da.md) | 93 | `result-track:3128e6ddc18f65d701ea76da8e84403ce38f114ea6f171b056f3d56a60d78248` |
| 8 | `theorem` | [normalized_test_laplace_integrable](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaplaceDetectionOriginal/Variant913b96715136e39f0d8496665b21ecbfae2110aecfe913790c5d4798e6cc8c43.lean/declarations/normalized-test-laplace-integrable--0ce852b884c49f066d903630.md) | 107 | `result-track:0ce852b884c49f066d903630c427c1a1a5ab4a98f8e79508497312ec67e9fe41` |
| 9 | `theorem` | [source_laplace_integrable](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaplaceDetectionOriginal/Variant913b96715136e39f0d8496665b21ecbfae2110aecfe913790c5d4798e6cc8c43.lean/declarations/source-laplace-integrable--829e4b095c33822b8ad7299b.md) | 114 | `result-track:829e4b095c33822b8ad7299be0fc505216d641df3076ac78c029e616bdecab42` |
| 10 | `theorem` | [source_laplace_eq_test_product](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaplaceDetectionOriginal/Variant913b96715136e39f0d8496665b21ecbfae2110aecfe913790c5d4798e6cc8c43.lean/declarations/source-laplace-eq-test-product--06372e6b2b45bd35f9abaf72.md) | 122 | `result-track:06372e6b2b45bd35f9abaf7200fe99fe406df8fc4db548a6dc567eeaf21c0f12` |
| 11 | `theorem` | [bilateral_laplace_indicator](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaplaceDetectionOriginal/Variant913b96715136e39f0d8496665b21ecbfae2110aecfe913790c5d4798e6cc8c43.lean/declarations/bilateral-laplace-indicator--ea2086276ef7bb1f5e1b37c5.md) | 129 | `result-track:ea2086276ef7bb1f5e1b37c5ad0cabe9c493c66367f195252c0fa189ed3835fa` |
| 12 | `theorem` | [indicator_laplace_integrable](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaplaceDetectionOriginal/Variant913b96715136e39f0d8496665b21ecbfae2110aecfe913790c5d4798e6cc8c43.lean/declarations/indicator-laplace-integrable--c78edbf39601006ce49abc1b.md) | 142 | `result-track:c78edbf39601006ce49abc1b76451bc02d7b463f86393130dc5037c3b48e66de` |
| 13 | `theorem` | [laplace_wave_has_deriv_at](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaplaceDetectionOriginal/Variant913b96715136e39f0d8496665b21ecbfae2110aecfe913790c5d4798e6cc8c43.lean/declarations/laplace-wave-has-deriv-at--d8b04b3d6b4bc316ffac1f97.md) | 154 | `result-track:d8b04b3d6b4bc316ffac1f97ad40cb4f4784232df7f30ad5cdd1eb9a431949d1` |
| 14 | `theorem` | [bilateral_laplace_indicator_derivative](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaplaceDetectionOriginal/Variant913b96715136e39f0d8496665b21ecbfae2110aecfe913790c5d4798e6cc8c43.lean/declarations/bilateral-laplace-indicator-derivative--808e85a1fe638d27db32e107.md) | 160 | `result-track:808e85a1fe638d27db32e1079db63d8f59d128ce3b43dcf5fb21fa0d8d619b9a` |
| 15 | `theorem` | [explicit_second_derivative_laplace](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaplaceDetectionOriginal/Variant913b96715136e39f0d8496665b21ecbfae2110aecfe913790c5d4798e6cc8c43.lean/declarations/explicit-second-derivative-laplace--fe35b73c7cf43055a752aa30.md) | 187 | `result-track:fe35b73c7cf43055a752aa3034b11fdb0f57446b5d347235f187ab2e0d4ce006` |
| 16 | `theorem` | [scaled_bump_laplace_integrable](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaplaceDetectionOriginal/Variant913b96715136e39f0d8496665b21ecbfae2110aecfe913790c5d4798e6cc8c43.lean/declarations/scaled-bump-laplace-integrable--f581e272a72de8c0f0627cf4.md) | 202 | `result-track:f581e272a72de8c0f0627cf45ac9d7c2ba84facc31f142647b66a54f7096370a` |
| 17 | `theorem` | [explicit_second_derivative_laplace_integrable](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaplaceDetectionOriginal/Variant913b96715136e39f0d8496665b21ecbfae2110aecfe913790c5d4798e6cc8c43.lean/declarations/explicit-second-derivative-laplace-integrable--9aa491ca86ac34e680876689.md) | 208 | `result-track:9aa491ca86ac34e6808766898924575f3b896270c252a570b168f3e1e0b37d0b` |
| 18 | `theorem` | [normalized_test_laplace](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaplaceDetectionOriginal/Variant913b96715136e39f0d8496665b21ecbfae2110aecfe913790c5d4798e6cc8c43.lean/declarations/normalized-test-laplace--c10c4d463f36962d81c452e1.md) | 213 | `result-track:c10c4d463f36962d81c452e13e066b3b4fc04bbeb30ab55bd7cfaa9bf7a200f3` |
| 19 | `theorem` | [scaled_bump_laplace](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaplaceDetectionOriginal/Variant913b96715136e39f0d8496665b21ecbfae2110aecfe913790c5d4798e6cc8c43.lean/declarations/scaled-bump-laplace--772bb199a852f9bae83bfffe.md) | 231 | `result-track:772bb199a852f9bae83bfffe1f96130c49adcf246d1f5f996b264be05c4bb3ae` |
| 20 | `theorem` | [bilateral_laplace_source_bump](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaplaceDetectionOriginal/Variant913b96715136e39f0d8496665b21ecbfae2110aecfe913790c5d4798e6cc8c43.lean/declarations/bilateral-laplace-source-bump--88f87ac161bca63c5f5d2658.md) | 253 | `result-track:88f87ac161bca63c5f5d265806dd2a3ad12fedce091f92f62f6d6a067f0d865c` |
| 21 | `theorem` | [source_laplace_eq_bump_square](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaplaceDetectionOriginal/Variant913b96715136e39f0d8496665b21ecbfae2110aecfe913790c5d4798e6cc8c43.lean/declarations/source-laplace-eq-bump-square--a80b1edb0d8b27889271a9be.md) | 262 | `result-track:a80b1edb0d8b27889271a9bebf17d72ec6094e7a575fe6ea99c83a66dd60de0f` |
| 22 | `theorem` | [source_laplace_ne_zero_of_bump_ne_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaplaceDetectionOriginal/Variant913b96715136e39f0d8496665b21ecbfae2110aecfe913790c5d4798e6cc8c43.lean/declarations/source-laplace-ne-zero-of-bump-ne-zero--459cc53d4c1c7cd3415f1f14.md) | 287 | `result-track:459cc53d4c1c7cd3415f1f145dcd03905ea697adcc44e8737b9f807a47d8bcab` |
| 23 | `theorem` | [shifted_strip_pole_factor_ne_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaplaceDetectionOriginal/Variant913b96715136e39f0d8496665b21ecbfae2110aecfe913790c5d4798e6cc8c43.lean/declarations/shifted-strip-pole-factor-ne-zero--9238c1e8fd63817214c9828a.md) | 297 | `result-track:9238c1e8fd63817214c9828ae6111f2211d445fd935600ee06124a1c7a965835` |
| 24 | `theorem` | [scaled_shift_re_ne_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaplaceDetectionOriginal/Variant913b96715136e39f0d8496665b21ecbfae2110aecfe913790c5d4798e6cc8c43.lean/declarations/scaled-shift-re-ne-zero--a3e635163095e0bc72aa5765.md) | 312 | `result-track:a3e635163095e0bc72aa5765aadbf2db6657fb6a1ff1664b8bf2072a0483b76e` |
| 25 | `theorem` | [source_laplace_strip_ne_zero_of_bump_ne_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaplaceDetectionOriginal/Variant913b96715136e39f0d8496665b21ecbfae2110aecfe913790c5d4798e6cc8c43.lean/declarations/source-laplace-strip-ne-zero-of-bump-ne-zero--81e1e5ef029d9737f50f679f.md) | 319 | `result-track:81e1e5ef029d9737f50f679fe7cd65c3c5b657bab1f6444cb4e9937fe0cce237` |
| 26 | `theorem` | [source_laplace_strip_ne_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaplaceDetectionOriginal/Variant913b96715136e39f0d8496665b21ecbfae2110aecfe913790c5d4798e6cc8c43.lean/declarations/source-laplace-strip-ne-zero--995278ae65ca9d14a3d1a5e0.md) | 328 | `result-track:995278ae65ca9d14a3d1a5e0a32dfa7be50db1fe7708a17c5228a8d79e3cdfa3` |
| 27 | `theorem` | [source_laplace_poles_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaplaceDetectionOriginal/Variant913b96715136e39f0d8496665b21ecbfae2110aecfe913790c5d4798e6cc8c43.lean/declarations/source-laplace-poles-zero--2b1cc55eef09c2ebf31c1ee8.md) | 335 | `result-track:2b1cc55eef09c2ebf31c1ee8ce2af3190aff2991caf3365f5d3866b6874a89f1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
