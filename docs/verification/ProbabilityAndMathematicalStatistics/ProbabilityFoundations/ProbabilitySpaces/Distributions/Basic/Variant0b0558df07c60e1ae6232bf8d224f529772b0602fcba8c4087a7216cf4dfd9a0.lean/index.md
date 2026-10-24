# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Distributions.Basic.Variant0b0558df07c60e1ae6232bf8d224f529772b0602fcba8c4087a7216cf4dfd9a0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5b0546af7ad0d8e86b30939959392562dbfbe046",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variant0b0558df07c60e1ae6232bf8d224f529772b0602fcba8c4087a7216cf4dfd9a0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variant0b0558df07c60e1ae6232bf8d224f529772b0602fcba8c4087a7216cf4dfd9a0.lean/index.md) · [Full source](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variant0b0558df07c60e1ae6232bf8d224f529772b0602fcba8c4087a7216cf4dfd9a0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5b0546af7ad0d8e86b30939959392562dbfbe046`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variant0b0558df07c60e1ae6232bf8d224f529772b0602fcba8c4087a7216cf4dfd9a0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variant0b0558df07c60e1ae6232bf8d224f529772b0602fcba8c4087a7216cf4dfd9a0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Distributions.Gaussian.Real` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsGaussian](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variant0b0558df07c60e1ae6232bf8d224f529772b0602fcba8c4087a7216cf4dfd9a0.lean/declarations/isgaussian--2928c38672a05d1fbe47dd7d.md) | 48 | `declaration-track:2928c38672a05d1fbe47dd7d8bdb577a697df8a8a74b62f8819177c3fc9a6e0a` |
| 2 | `instance` | [isGaussian_gaussianReal](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variant0b0558df07c60e1ae6232bf8d224f529772b0602fcba8c4087a7216cf4dfd9a0.lean/declarations/isgaussian-gaussianreal--765a9b9e8e0d2c9413e1851c.md) | 53 | `declaration-track:765a9b9e8e0d2c9413e1851c22cbc23c2b52de91e19cb78678b76b524a60e919` |
| 3 | `instance` | [(anonymous)](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variant0b0558df07c60e1ae6232bf8d224f529772b0602fcba8c4087a7216cf4dfd9a0.lean/declarations/instance--4ea60c826d3b5cfde656d803.md) | 69 | `declaration-track:4ea60c826d3b5cfde656d80395193eef186787de8d7f5e78d9877fa9a7b6676b` |
| 4 | `instance` | [(anonymous)](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variant0b0558df07c60e1ae6232bf8d224f529772b0602fcba8c4087a7216cf4dfd9a0.lean/declarations/instance--8a3ccb2eb89c888d5111b13e.md) | 73 | `declaration-track:8a3ccb2eb89c888d5111b13e4593ebfbbe6609bf4ffd54226ee77bbb1960c079` |
| 5 | `lemma` | [IsGaussian.memLp_dual](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variant0b0558df07c60e1ae6232bf8d224f529772b0602fcba8c4087a7216cf4dfd9a0.lean/declarations/isgaussian-memlp-dual--4abfecfdf7c5b7854a575ae7.md) | 78 | `result-track:4abfecfdf7c5b7854a575ae71c9d0c119919d3b3959867f582829c724b8abca6` |
| 6 | `lemma` | [IsGaussian.integrable_dual](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variant0b0558df07c60e1ae6232bf8d224f529772b0602fcba8c4087a7216cf4dfd9a0.lean/declarations/isgaussian-integrable-dual--9939607fa5d0b5ac270a5f42.md) | 87 | `result-track:9939607fa5d0b5ac270a5f426d17757ca84db8292f8bf5db68b1cf1166ecf43b` |
| 7 | `instance` | [isGaussian_map](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variant0b0558df07c60e1ae6232bf8d224f529772b0602fcba8c4087a7216cf4dfd9a0.lean/declarations/isgaussian-map--436dd50aab7d84ef33ce1636.md) | 93 | `declaration-track:436dd50aab7d84ef33ce163644b6b34750d087ad9a8f6991525facfd0bd9d321` |
| 8 | `instance` | [isGaussian_map_equiv](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variant0b0558df07c60e1ae6232bf8d224f529772b0602fcba8c4087a7216cf4dfd9a0.lean/declarations/isgaussian-map-equiv--107479ecfd21fb060d2df55d.md) | 106 | `declaration-track:107479ecfd21fb060d2df55d4ab90c65310339dd4f80e23a08190ccde7a35db1` |
| 9 | `lemma` | [isGaussian_map_equiv_iff](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variant0b0558df07c60e1ae6232bf8d224f529772b0602fcba8c4087a7216cf4dfd9a0.lean/declarations/isgaussian-map-equiv-iff--519bb5dd3986873a8b488f98.md) | 109 | `result-track:519bb5dd3986873a8b488f981bfa76526a3bfd42106417ce2a71085f1c83c20d` |
| 10 | `lemma` | [IsGaussian.charFunDual_eq](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variant0b0558df07c60e1ae6232bf8d224f529772b0602fcba8c4087a7216cf4dfd9a0.lean/declarations/isgaussian-charfundual-eq--50a56e2ab1a57dba1a0d27f3.md) | 120 | `result-track:50a56e2ab1a57dba1a0d27f379ad52fed318afd2755ce4fd9ab10e3b20f0e380` |
| 11 | `theorem` | [isGaussian_iff_charFunDual_eq](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variant0b0558df07c60e1ae6232bf8d224f529772b0602fcba8c4087a7216cf4dfd9a0.lean/declarations/isgaussian-iff-charfundual-eq--0e65ffeb9e15c6b451298781.md) | 136 | `result-track:0e65ffeb9e15c6b4512987816c665467cd09bed4c2ff5e91a728fcac39c4ddb5` |
| 12 | `instance` | [isGaussian_conv](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variant0b0558df07c60e1ae6232bf8d224f529772b0602fcba8c4087a7216cf4dfd9a0.lean/declarations/isgaussian-conv--9dda686f436d0e8b43aea428.md) | 152 | `declaration-track:9dda686f436d0e8b43aea428ea8ba1808a7631c9b9f3546324757b699401fdfa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
