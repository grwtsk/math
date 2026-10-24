# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Distributions.IsGaussianProcess.Variantfb171330c5c74807686b7a756e5db150c468db742dfbe60d1644452cdb49cd8d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "65bd034344c56c9c94d88905c72a5b053893e8eb",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/IsGaussianProcess/Variantfb171330c5c74807686b7a756e5db150c468db742dfbe60d1644452cdb49cd8d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/IsGaussianProcess/Variantfb171330c5c74807686b7a756e5db150c468db742dfbe60d1644452cdb49cd8d.lean/index.md) · [Full source](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/IsGaussianProcess/Variantfb171330c5c74807686b7a756e5db150c468db742dfbe60d1644452cdb49cd8d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `65bd034344c56c9c94d88905c72a5b053893e8eb`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/IsGaussianProcess/Variantfb171330c5c74807686b7a756e5db150c468db742dfbe60d1644452cdb49cd8d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/IsGaussianProcess/Variantfb171330c5c74807686b7a756e5db150c468db742dfbe60d1644452cdb49cd8d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Distributions.Gaussian.HasGaussianLaw.Basic` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Distributions.Gaussian.HasGaussianLaw.Independence` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [orderEmbOfFinWithBot](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/IsGaussianProcess/Variantfb171330c5c74807686b7a756e5db150c468db742dfbe60d1644452cdb49cd8d.lean/declarations/orderemboffinwithbot--75400852ed0554d198a4adb0.md) | 66 | `declaration-track:75400852ed0554d198a4adb0512d6b5d4f776ab02f54db0c68ac63919e54d8be` |
| 2 | `lemma` | [orderEmbOfFinWithBot_zero](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/IsGaussianProcess/Variantfb171330c5c74807686b7a756e5db150c468db742dfbe60d1644452cdb49cd8d.lean/declarations/orderemboffinwithbot-zero--b7f5af4bbce4171ca23c3de3.md) | 72 | `result-track:b7f5af4bbce4171ca23c3de3fd2cf469de470645dd37f4cde8be2946d661c5ad` |
| 3 | `lemma` | [orderEmbOfFinWithBot_of_ne_zero](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/IsGaussianProcess/Variantfb171330c5c74807686b7a756e5db150c468db742dfbe60d1644452cdb49cd8d.lean/declarations/orderemboffinwithbot-of-ne-zero--457290ac1557852347eb527d.md) | 74 | `result-track:457290ac1557852347eb527dd6ab287818efc562b6a932772c2d15d9fd4fd26c` |
| 4 | `lemma` | [orderEmbOfFinWithBot_succ](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/IsGaussianProcess/Variantfb171330c5c74807686b7a756e5db150c468db742dfbe60d1644452cdb49cd8d.lean/declarations/orderemboffinwithbot-succ--fe0e95df750dff75ce2857e1.md) | 79 | `result-track:fe0e95df750dff75ce2857e1ab429eda4ff1363e9c8e2962fdb4b6814e5d2cad` |
| 5 | `lemma` | [monotone_orderEmbOfFinWithBot](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/IsGaussianProcess/Variantfb171330c5c74807686b7a756e5db150c468db742dfbe60d1644452cdb49cd8d.lean/declarations/monotone-orderemboffinwithbot--1675cc89d53d9418c11489cd.md) | 86 | `result-track:1675cc89d53d9418c11489cd73f7af08849d501a245d76e15086ab0c6e3b52cb` |
| 6 | `def` | [incrementsToRestrict](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/IsGaussianProcess/Variantfb171330c5c74807686b7a756e5db150c468db742dfbe60d1644452cdb49cd8d.lean/declarations/incrementstorestrict--fcb8a6f361c0a3474e807583.md) | 99 | `declaration-track:fcb8a6f361c0a3474e8075835a8009b883776be5637ef79477a05eb11633c90d` |
| 7 | `lemma` | [incrementsToRestrict_increments_orderEmbOfFinWithBot_ae_eq_restrict](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/IsGaussianProcess/Variantfb171330c5c74807686b7a756e5db150c468db742dfbe60d1644452cdb49cd8d.lean/declarations/incrementstorestrict-increments-orderemboffinwithbot-ae-eq-restrict--fd1f71fb6a768c2ddb4d9124.md) | 107 | `result-track:fd1f71fb6a768c2ddb4d9124d5468b3c65fdfd09ae3b0e3005adfca56a68dd07` |
| 8 | `lemma` | [HasIndepIncrements.isGaussianProcess](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/IsGaussianProcess/Variantfb171330c5c74807686b7a756e5db150c468db742dfbe60d1644452cdb49cd8d.lean/declarations/hasindepincrements-isgaussianprocess--dfd7b5e5751464e599b36e0a.md) | 123 | `result-track:dfd7b5e5751464e599b36e0ade466feeee589b1aacf296288d007a0c8c47f700` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
