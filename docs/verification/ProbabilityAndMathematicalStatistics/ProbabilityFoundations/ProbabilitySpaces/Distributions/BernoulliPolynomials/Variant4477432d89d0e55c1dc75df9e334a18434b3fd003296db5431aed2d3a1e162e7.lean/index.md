# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Distributions.BernoulliPolynomials.Variant4477432d89d0e55c1dc75df9e334a18434b3fd003296db5431aed2d3a1e162e7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "424955549367746c27538def15b2779c01b6051d",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variant4477432d89d0e55c1dc75df9e334a18434b3fd003296db5431aed2d3a1e162e7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variant4477432d89d0e55c1dc75df9e334a18434b3fd003296db5431aed2d3a1e162e7.lean/index.md) · [Full source](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variant4477432d89d0e55c1dc75df9e334a18434b3fd003296db5431aed2d3a1e162e7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `424955549367746c27538def15b2779c01b6051d`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variant4477432d89d0e55c1dc75df9e334a18434b3fd003296db5431aed2d3a1e162e7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variant4477432d89d0e55c1dc75df9e334a18434b3fd003296db5431aed2d3a1e162e7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.AlgebraMap` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Derivative` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Cast` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Bernoulli` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bernoulli](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variant4477432d89d0e55c1dc75df9e334a18434b3fd003296db5431aed2d3a1e162e7.lean/declarations/bernoulli--452d3216465c2aed1feca30f.md) | 59 | `declaration-track:452d3216465c2aed1feca30f03254baeadd3505caace798847bf6bb55cb3d3b8` |
| 2 | `theorem` | [bernoulli_def](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variant4477432d89d0e55c1dc75df9e334a18434b3fd003296db5431aed2d3a1e162e7.lean/declarations/bernoulli-def--4119534b878bd1a036bb0dcf.md) | 62 | `result-track:4119534b878bd1a036bb0dcf9b4f8ed4761ce986c21a6ffe2a47340825bc23ac` |
| 3 | `theorem` | [bernoulli_zero](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variant4477432d89d0e55c1dc75df9e334a18434b3fd003296db5431aed2d3a1e162e7.lean/declarations/bernoulli-zero--4daeadad87ae68940914ba8b.md) | 76 | `result-track:4daeadad87ae68940914ba8b585fc087f8171f6fdde877c9fcaaa9d1ac2237dd` |
| 4 | `theorem` | [bernoulli_eval_zero](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variant4477432d89d0e55c1dc75df9e334a18434b3fd003296db5431aed2d3a1e162e7.lean/declarations/bernoulli-eval-zero--5f43f88c24ad1ff728af3cf3.md) | 79 | `result-track:5f43f88c24ad1ff728af3cf3ff0bce2145060d628d8925dc4e32744ce861ddad` |
| 5 | `theorem` | [bernoulli_eval_one](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variant4477432d89d0e55c1dc75df9e334a18434b3fd003296db5431aed2d3a1e162e7.lean/declarations/bernoulli-eval-one--16fb91fcb255e7758eba7a22.md) | 88 | `result-track:16fb91fcb255e7758eba7a220a2d1efb4398eca17c08b11184684dbbc49d3ade` |
| 6 | `theorem` | [derivative_bernoulli_add_one](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variant4477432d89d0e55c1dc75df9e334a18434b3fd003296db5431aed2d3a1e162e7.lean/declarations/derivative-bernoulli-add-one--2ced7be5b2ce54e43ffd2976.md) | 98 | `result-track:2ced7be5b2ce54e43ffd2976c72a328dc5aaebdc6e3264925d7b2376df0d5c90` |
| 7 | `theorem` | [derivative_bernoulli](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variant4477432d89d0e55c1dc75df9e334a18434b3fd003296db5431aed2d3a1e162e7.lean/declarations/derivative-bernoulli--64c4975bf8d4da29d15eb9eb.md) | 111 | `result-track:64c4975bf8d4da29d15eb9eb9d463309a3a97a31af19ac5a83b4e210676cf74f` |
| 8 | `theorem` | [sum_bernoulli](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variant4477432d89d0e55c1dc75df9e334a18434b3fd003296db5431aed2d3a1e162e7.lean/declarations/sum-bernoulli--bb93c45bfdcf35c8447e6191.md) | 118 | `result-track:bb93c45bfdcf35c8447e6191a851c1952cca927b548df0c2d44334df0a5052ec` |
| 9 | `theorem` | [bernoulli_eq_sub_sum](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variant4477432d89d0e55c1dc75df9e334a18434b3fd003296db5431aed2d3a1e162e7.lean/declarations/bernoulli-eq-sub-sum--fdf97cc6fd293498265d0c37.md) | 154 | `result-track:fdf97cc6fd293498265d0c3795a7c3ee4ddd6e2b7557f3764702038404b4256b` |
| 10 | `theorem` | [sum_range_pow_eq_bernoulli_sub](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variant4477432d89d0e55c1dc75df9e334a18434b3fd003296db5431aed2d3a1e162e7.lean/declarations/sum-range-pow-eq-bernoulli-sub--5b5606edee0ab83267258e68.md) | 161 | `result-track:5b5606edee0ab83267258e688e534a3fa7231d6e5f067c51df5417d74f078fc3` |
| 11 | `theorem` | [bernoulli_succ_eval](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variant4477432d89d0e55c1dc75df9e334a18434b3fd003296db5431aed2d3a1e162e7.lean/declarations/bernoulli-succ-eval--cc6d506b552ffb4eb1a0aa4b.md) | 178 | `result-track:cc6d506b552ffb4eb1a0aa4b188072118559d9e1597c5dde102df1723f8a1158` |
| 12 | `theorem` | [bernoulli_eval_one_add](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variant4477432d89d0e55c1dc75df9e334a18434b3fd003296db5431aed2d3a1e162e7.lean/declarations/bernoulli-eval-one-add--24351628bcb217e1f2ebf5f2.md) | 183 | `result-track:24351628bcb217e1f2ebf5f2144c49e39b41845bf1b48361f9816f66ac864010` |
| 13 | `theorem` | [bernoulli_generating_function](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variant4477432d89d0e55c1dc75df9e334a18434b3fd003296db5431aed2d3a1e162e7.lean/declarations/bernoulli-generating-function--3de6ca12234adac9c7da9371.md) | 214 | `result-track:3de6ca12234adac9c7da9371da5ee8baaefe3211219a7d433caade77cb07fa32` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
