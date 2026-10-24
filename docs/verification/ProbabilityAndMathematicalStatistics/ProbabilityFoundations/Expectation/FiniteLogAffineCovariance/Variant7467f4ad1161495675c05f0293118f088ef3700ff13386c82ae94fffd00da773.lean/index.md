# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.FiniteLogAffineCovariance.Variant7467f4ad1161495675c05f0293118f088ef3700ff13386c82ae94fffd00da773

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "52c648599eb2f7d2b49dd78fe5c27169a13c91a9",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteLogAffineCovariance/Variant7467f4ad1161495675c05f0293118f088ef3700ff13386c82ae94fffd00da773.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteLogAffineCovariance/Variant7467f4ad1161495675c05f0293118f088ef3700ff13386c82ae94fffd00da773.lean/index.md) · [Full source](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteLogAffineCovariance/Variant7467f4ad1161495675c05f0293118f088ef3700ff13386c82ae94fffd00da773.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `52c648599eb2f7d2b49dd78fe5c27169a13c91a9`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteLogAffineCovariance/Variant7467f4ad1161495675c05f0293118f088ef3700ff13386c82ae94fffd00da773.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteLogAffineCovariance/Variant7467f4ad1161495675c05f0293118f088ef3700ff13386c82ae94fffd00da773.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.AffineReconstruction` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Field` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Exp` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FiniteLogAffineFamily](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteLogAffineCovariance/Variant7467f4ad1161495675c05f0293118f088ef3700ff13386c82ae94fffd00da773.lean/declarations/finitelogaffinefamily--f588b350436eca0b14fb52ab.md) | 62 | `declaration-track:f588b350436eca0b14fb52abd366ba76db59a50fa7d1ae0aa270f0536f6d9889` |
| 2 | `def` | [unnormalizedWeight](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteLogAffineCovariance/Variant7467f4ad1161495675c05f0293118f088ef3700ff13386c82ae94fffd00da773.lean/declarations/unnormalizedweight--6a176788ea541b794d5bd70a.md) | 74 | `declaration-track:6a176788ea541b794d5bd70abed470ad2469a98738559cbf1ecb45f6ed97fca6` |
| 3 | `theorem` | [unnormalizedWeight_pos](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteLogAffineCovariance/Variant7467f4ad1161495675c05f0293118f088ef3700ff13386c82ae94fffd00da773.lean/declarations/unnormalizedweight-pos--ff5576ba5ed8662ed88dcd63.md) | 78 | `result-track:ff5576ba5ed8662ed88dcd63acf26617872f8d367bd3ce63be84c78ec797aed5` |
| 4 | `def` | [partition](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteLogAffineCovariance/Variant7467f4ad1161495675c05f0293118f088ef3700ff13386c82ae94fffd00da773.lean/declarations/partition--10fd8f5abeb02dac39a457fc.md) | 83 | `declaration-track:10fd8f5abeb02dac39a457fccce222373a80fbb0e462387fa265c13bc7f7ded8` |
| 5 | `theorem` | [partition_pos](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteLogAffineCovariance/Variant7467f4ad1161495675c05f0293118f088ef3700ff13386c82ae94fffd00da773.lean/declarations/partition-pos--fc23e00f16302557fb53880e.md) | 87 | `result-track:fc23e00f16302557fb53880e12a057c03a959d65cdcfe3b06a20b15c29ef28bd` |
| 6 | `def` | [logPartition](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteLogAffineCovariance/Variant7467f4ad1161495675c05f0293118f088ef3700ff13386c82ae94fffd00da773.lean/declarations/logpartition--67347c5ddbac3fec0abc5825.md) | 95 | `declaration-track:67347c5ddbac3fec0abc5825e8c6a030cea48f9713b832434c527047a9430f12` |
| 7 | `theorem` | [exp_logPartition](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteLogAffineCovariance/Variant7467f4ad1161495675c05f0293118f088ef3700ff13386c82ae94fffd00da773.lean/declarations/exp-logpartition--39515b7bc38f4b3e25a528dc.md) | 99 | `result-track:39515b7bc38f4b3e25a528dccd6854754c573709538ac34804200a96a1f7875c` |
| 8 | `def` | [probability](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteLogAffineCovariance/Variant7467f4ad1161495675c05f0293118f088ef3700ff13386c82ae94fffd00da773.lean/declarations/probability--0e453bd223843f5ab6c30029.md) | 104 | `declaration-track:0e453bd223843f5ab6c300299a3ba16e6b1175261e8f61c17b7db3876ecd004b` |
| 9 | `theorem` | [probability_pos](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteLogAffineCovariance/Variant7467f4ad1161495675c05f0293118f088ef3700ff13386c82ae94fffd00da773.lean/declarations/probability-pos--0d94bbfdef03f973795eaaf9.md) | 108 | `result-track:0d94bbfdef03f973795eaaf9702557713826f169f4819927638029e7b7edfb38` |
| 10 | `theorem` | [probability_nonnegative](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteLogAffineCovariance/Variant7467f4ad1161495675c05f0293118f088ef3700ff13386c82ae94fffd00da773.lean/declarations/probability-nonnegative--ccfba4443ad03403243421c0.md) | 113 | `result-track:ccfba4443ad03403243421c02fc9f1e75922321bf6a78c2ea78e491af708d5dd` |
| 11 | `theorem` | [probability_sum](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteLogAffineCovariance/Variant7467f4ad1161495675c05f0293118f088ef3700ff13386c82ae94fffd00da773.lean/declarations/probability-sum--172f180d990ded7a15a7e4db.md) | 118 | `result-track:172f180d990ded7a15a7e4db8f93addee15a399dfe084fb7f5cfcf31b94159fa` |
| 12 | `def` | [centroid](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteLogAffineCovariance/Variant7467f4ad1161495675c05f0293118f088ef3700ff13386c82ae94fffd00da773.lean/declarations/centroid--459cf0ff8cc76fece6e1e76f.md) | 127 | `declaration-track:459cf0ff8cc76fece6e1e76f0d401a6da8a7a9c4c4d2fedf0e3f8c0fc26923d5` |
| 13 | `theorem` | [centroid_apply](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteLogAffineCovariance/Variant7467f4ad1161495675c05f0293118f088ef3700ff13386c82ae94fffd00da773.lean/declarations/centroid-apply--7f1a7d96be5f9b784ad0c331.md) | 131 | `result-track:7f1a7d96be5f9b784ad0c331aabd53d236faa652da4890a6034a97dc9bddfe58` |
| 14 | `def` | [centeredStatistic](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteLogAffineCovariance/Variant7467f4ad1161495675c05f0293118f088ef3700ff13386c82ae94fffd00da773.lean/declarations/centeredstatistic--2bf66b137cf07aaab14f59be.md) | 138 | `declaration-track:2bf66b137cf07aaab14f59beeff245558e2ed121adda5694cf9eab317fee680e` |
| 15 | `theorem` | [centeredStatistic_apply](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteLogAffineCovariance/Variant7467f4ad1161495675c05f0293118f088ef3700ff13386c82ae94fffd00da773.lean/declarations/centeredstatistic-apply--9587dfca47668afc039038fb.md) | 142 | `result-track:9587dfca47668afc039038fb46b5b77e40192ed22839f4354c3aca2bb3c3ab3d` |
| 16 | `def` | [covarianceForm](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteLogAffineCovariance/Variant7467f4ad1161495675c05f0293118f088ef3700ff13386c82ae94fffd00da773.lean/declarations/covarianceform--7b465e6f7327884c3794c85a.md) | 148 | `declaration-track:7b465e6f7327884c3794c85a64af4b69493491a0e7004515309393c1ac328e7b` |
| 17 | `theorem` | [covarianceForm_apply](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteLogAffineCovariance/Variant7467f4ad1161495675c05f0293118f088ef3700ff13386c82ae94fffd00da773.lean/declarations/covarianceform-apply--6b0ae4acf110f130da3f613e.md) | 193 | `result-track:6b0ae4acf110f130da3f613ec3940ef7787bf959978743e587678632bf5a7cbe` |
| 18 | `theorem` | [covarianceForm_diagonal](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteLogAffineCovariance/Variant7467f4ad1161495675c05f0293118f088ef3700ff13386c82ae94fffd00da773.lean/declarations/covarianceform-diagonal--029662be0c056221bc17897f.md) | 202 | `result-track:029662be0c056221bc17897ff783d912d4be8f48a1f724f69943b7f0bbb9c6e1` |
| 19 | `theorem` | [covariance_nonnegative](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteLogAffineCovariance/Variant7467f4ad1161495675c05f0293118f088ef3700ff13386c82ae94fffd00da773.lean/declarations/covariance-nonnegative--2018411d8df52f5a673045b4.md) | 213 | `result-track:2018411d8df52f5a673045b4d83987b62d5cab445c5a4a685ea658ac54e17a20` |
| 20 | `structure` | [FiniteLogAffineCovarianceRealization](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteLogAffineCovariance/Variant7467f4ad1161495675c05f0293118f088ef3700ff13386c82ae94fffd00da773.lean/declarations/finitelogaffinecovariancerealization--ae3b662963240363df87939f.md) | 224 | `declaration-track:ae3b662963240363df87939f5ac5f0dd6190902e3cb0b8a4ecc57092db70eb01` |
| 21 | `theorem` | [potential_realized_as_logPartition](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteLogAffineCovariance/Variant7467f4ad1161495675c05f0293118f088ef3700ff13386c82ae94fffd00da773.lean/declarations/potential-realized-as-logpartition--bdbe90537657179516f75c63.md) | 241 | `result-track:bdbe90537657179516f75c636e7a9b424cfec1178a87bd8640f9772e230b50b7` |
| 22 | `theorem` | [gradient_realized_as_centroid](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteLogAffineCovariance/Variant7467f4ad1161495675c05f0293118f088ef3700ff13386c82ae94fffd00da773.lean/declarations/gradient-realized-as-centroid--f6e67e3391ab5ce05c1ffb6d.md) | 246 | `result-track:f6e67e3391ab5ce05c1ffb6dc59258381df8beeddf96a843beddb0e2fc0e7e05` |
| 23 | `theorem` | [geometryAt_eq_covariance](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteLogAffineCovariance/Variant7467f4ad1161495675c05f0293118f088ef3700ff13386c82ae94fffd00da773.lean/declarations/geometryat-eq-covariance--a0fbc19316e5d4754514bbae.md) | 251 | `result-track:a0fbc19316e5d4754514bbaefdfa8a0425794fe014a5b029a9ae0a0e956da155` |
| 24 | `theorem` | [hessian_eq_covariance](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteLogAffineCovariance/Variant7467f4ad1161495675c05f0293118f088ef3700ff13386c82ae94fffd00da773.lean/declarations/hessian-eq-covariance--82db736d8bf159c805d17c09.md) | 256 | `result-track:82db736d8bf159c805d17c092452d6e3e62ce73474bf1286a3e0c5f0ad5b4857` |
| 25 | `theorem` | [hessian_diagonal_eq_variance](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteLogAffineCovariance/Variant7467f4ad1161495675c05f0293118f088ef3700ff13386c82ae94fffd00da773.lean/declarations/hessian-diagonal-eq-variance--e69cfb45c0244a50d9bf8f63.md) | 263 | `result-track:e69cfb45c0244a50d9bf8f632a4b518a1419506d96cc30af2193184c05fbed5d` |
| 26 | `theorem` | [hessian_covariance_nonnegative](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteLogAffineCovariance/Variant7467f4ad1161495675c05f0293118f088ef3700ff13386c82ae94fffd00da773.lean/declarations/hessian-covariance-nonnegative--4f1e3aea169054e27c32b961.md) | 272 | `result-track:4f1e3aea169054e27c32b96171116477a772ccd6680afe9bb8282a7041aa78c3` |
| 27 | `theorem` | [visible_iff_positive_variance](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteLogAffineCovariance/Variant7467f4ad1161495675c05f0293118f088ef3700ff13386c82ae94fffd00da773.lean/declarations/visible-iff-positive-variance--204690f7f0723144d134ffc8.md) | 279 | `result-track:204690f7f0723144d134ffc8499d2210e778ca2580c8a723f682d04a70d2220b` |
| 28 | `theorem` | [isNull_iff_zero_variance](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteLogAffineCovariance/Variant7467f4ad1161495675c05f0293118f088ef3700ff13386c82ae94fffd00da773.lean/declarations/isnull-iff-zero-variance--33758abc7cb4d3cf14ff1ff6.md) | 290 | `result-track:33758abc7cb4d3cf14ff1ff6f790e87dc5a22a1c982e0b10b941608b9c6841f2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
