# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.Covariance.Varianta249b19ab453b053b2897bf3108c965e986be34479ddd3b5f439e26eb3f3cb9a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "195bef923985dd17c7042b779f03cdea372b9e45",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/Covariance/Varianta249b19ab453b053b2897bf3108c965e986be34479ddd3b5f439e26eb3f3cb9a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/ProbabilityAndMathematicalStatistics/Covariance/Varianta249b19ab453b053b2897bf3108c965e986be34479ddd3b5f439e26eb3f3cb9a.lean/index.md) · [Full source](../../../../mathematics/ProbabilityAndMathematicalStatistics/Covariance/Varianta249b19ab453b053b2897bf3108c965e986be34479ddd3b5f439e26eb3f3cb9a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `195bef923985dd17c7042b779f03cdea372b9e45`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/Covariance/Varianta249b19ab453b053b2897bf3108c965e986be34479ddd3b5f439e26eb3f3cb9a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/Covariance/Varianta249b19ab453b053b2897bf3108c965e986be34479ddd3b5f439e26eb3f3cb9a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Moments.Variance` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [covariance](../../../../mathematics/ProbabilityAndMathematicalStatistics/Covariance/Varianta249b19ab453b053b2897bf3108c965e986be34479ddd3b5f439e26eb3f3cb9a.lean/declarations/covariance--e422eb698a5cf2a4cb6ab7cd.md) | 45 | `declaration-track:e422eb698a5cf2a4cb6ab7cd2d3ddf09d10c645e4dfd4bdb217a7e320a2e11ad` |
| 2 | `lemma` | [covariance_same](../../../../mathematics/ProbabilityAndMathematicalStatistics/Covariance/Varianta249b19ab453b053b2897bf3108c965e986be34479ddd3b5f439e26eb3f3cb9a.lean/declarations/covariance-same--abff1b1ab3fc95e36aa93e3d.md) | 55 | `result-track:abff1b1ab3fc95e36aa93e3de45c71e17968b4a5849d4a958c2f9aaf0ffd82f0` |
| 3 | `lemma` | [covariance_zero_left](../../../../mathematics/ProbabilityAndMathematicalStatistics/Covariance/Varianta249b19ab453b053b2897bf3108c965e986be34479ddd3b5f439e26eb3f3cb9a.lean/declarations/covariance-zero-left--bdccc3ddbdc3ece86bfaa66a.md) | 61 | `result-track:bdccc3ddbdc3ece86bfaa66a6cf41b29e8e56d32de053adf1d42e6d9e1389d2c` |
| 4 | `lemma` | [covariance_zero_right](../../../../mathematics/ProbabilityAndMathematicalStatistics/Covariance/Varianta249b19ab453b053b2897bf3108c965e986be34479ddd3b5f439e26eb3f3cb9a.lean/declarations/covariance-zero-right--29e0c0936216f4ede69fdc2c.md) | 63 | `result-track:29e0c0936216f4ede69fdc2cf5402f11b91eeb88985ab328a7ee4872a670a7ee` |
| 5 | `lemma` | [covariance_zero_measure](../../../../mathematics/ProbabilityAndMathematicalStatistics/Covariance/Varianta249b19ab453b053b2897bf3108c965e986be34479ddd3b5f439e26eb3f3cb9a.lean/declarations/covariance-zero-measure--a14a72e51e2ee2744b950c51.md) | 65 | `result-track:a14a72e51e2ee2744b950c517ed882d0e8d365bb2560d98a647770c28c6966e1` |
| 6 | `lemma` | [covariance_comm](../../../../mathematics/ProbabilityAndMathematicalStatistics/Covariance/Varianta249b19ab453b053b2897bf3108c965e986be34479ddd3b5f439e26eb3f3cb9a.lean/declarations/covariance-comm--c4c9b3af3313365100cbe698.md) | 68 | `result-track:c4c9b3af3313365100cbe698a4c1733eba1c7d9f6e68fd2486c7f5939b1eb6ac` |
| 7 | `lemma` | [covariance_const_left](../../../../mathematics/ProbabilityAndMathematicalStatistics/Covariance/Varianta249b19ab453b053b2897bf3108c965e986be34479ddd3b5f439e26eb3f3cb9a.lean/declarations/covariance-const-left--ba32145caf3b0bb4806381e8.md) | 74 | `result-track:ba32145caf3b0bb4806381e8603125100c6128e4dfda1ce79a34f773870f39bc` |
| 8 | `lemma` | [covariance_const_right](../../../../mathematics/ProbabilityAndMathematicalStatistics/Covariance/Varianta249b19ab453b053b2897bf3108c965e986be34479ddd3b5f439e26eb3f3cb9a.lean/declarations/covariance-const-right--682a74ade8bc26ea99337d99.md) | 78 | `result-track:682a74ade8bc26ea99337d99731cfde6a7f8ee2c93b62eb1839c62d0c15a87de` |
| 9 | `lemma` | [covariance_add_const_left](../../../../mathematics/ProbabilityAndMathematicalStatistics/Covariance/Varianta249b19ab453b053b2897bf3108c965e986be34479ddd3b5f439e26eb3f3cb9a.lean/declarations/covariance-add-const-left--4338d73fbee4efd81a6aaee3.md) | 82 | `result-track:4338d73fbee4efd81a6aaee370a1831a6b57d31642bf94a3c3caa5d01d574ad8` |
| 10 | `lemma` | [covariance_const_add_left](../../../../mathematics/ProbabilityAndMathematicalStatistics/Covariance/Varianta249b19ab453b053b2897bf3108c965e986be34479ddd3b5f439e26eb3f3cb9a.lean/declarations/covariance-const-add-left--23dd5c917cd333a3402e6bf5.md) | 90 | `result-track:23dd5c917cd333a3402e6bf559e2620547ac489dc5a4ce2301bbb1db830a5e74` |
| 11 | `lemma` | [covariance_add_const_right](../../../../mathematics/ProbabilityAndMathematicalStatistics/Covariance/Varianta249b19ab453b053b2897bf3108c965e986be34479ddd3b5f439e26eb3f3cb9a.lean/declarations/covariance-add-const-right--8ee08f5b5603256673d50fca.md) | 96 | `result-track:8ee08f5b5603256673d50fcadd882d6060ac0087a52e55184f794e6cbbca94d5` |
| 12 | `lemma` | [covariance_const_add_right](../../../../mathematics/ProbabilityAndMathematicalStatistics/Covariance/Varianta249b19ab453b053b2897bf3108c965e986be34479ddd3b5f439e26eb3f3cb9a.lean/declarations/covariance-const-add-right--06f8b9619a3a04c7b6381d35.md) | 101 | `result-track:06f8b9619a3a04c7b6381d35a16900d3892f58c5de5832e1eb3bdaf23b32eba9` |
| 13 | `lemma` | [covariance_add_left](../../../../mathematics/ProbabilityAndMathematicalStatistics/Covariance/Varianta249b19ab453b053b2897bf3108c965e986be34479ddd3b5f439e26eb3f3cb9a.lean/declarations/covariance-add-left--7981a34e0c97196c04813bf8.md) | 106 | `result-track:7981a34e0c97196c04813bf8c1bfc4c3bfd3c71a60852d367502cef8407d7d82` |
| 14 | `lemma` | [covariance_add_right](../../../../mathematics/ProbabilityAndMathematicalStatistics/Covariance/Varianta249b19ab453b053b2897bf3108c965e986be34479ddd3b5f439e26eb3f3cb9a.lean/declarations/covariance-add-right--aa702e6ccf6dcdbe9da240f6.md) | 117 | `result-track:aa702e6ccf6dcdbe9da240f637aa49fa4d2608b77b858686c0415495f5b8e109` |
| 15 | `lemma` | [covariance_smul_left](../../../../mathematics/ProbabilityAndMathematicalStatistics/Covariance/Varianta249b19ab453b053b2897bf3108c965e986be34479ddd3b5f439e26eb3f3cb9a.lean/declarations/covariance-smul-left--995ea109af8515f565202d40.md) | 122 | `result-track:995ea109af8515f565202d40237598b72bb557b3a06a6498b1ba665acc643116` |
| 16 | `lemma` | [covariance_smul_right](../../../../mathematics/ProbabilityAndMathematicalStatistics/Covariance/Varianta249b19ab453b053b2897bf3108c965e986be34479ddd3b5f439e26eb3f3cb9a.lean/declarations/covariance-smul-right--beb7649d03838ed257ca0ddb.md) | 126 | `result-track:beb7649d03838ed257ca0ddb8abab0e2e40b6d0f74f5810a90597360251911c8` |
| 17 | `lemma` | [covariance_neg_left](../../../../mathematics/ProbabilityAndMathematicalStatistics/Covariance/Varianta249b19ab453b053b2897bf3108c965e986be34479ddd3b5f439e26eb3f3cb9a.lean/declarations/covariance-neg-left--3e50845be4df31cad5629066.md) | 130 | `result-track:3e50845be4df31cad5629066d70a7a356f2a5c47a36ed3bf78f7c8d5e91a2f55` |
| 18 | `lemma` | [covariance_fun_neg_left](../../../../mathematics/ProbabilityAndMathematicalStatistics/Covariance/Varianta249b19ab453b053b2897bf3108c965e986be34479ddd3b5f439e26eb3f3cb9a.lean/declarations/covariance-fun-neg-left--05dc15e602c67486b44dba14.md) | 136 | `result-track:05dc15e602c67486b44dba14ac16f941a38285ed474984e1d350a134605c6a9f` |
| 19 | `lemma` | [covariance_neg_right](../../../../mathematics/ProbabilityAndMathematicalStatistics/Covariance/Varianta249b19ab453b053b2897bf3108c965e986be34479ddd3b5f439e26eb3f3cb9a.lean/declarations/covariance-neg-right--bd09e5ebb9218865f6284b63.md) | 140 | `result-track:bd09e5ebb9218865f6284b63470334c6900e75a598133584af50793613187506` |
| 20 | `lemma` | [covariance_fun_neg_right](../../../../mathematics/ProbabilityAndMathematicalStatistics/Covariance/Varianta249b19ab453b053b2897bf3108c965e986be34479ddd3b5f439e26eb3f3cb9a.lean/declarations/covariance-fun-neg-right--f828c9814983a04147a5aaa3.md) | 146 | `result-track:f828c9814983a04147a5aaa32f7985514ea71f4e57db995125ac8b96b430b6dc` |
| 21 | `lemma` | [covariance_sub_left](../../../../mathematics/ProbabilityAndMathematicalStatistics/Covariance/Varianta249b19ab453b053b2897bf3108c965e986be34479ddd3b5f439e26eb3f3cb9a.lean/declarations/covariance-sub-left--724f16f46fec93a547fc91d3.md) | 149 | `result-track:724f16f46fec93a547fc91d3c7a8ab241d2028d102e12e9ea34e7695acccda99` |
| 22 | `lemma` | [covariance_sub_right](../../../../mathematics/ProbabilityAndMathematicalStatistics/Covariance/Varianta249b19ab453b053b2897bf3108c965e986be34479ddd3b5f439e26eb3f3cb9a.lean/declarations/covariance-sub-right--b76bfc8e517d407ddb48a6fa.md) | 154 | `result-track:b76bfc8e517d407ddb48a6faf1e22be0d01a8c2c741adc3684c0c1e932225f8c` |
| 23 | `lemma` | [covariance_sub_const_left](../../../../mathematics/ProbabilityAndMathematicalStatistics/Covariance/Varianta249b19ab453b053b2897bf3108c965e986be34479ddd3b5f439e26eb3f3cb9a.lean/declarations/covariance-sub-const-left--43a50293e9b05d15f1289fa0.md) | 160 | `result-track:43a50293e9b05d15f1289fa09d07f72ae822f787a5d8c3af3e8bbeea29366a42` |
| 24 | `lemma` | [covariance_const_sub_left](../../../../mathematics/ProbabilityAndMathematicalStatistics/Covariance/Varianta249b19ab453b053b2897bf3108c965e986be34479ddd3b5f439e26eb3f3cb9a.lean/declarations/covariance-const-sub-left--78cd213c5a88e26f0d35bc6e.md) | 165 | `result-track:78cd213c5a88e26f0d35bc6e4d3a63b20f040216965fb7852133850eee54d4aa` |
| 25 | `lemma` | [covariance_sub_const_right](../../../../mathematics/ProbabilityAndMathematicalStatistics/Covariance/Varianta249b19ab453b053b2897bf3108c965e986be34479ddd3b5f439e26eb3f3cb9a.lean/declarations/covariance-sub-const-right--54fa4a8c4f305650bf4100bc.md) | 170 | `result-track:54fa4a8c4f305650bf4100bcf320200e4d8e854541c7236e6519a6d5d85122e5` |
| 26 | `lemma` | [covariance_const_sub_right](../../../../mathematics/ProbabilityAndMathematicalStatistics/Covariance/Varianta249b19ab453b053b2897bf3108c965e986be34479ddd3b5f439e26eb3f3cb9a.lean/declarations/covariance-const-sub-right--75c8207dfc16e5472318b0c9.md) | 175 | `result-track:75c8207dfc16e5472318b0c9e21e0f837728eb2d4f53236dcf5280f7713353a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
