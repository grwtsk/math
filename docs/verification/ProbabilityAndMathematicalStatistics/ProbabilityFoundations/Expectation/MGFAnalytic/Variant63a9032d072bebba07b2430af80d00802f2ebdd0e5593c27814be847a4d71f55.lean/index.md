# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.MGFAnalytic.Variant63a9032d072bebba07b2430af80d00802f2ebdd0e5593c27814be847a4d71f55

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a8a84e07f8461c8c5bb2c7d7882d51e5e7e2e85c",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant63a9032d072bebba07b2430af80d00802f2ebdd0e5593c27814be847a4d71f55.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant63a9032d072bebba07b2430af80d00802f2ebdd0e5593c27814be847a4d71f55.lean/index.md) · [Full source](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant63a9032d072bebba07b2430af80d00802f2ebdd0e5593c27814be847a4d71f55.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a8a84e07f8461c8c5bb2c7d7882d51e5e7e2e85c`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant63a9032d072bebba07b2430af80d00802f2ebdd0e5593c27814be847a4d71f55.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant63a9032d072bebba07b2430af80d00802f2ebdd0e5593c27814be847a4d71f55.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Moments.ComplexMGF` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Complex.Analytic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [hasDerivAt_integral_pow_mul_exp_real](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant63a9032d072bebba07b2430af80d00802f2ebdd0e5593c27814be847a4d71f55.lean/declarations/hasderivat-integral-pow-mul-exp-real--d978a445df5fd8425da1f309.md) | 37 | `result-track:d978a445df5fd8425da1f309e4a091e713626be0ab2caeb612d783bfe1c4acd0` |
| 2 | `lemma` | [hasDerivAt_mgf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant63a9032d072bebba07b2430af80d00802f2ebdd0e5593c27814be847a4d71f55.lean/declarations/hasderivat-mgf--dd3f8bacd8af0f8271e2954a.md) | 56 | `result-track:dd3f8bacd8af0f8271e2954aa89ef1df433ccb49bdf2ff347ddda42476219ed4` |
| 3 | `lemma` | [hasDerivAt_iteratedDeriv_mgf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant63a9032d072bebba07b2430af80d00802f2ebdd0e5593c27814be847a4d71f55.lean/declarations/hasderivat-iteratedderiv-mgf--861b2f555395536b47067e28.md) | 62 | `result-track:861b2f555395536b47067e283993fc64dd44f0824b0085cde7e11f4518a5dcb7` |
| 4 | `lemma` | [iteratedDeriv_mgf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant63a9032d072bebba07b2430af80d00802f2ebdd0e5593c27814be847a4d71f55.lean/declarations/iteratedderiv-mgf--ec106e0e52496f3d1cd1984e.md) | 78 | `result-track:ec106e0e52496f3d1cd1984e34b98babe0b5ea2a3446cde6a44490cb7539182d` |
| 5 | `lemma` | [iteratedDeriv_mgf_zero](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant63a9032d072bebba07b2430af80d00802f2ebdd0e5593c27814be847a4d71f55.lean/declarations/iteratedderiv-mgf-zero--c13a83f86ba52e260f4f0b29.md) | 87 | `result-track:c13a83f86ba52e260f4f0b29ee81479e9cf5e024d52ef317d551f2681024899b` |
| 6 | `lemma` | [deriv_mgf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant63a9032d072bebba07b2430af80d00802f2ebdd0e5593c27814be847a4d71f55.lean/declarations/deriv-mgf--2b063207a75e939d011b804f.md) | 93 | `result-track:2b063207a75e939d011b804f2035caf192184359a476cc3911682997ab02aac9` |
| 7 | `lemma` | [deriv_mgf_zero](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant63a9032d072bebba07b2430af80d00802f2ebdd0e5593c27814be847a4d71f55.lean/declarations/deriv-mgf-zero--e997354e905bfd782dcda256.md) | 97 | `result-track:e997354e905bfd782dcda256a02406465b17c6ebf7d42d2716328d7ff53163bf` |
| 8 | `lemma` | [analyticAt_mgf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant63a9032d072bebba07b2430af80d00802f2ebdd0e5593c27814be847a4d71f55.lean/declarations/analyticat-mgf--c6b954f6bb33ed261240a3cb.md) | 105 | `result-track:c6b954f6bb33ed261240a3cb36d07a48999d694b60162d1b17df8ee0b6348083` |
| 9 | `lemma` | [analyticOnNhd_mgf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant63a9032d072bebba07b2430af80d00802f2ebdd0e5593c27814be847a4d71f55.lean/declarations/analyticonnhd-mgf--da9901c7584709d60e3ea718.md) | 110 | `result-track:da9901c7584709d60e3ea7183d3da7a5b292eea461ceee474e6c46bb8a94274f` |
| 10 | `lemma` | [analyticOn_mgf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant63a9032d072bebba07b2430af80d00802f2ebdd0e5593c27814be847a4d71f55.lean/declarations/analyticon-mgf--61a63e703fd4d31cbd3e56b7.md) | 115 | `result-track:61a63e703fd4d31cbd3e56b79c9553176338371dbc3c42e42249eddaf56b2b40` |
| 11 | `lemma` | [hasFPowerSeriesAt_mgf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant63a9032d072bebba07b2430af80d00802f2ebdd0e5593c27814be847a4d71f55.lean/declarations/hasfpowerseriesat-mgf--e3c5a91db4e916870a057414.md) | 118 | `result-track:e3c5a91db4e916870a057414b808d922ff1e49a3a90ef2748acd73aae2c5b102` |
| 12 | `lemma` | [differentiableAt_mgf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant63a9032d072bebba07b2430af80d00802f2ebdd0e5593c27814be847a4d71f55.lean/declarations/differentiableat-mgf--964463417b866751d94c011d.md) | 125 | `result-track:964463417b866751d94c011d5af2d5db2f34a7283d64eb8d2b574e8c68a55282` |
| 13 | `lemma` | [differentiableOn_mgf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant63a9032d072bebba07b2430af80d00802f2ebdd0e5593c27814be847a4d71f55.lean/declarations/differentiableon-mgf--0937dafe86ee5ce9314bb1ff.md) | 128 | `result-track:0937dafe86ee5ce9314bb1ffaef4bd40a0e4fcc65d2dcf5e7725a6d92b4e7d4d` |
| 14 | `lemma` | [continuousOn_mgf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant63a9032d072bebba07b2430af80d00802f2ebdd0e5593c27814be847a4d71f55.lean/declarations/continuouson-mgf--3aa4a86bb3f86c8a9e26dc8a.md) | 132 | `result-track:3aa4a86bb3f86c8a9e26dc8a22d412f97581712a05fe16c482df911f071553ca` |
| 15 | `lemma` | [continuous_mgf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant63a9032d072bebba07b2430af80d00802f2ebdd0e5593c27814be847a4d71f55.lean/declarations/continuous-mgf--38fcab0820ff6c23396a080a.md) | 135 | `result-track:38fcab0820ff6c23396a080a7a81a79a08b9f9ee5f014f8eef77b8ab03e39d7c` |
| 16 | `lemma` | [analyticOnNhd_iteratedDeriv_mgf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant63a9032d072bebba07b2430af80d00802f2ebdd0e5593c27814be847a4d71f55.lean/declarations/analyticonnhd-iteratedderiv-mgf--fc66f338e1cfff451280bdc0.md) | 144 | `result-track:fc66f338e1cfff451280bdc0a9af36efff79c5ae02b17da74f69d77bd1ac5b8f` |
| 17 | `lemma` | [analyticOn_iteratedDeriv_mgf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant63a9032d072bebba07b2430af80d00802f2ebdd0e5593c27814be847a4d71f55.lean/declarations/analyticon-iteratedderiv-mgf--8d891f50befc03821651e608.md) | 149 | `result-track:8d891f50befc03821651e608aee87cfcccfe3aee9ed71c560e88d807d7510fa5` |
| 18 | `lemma` | [analyticAt_iteratedDeriv_mgf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant63a9032d072bebba07b2430af80d00802f2ebdd0e5593c27814be847a4d71f55.lean/declarations/analyticat-iteratedderiv-mgf--ff83015f175adda5d1e92e1c.md) | 153 | `result-track:ff83015f175adda5d1e92e1c84f07ccbfdb3f07188eabf3c3bc73eb9fadf3a01` |
| 19 | `lemma` | [differentiableAt_iteratedDeriv_mgf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant63a9032d072bebba07b2430af80d00802f2ebdd0e5593c27814be847a4d71f55.lean/declarations/differentiableat-iteratedderiv-mgf--c64f6b7d67f1bad596a40703.md) | 157 | `result-track:c64f6b7d67f1bad596a40703239def8b8e19a18ac81c6ea3e7d6288c1ee576b9` |
| 20 | `lemma` | [analyticAt_cgf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant63a9032d072bebba07b2430af80d00802f2ebdd0e5593c27814be847a4d71f55.lean/declarations/analyticat-cgf--7d147adb55bb94977a5f3a94.md) | 165 | `result-track:7d147adb55bb94977a5f3a94b443d3df19725519c0c15ffd1e1d72338962b285` |
| 21 | `lemma` | [analyticOnNhd_cgf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant63a9032d072bebba07b2430af80d00802f2ebdd0e5593c27814be847a4d71f55.lean/declarations/analyticonnhd-cgf--3d64ea85472d26da2b5ce3e0.md) | 171 | `result-track:3d64ea85472d26da2b5ce3e0f2ff45ceee968b6f2d9daa35dc7e1a1c5aad7d64` |
| 22 | `lemma` | [analyticOn_cgf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant63a9032d072bebba07b2430af80d00802f2ebdd0e5593c27814be847a4d71f55.lean/declarations/analyticon-cgf--ea5be3dce5dbd2d457600874.md) | 176 | `result-track:ea5be3dce5dbd2d457600874bd7b59b86e8dba39f0ec4b6ae8f9c94901e1fa79` |
| 23 | `lemma` | [deriv_cgf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant63a9032d072bebba07b2430af80d00802f2ebdd0e5593c27814be847a4d71f55.lean/declarations/deriv-cgf--c2792d0dbd9c52593fb3f9c5.md) | 183 | `result-track:c2792d0dbd9c52593fb3f9c5dfd36bd76a0dd1866498b3fdd26b3d080878d229` |
| 24 | `lemma` | [deriv_cgf_zero](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant63a9032d072bebba07b2430af80d00802f2ebdd0e5593c27814be847a4d71f55.lean/declarations/deriv-cgf-zero--50867635786a8169e82edfe0.md) | 195 | `result-track:50867635786a8169e82edfe0741d6de56c1fe23b2f9d2931a420090516888edb` |
| 25 | `lemma` | [iteratedDeriv_two_cgf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant63a9032d072bebba07b2430af80d00802f2ebdd0e5593c27814be847a4d71f55.lean/declarations/iteratedderiv-two-cgf--3e95f5f400aa654e388eea77.md) | 198 | `result-track:3e95f5f400aa654e388eea771a0b376c5d6e99e25b71d296e010572b2613e804` |
| 26 | `lemma` | [iteratedDeriv_two_cgf_eq_integral](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant63a9032d072bebba07b2430af80d00802f2ebdd0e5593c27814be847a4d71f55.lean/declarations/iteratedderiv-two-cgf-eq-integral--51d06dac1e762311e5c55622.md) | 234 | `result-track:51d06dac1e762311e5c55622801251da75a3a3821c725da5d4bd96e528291169` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
