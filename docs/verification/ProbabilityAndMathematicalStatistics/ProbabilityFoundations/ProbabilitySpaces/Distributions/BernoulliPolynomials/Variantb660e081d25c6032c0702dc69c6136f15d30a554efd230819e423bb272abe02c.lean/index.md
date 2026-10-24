# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Distributions.BernoulliPolynomials.Variantb660e081d25c6032c0702dc69c6136f15d30a554efd230819e423bb272abe02c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "36c75d1b52a290fee20d1d40bdd35295d5dbdffa",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variantb660e081d25c6032c0702dc69c6136f15d30a554efd230819e423bb272abe02c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variantb660e081d25c6032c0702dc69c6136f15d30a554efd230819e423bb272abe02c.lean/index.md) · [Full source](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variantb660e081d25c6032c0702dc69c6136f15d30a554efd230819e423bb272abe02c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `36c75d1b52a290fee20d1d40bdd35295d5dbdffa`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variantb660e081d25c6032c0702dc69c6136f15d30a554efd230819e423bb272abe02c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variantb660e081d25c6032c0702dc69c6136f15d30a554efd230819e423bb272abe02c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.AlgebraMap` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Derivative` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Cast` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Bernoulli` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bernoulli](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variantb660e081d25c6032c0702dc69c6136f15d30a554efd230819e423bb272abe02c.lean/declarations/bernoulli--9a7c40654c46b88b0c2a423b.md) | 51 | `declaration-track:9a7c40654c46b88b0c2a423b6b7643a5daef571424b81be17a27d200846a4794` |
| 2 | `theorem` | [bernoulli_def](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variantb660e081d25c6032c0702dc69c6136f15d30a554efd230819e423bb272abe02c.lean/declarations/bernoulli-def--9a5b56ac2ff167c5a067b992.md) | 54 | `result-track:9a5b56ac2ff167c5a067b992230aa167bafd3b5c985bf62f41b7330a9da4b652` |
| 3 | `theorem` | [bernoulli_zero](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variantb660e081d25c6032c0702dc69c6136f15d30a554efd230819e423bb272abe02c.lean/declarations/bernoulli-zero--7f660f5c1431e42a685c2c33.md) | 68 | `result-track:7f660f5c1431e42a685c2c33232936667a61f8490cac081d8beea37660e50fc4` |
| 4 | `theorem` | [bernoulli_eval_zero](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variantb660e081d25c6032c0702dc69c6136f15d30a554efd230819e423bb272abe02c.lean/declarations/bernoulli-eval-zero--f0151ae09adf76f7c3df30d8.md) | 71 | `result-track:f0151ae09adf76f7c3df30d807075081303324e4b846ec6682ec8fda957ba71a` |
| 5 | `theorem` | [bernoulli_eval_one](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variantb660e081d25c6032c0702dc69c6136f15d30a554efd230819e423bb272abe02c.lean/declarations/bernoulli-eval-one--3f7f600d2d65413866740a27.md) | 80 | `result-track:3f7f600d2d65413866740a2708b718735c7962107a47ed5ac59dfc2569c76adb` |
| 6 | `theorem` | [derivative_bernoulli_add_one](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variantb660e081d25c6032c0702dc69c6136f15d30a554efd230819e423bb272abe02c.lean/declarations/derivative-bernoulli-add-one--a56665b2c63a63f0935f09da.md) | 90 | `result-track:a56665b2c63a63f0935f09da8015c5ee654b043d5f87881417330ac86f186bbd` |
| 7 | `theorem` | [derivative_bernoulli](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variantb660e081d25c6032c0702dc69c6136f15d30a554efd230819e423bb272abe02c.lean/declarations/derivative-bernoulli--8c2d624f6189257a3e79bbf4.md) | 103 | `result-track:8c2d624f6189257a3e79bbf4cc172da11e5117adec8d4f21f20fa411ea99e20c` |
| 8 | `theorem` | [sum_bernoulli](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variantb660e081d25c6032c0702dc69c6136f15d30a554efd230819e423bb272abe02c.lean/declarations/sum-bernoulli--00413dc9e0e0a2475c1a640f.md) | 110 | `result-track:00413dc9e0e0a2475c1a640fa55bb33ff1a7a52f31f74b073e86c4f721a1b87e` |
| 9 | `theorem` | [bernoulli_eq_sub_sum](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variantb660e081d25c6032c0702dc69c6136f15d30a554efd230819e423bb272abe02c.lean/declarations/bernoulli-eq-sub-sum--b34cb216b594bd9831d1133d.md) | 146 | `result-track:b34cb216b594bd9831d1133d552d2b134515f2f43c347ec00857a68f0e191177` |
| 10 | `theorem` | [sum_range_pow_eq_bernoulli_sub](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variantb660e081d25c6032c0702dc69c6136f15d30a554efd230819e423bb272abe02c.lean/declarations/sum-range-pow-eq-bernoulli-sub--1d031374b77c09202f783895.md) | 153 | `result-track:1d031374b77c09202f783895564e528b376d9108c9cd2b7a67d1a9f6aa210f6d` |
| 11 | `theorem` | [bernoulli_succ_eval](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variantb660e081d25c6032c0702dc69c6136f15d30a554efd230819e423bb272abe02c.lean/declarations/bernoulli-succ-eval--06e2aeec4b747b42e6870995.md) | 170 | `result-track:06e2aeec4b747b42e68709958a6fcd2d419ae55b2ead606dee4d429a7ce1e377` |
| 12 | `theorem` | [bernoulli_eval_one_add](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variantb660e081d25c6032c0702dc69c6136f15d30a554efd230819e423bb272abe02c.lean/declarations/bernoulli-eval-one-add--1b9505d530e4adfadb37ebd9.md) | 175 | `result-track:1b9505d530e4adfadb37ebd96ae47df8cfa9cfd4976bc470773ae598375bf3fd` |
| 13 | `theorem` | [bernoulli_generating_function](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variantb660e081d25c6032c0702dc69c6136f15d30a554efd230819e423bb272abe02c.lean/declarations/bernoulli-generating-function--5c9e65ac2075b3a934783b30.md) | 206 | `result-track:5c9e65ac2075b3a934783b3097f9f7a7a711d8de2a21f54e93ef0966344b01b0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
