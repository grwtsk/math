# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.Moments.Variant94d5538fc39806b03ba1964a460634273ba6751ed469b1343cb46d6b6e7539b0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bfba042214f23c4bd8832590455bad1f95489b70",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/Variant94d5538fc39806b03ba1964a460634273ba6751ed469b1343cb46d6b6e7539b0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/Variant94d5538fc39806b03ba1964a460634273ba6751ed469b1343cb46d6b6e7539b0.lean/index.md) · [Full source](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/Variant94d5538fc39806b03ba1964a460634273ba6751ed469b1343cb46d6b6e7539b0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bfba042214f23c4bd8832590455bad1f95489b70`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/Variant94d5538fc39806b03ba1964a460634273ba6751ed469b1343cb46d6b6e7539b0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/Variant94d5538fc39806b03ba1964a460634273ba6751ed469b1343cb46d6b6e7539b0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Variance` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [moment](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/Variant94d5538fc39806b03ba1964a460634273ba6751ed469b1343cb46d6b6e7539b0.lean/declarations/moment--8d22dca77cc6bcc7cbfd99de.md) | 59 | `declaration-track:8d22dca77cc6bcc7cbfd99de9d46f7aa28e037d2d8034a598eaff53bd568a3b3` |
| 2 | `def` | [centralMoment](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/Variant94d5538fc39806b03ba1964a460634273ba6751ed469b1343cb46d6b6e7539b0.lean/declarations/centralmoment--bd5987b328c4337380d7f222.md) | 64 | `declaration-track:bd5987b328c4337380d7f222089f824a70f154e063d41354e71fe25e27c0fac0` |
| 3 | `theorem` | [moment_zero](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/Variant94d5538fc39806b03ba1964a460634273ba6751ed469b1343cb46d6b6e7539b0.lean/declarations/moment-zero--d11b6ce0b3c19046f6ba7234.md) | 70 | `result-track:d11b6ce0b3c19046f6ba723485e8104fabba9641ef93a837bc3f2d401244f024` |
| 4 | `theorem` | [centralMoment_zero](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/Variant94d5538fc39806b03ba1964a460634273ba6751ed469b1343cb46d6b6e7539b0.lean/declarations/centralmoment-zero--a4cb64adbea9ce911c82204e.md) | 76 | `result-track:a4cb64adbea9ce911c82204efb212a638b68810b1b033d35d4067db2d385a44b` |
| 5 | `theorem` | [centralMoment_one'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/Variant94d5538fc39806b03ba1964a460634273ba6751ed469b1343cb46d6b6e7539b0.lean/declarations/centralmoment-one--2abeef208e3492a7749c1b5e.md) | 81 | `result-track:2abeef208e3492a7749c1b5e6240c1c5b569c25726bdd9e7f9e66a9fa738c88a` |
| 6 | `theorem` | [centralMoment_one](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/Variant94d5538fc39806b03ba1964a460634273ba6751ed469b1343cb46d6b6e7539b0.lean/declarations/centralmoment-one--2883f9b4609d0ad0a94fde55.md) | 89 | `result-track:2883f9b4609d0ad0a94fde55c8c2352ba96925045311ab7bbd04d9887142e490` |
| 7 | `theorem` | [centralMoment_two_eq_variance](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/Variant94d5538fc39806b03ba1964a460634273ba6751ed469b1343cb46d6b6e7539b0.lean/declarations/centralmoment-two-eq-variance--0f59bb6a3b1a1e31e1fd4389.md) | 102 | `result-track:0f59bb6a3b1a1e31e1fd4389680d4e03edebca398ba0b02e12ceaa1a180e93f5` |
| 8 | `def` | [mgf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/Variant94d5538fc39806b03ba1964a460634273ba6751ed469b1343cb46d6b6e7539b0.lean/declarations/mgf--8aa884c97a41e76fd4cc5768.md) | 111 | `declaration-track:8aa884c97a41e76fd4cc576877e24128a494b59e2c0d25b07f30e19ce07d06f7` |
| 9 | `def` | [cgf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/Variant94d5538fc39806b03ba1964a460634273ba6751ed469b1343cb46d6b6e7539b0.lean/declarations/cgf--a0119bb97822e8a87f2fc0a7.md) | 116 | `declaration-track:a0119bb97822e8a87f2fc0a70314e00aaa11f77e5d93fa05d822fda7fc9dbf3e` |
| 10 | `theorem` | [mgf_zero_fun](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/Variant94d5538fc39806b03ba1964a460634273ba6751ed469b1343cb46d6b6e7539b0.lean/declarations/mgf-zero-fun--a845179df9a48535ae75d4b4.md) | 121 | `result-track:a845179df9a48535ae75d4b40f3d655c32d3f590af1cdd501fed8eb0e13e5126` |
| 11 | `theorem` | [cgf_zero_fun](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/Variant94d5538fc39806b03ba1964a460634273ba6751ed469b1343cb46d6b6e7539b0.lean/declarations/cgf-zero-fun--e1ed1b6c8274eb5e7f629fbb.md) | 126 | `result-track:e1ed1b6c8274eb5e7f629fbb1f99947a15ce7eded08780fb8e72c3b523f9dbda` |
| 12 | `theorem` | [mgf_zero_measure](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/Variant94d5538fc39806b03ba1964a460634273ba6751ed469b1343cb46d6b6e7539b0.lean/declarations/mgf-zero-measure--1ba0ca2feb7cd5cac6acbe81.md) | 130 | `result-track:1ba0ca2feb7cd5cac6acbe814dfb3d6a5930ffdc9cf08f2d5e1e33a0ea461b60` |
| 13 | `theorem` | [cgf_zero_measure](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/Variant94d5538fc39806b03ba1964a460634273ba6751ed469b1343cb46d6b6e7539b0.lean/declarations/cgf-zero-measure--94301441b538d624b4372c03.md) | 134 | `result-track:94301441b538d624b4372c0332ac01f5855bcbef1caa87d61e4710f38855ee6d` |
| 14 | `theorem` | [mgf_const'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/Variant94d5538fc39806b03ba1964a460634273ba6751ed469b1343cb46d6b6e7539b0.lean/declarations/mgf-const--6cb9739ea0c1a49eddf3b182.md) | 139 | `result-track:6cb9739ea0c1a49eddf3b182209e2281399277b1722cc879ae4959ed5abe323c` |
| 15 | `theorem` | [mgf_const](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/Variant94d5538fc39806b03ba1964a460634273ba6751ed469b1343cb46d6b6e7539b0.lean/declarations/mgf-const--aea011880d55d7ebb104372b.md) | 144 | `result-track:aea011880d55d7ebb104372b5192dbe5378b09fd4960a38ebb61b5858e069594` |
| 16 | `theorem` | [cgf_const'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/Variant94d5538fc39806b03ba1964a460634273ba6751ed469b1343cb46d6b6e7539b0.lean/declarations/cgf-const--e50a726235c16b855c6f954b.md) | 149 | `result-track:e50a726235c16b855c6f954baa9be196c663f518055ec8c95406baf5fd116ea4` |
| 17 | `theorem` | [cgf_const](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/Variant94d5538fc39806b03ba1964a460634273ba6751ed469b1343cb46d6b6e7539b0.lean/declarations/cgf-const--8c08a6c3840590c2af2d62a1.md) | 159 | `result-track:8c08a6c3840590c2af2d62a15c197be2a9d7a28fc9c079a79c037a0101d0977b` |
| 18 | `theorem` | [mgf_zero'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/Variant94d5538fc39806b03ba1964a460634273ba6751ed469b1343cb46d6b6e7539b0.lean/declarations/mgf-zero--23004304bd71d18f1aa17742.md) | 164 | `result-track:23004304bd71d18f1aa17742bc70886d777f5a35f7b672d58237d1d8a714af5c` |
| 19 | `theorem` | [mgf_zero](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/Variant94d5538fc39806b03ba1964a460634273ba6751ed469b1343cb46d6b6e7539b0.lean/declarations/mgf-zero--e4ee0939975ac35851d61a3c.md) | 169 | `result-track:e4ee0939975ac35851d61a3c74b2c997252e2b832ac57091d362f3f9f4823846` |
| 20 | `theorem` | [cgf_zero'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/Variant94d5538fc39806b03ba1964a460634273ba6751ed469b1343cb46d6b6e7539b0.lean/declarations/cgf-zero--194bc2717bf7884582d1e0c0.md) | 174 | `result-track:194bc2717bf7884582d1e0c0024a3fa4102588e155561c8b8e35f794258a5045` |
| 21 | `theorem` | [cgf_zero](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/Variant94d5538fc39806b03ba1964a460634273ba6751ed469b1343cb46d6b6e7539b0.lean/declarations/cgf-zero--7b02cc79e4d2b724804b24b9.md) | 178 | `result-track:7b02cc79e4d2b724804b24b9a380ae61dadc7bfd210fdde4b120f389e95e7c27` |
| 22 | `theorem` | [mgf_undef](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/Variant94d5538fc39806b03ba1964a460634273ba6751ed469b1343cb46d6b6e7539b0.lean/declarations/mgf-undef--667c281587ff5b8b73f3d270.md) | 182 | `result-track:667c281587ff5b8b73f3d270538450b961298e6b19c6434ba5a8703ecf198c34` |
| 23 | `theorem` | [cgf_undef](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/Variant94d5538fc39806b03ba1964a460634273ba6751ed469b1343cb46d6b6e7539b0.lean/declarations/cgf-undef--a4d91a1a0866deeced63715f.md) | 186 | `result-track:a4d91a1a0866deeced63715fd3acfe2b01c780d84abc63ecf396475a8ee9a89f` |
| 24 | `theorem` | [mgf_nonneg](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/Variant94d5538fc39806b03ba1964a460634273ba6751ed469b1343cb46d6b6e7539b0.lean/declarations/mgf-nonneg--ce8269526350b6752a894fa0.md) | 190 | `result-track:ce8269526350b6752a894fa085e1692255957e1236f9e8fc53f7a7e643bdf838` |
| 25 | `theorem` | [mgf_pos'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/Variant94d5538fc39806b03ba1964a460634273ba6751ed469b1343cb46d6b6e7539b0.lean/declarations/mgf-pos--9ccccf974841a1ecb71b1d7b.md) | 197 | `result-track:9ccccf974841a1ecb71b1d7b8486726164a58f9b93ddc4c9cde32c053f928808` |
| 26 | `theorem` | [mgf_pos](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/Variant94d5538fc39806b03ba1964a460634273ba6751ed469b1343cb46d6b6e7539b0.lean/declarations/mgf-pos--ef9a8e0ac70a71b1d2479fe6.md) | 216 | `result-track:ef9a8e0ac70a71b1d2479fe6da5775389fdbeaf1254f882656e7aaa2d91d2f61` |
| 27 | `theorem` | [mgf_neg](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/Variant94d5538fc39806b03ba1964a460634273ba6751ed469b1343cb46d6b6e7539b0.lean/declarations/mgf-neg--41c528dba22a995f3d23ca86.md) | 221 | `result-track:41c528dba22a995f3d23ca86ca1a8b59c3468cf1376b3e718cbd93f8fb410c3c` |
| 28 | `theorem` | [cgf_neg](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/Variant94d5538fc39806b03ba1964a460634273ba6751ed469b1343cb46d6b6e7539b0.lean/declarations/cgf-neg--6c3688876d6afde5c83f0d1a.md) | 224 | `result-track:6c3688876d6afde5c83f0d1acaefc833d012a329eccc9ebcd591df6b9d949a9e` |
| 29 | `theorem` | [IndepFun.exp_mul](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/Variant94d5538fc39806b03ba1964a460634273ba6751ed469b1343cb46d6b6e7539b0.lean/declarations/indepfun-exp-mul--ea36bf81cae3a0ab5b6f2efd.md) | 228 | `result-track:ea36bf81cae3a0ab5b6f2efdad183ef12cefeb374d3919f54aee45d9e6679656` |
| 30 | `theorem` | [IndepFun.mgf_add](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/Variant94d5538fc39806b03ba1964a460634273ba6751ed469b1343cb46d6b6e7539b0.lean/declarations/indepfun-mgf-add--b6a754d4805040e27bf18f46.md) | 235 | `result-track:b6a754d4805040e27bf18f46529be7dd989c4f4ae4bef9d7fa8ba1e9afcd946b` |
| 31 | `theorem` | [IndepFun.mgf_add'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/Variant94d5538fc39806b03ba1964a460634273ba6751ed469b1343cb46d6b6e7539b0.lean/declarations/indepfun-mgf-add--11e55c93467bedccb690a6c8.md) | 243 | `result-track:11e55c93467bedccb690a6c8863b095a0af2ddeb02e39e08c678db1f741df229` |
| 32 | `theorem` | [IndepFun.cgf_add](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/Variant94d5538fc39806b03ba1964a460634273ba6751ed469b1343cb46d6b6e7539b0.lean/declarations/indepfun-cgf-add--26dc345346e63a6527bae172.md) | 253 | `result-track:26dc345346e63a6527bae1722f90dda274402e389ea8089cc9194529a74fa8ed` |
| 33 | `theorem` | [aestronglyMeasurable_exp_mul_add](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/Variant94d5538fc39806b03ba1964a460634273ba6751ed469b1343cb46d6b6e7539b0.lean/declarations/aestronglymeasurable-exp-mul-add--08ec4331af873776da8dbded.md) | 263 | `result-track:08ec4331af873776da8dbdeda81766a3b8bda0d4a651c8179320ed978c166cff` |
| 34 | `theorem` | [aestronglyMeasurable_exp_mul_sum](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/Variant94d5538fc39806b03ba1964a460634273ba6751ed469b1343cb46d6b6e7539b0.lean/declarations/aestronglymeasurable-exp-mul-sum--80e6efae247b4861b6c6c2ac.md) | 271 | `result-track:80e6efae247b4861b6c6c2ac0c12699f9b1206cf63121ff9d1ca8d39908d6271` |
| 35 | `theorem` | [IndepFun.integrable_exp_mul_add](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/Variant94d5538fc39806b03ba1964a460634273ba6751ed469b1343cb46d6b6e7539b0.lean/declarations/indepfun-integrable-exp-mul-add--a6a095912b6fb6c395b782b5.md) | 285 | `result-track:a6a095912b6fb6c395b782b5349012b04baee8b591e9b80a8ebe933b0b9535e3` |
| 36 | `theorem` | [iIndepFun.integrable_exp_mul_sum](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/Variant94d5538fc39806b03ba1964a460634273ba6751ed469b1343cb46d6b6e7539b0.lean/declarations/iindepfun-integrable-exp-mul-sum--ddba4e105d5d498454d8f735.md) | 293 | `result-track:ddba4e105d5d498454d8f7356f2e0edbbc2f0da08fd833dca29890f0ba0e4053` |
| 37 | `theorem` | [iIndepFun.mgf_sum](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/Variant94d5538fc39806b03ba1964a460634273ba6751ed469b1343cb46d6b6e7539b0.lean/declarations/iindepfun-mgf-sum--926d4c612dcbd4b5ae9eb2fe.md) | 310 | `result-track:926d4c612dcbd4b5ae9eb2feece9f335eae9ac79a917eb077913e6d426c8a0e7` |
| 38 | `theorem` | [iIndepFun.cgf_sum](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/Variant94d5538fc39806b03ba1964a460634273ba6751ed469b1343cb46d6b6e7539b0.lean/declarations/iindepfun-cgf-sum--b4ccdc2e82f72803c0146c67.md) | 325 | `result-track:b4ccdc2e82f72803c0146c67d0aaf4f0a7df862f8edd6fc4abc63c8eaaf4ff20` |
| 39 | `theorem` | [measure_ge_le_exp_mul_mgf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/Variant94d5538fc39806b03ba1964a460634273ba6751ed469b1343cb46d6b6e7539b0.lean/declarations/measure-ge-le-exp-mul-mgf--7a9b747f8f13c8cd3165e02a.md) | 337 | `result-track:7a9b747f8f13c8cd3165e02acaa6edf9374cd260c4a2b5595d0b14d8ee213913` |
| 40 | `theorem` | [measure_le_le_exp_mul_mgf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/Variant94d5538fc39806b03ba1964a460634273ba6751ed469b1343cb46d6b6e7539b0.lean/declarations/measure-le-le-exp-mul-mgf--afc32fb3eb76429938fd845e.md) | 360 | `result-track:afc32fb3eb76429938fd845ec04cad1804fe4e7bad34a3ea96ef57be64e27a8d` |
| 41 | `theorem` | [measure_ge_le_exp_cgf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/Variant94d5538fc39806b03ba1964a460634273ba6751ed469b1343cb46d6b6e7539b0.lean/declarations/measure-ge-le-exp-cgf--c780b9770051ae8e05e9b997.md) | 372 | `result-track:c780b9770051ae8e05e9b9973299cfbe9e8326f4ab46f984ca57be89fbd12ff9` |
| 42 | `theorem` | [measure_le_le_exp_cgf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/Variant94d5538fc39806b03ba1964a460634273ba6751ed469b1343cb46d6b6e7539b0.lean/declarations/measure-le-le-exp-cgf--9ce5828a1cd5a3b1e4d48b9f.md) | 381 | `result-track:9ce5828a1cd5a3b1e4d48b9fc129c4e84c68d054a4f0c52b58d0fe7646f1e3d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
