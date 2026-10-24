# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Distributions.BernoulliPolynomials.Variant36ba999bcfa5b39bf979e2ad14bf34d2b777567bd88ba0bc776ed9b86d220157

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e7195efa855bf88a62cbeb9fc54aa591435ba05a",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variant36ba999bcfa5b39bf979e2ad14bf34d2b777567bd88ba0bc776ed9b86d220157.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variant36ba999bcfa5b39bf979e2ad14bf34d2b777567bd88ba0bc776ed9b86d220157.lean/index.md) · [Full source](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variant36ba999bcfa5b39bf979e2ad14bf34d2b777567bd88ba0bc776ed9b86d220157.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e7195efa855bf88a62cbeb9fc54aa591435ba05a`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variant36ba999bcfa5b39bf979e2ad14bf34d2b777567bd88ba0bc776ed9b86d220157.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variant36ba999bcfa5b39bf979e2ad14bf34d2b777567bd88ba0bc776ed9b86d220157.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Polynomial.AlgebraMap` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.Derivative` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Cast` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Bernoulli` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bernoulli](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variant36ba999bcfa5b39bf979e2ad14bf34d2b777567bd88ba0bc776ed9b86d220157.lean/declarations/bernoulli--d796c9f8de3be44e96c65e54.md) | 63 | `declaration-track:d796c9f8de3be44e96c65e54cffe29dff4dd899e3f59b59cccbdd579136dd8c4` |
| 2 | `theorem` | [bernoulli_def](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variant36ba999bcfa5b39bf979e2ad14bf34d2b777567bd88ba0bc776ed9b86d220157.lean/declarations/bernoulli-def--e59879f8187c907269b7a97a.md) | 67 | `result-track:e59879f8187c907269b7a97a78ff29e3b7610e5baa0db5ee7c1641a1d5647f19` |
| 3 | `theorem` | [bernoulli_zero](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variant36ba999bcfa5b39bf979e2ad14bf34d2b777567bd88ba0bc776ed9b86d220157.lean/declarations/bernoulli-zero--a5e517388e0cad971f6f0236.md) | 81 | `result-track:a5e517388e0cad971f6f0236e79b34e8b73d98e25e240657edbf183d2d1e630c` |
| 4 | `theorem` | [bernoulli_eval_zero](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variant36ba999bcfa5b39bf979e2ad14bf34d2b777567bd88ba0bc776ed9b86d220157.lean/declarations/bernoulli-eval-zero--0c82fdde28370a4decbcb0b6.md) | 85 | `result-track:0c82fdde28370a4decbcb0b6fdd99e16bdfb982baae56af71c487c5c7c9bbf7b` |
| 5 | `theorem` | [bernoulli_eval_one](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variant36ba999bcfa5b39bf979e2ad14bf34d2b777567bd88ba0bc776ed9b86d220157.lean/declarations/bernoulli-eval-one--b8f1d018de057c7ce27f241a.md) | 96 | `result-track:b8f1d018de057c7ce27f241a2203cb6c5f1137841a3e970dec2d9387c5d05a2c` |
| 6 | `theorem` | [derivative_bernoulli_add_one](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variant36ba999bcfa5b39bf979e2ad14bf34d2b777567bd88ba0bc776ed9b86d220157.lean/declarations/derivative-bernoulli-add-one--82e47329b716fc3236aaa63b.md) | 108 | `result-track:82e47329b716fc3236aaa63bbd9aa06b2a36ad72ddddd5db727e1e0077ad2a8a` |
| 7 | `theorem` | [derivative_bernoulli](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variant36ba999bcfa5b39bf979e2ad14bf34d2b777567bd88ba0bc776ed9b86d220157.lean/declarations/derivative-bernoulli--d769a9c31c1b8ebc17d9d1ad.md) | 122 | `result-track:d769a9c31c1b8ebc17d9d1ad911b547e5d13080ce085d4aad2fb43d40acbf4ad` |
| 8 | `theorem` | [sum_bernoulli](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variant36ba999bcfa5b39bf979e2ad14bf34d2b777567bd88ba0bc776ed9b86d220157.lean/declarations/sum-bernoulli--32a9279c056e5c0d17834fec.md) | 130 | `result-track:32a9279c056e5c0d17834fec554589c93e5237310ae319b59cb75b1525ae11ca` |
| 9 | `theorem` | [bernoulli_eq_sub_sum](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variant36ba999bcfa5b39bf979e2ad14bf34d2b777567bd88ba0bc776ed9b86d220157.lean/declarations/bernoulli-eq-sub-sum--d4ebb577c2bbdc633ae7927e.md) | 167 | `result-track:d4ebb577c2bbdc633ae7927ea525ae29210b4a1d134460c976085b41a1e4864d` |
| 10 | `theorem` | [sum_range_pow_eq_bernoulli_sub](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variant36ba999bcfa5b39bf979e2ad14bf34d2b777567bd88ba0bc776ed9b86d220157.lean/declarations/sum-range-pow-eq-bernoulli-sub--1fc2ae2f51723bf9652e82b3.md) | 175 | `result-track:1fc2ae2f51723bf9652e82b3a9942d31d3951136c81e40144fb3712a699f09c5` |
| 11 | `theorem` | [bernoulli_succ_eval](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variant36ba999bcfa5b39bf979e2ad14bf34d2b777567bd88ba0bc776ed9b86d220157.lean/declarations/bernoulli-succ-eval--35d2965264fd48fc68e3d09e.md) | 194 | `result-track:35d2965264fd48fc68e3d09e1ea8f654bf5306584c7262644121c117e2892f3e` |
| 12 | `theorem` | [bernoulli_eval_one_add](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variant36ba999bcfa5b39bf979e2ad14bf34d2b777567bd88ba0bc776ed9b86d220157.lean/declarations/bernoulli-eval-one-add--cc94e5f5d5cb35805494b725.md) | 200 | `result-track:cc94e5f5d5cb35805494b725e98c80c5d95fdde7e68463bcf4c394d4812927fd` |
| 13 | `theorem` | [bernoulli_generating_function](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variant36ba999bcfa5b39bf979e2ad14bf34d2b777567bd88ba0bc776ed9b86d220157.lean/declarations/bernoulli-generating-function--c286eac5c14792ae83b560cc.md) | 233 | `result-track:c286eac5c14792ae83b560cce86281729b278323aff349d52dc3923765a1e298` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
