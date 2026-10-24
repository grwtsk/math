# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.CovarianceBilin.Variant8399a957cb5f451b73adf5f1ec72121688fb79b4dec0adba07b5a11249906919

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e5d539fe677f0d1da209b9776f9e977c7fa58be1",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant8399a957cb5f451b73adf5f1ec72121688fb79b4dec0adba07b5a11249906919.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant8399a957cb5f451b73adf5f1ec72121688fb79b4dec0adba07b5a11249906919.lean/index.md) · [Full source](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant8399a957cb5f451b73adf5f1ec72121688fb79b4dec0adba07b5a11249906919.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e5d539fe677f0d1da209b9776f9e977c7fa58be1`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant8399a957cb5f451b73adf5f1ec72121688fb79b4dec0adba07b5a11249906919.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant8399a957cb5f451b73adf5f1ec72121688fb79b4dec0adba07b5a11249906919.lean.json)

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
| 1 | `def` | [covarianceBilin](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant8399a957cb5f451b73adf5f1ec72121688fb79b4dec0adba07b5a11249906919.lean/declarations/covariancebilin--2229fd91f4d556edc1d33e7a.md) | 58 | `declaration-track:2229fd91f4d556edc1d33e7ae29752f1c5da5a8534b8d9554c11a11a39ec1def` |
| 2 | `lemma` | [covarianceBilin_zero](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant8399a957cb5f451b73adf5f1ec72121688fb79b4dec0adba07b5a11249906919.lean/declarations/covariancebilin-zero--8d0f09fe9359a655a1e4659f.md) | 63 | `result-track:8d0f09fe9359a655a1e4659fd14b7295a17ad6f585572c866963f4c10939dfe0` |
| 3 | `lemma` | [covarianceBilin_eq_covarianceBilinDual](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant8399a957cb5f451b73adf5f1ec72121688fb79b4dec0adba07b5a11249906919.lean/declarations/covariancebilin-eq-covariancebilindual--fb0d6c505c8948425c01b99a.md) | 67 | `result-track:fb0d6c505c8948425c01b99a318d34a251c23b528bf6b6bd1505176e8739e466` |
| 4 | `lemma` | [covarianceBilin_of_not_memLp](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant8399a957cb5f451b73adf5f1ec72121688fb79b4dec0adba07b5a11249906919.lean/declarations/covariancebilin-of-not-memlp--cafb5afcc480416b0d58b925.md) | 71 | `result-track:cafb5afcc480416b0d58b92523fb5ce335bfc3022e40d0486e78ca3d0ede31ad` |
| 5 | `lemma` | [covarianceBilin_apply](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant8399a957cb5f451b73adf5f1ec72121688fb79b4dec0adba07b5a11249906919.lean/declarations/covariancebilin-apply--7e7928b887733417770dd0f9.md) | 76 | `result-track:7e7928b887733417770dd0f9a33df12420f8bfd96ff09357402acc259b97d9b1` |
| 6 | `lemma` | [covarianceBilin_comm](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant8399a957cb5f451b73adf5f1ec72121688fb79b4dec0adba07b5a11249906919.lean/declarations/covariancebilin-comm--6ad72fe82e5277ceba224ce4.md) | 80 | `result-track:6ad72fe82e5277ceba224ce4c1991808de33940e8ebc36ca611b244b6ac95035` |
| 7 | `lemma` | [covarianceBilin_self](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant8399a957cb5f451b73adf5f1ec72121688fb79b4dec0adba07b5a11249906919.lean/declarations/covariancebilin-self--b5dd0c564768294aa4f6894a.md) | 85 | `result-track:b5dd0c564768294aa4f6894ae806c91c01b8c1825ce29843dc4d8be362525717` |
| 8 | `lemma` | [covarianceBilin_apply_eq_cov](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant8399a957cb5f451b73adf5f1ec72121688fb79b4dec0adba07b5a11249906919.lean/declarations/covariancebilin-apply-eq-cov--022aaa9041bb254b48b6db96.md) | 90 | `result-track:022aaa9041bb254b48b6db9630bd9689a2ae2e701da071e001af184001eb2e23` |
| 9 | `lemma` | [covarianceBilin_real](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant8399a957cb5f451b73adf5f1ec72121688fb79b4dec0adba07b5a11249906919.lean/declarations/covariancebilin-real--a8db935d04f5783e7b9e97c1.md) | 96 | `result-track:a8db935d04f5783e7b9e97c13b1454f6f9b743ca1dbf2f9c9577e88f8315a495` |
| 10 | `lemma` | [covarianceBilin_real_self](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant8399a957cb5f451b73adf5f1ec72121688fb79b4dec0adba07b5a11249906919.lean/declarations/covariancebilin-real-self--7a035f91d18e8574c72d34f4.md) | 104 | `result-track:7a035f91d18e8574c72d34f428ff4cbce876e291414636542859ac3547148e1d` |
| 11 | `lemma` | [covarianceBilin_self_nonneg](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant8399a957cb5f451b73adf5f1ec72121688fb79b4dec0adba07b5a11249906919.lean/declarations/covariancebilin-self-nonneg--01f6b0e57fd796565d17f14b.md) | 109 | `result-track:01f6b0e57fd796565d17f14b0ce3c265329167d1588f1e15d4f7f228a37ec1d3` |
| 12 | `lemma` | [isPosSemidef_covarianceBilin](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant8399a957cb5f451b73adf5f1ec72121688fb79b4dec0adba07b5a11249906919.lean/declarations/ispossemidef-covariancebilin--be95e3719fb5f02fa4d20677.md) | 113 | `result-track:be95e3719fb5f02fa4d20677a5afd7fa5408788d6f58fbc0625704eee149b23d` |
| 13 | `lemma` | [covarianceBilin_map](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant8399a957cb5f451b73adf5f1ec72121688fb79b4dec0adba07b5a11249906919.lean/declarations/covariancebilin-map--26014b49e54cddd4f33d659a.md) | 118 | `result-track:26014b49e54cddd4f33d659a4827a397d5aa18e4efa4f18ee616f3b9d9e39a39` |
| 14 | `lemma` | [covarianceBilin_map_const_add](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant8399a957cb5f451b73adf5f1ec72121688fb79b4dec0adba07b5a11249906919.lean/declarations/covariancebilin-map-const-add--190431bfd5113bb761881989.md) | 129 | `result-track:190431bfd5113bb76188198936648f5237300ad66ba81bc7a7e9f7e246c87f86` |
| 15 | `lemma` | [covarianceBilin_apply_basisFun](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant8399a957cb5f451b73adf5f1ec72121688fb79b4dec0adba07b5a11249906919.lean/declarations/covariancebilin-apply-basisfun--6d3b3ddaec5c1224db950db0.md) | 150 | `result-track:6d3b3ddaec5c1224db950db0a024dce68c4539f41b8e7c9e97b45e3a9b4c5a0b` |
| 16 | `lemma` | [covarianceBilin_apply_basisFun_self](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant8399a957cb5f451b73adf5f1ec72121688fb79b4dec0adba07b5a11249906919.lean/declarations/covariancebilin-apply-basisfun-self--c66bde9f548f65830d2301d8.md) | 162 | `result-track:c66bde9f548f65830d2301d8de4c83e90907ffd083edb757e631bd706d9442e1` |
| 17 | `lemma` | [covarianceBilin_apply_pi](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant8399a957cb5f451b73adf5f1ec72121688fb79b4dec0adba07b5a11249906919.lean/declarations/covariancebilin-apply-pi--5b23fc61be2c6596f79dfe36.md) | 170 | `result-track:5b23fc61be2c6596f79dfe360c75d0e06baf2c1e0c156a2d14ed2e0f515e735f` |
| 18 | `def` | [covarianceOperator](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant8399a957cb5f451b73adf5f1ec72121688fb79b4dec0adba07b5a11249906919.lean/declarations/covarianceoperator--6a10591213d19376a2736cbe.md) | 200 | `declaration-track:6a10591213d19376a2736cbebc87f619f7cf1c8a74501610de6c4df22c19dacc` |
| 19 | `lemma` | [covarianceOperator_zero](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant8399a957cb5f451b73adf5f1ec72121688fb79b4dec0adba07b5a11249906919.lean/declarations/covarianceoperator-zero--98db0254d03a43e5affee0f6.md) | 205 | `result-track:98db0254d03a43e5affee0f6e6fe0cc1bbd6b6229f689390afaa04169a6e3eb2` |
| 20 | `lemma` | [covarianceOperator_of_not_memLp](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant8399a957cb5f451b73adf5f1ec72121688fb79b4dec0adba07b5a11249906919.lean/declarations/covarianceoperator-of-not-memlp--801f6fe80103bf9e035bb304.md) | 209 | `result-track:801f6fe80103bf9e035bb304aca893ffac6f990835c484a387ba7766d55ab9e8` |
| 21 | `lemma` | [covarianceOperator_inner](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant8399a957cb5f451b73adf5f1ec72121688fb79b4dec0adba07b5a11249906919.lean/declarations/covarianceoperator-inner--5946a4a80cf44a266a0701e4.md) | 215 | `result-track:5946a4a80cf44a266a0701e42e04b362bfe3ff0f0cae955a852eedf8d83becc2` |
| 22 | `lemma` | [covarianceOperator_apply](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant8399a957cb5f451b73adf5f1ec72121688fb79b4dec0adba07b5a11249906919.lean/declarations/covarianceoperator-apply--f138db79a493271ff406807d.md) | 219 | `result-track:f138db79a493271ff406807dfc2ce822ac44e59807b213bc3acc4b2ff4c55fb2` |
| 23 | `lemma` | [isPositive_covarianceOperator](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant8399a957cb5f451b73adf5f1ec72121688fb79b4dec0adba07b5a11249906919.lean/declarations/ispositive-covarianceoperator--a200c277a5316112b92b9718.md) | 227 | `result-track:a200c277a5316112b92b971841feb779c4d04235700bf0085ec6a774a674b2c7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
