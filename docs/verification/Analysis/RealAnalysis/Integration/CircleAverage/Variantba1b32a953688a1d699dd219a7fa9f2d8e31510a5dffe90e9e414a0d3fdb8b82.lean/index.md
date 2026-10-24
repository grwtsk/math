# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.CircleAverage.Variantba1b32a953688a1d699dd219a7fa9f2d8e31510a5dffe90e9e414a0d3fdb8b82

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0a5c6411b3c4ad01a2c8735136368d2f872e0601",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/CircleAverage/Variantba1b32a953688a1d699dd219a7fa9f2d8e31510a5dffe90e9e414a0d3fdb8b82.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Variantba1b32a953688a1d699dd219a7fa9f2d8e31510a5dffe90e9e414a0d3fdb8b82.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Variantba1b32a953688a1d699dd219a7fa9f2d8e31510a5dffe90e9e414a0d3fdb8b82.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0a5c6411b3c4ad01a2c8735136368d2f872e0601`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/CircleAverage/Variantba1b32a953688a1d699dd219a7fa9f2d8e31510a5dffe90e9e414a0d3fdb8b82.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/CircleAverage/Variantba1b32a953688a1d699dd219a7fa9f2d8e31510a5dffe90e9e414a0d3fdb8b82.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [circleAverage](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Variantba1b32a953688a1d699dd219a7fa9f2d8e31510a5dffe90e9e414a0d3fdb8b82.lean/declarations/circleaverage--8758976797d3bf375372d3b6.md) | 55 | `declaration-track:8758976797d3bf375372d3b62e89fc9edc0365e0b7de9bcff06e85d00ed35d92` |
| 2 | `lemma` | [circleAverage_def](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Variantba1b32a953688a1d699dd219a7fa9f2d8e31510a5dffe90e9e414a0d3fdb8b82.lean/declarations/circleaverage-def--093d1a9121c874bd9665ed39.md) | 58 | `result-track:093d1a9121c874bd9665ed39e9cc049c8aa5fad250f0d57ae788b7c166c58d2e` |
| 3 | `theorem` | [circleAverage.integral_undef](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Variantba1b32a953688a1d699dd219a7fa9f2d8e31510a5dffe90e9e414a0d3fdb8b82.lean/declarations/circleaverage-integral-undef--d677427e06ee0433ce6ee36a.md) | 64 | `result-track:d677427e06ee0433ce6ee36a9e9124b3187a71097a8fee8c19f0a8af55298e2a` |
| 4 | `lemma` | [circleAverage_eq_intervalAverage](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Variantba1b32a953688a1d699dd219a7fa9f2d8e31510a5dffe90e9e414a0d3fdb8b82.lean/declarations/circleaverage-eq-intervalaverage--ef6f3e55d1df83ced290ceca.md) | 69 | `result-track:ef6f3e55d1df83ced290cecad4f792a633a06de7acab79dec462c04bda8aba45` |
| 5 | `lemma` | [circleAverage_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Variantba1b32a953688a1d699dd219a7fa9f2d8e31510a5dffe90e9e414a0d3fdb8b82.lean/declarations/circleaverage-zero--f1251f579f52963e21dfe54d.md) | 74 | `result-track:f1251f579f52963e21dfe54daa9535075c1c0d40ec722b6ce569387173543c1c` |
| 6 | `lemma` | [circleAverage_map_add_const](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Variantba1b32a953688a1d699dd219a7fa9f2d8e31510a5dffe90e9e414a0d3fdb8b82.lean/declarations/circleaverage-map-add-const--ac482814a28a4e19c2b95063.md) | 85 | `result-track:ac482814a28a4e19c2b950635393c87266c72359ebd42c4dc7b31abcacb0589a` |
| 7 | `theorem` | [circleAverage_eq_circleIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Variantba1b32a953688a1d699dd219a7fa9f2d8e31510a5dffe90e9e414a0d3fdb8b82.lean/declarations/circleaverage-eq-circleintegral--d56386bd6ca5cb71d2a84fcc.md) | 97 | `result-track:d56386bd6ca5cb71d2a84fccca40ee486470b55c8fe9e51dca653cc7cd78e8b8` |
| 8 | `lemma` | [circleAverage_eq_integral_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Variantba1b32a953688a1d699dd219a7fa9f2d8e31510a5dffe90e9e414a0d3fdb8b82.lean/declarations/circleaverage-eq-integral-add--65e8a68d404487eae8863752.md) | 118 | `result-track:65e8a68d404487eae8863752753638be0bce23a3cdb6610eb971739d16f25852` |
| 9 | `theorem` | [circleAverage_neg_radius](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Variantba1b32a953688a1d699dd219a7fa9f2d8e31510a5dffe90e9e414a0d3fdb8b82.lean/declarations/circleaverage-neg-radius--23f913925d27d61ab49117da.md) | 130 | `result-track:23f913925d27d61ab49117da8cc83802d2ee76735dc28f2ea924ad1521b77ea3` |
| 10 | `theorem` | [circleAverage_abs_radius](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Variantba1b32a953688a1d699dd219a7fa9f2d8e31510a5dffe90e9e414a0d3fdb8b82.lean/declarations/circleaverage-abs-radius--d2885a35ab33bc678fd4a047.md) | 136 | `result-track:d2885a35ab33bc678fd4a0473511d574136f67a49e27c38f7413afad1bc74340` |
| 11 | `theorem` | [circleAverage_congr_codiscreteWithin](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Variantba1b32a953688a1d699dd219a7fa9f2d8e31510a5dffe90e9e414a0d3fdb8b82.lean/declarations/circleaverage-congr-codiscretewithin--9d69b88a39de8ff1994a5eed.md) | 143 | `result-track:9d69b88a39de8ff1994a5eed5b0e78aa810f0e8d37b990a07814a0893e30ae90` |
| 12 | `theorem` | [circleAverage_congr_sphere](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Variantba1b32a953688a1d699dd219a7fa9f2d8e31510a5dffe90e9e414a0d3fdb8b82.lean/declarations/circleaverage-congr-sphere--f7457960cd24b9ee51b82480.md) | 153 | `result-track:f7457960cd24b9ee51b82480e42942028e87f30262185d74352f17df60a9105a` |
| 13 | `theorem` | [circleAverage_eq_circleAverage_zero_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Variantba1b32a953688a1d699dd219a7fa9f2d8e31510a5dffe90e9e414a0d3fdb8b82.lean/declarations/circleaverage-eq-circleaverage-zero-one--f9ae29a98cf60ded960618e7.md) | 162 | `result-track:f9ae29a98cf60ded960618e7a906bb0f05abef91b96b7fc3b33473945524fe37` |
| 14 | `theorem` | [circleAverage_zero_one_congr_inv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Variantba1b32a953688a1d699dd219a7fa9f2d8e31510a5dffe90e9e414a0d3fdb8b82.lean/declarations/circleaverage-zero-one-congr-inv--f5077b44c805383cf90f9336.md) | 174 | `result-track:f5077b44c805383cf90f9336f74734b6bb8227c6e5e1e06d506802e0e0443b69` |
| 15 | `lemma` | [circleMap.continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Variantba1b32a953688a1d699dd219a7fa9f2d8e31510a5dffe90e9e414a0d3fdb8b82.lean/declarations/circlemap-continuous--ba866888725aa9fcf80cd33a.md) | 194 | `result-track:ba866888725aa9fcf80cd33aba1e7dfa8612ea81a48389b942a33e9445a70018` |
| 16 | `theorem` | [ContinuousOn.circleAverage](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Variantba1b32a953688a1d699dd219a7fa9f2d8e31510a5dffe90e9e414a0d3fdb8b82.lean/declarations/continuouson-circleaverage--98de5c68887bc9aab8b0047f.md) | 202 | `result-track:98de5c68887bc9aab8b0047f7c75b6b3ad57bffde9f8a7d822ec8055c1db73c2` |
| 17 | `theorem` | [Continuous.circleAverage](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Variantba1b32a953688a1d699dd219a7fa9f2d8e31510a5dffe90e9e414a0d3fdb8b82.lean/declarations/continuous-circleaverage--f74142f883b475a3d77d903e.md) | 217 | `result-track:f74142f883b475a3d77d903e6578696a3fbd0020b640c84c98eb4e6eb5473bb1` |
| 18 | `lemma` | [ContinuousOn.eq_of_eqOn_Ioo](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Variantba1b32a953688a1d699dd219a7fa9f2d8e31510a5dffe90e9e414a0d3fdb8b82.lean/declarations/continuouson-eq-of-eqon-ioo--41b5a54afcd2d4f52b00ebdd.md) | 226 | `result-track:41b5a54afcd2d4f52b00ebdd1e20b4b44df6a822e5f5f2207df052972b6fd26a` |
| 19 | `theorem` | [circleAverage_const](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Variantba1b32a953688a1d699dd219a7fa9f2d8e31510a5dffe90e9e414a0d3fdb8b82.lean/declarations/circleaverage-const--639ab8e9199926c92dc8cb03.md) | 245 | `result-track:639ab8e9199926c92dc8cb03d981a347214aa2d2a26e88120bb4f8f325a61dbb` |
| 20 | `theorem` | [circleAverage_const_on_circle](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Variantba1b32a953688a1d699dd219a7fa9f2d8e31510a5dffe90e9e414a0d3fdb8b82.lean/declarations/circleaverage-const-on-circle--ad46446564b7cd9b2e3bae90.md) | 254 | `result-track:ad46446564b7cd9b2e3bae90bb879a962ad7a08d8f47155bb08337bcbfa745b2` |
| 21 | `theorem` | [circleAverage_mono](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Variantba1b32a953688a1d699dd219a7fa9f2d8e31510a5dffe90e9e414a0d3fdb8b82.lean/declarations/circleaverage-mono--e4b682f3780c0e6842818e1d.md) | 272 | `result-track:e4b682f3780c0e6842818e1d61aaf1f114f2b7745365718928b266576df400e3` |
| 22 | `theorem` | [circleAverage_mono_on_of_le_circle](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Variantba1b32a953688a1d699dd219a7fa9f2d8e31510a5dffe90e9e414a0d3fdb8b82.lean/declarations/circleaverage-mono-on-of-le-circle--78c99eb27de1d1470dd44dfb.md) | 283 | `result-track:78c99eb27de1d1470dd44dfb8055237b7ceb73d854f2768f802ffadc80dd4296` |
| 23 | `theorem` | [abs_circleAverage_le_circleAverage_abs](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Variantba1b32a953688a1d699dd219a7fa9f2d8e31510a5dffe90e9e414a0d3fdb8b82.lean/declarations/abs-circleaverage-le-circleaverage-abs--bb89a35991cf6740700387f7.md) | 295 | `result-track:bb89a35991cf6740700387f7824f86d81ae57e7ac753b5a5e7c8d8d91d11fb99` |
| 24 | `theorem` | [circleAverage_nonneg_of_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Variantba1b32a953688a1d699dd219a7fa9f2d8e31510a5dffe90e9e414a0d3fdb8b82.lean/declarations/circleaverage-nonneg-of-nonneg--51db12674ea80c6de68420de.md) | 304 | `result-track:51db12674ea80c6de68420de593b18954d2faee8702a2a42b09967a56a83fbbe` |
| 25 | `theorem` | [_root_.ContinuousLinearMap.circleAverage_comp_comm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Variantba1b32a953688a1d699dd219a7fa9f2d8e31510a5dffe90e9e414a0d3fdb8b82.lean/declarations/root-continuouslinearmap-circleaverage-comp-comm--9070481f4a0ea1c253e7eb94.md) | 319 | `result-track:9070481f4a0ea1c253e7eb94eef7a458f32c3317b6094b81144aa3048f2b751e` |
| 26 | `theorem` | [circleAverage_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Variantba1b32a953688a1d699dd219a7fa9f2d8e31510a5dffe90e9e414a0d3fdb8b82.lean/declarations/circleaverage-smul--0de5f9153c589a68d7f82da4.md) | 332 | `result-track:0de5f9153c589a68d7f82da449320a79eb0ec21fb3f2093f5959fdf336fe3458` |
| 27 | `theorem` | [circleAverage_fun_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Variantba1b32a953688a1d699dd219a7fa9f2d8e31510a5dffe90e9e414a0d3fdb8b82.lean/declarations/circleaverage-fun-smul--b90dfe6274d6af39b62efd2a.md) | 340 | `result-track:b90dfe6274d6af39b62efd2a10c41ab72baab73d4b7147e2c3d2211668c0da04` |
| 28 | `theorem` | [circleAverage_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Variantba1b32a953688a1d699dd219a7fa9f2d8e31510a5dffe90e9e414a0d3fdb8b82.lean/declarations/circleaverage-add--765acce5b685b2c12af4d2ee.md) | 345 | `result-track:765acce5b685b2c12af4d2ee347020c1db0c0e3b1f3f68ae64ab51af4f2b07db` |
| 29 | `theorem` | [circleAverage_fun_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Variantba1b32a953688a1d699dd219a7fa9f2d8e31510a5dffe90e9e414a0d3fdb8b82.lean/declarations/circleaverage-fun-add--75102328b395f770633251d6.md) | 352 | `result-track:75102328b395f770633251d66f426477d50ef423b49190131423f3ba25f27353` |
| 30 | `theorem` | [circleAverage_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Variantba1b32a953688a1d699dd219a7fa9f2d8e31510a5dffe90e9e414a0d3fdb8b82.lean/declarations/circleaverage-sum--b3ac4b422979da1dfda34af6.md) | 358 | `result-track:b3ac4b422979da1dfda34af689cb22a4af3e54e7e9106ad4a8dd48948506e40a` |
| 31 | `theorem` | [circleAverage_fun_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Variantba1b32a953688a1d699dd219a7fa9f2d8e31510a5dffe90e9e414a0d3fdb8b82.lean/declarations/circleaverage-fun-sum--1e25881d7b7c48f2bc0a4058.md) | 365 | `result-track:1e25881d7b7c48f2bc0a4058de8513d8d4c166cf4fc4829fc0e0d6fde6fcddba` |
| 32 | `theorem` | [circleAverage_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Variantba1b32a953688a1d699dd219a7fa9f2d8e31510a5dffe90e9e414a0d3fdb8b82.lean/declarations/circleaverage-sub--68c02d212a9e044e139dba0f.md) | 372 | `result-track:68c02d212a9e044e139dba0f2b5ae0ee8defda73f2a28154da965f6aa7978879` |
| 33 | `theorem` | [circleAverage_fun_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Variantba1b32a953688a1d699dd219a7fa9f2d8e31510a5dffe90e9e414a0d3fdb8b82.lean/declarations/circleaverage-fun-sub--a41ed2a644f41933c3446a01.md) | 379 | `result-track:a41ed2a644f41933c3446a01af434f21299d88ac08820ed7b4c715c34a68037e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
