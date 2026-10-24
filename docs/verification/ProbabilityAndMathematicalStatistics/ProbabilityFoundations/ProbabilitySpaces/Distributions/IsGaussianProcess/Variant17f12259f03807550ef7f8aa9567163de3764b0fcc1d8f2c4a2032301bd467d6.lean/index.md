# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Distributions.IsGaussianProcess.Variant17f12259f03807550ef7f8aa9567163de3764b0fcc1d8f2c4a2032301bd467d6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dee92bbb1a33c81fda67a74d756380e759a5df95",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/IsGaussianProcess/Variant17f12259f03807550ef7f8aa9567163de3764b0fcc1d8f2c4a2032301bd467d6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/IsGaussianProcess/Variant17f12259f03807550ef7f8aa9567163de3764b0fcc1d8f2c4a2032301bd467d6.lean/index.md) · [Full source](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/IsGaussianProcess/Variant17f12259f03807550ef7f8aa9567163de3764b0fcc1d8f2c4a2032301bd467d6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dee92bbb1a33c81fda67a74d756380e759a5df95`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/IsGaussianProcess/Variant17f12259f03807550ef7f8aa9567163de3764b0fcc1d8f2c4a2032301bd467d6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/IsGaussianProcess/Variant17f12259f03807550ef7f8aa9567163de3764b0fcc1d8f2c4a2032301bd467d6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Distributions.Gaussian.HasGaussianLaw.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Distributions.Gaussian.HasGaussianLaw.Independence` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [orderEmbOfFinWithBot](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/IsGaussianProcess/Variant17f12259f03807550ef7f8aa9567163de3764b0fcc1d8f2c4a2032301bd467d6.lean/declarations/orderemboffinwithbot--8a70b8b40a1b9bd9d22a786e.md) | 58 | `declaration-track:8a70b8b40a1b9bd9d22a786e27205d4c1aca8be6640ade4be32275ec21e2b8bd` |
| 2 | `lemma` | [orderEmbOfFinWithBot_zero](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/IsGaussianProcess/Variant17f12259f03807550ef7f8aa9567163de3764b0fcc1d8f2c4a2032301bd467d6.lean/declarations/orderemboffinwithbot-zero--2ff8a0c8b37b445fdfbace70.md) | 64 | `result-track:2ff8a0c8b37b445fdfbace705de89682cc71098ebff4bb6e3e2b4d1c1dda0fa7` |
| 3 | `lemma` | [orderEmbOfFinWithBot_of_ne_zero](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/IsGaussianProcess/Variant17f12259f03807550ef7f8aa9567163de3764b0fcc1d8f2c4a2032301bd467d6.lean/declarations/orderemboffinwithbot-of-ne-zero--25df137548f8f04eabb285c7.md) | 66 | `result-track:25df137548f8f04eabb285c7ebaf9dc10b2501df9ac0ba7064a6a1fecdff9f19` |
| 4 | `lemma` | [orderEmbOfFinWithBot_succ](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/IsGaussianProcess/Variant17f12259f03807550ef7f8aa9567163de3764b0fcc1d8f2c4a2032301bd467d6.lean/declarations/orderemboffinwithbot-succ--890f3105ab90c8ebd3c34e55.md) | 71 | `result-track:890f3105ab90c8ebd3c34e557adc3d27708b5dc2e59e4d84e7641ffdd4d35aa8` |
| 5 | `lemma` | [monotone_orderEmbOfFinWithBot](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/IsGaussianProcess/Variant17f12259f03807550ef7f8aa9567163de3764b0fcc1d8f2c4a2032301bd467d6.lean/declarations/monotone-orderemboffinwithbot--bc694b9f5c5d15db741b5d74.md) | 78 | `result-track:bc694b9f5c5d15db741b5d748daa09c41cbaff3c326f81a8f0ae2fcac6b96fe9` |
| 6 | `def` | [incrementsToRestrict](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/IsGaussianProcess/Variant17f12259f03807550ef7f8aa9567163de3764b0fcc1d8f2c4a2032301bd467d6.lean/declarations/incrementstorestrict--e375c14dda2aa741250d81d4.md) | 91 | `declaration-track:e375c14dda2aa741250d81d4dc25aa388c981c2d41e37a287accbcd7da4e8861` |
| 7 | `lemma` | [incrementsToRestrict_increments_orderEmbOfFinWithBot_ae_eq_restrict](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/IsGaussianProcess/Variant17f12259f03807550ef7f8aa9567163de3764b0fcc1d8f2c4a2032301bd467d6.lean/declarations/incrementstorestrict-increments-orderemboffinwithbot-ae-eq-restrict--4b69e700d53b1c651773724a.md) | 99 | `result-track:4b69e700d53b1c651773724a07d8dafa5acc0646783e35bbc979db140be75183` |
| 8 | `lemma` | [HasIndepIncrements.isGaussianProcess](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/IsGaussianProcess/Variant17f12259f03807550ef7f8aa9567163de3764b0fcc1d8f2c4a2032301bd467d6.lean/declarations/hasindepincrements-isgaussianprocess--057d4fccb35d9675a9d85cdf.md) | 115 | `result-track:057d4fccb35d9675a9d85cdf4ab2ef24543457a42b738b41ca76a42fbfe92d15` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
