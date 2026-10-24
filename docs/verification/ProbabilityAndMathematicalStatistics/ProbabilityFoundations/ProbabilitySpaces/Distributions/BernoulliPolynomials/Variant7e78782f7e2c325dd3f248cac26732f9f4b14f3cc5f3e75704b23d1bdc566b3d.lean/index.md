# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Distributions.BernoulliPolynomials.Variant7e78782f7e2c325dd3f248cac26732f9f4b14f3cc5f3e75704b23d1bdc566b3d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a614a1f28ddb57d5e491478df279b0f264f46390",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variant7e78782f7e2c325dd3f248cac26732f9f4b14f3cc5f3e75704b23d1bdc566b3d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variant7e78782f7e2c325dd3f248cac26732f9f4b14f3cc5f3e75704b23d1bdc566b3d.lean/index.md) · [Full source](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variant7e78782f7e2c325dd3f248cac26732f9f4b14f3cc5f3e75704b23d1bdc566b3d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a614a1f28ddb57d5e491478df279b0f264f46390`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variant7e78782f7e2c325dd3f248cac26732f9f4b14f3cc5f3e75704b23d1bdc566b3d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variant7e78782f7e2c325dd3f248cac26732f9f4b14f3cc5f3e75704b23d1bdc566b3d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Polynomial.AlgebraMap` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.Derivative` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Cast` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Bernoulli` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bernoulli](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variant7e78782f7e2c325dd3f248cac26732f9f4b14f3cc5f3e75704b23d1bdc566b3d.lean/declarations/bernoulli--f0133e62a9b1cc2368e3724d.md) | 55 | `declaration-track:f0133e62a9b1cc2368e3724d2f23279b16576e275c7ccefa5b3112e3c14dcff5` |
| 2 | `theorem` | [bernoulli_def](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variant7e78782f7e2c325dd3f248cac26732f9f4b14f3cc5f3e75704b23d1bdc566b3d.lean/declarations/bernoulli-def--2db43082cb8f0ce9dedadc82.md) | 59 | `result-track:2db43082cb8f0ce9dedadc829ba2ac87be878fa89313535f07f39180ead5ef2c` |
| 3 | `theorem` | [bernoulli_zero](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variant7e78782f7e2c325dd3f248cac26732f9f4b14f3cc5f3e75704b23d1bdc566b3d.lean/declarations/bernoulli-zero--1f921881fb0d7ced7c368be0.md) | 73 | `result-track:1f921881fb0d7ced7c368be0d2a85eaac4682303c22cc52ce828e8826bd26b16` |
| 4 | `theorem` | [bernoulli_eval_zero](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variant7e78782f7e2c325dd3f248cac26732f9f4b14f3cc5f3e75704b23d1bdc566b3d.lean/declarations/bernoulli-eval-zero--539a1bcc87899ca72317d591.md) | 77 | `result-track:539a1bcc87899ca72317d5915b5f9b8a242f573370c84af1351d9c4182ee9e96` |
| 5 | `theorem` | [bernoulli_eval_one](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variant7e78782f7e2c325dd3f248cac26732f9f4b14f3cc5f3e75704b23d1bdc566b3d.lean/declarations/bernoulli-eval-one--42e4c7b7166990f8106ef7c6.md) | 88 | `result-track:42e4c7b7166990f8106ef7c6a2f20c4dbde1c2aa1bf6e243e75074be3691a764` |
| 6 | `theorem` | [derivative_bernoulli_add_one](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variant7e78782f7e2c325dd3f248cac26732f9f4b14f3cc5f3e75704b23d1bdc566b3d.lean/declarations/derivative-bernoulli-add-one--49c0bafe0000bba85070cefa.md) | 100 | `result-track:49c0bafe0000bba85070cefaf6ced45f8c2404ad559548e575a1baa41fc56f34` |
| 7 | `theorem` | [derivative_bernoulli](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variant7e78782f7e2c325dd3f248cac26732f9f4b14f3cc5f3e75704b23d1bdc566b3d.lean/declarations/derivative-bernoulli--c91baac53939f8fe3b9b726f.md) | 114 | `result-track:c91baac53939f8fe3b9b726ff9458275b0db09e74ac4b7bd1ad3e50674d7931a` |
| 8 | `theorem` | [sum_bernoulli](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variant7e78782f7e2c325dd3f248cac26732f9f4b14f3cc5f3e75704b23d1bdc566b3d.lean/declarations/sum-bernoulli--429bb7c0202ead13ae7c25d8.md) | 122 | `result-track:429bb7c0202ead13ae7c25d83dc42529eec5f79e15b660092feb384836ba6068` |
| 9 | `theorem` | [bernoulli_eq_sub_sum](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variant7e78782f7e2c325dd3f248cac26732f9f4b14f3cc5f3e75704b23d1bdc566b3d.lean/declarations/bernoulli-eq-sub-sum--658a19edc7d6689e0726eb55.md) | 159 | `result-track:658a19edc7d6689e0726eb55d6049cd8db28ec93c165ca37595103edac60ea18` |
| 10 | `theorem` | [sum_range_pow_eq_bernoulli_sub](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variant7e78782f7e2c325dd3f248cac26732f9f4b14f3cc5f3e75704b23d1bdc566b3d.lean/declarations/sum-range-pow-eq-bernoulli-sub--cba154a6b7073a084c219695.md) | 167 | `result-track:cba154a6b7073a084c21969573d85cef7aca36b31dd7f224daf6cec92d42eeb1` |
| 11 | `theorem` | [bernoulli_succ_eval](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variant7e78782f7e2c325dd3f248cac26732f9f4b14f3cc5f3e75704b23d1bdc566b3d.lean/declarations/bernoulli-succ-eval--2c8fe37b1366276bafb4c0ae.md) | 186 | `result-track:2c8fe37b1366276bafb4c0aeb86cfa3c7a08e266c55be788345d82fb4b9e06dc` |
| 12 | `theorem` | [bernoulli_eval_one_add](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variant7e78782f7e2c325dd3f248cac26732f9f4b14f3cc5f3e75704b23d1bdc566b3d.lean/declarations/bernoulli-eval-one-add--e819d03b15b08fc80848d992.md) | 192 | `result-track:e819d03b15b08fc80848d992cf6418defe0332ae53a4ab647aa2afacd2596572` |
| 13 | `theorem` | [bernoulli_generating_function](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variant7e78782f7e2c325dd3f248cac26732f9f4b14f3cc5f3e75704b23d1bdc566b3d.lean/declarations/bernoulli-generating-function--eddab4eb66ab275b880067cd.md) | 225 | `result-track:eddab4eb66ab275b880067cd926e294c78dc2a4461364a0a8a8a397e9f7c5138` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
