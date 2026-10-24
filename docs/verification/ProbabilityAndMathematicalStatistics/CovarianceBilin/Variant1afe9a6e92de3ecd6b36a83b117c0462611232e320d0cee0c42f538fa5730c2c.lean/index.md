# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.CovarianceBilin.Variant1afe9a6e92de3ecd6b36a83b117c0462611232e320d0cee0c42f538fa5730c2c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5941a37b650761c98eea985ef44046fae1596596",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant1afe9a6e92de3ecd6b36a83b117c0462611232e320d0cee0c42f538fa5730c2c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant1afe9a6e92de3ecd6b36a83b117c0462611232e320d0cee0c42f538fa5730c2c.lean/index.md) · [Full source](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant1afe9a6e92de3ecd6b36a83b117c0462611232e320d0cee0c42f538fa5730c2c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5941a37b650761c98eea985ef44046fae1596596`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant1afe9a6e92de3ecd6b36a83b117c0462611232e320d0cee0c42f538fa5730c2c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant1afe9a6e92de3ecd6b36a83b117c0462611232e320d0cee0c42f538fa5730c2c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [covarianceBilin](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant1afe9a6e92de3ecd6b36a83b117c0462611232e320d0cee0c42f538fa5730c2c.lean/declarations/covariancebilin--29db6937c3861181b0a9ec15.md) | 50 | `declaration-track:29db6937c3861181b0a9ec159ddad0cec4ec1b09261dfd8a2ef320e324644fc2` |
| 2 | `lemma` | [covarianceBilin_zero](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant1afe9a6e92de3ecd6b36a83b117c0462611232e320d0cee0c42f538fa5730c2c.lean/declarations/covariancebilin-zero--be38728478c4328f8caf5366.md) | 55 | `result-track:be38728478c4328f8caf53663ba88db9b81a22e3edb4ac84f0efc5041d77e5a3` |
| 3 | `lemma` | [covarianceBilin_eq_covarianceBilinDual](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant1afe9a6e92de3ecd6b36a83b117c0462611232e320d0cee0c42f538fa5730c2c.lean/declarations/covariancebilin-eq-covariancebilindual--91db5e57ffba7d20c8c6a952.md) | 59 | `result-track:91db5e57ffba7d20c8c6a952cb4b535f059fb99d4d692b70bad3ed44fe875eb2` |
| 4 | `lemma` | [covarianceBilin_of_not_memLp](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant1afe9a6e92de3ecd6b36a83b117c0462611232e320d0cee0c42f538fa5730c2c.lean/declarations/covariancebilin-of-not-memlp--c1b3283a3a62bf5668bb9760.md) | 63 | `result-track:c1b3283a3a62bf5668bb97608ea46362b6d216f0a7e08610f4e384fece4fcd9e` |
| 5 | `lemma` | [covarianceBilin_apply](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant1afe9a6e92de3ecd6b36a83b117c0462611232e320d0cee0c42f538fa5730c2c.lean/declarations/covariancebilin-apply--0cc55f483cf306b644f6c44b.md) | 68 | `result-track:0cc55f483cf306b644f6c44bbe9205d12c4192a2ed34c30a163498e1fb3f2273` |
| 6 | `lemma` | [covarianceBilin_comm](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant1afe9a6e92de3ecd6b36a83b117c0462611232e320d0cee0c42f538fa5730c2c.lean/declarations/covariancebilin-comm--692e8551c25133ddc69b4c89.md) | 72 | `result-track:692e8551c25133ddc69b4c891977851725a35973ac0cc81a0f14a8f9acd089a6` |
| 7 | `lemma` | [covarianceBilin_self](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant1afe9a6e92de3ecd6b36a83b117c0462611232e320d0cee0c42f538fa5730c2c.lean/declarations/covariancebilin-self--bd3dbf9a01fa7a31fb3953c6.md) | 77 | `result-track:bd3dbf9a01fa7a31fb3953c695b96affe8506bef2a51653cc8332fa909d8f592` |
| 8 | `lemma` | [covarianceBilin_apply_eq_cov](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant1afe9a6e92de3ecd6b36a83b117c0462611232e320d0cee0c42f538fa5730c2c.lean/declarations/covariancebilin-apply-eq-cov--4e5aeea46a1eaca40b287249.md) | 82 | `result-track:4e5aeea46a1eaca40b287249f81f2fe07c600efc2ae56884548f1bef15224d82` |
| 9 | `lemma` | [covarianceBilin_real](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant1afe9a6e92de3ecd6b36a83b117c0462611232e320d0cee0c42f538fa5730c2c.lean/declarations/covariancebilin-real--add32b14e193b19c8bab8460.md) | 88 | `result-track:add32b14e193b19c8bab8460fdcf6cfaa280f8d1ca6f38d41f5245e01f3e2f20` |
| 10 | `lemma` | [covarianceBilin_real_self](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant1afe9a6e92de3ecd6b36a83b117c0462611232e320d0cee0c42f538fa5730c2c.lean/declarations/covariancebilin-real-self--06cb68772b9adb6efab9975c.md) | 96 | `result-track:06cb68772b9adb6efab9975c90c1467ea73c1b1deb73fd77e952eab2dd203c42` |
| 11 | `lemma` | [covarianceBilin_self_nonneg](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant1afe9a6e92de3ecd6b36a83b117c0462611232e320d0cee0c42f538fa5730c2c.lean/declarations/covariancebilin-self-nonneg--27d79a15a7351301044c4b21.md) | 101 | `result-track:27d79a15a7351301044c4b21570bffd9ce61a01e2c08fec6ec580bf916a7a5de` |
| 12 | `lemma` | [isPosSemidef_covarianceBilin](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant1afe9a6e92de3ecd6b36a83b117c0462611232e320d0cee0c42f538fa5730c2c.lean/declarations/ispossemidef-covariancebilin--a24918c4b15bd5e22822cc77.md) | 105 | `result-track:a24918c4b15bd5e22822cc7713d380ec485dacc3bf2df07f6673661dcdf9c13e` |
| 13 | `lemma` | [covarianceBilin_map](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant1afe9a6e92de3ecd6b36a83b117c0462611232e320d0cee0c42f538fa5730c2c.lean/declarations/covariancebilin-map--f7f5c898ff971a884f382c84.md) | 110 | `result-track:f7f5c898ff971a884f382c84bd6ec8b9bda3729fd5045680809aa4f9393bf666` |
| 14 | `lemma` | [covarianceBilin_map_const_add](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant1afe9a6e92de3ecd6b36a83b117c0462611232e320d0cee0c42f538fa5730c2c.lean/declarations/covariancebilin-map-const-add--eb46e43acf1e1a1284003739.md) | 121 | `result-track:eb46e43acf1e1a128400373911c9d4239376ad3a06dfc74847d43959a856cdb7` |
| 15 | `lemma` | [covarianceBilin_apply_basisFun](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant1afe9a6e92de3ecd6b36a83b117c0462611232e320d0cee0c42f538fa5730c2c.lean/declarations/covariancebilin-apply-basisfun--ed8cdc0b88548507bc4c4134.md) | 142 | `result-track:ed8cdc0b88548507bc4c4134bc9662715cb6a3dfc0d765f54029cc8221c623df` |
| 16 | `lemma` | [covarianceBilin_apply_basisFun_self](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant1afe9a6e92de3ecd6b36a83b117c0462611232e320d0cee0c42f538fa5730c2c.lean/declarations/covariancebilin-apply-basisfun-self--71ba4fa53103ebb972e33aca.md) | 154 | `result-track:71ba4fa53103ebb972e33aca307ea665dbcf8acc2786a0fd5114075b9dc02315` |
| 17 | `lemma` | [covarianceBilin_apply_pi](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant1afe9a6e92de3ecd6b36a83b117c0462611232e320d0cee0c42f538fa5730c2c.lean/declarations/covariancebilin-apply-pi--6b39bc69d7cbc9a017c92f90.md) | 162 | `result-track:6b39bc69d7cbc9a017c92f901aa49b4d73dfbe05d1d076348032f1d7a0c4ce7e` |
| 18 | `def` | [covarianceOperator](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant1afe9a6e92de3ecd6b36a83b117c0462611232e320d0cee0c42f538fa5730c2c.lean/declarations/covarianceoperator--ab767f2a8b583e70047df61c.md) | 192 | `declaration-track:ab767f2a8b583e70047df61c547ef916b21a4189a276815cf15ebc53888a0076` |
| 19 | `lemma` | [covarianceOperator_zero](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant1afe9a6e92de3ecd6b36a83b117c0462611232e320d0cee0c42f538fa5730c2c.lean/declarations/covarianceoperator-zero--bf6b6639ed0fa3e586680cab.md) | 197 | `result-track:bf6b6639ed0fa3e586680caba49eac30175cb09b1d618cfe0b4cfd25fdde3d5c` |
| 20 | `lemma` | [covarianceOperator_of_not_memLp](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant1afe9a6e92de3ecd6b36a83b117c0462611232e320d0cee0c42f538fa5730c2c.lean/declarations/covarianceoperator-of-not-memlp--271c9492777aac12639eefa4.md) | 201 | `result-track:271c9492777aac12639eefa40945c67d12e7328eced14039df413f90ce5b3f48` |
| 21 | `lemma` | [covarianceOperator_inner](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant1afe9a6e92de3ecd6b36a83b117c0462611232e320d0cee0c42f538fa5730c2c.lean/declarations/covarianceoperator-inner--0dcf170c41374183831942e0.md) | 207 | `result-track:0dcf170c41374183831942e0a121f223e034a96bb5b9746fff5ee5abf7fffb00` |
| 22 | `lemma` | [covarianceOperator_apply](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant1afe9a6e92de3ecd6b36a83b117c0462611232e320d0cee0c42f538fa5730c2c.lean/declarations/covarianceoperator-apply--ccfc282e2ceec9b4eee852aa.md) | 211 | `result-track:ccfc282e2ceec9b4eee852aaa8b61266cf9242948f7a5aade29dd9e9cd7c815b` |
| 23 | `lemma` | [isPositive_covarianceOperator](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant1afe9a6e92de3ecd6b36a83b117c0462611232e320d0cee0c42f538fa5730c2c.lean/declarations/ispositive-covarianceoperator--7dbc520d4174681603f66161.md) | 219 | `result-track:7dbc520d4174681603f661610574ceeb0621a7fd6d31b73ce6e7f354672ed64c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
