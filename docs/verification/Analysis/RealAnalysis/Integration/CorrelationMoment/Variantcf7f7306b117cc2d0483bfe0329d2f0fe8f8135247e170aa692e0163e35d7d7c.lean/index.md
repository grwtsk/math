# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.CorrelationMoment.Variantcf7f7306b117cc2d0483bfe0329d2f0fe8f8135247e170aa692e0163e35d7d7c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ed0451c647701bff0458e9c1625e07723c725ec6",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/CorrelationMoment/Variantcf7f7306b117cc2d0483bfe0329d2f0fe8f8135247e170aa692e0163e35d7d7c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationMoment/Variantcf7f7306b117cc2d0483bfe0329d2f0fe8f8135247e170aa692e0163e35d7d7c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationMoment/Variantcf7f7306b117cc2d0483bfe0329d2f0fe8f8135247e170aa692e0163e35d7d7c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ed0451c647701bff0458e9c1625e07723c725ec6`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/CorrelationMoment/Variantcf7f7306b117cc2d0483bfe0329d2f0fe8f8135247e170aa692e0163e35d7d7c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/CorrelationMoment/Variantcf7f7306b117cc2d0483bfe0329d2f0fe8f8135247e170aa692e0163e35d7d7c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convolution` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [polePrimitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationMoment/Variantcf7f7306b117cc2d0483bfe0329d2f0fe8f8135247e170aa692e0163e35d7d7c.lean/declarations/poleprimitive--11fa5d9f931be51de2650e53.md) | 24 | `declaration-track:11fa5d9f931be51de2650e53179a5456c4357347e4685e8074ae10132f6847d8` |
| 2 | `theorem` | [polePrimitive_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationMoment/Variantcf7f7306b117cc2d0483bfe0329d2f0fe8f8135247e170aa692e0163e35d7d7c.lean/declarations/poleprimitive-hasderivat--b1a9eb0eb4942ee5a55ee968.md) | 28 | `result-track:b1a9eb0eb4942ee5a55ee9681f9730b529c0397f6d70c40b98f752ac0c935163` |
| 3 | `theorem` | [polePrimitive_endpoints](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationMoment/Variantcf7f7306b117cc2d0483bfe0329d2f0fe8f8135247e170aa692e0163e35d7d7c.lean/declarations/poleprimitive-endpoints--69083e4ba008909d3b24a7f3.md) | 40 | `result-track:69083e4ba008909d3b24a7f34be751470d243e9f7e0835d5d2740e8ecbb50fe5` |
| 4 | `theorem` | [weighted_dilationTest_eq_indicator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationMoment/Variantcf7f7306b117cc2d0483bfe0329d2f0fe8f8135247e170aa692e0163e35d7d7c.lean/declarations/weighted-dilationtest-eq-indicator--f155516723854ee2ebd9192c.md) | 47 | `result-track:f155516723854ee2ebd9192c316aebc67c46805099a305ed0b366981a5ce9cb8` |
| 5 | `theorem` | [weighted_dilationTest_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationMoment/Variantcf7f7306b117cc2d0483bfe0329d2f0fe8f8135247e170aa692e0163e35d7d7c.lean/declarations/weighted-dilationtest-integrable--326c1c1511c7418051ee89c4.md) | 57 | `result-track:326c1c1511c7418051ee89c4eadf2e7391de6d7c7cbc420f1e5c421cf14802c3` |
| 6 | `theorem` | [weighted_dilationTest_integral_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationMoment/Variantcf7f7306b117cc2d0483bfe0329d2f0fe8f8135247e170aa692e0163e35d7d7c.lean/declarations/weighted-dilationtest-integral-zero--c6b23030b90fa523c1895421.md) | 66 | `result-track:c6b23030b90fa523c18954210adc4b9651de8d73d8ca28e661bafcd960cbe235` |
| 7 | `theorem` | [weighted_normalizedTest_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationMoment/Variantcf7f7306b117cc2d0483bfe0329d2f0fe8f8135247e170aa692e0163e35d7d7c.lean/declarations/weighted-normalizedtest-integrable--cc9f166b6d46d851f84ea143.md) | 84 | `result-track:cc9f166b6d46d851f84ea1434890aa2cb77922b70cfc6043f462c97aa8c5f133` |
| 8 | `theorem` | [weighted_normalizedTest_integral_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationMoment/Variantcf7f7306b117cc2d0483bfe0329d2f0fe8f8135247e170aa692e0163e35d7d7c.lean/declarations/weighted-normalizedtest-integral-zero--87db3873fa5dffe70f91d971.md) | 90 | `result-track:87db3873fa5dffe70f91d97130b998b7c4b5e69beb43bc0c1aee28bab0cc50d8` |
| 9 | `def` | [correlation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationMoment/Variantcf7f7306b117cc2d0483bfe0329d2f0fe8f8135247e170aa692e0163e35d7d7c.lean/declarations/correlation--39b00bd8d7fcee964db3005d.md) | 97 | `declaration-track:39b00bd8d7fcee964db3005d13a8b4457d0a92f9e4a6cf7c0ad55a81f1c08197` |
| 10 | `theorem` | [weighted_correlation_eq_convolution](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationMoment/Variantcf7f7306b117cc2d0483bfe0329d2f0fe8f8135247e170aa692e0163e35d7d7c.lean/declarations/weighted-correlation-eq-convolution--74348d57f62c61f06106ece6.md) | 100 | `result-track:74348d57f62c61f06106ece60284ef62f33760660eedcbc3f1461106879ce400` |
| 11 | `theorem` | [reflected_weight_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationMoment/Variantcf7f7306b117cc2d0483bfe0329d2f0fe8f8135247e170aa692e0163e35d7d7c.lean/declarations/reflected-weight-integrable--50b13ab70967d6eeae30397b.md) | 118 | `result-track:50b13ab70967d6eeae30397bcc4aa532b82d059e9c7e3302afc5c0ec9ab1844a` |
| 12 | `theorem` | [weighted_correlation_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationMoment/Variantcf7f7306b117cc2d0483bfe0329d2f0fe8f8135247e170aa692e0163e35d7d7c.lean/declarations/weighted-correlation-integrable--1a4b486b8fd7447c331fc65d.md) | 125 | `result-track:1a4b486b8fd7447c331fc65da2c0abd4a48f1f8db32a804873128d1cf591883a` |
| 13 | `theorem` | [weighted_correlation_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationMoment/Variantcf7f7306b117cc2d0483bfe0329d2f0fe8f8135247e170aa692e0163e35d7d7c.lean/declarations/weighted-correlation-integral--be928f1d01d368bf5474ec86.md) | 140 | `result-track:be928f1d01d368bf5474ec8657e2955e99ae55eae4f878d6818acfd589d0fad9` |
| 14 | `theorem` | [half_interval_moment_of_even](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationMoment/Variantcf7f7306b117cc2d0483bfe0329d2f0fe8f8135247e170aa692e0163e35d7d7c.lean/declarations/half-interval-moment-of-even--9c9d4f17f2325165ce804981.md) | 155 | `result-track:9c9d4f17f2325165ce8049819ab2cecd137742c647c28a7b165ce4ada51b740d` |
| 15 | `theorem` | [positive_pole_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationMoment/Variantcf7f7306b117cc2d0483bfe0329d2f0fe8f8135247e170aa692e0163e35d7d7c.lean/declarations/positive-pole-integrable--c47f7cded3512c59a4ece8b4.md) | 191 | `result-track:c47f7cded3512c59a4ece8b4997262f002d82ebad8bba40663d979c025038a06` |
| 16 | `theorem` | [negative_pole_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationMoment/Variantcf7f7306b117cc2d0483bfe0329d2f0fe8f8135247e170aa692e0163e35d7d7c.lean/declarations/negative-pole-integrable--681c1d6d62ac2389b6092881.md) | 197 | `result-track:681c1d6d62ac2389b6092881cd4f16fe758e384d8fed337bd5d89144b96d136a` |
| 17 | `theorem` | [positive_pole_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationMoment/Variantcf7f7306b117cc2d0483bfe0329d2f0fe8f8135247e170aa692e0163e35d7d7c.lean/declarations/positive-pole-zero--06be758a7d32b02165a68f86.md) | 204 | `result-track:06be758a7d32b02165a68f862eab12a20817ffdefd8a6677559182c2b9577b37` |
| 18 | `theorem` | [negative_pole_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationMoment/Variantcf7f7306b117cc2d0483bfe0329d2f0fe8f8135247e170aa692e0163e35d7d7c.lean/declarations/negative-pole-zero--2075c13f34296d09aaaba8d5.md) | 210 | `result-track:2075c13f34296d09aaaba8d5206dc6efa74c8fea80adf3bccb1acddad0cc7bb8` |
| 19 | `theorem` | [full_correlation_moment_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationMoment/Variantcf7f7306b117cc2d0483bfe0329d2f0fe8f8135247e170aa692e0163e35d7d7c.lean/declarations/full-correlation-moment-zero--d29600552975d29b173fca42.md) | 216 | `result-track:d29600552975d29b173fca4247fa6e8a43eb2fd0174854520c0b895be1b02f21` |
| 20 | `theorem` | [pole_correlation_certificate](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationMoment/Variantcf7f7306b117cc2d0483bfe0329d2f0fe8f8135247e170aa692e0163e35d7d7c.lean/declarations/pole-correlation-certificate--da0717fdb3b21a39f0780674.md) | 228 | `result-track:da0717fdb3b21a39f07806748553b9b7518b99eba64dd252b666496d29ebb5b5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
