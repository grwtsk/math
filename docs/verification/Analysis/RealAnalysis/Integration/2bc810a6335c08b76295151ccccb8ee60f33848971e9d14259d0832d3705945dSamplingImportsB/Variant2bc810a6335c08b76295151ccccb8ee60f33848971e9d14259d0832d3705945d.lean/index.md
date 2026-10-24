# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.2bc810a6335c08b76295151ccccb8ee60f33848971e9d14259d0832d3705945dSamplingImportsB.Variant2bc810a6335c08b76295151ccccb8ee60f33848971e9d14259d0832d3705945d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9ebc993228cfd9787e16bfd1655f59a818188d22",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/2bc810a6335c08b76295151ccccb8ee60f33848971e9d14259d0832d3705945dSamplingImportsB/Variant2bc810a6335c08b76295151ccccb8ee60f33848971e9d14259d0832d3705945d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/2bc810a6335c08b76295151ccccb8ee60f33848971e9d14259d0832d3705945dSamplingImportsB/Variant2bc810a6335c08b76295151ccccb8ee60f33848971e9d14259d0832d3705945d.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/2bc810a6335c08b76295151ccccb8ee60f33848971e9d14259d0832d3705945dSamplingImportsB/Variant2bc810a6335c08b76295151ccccb8ee60f33848971e9d14259d0832d3705945d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9ebc993228cfd9787e16bfd1655f59a818188d22`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/2bc810a6335c08b76295151ccccb8ee60f33848971e9d14259d0832d3705945dSamplingImportsB/Variant2bc810a6335c08b76295151ccccb8ee60f33848971e9d14259d0832d3705945d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/2bc810a6335c08b76295151ccccb8ee60f33848971e9d14259d0832d3705945dSamplingImportsB/Variant2bc810a6335c08b76295151ccccb8ee60f33848971e9d14259d0832d3705945d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateKernelMoments` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.DistLEIntegral` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [leftSampleSum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/2bc810a6335c08b76295151ccccb8ee60f33848971e9d14259d0832d3705945dSamplingImportsB/Variant2bc810a6335c08b76295151ccccb8ee60f33848971e9d14259d0832d3705945d.lean/declarations/leftsamplesum--e366ae5961b5d7572dad5a8d.md) | 30 | `declaration-track:e366ae5961b5d7572dad5a8d1263bce23138d0c2838420385739a5f5d6ed32e5` |
| 2 | `theorem` | [unit_sampling_error_identity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/2bc810a6335c08b76295151ccccb8ee60f33848971e9d14259d0832d3705945dSamplingImportsB/Variant2bc810a6335c08b76295151ccccb8ee60f33848971e9d14259d0832d3705945d.lean/declarations/unit-sampling-error-identity--23931d6047987c30da90ab6f.md) | 34 | `result-track:23931d6047987c30da90ab6fee276dea399999e477c24ff26c7d25b33da8c147` |
| 3 | `theorem` | [abs_unit_sampling_error_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/2bc810a6335c08b76295151ccccb8ee60f33848971e9d14259d0832d3705945dSamplingImportsB/Variant2bc810a6335c08b76295151ccccb8ee60f33848971e9d14259d0832d3705945d.lean/declarations/abs-unit-sampling-error-le--9d6f3990cf0db4d72577dba2.md) | 73 | `result-track:9d6f3990cf0db4d72577dba2bff0e21f23ea10097add4a797cb5b47da446b589` |
| 4 | `theorem` | [integral_eq_sum_unit_intervals](../../../../../../mathematics/Analysis/RealAnalysis/Integration/2bc810a6335c08b76295151ccccb8ee60f33848971e9d14259d0832d3705945dSamplingImportsB/Variant2bc810a6335c08b76295151ccccb8ee60f33848971e9d14259d0832d3705945d.lean/declarations/integral-eq-sum-unit-intervals--f144d6b8f5faaf7e9ffb4348.md) | 102 | `result-track:f144d6b8f5faaf7e9ffb43482f39f516dd897cc1e3796cd9c69f214e27bbbd3b` |
| 5 | `theorem` | [abs_leftSampleSum_sub_integral_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/2bc810a6335c08b76295151ccccb8ee60f33848971e9d14259d0832d3705945dSamplingImportsB/Variant2bc810a6335c08b76295151ccccb8ee60f33848971e9d14259d0832d3705945d.lean/declarations/abs-leftsamplesum-sub-integral-le--b846f0379cef330a77497312.md) | 132 | `result-track:b846f0379cef330a774973126352850fb2e4a81c7a8e2c02a76329b392bb3bf3` |
| 6 | `def` | [FiniteSamplingCheckpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/2bc810a6335c08b76295151ccccb8ee60f33848971e9d14259d0832d3705945dSamplingImportsB/Variant2bc810a6335c08b76295151ccccb8ee60f33848971e9d14259d0832d3705945d.lean/declarations/finitesamplingcheckpoint--113b58928d136a1ade79fdee.md) | 167 | `declaration-track:113b58928d136a1ade79fdee6a184eb733e8066ccdaac566d7d4f240a259255a` |
| 7 | `theorem` | [finite_sampling_checkpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/2bc810a6335c08b76295151ccccb8ee60f33848971e9d14259d0832d3705945dSamplingImportsB/Variant2bc810a6335c08b76295151ccccb8ee60f33848971e9d14259d0832d3705945d.lean/declarations/finite-sampling-checkpoint--cde05dacda112c3cc78a5072.md) | 175 | `result-track:cde05dacda112c3cc78a5072329f4b677e7c7e058a1405b905c805b78f8295f1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
