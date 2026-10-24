# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceSamplingCoefficients.Variantc32f29dcefe48541d1a26795f9af438b2fae5f0b3fb90c6505f09ad6df21e5de

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f8717f97ebc4e425b2439522f89d9b4813585c1",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceSamplingCoefficients/Variantc32f29dcefe48541d1a26795f9af438b2fae5f0b3fb90c6505f09ad6df21e5de.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSamplingCoefficients/Variantc32f29dcefe48541d1a26795f9af438b2fae5f0b3fb90c6505f09ad6df21e5de.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSamplingCoefficients/Variantc32f29dcefe48541d1a26795f9af438b2fae5f0b3fb90c6505f09ad6df21e5de.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f8717f97ebc4e425b2439522f89d9b4813585c1`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceSamplingCoefficients/Variantc32f29dcefe48541d1a26795f9af438b2fae5f0b3fb90c6505f09ad6df21e5de.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceSamplingCoefficients/Variantc32f29dcefe48541d1a26795f9af438b2fae5f0b3fb90c6505f09ad6df21e5de.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.Floor` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coefficientWeight](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSamplingCoefficients/Variantc32f29dcefe48541d1a26795f9af438b2fae5f0b3fb90c6505f09ad6df21e5de.lean/declarations/coefficientweight--abd07f8713efd3614eb2cf42.md) | 31 | `declaration-track:abd07f8713efd3614eb2cf42cee6b17a41dac2b0d5a4797933ed5d041725c603` |
| 2 | `def` | [absoluteCoefficientWeight](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSamplingCoefficients/Variantc32f29dcefe48541d1a26795f9af438b2fae5f0b3fb90c6505f09ad6df21e5de.lean/declarations/absolutecoefficientweight--19bedd8efaf8f40f283d101f.md) | 35 | `declaration-track:19bedd8efaf8f40f283d101fb8b6469d26d3feef01f3232ac8f354b02f577f45` |
| 3 | `def` | [coefficientEnvelope](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSamplingCoefficients/Variantc32f29dcefe48541d1a26795f9af438b2fae5f0b3fb90c6505f09ad6df21e5de.lean/declarations/coefficientenvelope--674d39deb47af42a596efe56.md) | 39 | `declaration-track:674d39deb47af42a596efe561d7230babcc782512fc1232c728ea907b54bfd26` |
| 4 | `theorem` | [coefficientEnvelope_exp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSamplingCoefficients/Variantc32f29dcefe48541d1a26795f9af438b2fae5f0b3fb90c6505f09ad6df21e5de.lean/declarations/coefficientenvelope-exp--2ace5d670e1b1118ec320d1c.md) | 43 | `result-track:2ace5d670e1b1118ec320d1cf51714120512c97dee08a8cb310590d894bb0dc7` |
| 5 | `theorem` | [exponential_half_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSamplingCoefficients/Variantc32f29dcefe48541d1a26795f9af438b2fae5f0b3fb90c6505f09ad6df21e5de.lean/declarations/exponential-half-integral--b947b82318fec15f2e2977d5.md) | 61 | `result-track:b947b82318fec15f2e2977d5787e06760e95c3ee04050c695eafe8d223b63ef2` |
| 6 | `theorem` | [exponential_half_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSamplingCoefficients/Variantc32f29dcefe48541d1a26795f9af438b2fae5f0b3fb90c6505f09ad6df21e5de.lean/declarations/exponential-half-integrable--cfc14adbe7e913a32720b9cf.md) | 74 | `result-track:cfc14adbe7e913a32720b9cf533a899c880907cccf2ca467dc86f11a145bc43c` |
| 7 | `theorem` | [even_exponential_eq_indicator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSamplingCoefficients/Variantc32f29dcefe48541d1a26795f9af438b2fae5f0b3fb90c6505f09ad6df21e5de.lean/declarations/even-exponential-eq-indicator--1083a1d05e364c58596ed787.md) | 82 | `result-track:1083a1d05e364c58596ed787bc01335ffd937edb7f3a19916d314dbe6427f5bb` |
| 8 | `theorem` | [even_exponential_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSamplingCoefficients/Variantc32f29dcefe48541d1a26795f9af438b2fae5f0b3fb90c6505f09ad6df21e5de.lean/declarations/even-exponential-integrable--e27875f1470c82199f9ff6df.md) | 97 | `result-track:e27875f1470c82199f9ff6dfaf6ea276a6f3ea1ebbd2f5395cdbaf2b873628ea` |
| 9 | `theorem` | [even_exponential_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSamplingCoefficients/Variantc32f29dcefe48541d1a26795f9af438b2fae5f0b3fb90c6505f09ad6df21e5de.lean/declarations/even-exponential-integral--a5b9b1c4d32bc7c7e726953e.md) | 107 | `result-track:a5b9b1c4d32bc7c7e726953ea18ad1f8ea2b3ba510298e6dae1c876c1e15c2f2` |
| 10 | `theorem` | [coefficientEnvelope_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSamplingCoefficients/Variantc32f29dcefe48541d1a26795f9af438b2fae5f0b3fb90c6505f09ad6df21e5de.lean/declarations/coefficientenvelope-integrable--e261cff81d0cc251d331dea3.md) | 124 | `result-track:e261cff81d0cc251d331dea339976f693ef9ee1177efa8da9dbd7ef858d2ec89` |
| 11 | `theorem` | [coefficientEnvelope_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSamplingCoefficients/Variantc32f29dcefe48541d1a26795f9af438b2fae5f0b3fb90c6505f09ad6df21e5de.lean/declarations/coefficientenvelope-integral--6d7a7246142fc76118581133.md) | 136 | `result-track:6d7a7246142fc76118581133694b5623968ffc181f24caf5d26145012c7a871e` |
| 12 | `theorem` | [fract_le_min](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSamplingCoefficients/Variantc32f29dcefe48541d1a26795f9af438b2fae5f0b3fb90c6505f09ad6df21e5de.lean/declarations/fract-le-min--3073e58ed120f7784780a1e0.md) | 148 | `result-track:3073e58ed120f7784780a1e04c7b0afb687023a1b32f0725d475de218707b5e1` |
| 13 | `theorem` | [absoluteCoefficientWeight_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSamplingCoefficients/Variantc32f29dcefe48541d1a26795f9af438b2fae5f0b3fb90c6505f09ad6df21e5de.lean/declarations/absolutecoefficientweight-nonneg--1fa2eb0c6e9c7ceda2558964.md) | 157 | `result-track:1fa2eb0c6e9c7ceda25589642fe18df33d222bb089a884d5688b02e98df4ccee` |
| 14 | `theorem` | [absoluteCoefficientWeight_le_envelope](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSamplingCoefficients/Variantc32f29dcefe48541d1a26795f9af438b2fae5f0b3fb90c6505f09ad6df21e5de.lean/declarations/absolutecoefficientweight-le-envelope--5ea356656b282e2d2106180f.md) | 164 | `result-track:5ea356656b282e2d2106180f85cdc5584163b7d369d0102dbb2e81eec303bbaf` |
| 15 | `theorem` | [absoluteCoefficientWeight_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSamplingCoefficients/Variantc32f29dcefe48541d1a26795f9af438b2fae5f0b3fb90c6505f09ad6df21e5de.lean/declarations/absolutecoefficientweight-integrable--0f47d58aa135f26623bb2421.md) | 172 | `result-track:0f47d58aa135f26623bb242131cbc527f2b0f35c8c9fb65ff3af812f48855f16` |
| 16 | `theorem` | [coefficientWeight_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSamplingCoefficients/Variantc32f29dcefe48541d1a26795f9af438b2fae5f0b3fb90c6505f09ad6df21e5de.lean/declarations/coefficientweight-norm--da8de2bc289d85b6750714fb.md) | 182 | `result-track:da8de2bc289d85b6750714fb8c5956512951a5d9ea38fd12ad30eed754578c1c` |
| 17 | `theorem` | [coefficientWeight_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSamplingCoefficients/Variantc32f29dcefe48541d1a26795f9af438b2fae5f0b3fb90c6505f09ad6df21e5de.lean/declarations/coefficientweight-integrable--d9fe447188f333aacd5b8d30.md) | 189 | `result-track:d9fe447188f333aacd5b8d302d69c928972bfd0b35e778578ec719606b20be46` |
| 18 | `def` | [signedCoefficientMoment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSamplingCoefficients/Variantc32f29dcefe48541d1a26795f9af438b2fae5f0b3fb90c6505f09ad6df21e5de.lean/declarations/signedcoefficientmoment--a7775a2fd082c5720adaacc7.md) | 198 | `declaration-track:a7775a2fd082c5720adaacc77c45de0e439d41370bb5b582371a6a7d927bfcc2` |
| 19 | `def` | [absoluteCoefficientMoment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSamplingCoefficients/Variantc32f29dcefe48541d1a26795f9af438b2fae5f0b3fb90c6505f09ad6df21e5de.lean/declarations/absolutecoefficientmoment--f520aa9bb80f3c4a828cb4ca.md) | 202 | `declaration-track:f520aa9bb80f3c4a828cb4cae46d15aebc9bb4d2ac3d78c5f8abd0723d04422d` |
| 20 | `theorem` | [absoluteCoefficientMoment_le_factorial](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSamplingCoefficients/Variantc32f29dcefe48541d1a26795f9af438b2fae5f0b3fb90c6505f09ad6df21e5de.lean/declarations/absolutecoefficientmoment-le-factorial--4293bbb4e919187ff8e37aca.md) | 206 | `result-track:4293bbb4e919187ff8e37aca7f50c7e6313a89f7810dd0278ce2c68cfae13b4c` |
| 21 | `theorem` | [signedCoefficientMoment_abs_le_factorial](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSamplingCoefficients/Variantc32f29dcefe48541d1a26795f9af438b2fae5f0b3fb90c6505f09ad6df21e5de.lean/declarations/signedcoefficientmoment-abs-le-factorial--a66921ef85cafe9959a82307.md) | 215 | `result-track:a66921ef85cafe9959a82307ad1043103dfab7af543677d56922ba9cfdbc1f58` |
| 22 | `def` | [samplingAlpha0](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSamplingCoefficients/Variantc32f29dcefe48541d1a26795f9af438b2fae5f0b3fb90c6505f09ad6df21e5de.lean/declarations/samplingalpha0--cc632d517b649f5662c23103.md) | 227 | `declaration-track:cc632d517b649f5662c231038d429b34d18c9a946316389113e6b705a2f06f0a` |
| 23 | `def` | [samplingAlpha1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSamplingCoefficients/Variantc32f29dcefe48541d1a26795f9af438b2fae5f0b3fb90c6505f09ad6df21e5de.lean/declarations/samplingalpha1--a421d9f88acbdb008e06edf3.md) | 230 | `declaration-track:a421d9f88acbdb008e06edf362aaa6dc0113d7612c59e1fae475421fd5a78ad8` |
| 24 | `def` | [samplingAlpha2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSamplingCoefficients/Variantc32f29dcefe48541d1a26795f9af438b2fae5f0b3fb90c6505f09ad6df21e5de.lean/declarations/samplingalpha2--3f86dd21e9777bba5e5bf645.md) | 233 | `declaration-track:3f86dd21e9777bba5e5bf645ad09944b503637214602c5932a30bbd7009259dd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
