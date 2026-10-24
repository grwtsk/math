# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Multivariate.Variant5133b50bde50f1988daf9c113d6692c86a13a2a2aba3427a874932ec17f61282

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6953dbcb994d3358f2f7238bede0f93582fd4681",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Multivariate/Variant5133b50bde50f1988daf9c113d6692c86a13a2a2aba3427a874932ec17f61282.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Multivariate/Variant5133b50bde50f1988daf9c113d6692c86a13a2a2aba3427a874932ec17f61282.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Multivariate/Variant5133b50bde50f1988daf9c113d6692c86a13a2a2aba3427a874932ec17f61282.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6953dbcb994d3358f2f7238bede0f93582fd4681`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Multivariate/Variant5133b50bde50f1988daf9c113d6692c86a13a2a2aba3427a874932ec17f61282.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Multivariate/Variant5133b50bde50f1988daf9c113d6692c86a13a2a2aba3427a874932ec17f61282.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Distributions.Gaussian.Fernique` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ContinuousFunctionalCalculus.Rpow.Measurable` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [stdGaussian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Multivariate/Variant5133b50bde50f1988daf9c113d6692c86a13a2a2aba3427a874932ec17f61282.lean/declarations/stdgaussian--521483734a5493e174f74b87.md) | 65 | `declaration-track:521483734a5493e174f74b8752a19172015165af66909a3af23bce18c31af315` |
| 2 | `instance` | [isProbabilityMeasure_stdGaussian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Multivariate/Variant5133b50bde50f1988daf9c113d6692c86a13a2a2aba3427a874932ec17f61282.lean/declarations/isprobabilitymeasure-stdgaussian--6baf6d62872ae0396b0dd4d1.md) | 71 | `declaration-track:6baf6d62872ae0396b0dd4d1be501ce7c02efdd2171ad862e6aa68c0d6fd33e5` |
| 3 | `lemma` | [integral_id_stdGaussian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Multivariate/Variant5133b50bde50f1988daf9c113d6692c86a13a2a2aba3427a874932ec17f61282.lean/declarations/integral-id-stdgaussian--2bc8426bd7055c38e6a6abfd.md) | 76 | `result-track:2bc8426bd7055c38e6a6abfd3dfb9cc76e8244e9f3007cf159e5902a41918a79` |
| 4 | `lemma` | [variance_dual_stdGaussian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Multivariate/Variant5133b50bde50f1988daf9c113d6692c86a13a2a2aba3427a874932ec17f61282.lean/declarations/variance-dual-stdgaussian--3664cb7bd4ae45d9f480ccaa.md) | 82 | `result-track:3664cb7bd4ae45d9f480ccaac6c39da7e79818b880ef30eb7c0c03cb7e2057ac` |
| 5 | `lemma` | [charFun_stdGaussian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Multivariate/Variant5133b50bde50f1988daf9c113d6692c86a13a2a2aba3427a874932ec17f61282.lean/declarations/charfun-stdgaussian--aba05d40e36c033a38655bdf.md) | 94 | `result-track:aba05d40e36c033a38655bdf348d81f036ebba704f08647855f353e2bd416051` |
| 6 | `instance` | [isGaussian_stdGaussian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Multivariate/Variant5133b50bde50f1988daf9c113d6692c86a13a2a2aba3427a874932ec17f61282.lean/declarations/isgaussian-stdgaussian--f956095f9f1831348854d9e9.md) | 107 | `declaration-track:f956095f9f1831348854d9e9377f1a4b133f54c95923aa58ea5fb17ddb69492c` |
| 7 | `lemma` | [integral_strongDual_stdGaussian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Multivariate/Variant5133b50bde50f1988daf9c113d6692c86a13a2a2aba3427a874932ec17f61282.lean/declarations/integral-strongdual-stdgaussian--e7ec2c92ce23b41e84e311b8.md) | 113 | `result-track:e7ec2c92ce23b41e84e311b8643b5c56b15c60f2490edee1b860f9b2ac6b527b` |
| 8 | `lemma` | [charFunDual_stdGaussian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Multivariate/Variant5133b50bde50f1988daf9c113d6692c86a13a2a2aba3427a874932ec17f61282.lean/declarations/charfundual-stdgaussian--34fe193b747ff3d82e2dbf00.md) | 116 | `result-track:34fe193b747ff3d82e2dbf0089296effa0674a0f0b0aa3a9724fd2c5eb90b82e` |
| 9 | `lemma` | [covarianceBilin_stdGaussian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Multivariate/Variant5133b50bde50f1988daf9c113d6692c86a13a2a2aba3427a874932ec17f61282.lean/declarations/covariancebilin-stdgaussian--5c36aa2f3e0a4ef7af63737b.md) | 120 | `result-track:5c36aa2f3e0a4ef7af63737bf29cc46b6229f69db3e16c18d6291a66daa8719f` |
| 10 | `lemma` | [stdGaussian_map](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Multivariate/Variant5133b50bde50f1988daf9c113d6692c86a13a2a2aba3427a874932ec17f61282.lean/declarations/stdgaussian-map--0dc041a94e1f1599f9db2336.md) | 126 | `result-track:0dc041a94e1f1599f9db23369986e9f79a08f69034f65c60b34fe0e38dbcce5e` |
| 11 | `lemma` | [map_pi_eq_stdGaussian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Multivariate/Variant5133b50bde50f1988daf9c113d6692c86a13a2a2aba3427a874932ec17f61282.lean/declarations/map-pi-eq-stdgaussian--01e48330f9b674696387bde3.md) | 135 | `result-track:01e48330f9b674696387bde3411efdbde3ec7f164be2b0b94e7b3b7a1d088b79` |
| 12 | `lemma` | [stdGaussian_eq_map_pi_orthonormalBasis](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Multivariate/Variant5133b50bde50f1988daf9c113d6692c86a13a2a2aba3427a874932ec17f61282.lean/declarations/stdgaussian-eq-map-pi-orthonormalbasis--f120e3f52435e3ff0b7c43e7.md) | 144 | `result-track:f120e3f52435e3ff0b7c43e784f4ac13aeda7b37e3207005ba4ec19979fabc71` |
| 13 | `def` | [multivariateGaussian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Multivariate/Variant5133b50bde50f1988daf9c113d6692c86a13a2a2aba3427a874932ec17f61282.lean/declarations/multivariategaussian--6b38c8525b26a01527a775ee.md) | 166 | `declaration-track:6b38c8525b26a01527a775eefb330819fb8a9b9af7ef417f8c38b8956368af2f` |
| 14 | `lemma` | [multivariateGaussian_of_not_posSemidef](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Multivariate/Variant5133b50bde50f1988daf9c113d6692c86a13a2a2aba3427a874932ec17f61282.lean/declarations/multivariategaussian-of-not-possemidef--723bc41818def1db59fd0e4e.md) | 170 | `result-track:723bc41818def1db59fd0e4e914df4e527c26784f14e1207e781640239dac415` |
| 15 | `lemma` | [multivariateGaussian_zero_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Multivariate/Variant5133b50bde50f1988daf9c113d6692c86a13a2a2aba3427a874932ec17f61282.lean/declarations/multivariategaussian-zero-one--ac7f3eae15d6e94ca6a7879d.md) | 178 | `result-track:ac7f3eae15d6e94ca6a7879dd1f02bf059874c7ffdee64bc7c11c4f0c4659bd0` |
| 16 | `instance` | [isGaussian_multivariateGaussian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Multivariate/Variant5133b50bde50f1988daf9c113d6692c86a13a2a2aba3427a874932ec17f61282.lean/declarations/isgaussian-multivariategaussian--41fd4e50f3193c1a3aeded05.md) | 184 | `declaration-track:41fd4e50f3193c1a3aeded059a4bf8b0cc4694582a7b6f61ca38481a26e12a74` |
| 17 | `lemma` | [integral_id_multivariateGaussian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Multivariate/Variant5133b50bde50f1988daf9c113d6692c86a13a2a2aba3427a874932ec17f61282.lean/declarations/integral-id-multivariategaussian--a322879182c15c589153a58e.md) | 192 | `result-track:a322879182c15c589153a58e4060497e9c56b40c593143ac1029705f06014a54` |
| 18 | `lemma` | [integral_id_multivariateGaussian'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Multivariate/Variant5133b50bde50f1988daf9c113d6692c86a13a2a2aba3427a874932ec17f61282.lean/declarations/integral-id-multivariategaussian--98b3fac9c9210e509473a612.md) | 198 | `result-track:98b3fac9c9210e509473a612039e096672c159588fd74ac1df6f05673c171648` |
| 19 | `lemma` | [covarianceBilin_multivariateGaussian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Multivariate/Variant5133b50bde50f1988daf9c113d6692c86a13a2a2aba3427a874932ec17f61282.lean/declarations/covariancebilin-multivariategaussian--9fef2e8343bbe6aa431cfdd2.md) | 200 | `result-track:9fef2e8343bbe6aa431cfdd2d73730ad9cd31cab508ede8a0daf324b49507506` |
| 20 | `lemma` | [covariance_eval_multivariateGaussian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Multivariate/Variant5133b50bde50f1988daf9c113d6692c86a13a2a2aba3427a874932ec17f61282.lean/declarations/covariance-eval-multivariategaussian--f8788a0ea69b6ee0dd9e71c1.md) | 213 | `result-track:f8788a0ea69b6ee0dd9e71c1fac2835ea04073455b3ad748d0ba0aae5e43585c` |
| 21 | `lemma` | [variance_eval_multivariateGaussian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Multivariate/Variant5133b50bde50f1988daf9c113d6692c86a13a2a2aba3427a874932ec17f61282.lean/declarations/variance-eval-multivariategaussian--0098990d179cece173569abd.md) | 221 | `result-track:0098990d179cece173569abdbdfd7b4e0e30d96cbb6e53941138c2bfcfa406db` |
| 22 | `lemma` | [measurePreserving_eval_multivariateGaussian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Multivariate/Variant5133b50bde50f1988daf9c113d6692c86a13a2a2aba3427a874932ec17f61282.lean/declarations/measurepreserving-eval-multivariategaussian--7ccf32b085f75dc44e848652.md) | 226 | `result-track:7ccf32b085f75dc44e848652f160bfaf4e88f62df2b21ce291ee11ff72610745` |
| 23 | `lemma` | [charFun_multivariateGaussian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Multivariate/Variant5133b50bde50f1988daf9c113d6692c86a13a2a2aba3427a874932ec17f61282.lean/declarations/charfun-multivariategaussian--019693ddca059d5523e93576.md) | 236 | `result-track:019693ddca059d5523e93576f040d5e0c9fcc19f653cc802f209ed4e1e342c79` |
| 24 | `lemma` | [measurePreserving_restrict₂_multivariateGaussian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Multivariate/Variant5133b50bde50f1988daf9c113d6692c86a13a2a2aba3427a874932ec17f61282.lean/declarations/measurepreserving-restrict-multivariategaussian--5247dfeb014f024261b715d6.md) | 244 | `result-track:5247dfeb014f024261b715d6b0f06f3962dea771c3fc59d4116a4d72e2db6a8a` |
| 25 | `lemma` | [measurable_multivariateGaussian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Multivariate/Variant5133b50bde50f1988daf9c113d6692c86a13a2a2aba3427a874932ec17f61282.lean/declarations/measurable-multivariategaussian--87e16af6459f060b75d8795d.md) | 269 | `result-track:87e16af6459f060b75d8795dbc81807a5911bd9531ad704666068130250d316e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
