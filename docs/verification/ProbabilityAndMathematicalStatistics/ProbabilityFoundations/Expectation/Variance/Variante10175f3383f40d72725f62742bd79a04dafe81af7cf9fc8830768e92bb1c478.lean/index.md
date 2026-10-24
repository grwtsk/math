# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.Variance.Variante10175f3383f40d72725f62742bd79a04dafe81af7cf9fc8830768e92bb1c478

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "34a4c6fa3818b09f2413169a1f56da463914c95a",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variante10175f3383f40d72725f62742bd79a04dafe81af7cf9fc8830768e92bb1c478.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variante10175f3383f40d72725f62742bd79a04dafe81af7cf9fc8830768e92bb1c478.lean/index.md) · [Full source](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variante10175f3383f40d72725f62742bd79a04dafe81af7cf9fc8830768e92bb1c478.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `34a4c6fa3818b09f2413169a1f56da463914c95a`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variante10175f3383f40d72725f62742bd79a04dafe81af7cf9fc8830768e92bb1c478.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variante10175f3383f40d72725f62742bd79a04dafe81af7cf9fc8830768e92bb1c478.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Notation` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Integration` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.L2Space` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variante10175f3383f40d72725f62742bd79a04dafe81af7cf9fc8830768e92bb1c478.lean/declarations/macro-rules--ed6b03d0ccdcec239274d0a9.md) | 54 | `declaration-track:ed6b03d0ccdcec239274d0a9f7f1589a4cddb2e01d39fd890d93274c3b21b01c` |
| 2 | `lemma` | [coe_two](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variante10175f3383f40d72725f62742bd79a04dafe81af7cf9fc8830768e92bb1c478.lean/declarations/coe-two--ec4bac6b0224875ed5d0d75b.md) | 57 | `result-track:ec4bac6b0224875ed5d0d75bc1a349bd54b7e371a979b209bc666c69adf49940` |
| 3 | `def` | [evariance](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variante10175f3383f40d72725f62742bd79a04dafe81af7cf9fc8830768e92bb1c478.lean/declarations/evariance--7e14552e27ba711383eefe47.md) | 63 | `declaration-track:7e14552e27ba711383eefe477120ea3a3d018fe5d528e48c2c88b545d4cd2c16` |
| 4 | `def` | [variance](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variante10175f3383f40d72725f62742bd79a04dafe81af7cf9fc8830768e92bb1c478.lean/declarations/variance--3cefb6d905fe298ddd70bc7d.md) | 69 | `declaration-track:3cefb6d905fe298ddd70bc7d6d443ab51d1957d0e67196e1cab705474e3b6b74` |
| 5 | `theorem` | [_root_.GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.CoeTwo.Variantdb4f5681c5bda847ab3e17392459dd957d1b947e1c33b5b51a271455181e38f6.MeasureTheory.Memℒp.evariance_lt_top](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variante10175f3383f40d72725f62742bd79a04dafe81af7cf9fc8830768e92bb1c478.lean/declarations/root-grwtsk-probabilityandmathematicalstatistics-probabilityfoundations--6e58654852b3435497d81ead.md) | 75 | `result-track:6e58654852b3435497d81eadf5d241d95a9ef4c3411c9f30753560948d0511e4` |
| 6 | `theorem` | [evariance_eq_top](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variante10175f3383f40d72725f62742bd79a04dafe81af7cf9fc8830768e92bb1c478.lean/declarations/evariance-eq-top--ca7c783c4d493fc33d21414c.md) | 85 | `result-track:ca7c783c4d493fc33d21414c388f2679c9df897d76476ce5d643c61a0f34d86f` |
| 7 | `theorem` | [evariance_lt_top_iff_memℒp](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variante10175f3383f40d72725f62742bd79a04dafe81af7cf9fc8830768e92bb1c478.lean/declarations/evariance-lt-top-iff-mem-p--05fbc9cd7775c551c47ccf0c.md) | 102 | `result-track:05fbc9cd7775c551c47ccf0c253615a726620fe90bbaa890aa6249c4ecf9d2a9` |
| 8 | `theorem` | [_root_.GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.CoeTwo.Variantdb4f5681c5bda847ab3e17392459dd957d1b947e1c33b5b51a271455181e38f6.MeasureTheory.Memℒp.ofReal_variance_eq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variante10175f3383f40d72725f62742bd79a04dafe81af7cf9fc8830768e92bb1c478.lean/declarations/root-grwtsk-probabilityandmathematicalstatistics-probabilityfoundations--92bbc26726223dfb7639e7b5.md) | 110 | `result-track:92bbc26726223dfb7639e7b55a1cb11d7c0883e8f132a476d94c7f05bc6eff43` |
| 9 | `theorem` | [evariance_eq_lintegral_ofReal](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variante10175f3383f40d72725f62742bd79a04dafe81af7cf9fc8830768e92bb1c478.lean/declarations/evariance-eq-lintegral-ofreal--a3d878ee410aeff815b45e52.md) | 116 | `result-track:a3d878ee410aeff815b45e52c5a54097e90566863b95a0ae604ea0f85013fcd6` |
| 10 | `theorem` | [_root_.GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.CoeTwo.Variantdb4f5681c5bda847ab3e17392459dd957d1b947e1c33b5b51a271455181e38f6.MeasureTheory.Memℒp.variance_eq_of_integral_eq_zero](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variante10175f3383f40d72725f62742bd79a04dafe81af7cf9fc8830768e92bb1c478.lean/declarations/root-grwtsk-probabilityandmathematicalstatistics-probabilityfoundations--7a3810fe7af8307c91b76081.md) | 126 | `result-track:7a3810fe7af8307c91b7608168beb557836d6e7f534c613c1e8d66da253e0012` |
| 11 | `theorem` | [_root_.GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.CoeTwo.Variantdb4f5681c5bda847ab3e17392459dd957d1b947e1c33b5b51a271455181e38f6.MeasureTheory.Memℒp.variance_eq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variante10175f3383f40d72725f62742bd79a04dafe81af7cf9fc8830768e92bb1c478.lean/declarations/root-grwtsk-probabilityandmathematicalstatistics-probabilityfoundations--d46987e7ba52a4b3f1675fa2.md) | 139 | `result-track:d46987e7ba52a4b3f1675fa2e6a6be025a49dfa3775cfabb17622d3819a917e7` |
| 12 | `theorem` | [evariance_zero](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variante10175f3383f40d72725f62742bd79a04dafe81af7cf9fc8830768e92bb1c478.lean/declarations/evariance-zero--53ccc8b73c1a0fb70197bbca.md) | 155 | `result-track:53ccc8b73c1a0fb70197bbca431917cde0c07fb9d165b2377f973555a7b8f22e` |
| 13 | `theorem` | [evariance_eq_zero_iff](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variante10175f3383f40d72725f62742bd79a04dafe81af7cf9fc8830768e92bb1c478.lean/declarations/evariance-eq-zero-iff--f04c7d1b46371fe491ddc61f.md) | 158 | `result-track:f04c7d1b46371fe491ddc61f648466472d82d016847c22e65a2012ac24a55190` |
| 14 | `theorem` | [evariance_mul](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variante10175f3383f40d72725f62742bd79a04dafe81af7cf9fc8830768e92bb1c478.lean/declarations/evariance-mul--c482d3d164a876a1fee3a926.md) | 170 | `result-track:c482d3d164a876a1fee3a9264cb08569bb3255dd6b0b42ddfa3e4059c40dda5f` |
| 15 | `theorem` | [variance_zero](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variante10175f3383f40d72725f62742bd79a04dafe81af7cf9fc8830768e92bb1c478.lean/declarations/variance-zero--b8e2f23f0d9ed1c7d4a776fd.md) | 188 | `result-track:b8e2f23f0d9ed1c7d4a776fd2a085889da4f12bb76f0f2efdbbd7aa0e7d5d91d` |
| 16 | `theorem` | [variance_nonneg](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variante10175f3383f40d72725f62742bd79a04dafe81af7cf9fc8830768e92bb1c478.lean/declarations/variance-nonneg--e82c0f45027f07d66078c6c3.md) | 192 | `result-track:e82c0f45027f07d66078c6c3bda8e3a7f835b5752f763c7f96a57e12258f0def` |
| 17 | `theorem` | [variance_mul](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variante10175f3383f40d72725f62742bd79a04dafe81af7cf9fc8830768e92bb1c478.lean/declarations/variance-mul--4307e7ca0b6e33d836a8f69e.md) | 196 | `result-track:4307e7ca0b6e33d836a8f69e9a719806bc3779b14b5b42b0535cbe1d178937c9` |
| 18 | `theorem` | [variance_smul](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variante10175f3383f40d72725f62742bd79a04dafe81af7cf9fc8830768e92bb1c478.lean/declarations/variance-smul--1a7e9834b26b7bed60ee1b95.md) | 202 | `result-track:1a7e9834b26b7bed60ee1b95a81ee86a4a8a9158deecfce48a7b615286f86008` |
| 19 | `theorem` | [variance_smul'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variante10175f3383f40d72725f62742bd79a04dafe81af7cf9fc8830768e92bb1c478.lean/declarations/variance-smul--67abc1f5a64f01897a8fa943.md) | 207 | `result-track:67abc1f5a64f01897a8fa9434b9b9534a3b9f0af58fd1df61abe12831cd7b115` |
| 20 | `theorem` | [variance_def'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variante10175f3383f40d72725f62742bd79a04dafe81af7cf9fc8830768e92bb1c478.lean/declarations/variance-def--2fc164c678f8ecff8ff0efcf.md) | 218 | `result-track:2fc164c678f8ecff8ff0efcf1febd2a59ce696a8da53498f0567b2878185a794` |
| 21 | `theorem` | [variance_le_expectation_sq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variante10175f3383f40d72725f62742bd79a04dafe81af7cf9fc8830768e92bb1c478.lean/declarations/variance-le-expectation-sq--47916121d92824c0542c9391.md) | 230 | `result-track:47916121d92824c0542c9391d2aea9dc0ca9e6643a4dd3af0181dbd17ee73d52` |
| 22 | `theorem` | [evariance_def'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variante10175f3383f40d72725f62742bd79a04dafe81af7cf9fc8830768e92bb1c478.lean/declarations/evariance-def--7328bec1b555e591d77e1bad.md) | 252 | `result-track:7328bec1b555e591d77e1bad43d06f0e76ba1f431d53d509a203bdf9a77e5d04` |
| 23 | `theorem` | [meas_ge_le_evariance_div_sq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variante10175f3383f40d72725f62742bd79a04dafe81af7cf9fc8830768e92bb1c478.lean/declarations/meas-ge-le-evariance-div-sq--d7e012060ad1dd009eda0c33.md) | 273 | `result-track:d7e012060ad1dd009eda0c333426fb67b704c34baaf0f1b870622fa1c0c79f08` |
| 24 | `theorem` | [meas_ge_le_variance_div_sq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variante10175f3383f40d72725f62742bd79a04dafe81af7cf9fc8830768e92bb1c478.lean/declarations/meas-ge-le-variance-div-sq--07ff167396d54b20a1da7c92.md) | 292 | `result-track:07ff167396d54b20a1da7c92a6e1c8d49dbdb93a694deb7d6ecf594bac179a99` |
| 25 | `theorem` | [IndepFun.variance_add](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variante10175f3383f40d72725f62742bd79a04dafe81af7cf9fc8830768e92bb1c478.lean/declarations/indepfun-variance-add--b94981e7321294f704c755cd.md) | 303 | `result-track:b94981e7321294f704c755cddcd0cb1294e1d1d7f2c69f3b461a6835e1006a32` |
| 26 | `theorem` | [IndepFun.variance_sum](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variante10175f3383f40d72725f62742bd79a04dafe81af7cf9fc8830768e92bb1c478.lean/declarations/indepfun-variance-sum--b856b31f87c7504b0f7253eb.md) | 327 | `result-track:b856b31f87c7504b0f7253eb747193b141d15624741d201b52e984884168fa3b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
