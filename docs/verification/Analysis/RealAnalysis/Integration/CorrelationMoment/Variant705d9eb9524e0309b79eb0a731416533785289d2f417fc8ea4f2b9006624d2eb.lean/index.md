# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.CorrelationMoment.Variant705d9eb9524e0309b79eb0a731416533785289d2f417fc8ea4f2b9006624d2eb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1bf59ce65f4f74b603505d13a23150f1fd929c26",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/CorrelationMoment/Variant705d9eb9524e0309b79eb0a731416533785289d2f417fc8ea4f2b9006624d2eb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationMoment/Variant705d9eb9524e0309b79eb0a731416533785289d2f417fc8ea4f2b9006624d2eb.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationMoment/Variant705d9eb9524e0309b79eb0a731416533785289d2f417fc8ea4f2b9006624d2eb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1bf59ce65f4f74b603505d13a23150f1fd929c26`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/CorrelationMoment/Variant705d9eb9524e0309b79eb0a731416533785289d2f417fc8ea4f2b9006624d2eb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/CorrelationMoment/Variant705d9eb9524e0309b79eb0a731416533785289d2f417fc8ea4f2b9006624d2eb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SUCAS.Realization` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.SUCAS.CorrelationRegularity` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convolution` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [polePrimitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationMoment/Variant705d9eb9524e0309b79eb0a731416533785289d2f417fc8ea4f2b9006624d2eb.lean/declarations/poleprimitive--f0333dedc9b169c2c4a7c810.md) | 24 | `declaration-track:f0333dedc9b169c2c4a7c8106d86d70f0b854364c67d1087d0b068416d476ba8` |
| 2 | `theorem` | [polePrimitive_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationMoment/Variant705d9eb9524e0309b79eb0a731416533785289d2f417fc8ea4f2b9006624d2eb.lean/declarations/poleprimitive-hasderivat--dadad360d746954b371277b5.md) | 28 | `result-track:dadad360d746954b371277b581242e4e87bf5f5dc93514a996028994ad9a7192` |
| 3 | `theorem` | [polePrimitive_endpoints](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationMoment/Variant705d9eb9524e0309b79eb0a731416533785289d2f417fc8ea4f2b9006624d2eb.lean/declarations/poleprimitive-endpoints--bb9c81f6ed6c21f52a31cb7c.md) | 40 | `result-track:bb9c81f6ed6c21f52a31cb7cc7ecc9e5a7f03cdbe3d0fecd8ab97127700cc85d` |
| 4 | `theorem` | [weighted_dilationTest_eq_indicator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationMoment/Variant705d9eb9524e0309b79eb0a731416533785289d2f417fc8ea4f2b9006624d2eb.lean/declarations/weighted-dilationtest-eq-indicator--f4c21b744c963b9f361b07a1.md) | 47 | `result-track:f4c21b744c963b9f361b07a1bd0f2194f728cc72c0fa2b9be9a16050147e4425` |
| 5 | `theorem` | [weighted_dilationTest_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationMoment/Variant705d9eb9524e0309b79eb0a731416533785289d2f417fc8ea4f2b9006624d2eb.lean/declarations/weighted-dilationtest-integrable--eaf718c376265e8c79756aa6.md) | 57 | `result-track:eaf718c376265e8c79756aa6454632ef28f03c3752161a94ea74c6616637470b` |
| 6 | `theorem` | [weighted_dilationTest_integral_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationMoment/Variant705d9eb9524e0309b79eb0a731416533785289d2f417fc8ea4f2b9006624d2eb.lean/declarations/weighted-dilationtest-integral-zero--ddba0bd42b6b5bb65d5b78f7.md) | 66 | `result-track:ddba0bd42b6b5bb65d5b78f786ea4bb83f4a50422515c7a7d9fc35bae00467bc` |
| 7 | `theorem` | [weighted_normalizedTest_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationMoment/Variant705d9eb9524e0309b79eb0a731416533785289d2f417fc8ea4f2b9006624d2eb.lean/declarations/weighted-normalizedtest-integrable--edcf39d52fe2081719bb0eaa.md) | 84 | `result-track:edcf39d52fe2081719bb0eaa324dc50127efe03b832dc4d4752c9f357d84cb72` |
| 8 | `theorem` | [weighted_normalizedTest_integral_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationMoment/Variant705d9eb9524e0309b79eb0a731416533785289d2f417fc8ea4f2b9006624d2eb.lean/declarations/weighted-normalizedtest-integral-zero--de66ee06ce7bb5fb1850e3b7.md) | 90 | `result-track:de66ee06ce7bb5fb1850e3b7ae7d4e9d4e9f2c32a89bcc30409bdc4248c1faa9` |
| 9 | `def` | [correlation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationMoment/Variant705d9eb9524e0309b79eb0a731416533785289d2f417fc8ea4f2b9006624d2eb.lean/declarations/correlation--fcfe9b50d93570007ef19e12.md) | 97 | `declaration-track:fcfe9b50d93570007ef19e12b990c319eac6e380bab941a9b6e266d28d082768` |
| 10 | `theorem` | [weighted_correlation_eq_convolution](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationMoment/Variant705d9eb9524e0309b79eb0a731416533785289d2f417fc8ea4f2b9006624d2eb.lean/declarations/weighted-correlation-eq-convolution--26bcb59d1402a28a2c81acad.md) | 100 | `result-track:26bcb59d1402a28a2c81acad6c2512ace28d88e75e3e09fe4d1596141f791700` |
| 11 | `theorem` | [reflected_weight_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationMoment/Variant705d9eb9524e0309b79eb0a731416533785289d2f417fc8ea4f2b9006624d2eb.lean/declarations/reflected-weight-integrable--351ba663a61f76c3e77b134e.md) | 118 | `result-track:351ba663a61f76c3e77b134ed81551a8a1e3eaab7792ec3259a87196da2665cc` |
| 12 | `theorem` | [weighted_correlation_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationMoment/Variant705d9eb9524e0309b79eb0a731416533785289d2f417fc8ea4f2b9006624d2eb.lean/declarations/weighted-correlation-integrable--e2cafb210a12fa7648c4668d.md) | 125 | `result-track:e2cafb210a12fa7648c4668d2dec7e0503d90ed9f5c827fb3f8c15c745fb2a1b` |
| 13 | `theorem` | [weighted_correlation_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationMoment/Variant705d9eb9524e0309b79eb0a731416533785289d2f417fc8ea4f2b9006624d2eb.lean/declarations/weighted-correlation-integral--e441c4f77dda97bba88648ef.md) | 140 | `result-track:e441c4f77dda97bba88648efca2a8738517ed73334b7d60d4c5fc4443f9efcde` |
| 14 | `theorem` | [half_interval_moment_of_even](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationMoment/Variant705d9eb9524e0309b79eb0a731416533785289d2f417fc8ea4f2b9006624d2eb.lean/declarations/half-interval-moment-of-even--c9849d05a424a6e28dc3ff7b.md) | 155 | `result-track:c9849d05a424a6e28dc3ff7b69f05f84ec51af38e6678d620056d192ad9f38c8` |
| 15 | `theorem` | [positive_pole_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationMoment/Variant705d9eb9524e0309b79eb0a731416533785289d2f417fc8ea4f2b9006624d2eb.lean/declarations/positive-pole-integrable--2ba4783f7dcffa96246232f6.md) | 191 | `result-track:2ba4783f7dcffa96246232f698f466a87f0248180da73574f5b4ec6ed8d300ad` |
| 16 | `theorem` | [negative_pole_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationMoment/Variant705d9eb9524e0309b79eb0a731416533785289d2f417fc8ea4f2b9006624d2eb.lean/declarations/negative-pole-integrable--0818b8be2eb8f8bfcb6c2cce.md) | 197 | `result-track:0818b8be2eb8f8bfcb6c2cce8185c5910ac519a0f25f238416ea35838f3899fe` |
| 17 | `theorem` | [positive_pole_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationMoment/Variant705d9eb9524e0309b79eb0a731416533785289d2f417fc8ea4f2b9006624d2eb.lean/declarations/positive-pole-zero--c7cbafc159864075da4d5d29.md) | 204 | `result-track:c7cbafc159864075da4d5d29410d60ad5f6125c5cbae0dd0065e64dde8e8ebff` |
| 18 | `theorem` | [negative_pole_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationMoment/Variant705d9eb9524e0309b79eb0a731416533785289d2f417fc8ea4f2b9006624d2eb.lean/declarations/negative-pole-zero--f565b1b22f8d6094d131555f.md) | 210 | `result-track:f565b1b22f8d6094d131555fbb0f0fd0ee926923a79e33f1767e1b766876e904` |
| 19 | `theorem` | [full_correlation_moment_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationMoment/Variant705d9eb9524e0309b79eb0a731416533785289d2f417fc8ea4f2b9006624d2eb.lean/declarations/full-correlation-moment-zero--c0addcdf1689369361f19099.md) | 216 | `result-track:c0addcdf1689369361f190993bdce7d39a7bd9b9438883d7ce7f9bd0f25ea2dd` |
| 20 | `theorem` | [pole_correlation_certificate](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationMoment/Variant705d9eb9524e0309b79eb0a731416533785289d2f417fc8ea4f2b9006624d2eb.lean/declarations/pole-correlation-certificate--52de120572229181cd2d55b0.md) | 228 | `result-track:52de120572229181cd2d55b0fd051b8c9e5af78a5762bd46ca528db53f28a03c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
