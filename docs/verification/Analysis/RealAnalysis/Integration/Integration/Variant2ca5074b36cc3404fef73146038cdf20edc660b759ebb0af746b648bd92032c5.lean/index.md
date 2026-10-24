# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Integration.Variant2ca5074b36cc3404fef73146038cdf20edc660b759ebb0af746b648bd92032c5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5edd8198d106bc7fd22755b47176bd2b6c14f355",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Integration/Variant2ca5074b36cc3404fef73146038cdf20edc660b759ebb0af746b648bd92032c5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant2ca5074b36cc3404fef73146038cdf20edc660b759ebb0af746b648bd92032c5.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant2ca5074b36cc3404fef73146038cdf20edc660b759ebb0af746b648bd92032c5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5edd8198d106bc7fd22755b47176bd2b6c14f355`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Integration/Variant2ca5074b36cc3404fef73146038cdf20edc660b759ebb0af746b648bd92032c5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Integration/Variant2ca5074b36cc3404fef73146038cdf20edc660b759ebb0af746b648bd92032c5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.SetIntegral` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Independence.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lintegral_mul_indicator_eq_lintegral_mul_lintegral_indicator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant2ca5074b36cc3404fef73146038cdf20edc660b759ebb0af746b648bd92032c5.lean/declarations/lintegral-mul-indicator-eq-lintegral-mul-lintegral-indicator--aa7893ce83c8fdb6911d903b.md) | 53 | `result-track:aa7893ce83c8fdb6911d903b9e26605ed6aa6675129616c55621f2aad6af6111` |
| 2 | `theorem` | [lintegral_mul_eq_lintegral_mul_lintegral_of_independent_measurableSpace](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant2ca5074b36cc3404fef73146038cdf20edc660b759ebb0af746b648bd92032c5.lean/declarations/lintegral-mul-eq-lintegral-mul-lintegral-of-independent-measurablespace--b8447be012b1473fe8a97c9f.md) | 90 | `result-track:b8447be012b1473fe8a97c9f19e6396f5c905e649b766f81c4c5036308af75a7` |
| 3 | `theorem` | [lintegral_mul_eq_lintegral_mul_lintegral_of_indepFun](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant2ca5074b36cc3404fef73146038cdf20edc660b759ebb0af746b648bd92032c5.lean/declarations/lintegral-mul-eq-lintegral-mul-lintegral-of-indepfun--97e148fa59548c4f7086d37f.md) | 117 | `result-track:97e148fa59548c4f7086d37f12b7830c2403d4aebed9a91b733763d758fc0a76` |
| 4 | `theorem` | [lintegral_mul_eq_lintegral_mul_lintegral_of_indepFun'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant2ca5074b36cc3404fef73146038cdf20edc660b759ebb0af746b648bd92032c5.lean/declarations/lintegral-mul-eq-lintegral-mul-lintegral-of-indepfun--110f30eaae5d691e9f9cbb2d.md) | 128 | `result-track:110f30eaae5d691e9f9cbb2d230ecb4b9162fcb2ce454a81b5a6dde6cc788465` |
| 5 | `theorem` | [lintegral_mul_eq_lintegral_mul_lintegral_of_indepFun''](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant2ca5074b36cc3404fef73146038cdf20edc660b759ebb0af746b648bd92032c5.lean/declarations/lintegral-mul-eq-lintegral-mul-lintegral-of-indepfun--13fe700de4e52d6574b07367.md) | 139 | `result-track:13fe700de4e52d6574b07367101fcd0918d34a6ccd5697b277eb790430951948` |
| 6 | `theorem` | [IndepFun.integrable_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant2ca5074b36cc3404fef73146038cdf20edc660b759ebb0af746b648bd92032c5.lean/declarations/indepfun-integrable-mul--9e6af5e131081336370f6fc8.md) | 146 | `result-track:9e6af5e131081336370f6fc891aee9052833f8e600f948b88db2bf109f9f471a` |
| 7 | `theorem` | [IndepFun.integrable_left_of_integrable_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant2ca5074b36cc3404fef73146038cdf20edc660b759ebb0af746b648bd92032c5.lean/declarations/indepfun-integrable-left-of-integrable-mul--ae8e0cb4e68b4c28ea2c06d1.md) | 166 | `result-track:ae8e0cb4e68b4c28ea2c06d190c89a50fcf3359ded5ddf5accee30dbd0bc7795` |
| 8 | `theorem` | [IndepFun.integrable_right_of_integrable_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant2ca5074b36cc3404fef73146038cdf20edc660b759ebb0af746b648bd92032c5.lean/declarations/indepfun-integrable-right-of-integrable-mul--e2bbbae0185f28c01c1ef7c0.md) | 188 | `result-track:e2bbbae0185f28c01c1ef7c0c80108b5a3f6a709d53e969a690f34079b267706` |
| 9 | `theorem` | [IndepFun.integral_mul_of_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant2ca5074b36cc3404fef73146038cdf20edc660b759ebb0af746b648bd92032c5.lean/declarations/indepfun-integral-mul-of-nonneg--0e5a9e798ec82147ee12e62b.md) | 211 | `result-track:0e5a9e798ec82147ee12e62b92f36bea62135796fcc7d3c915a3f7712d3b12d2` |
| 10 | `theorem` | [IndepFun.integral_mul_of_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant2ca5074b36cc3404fef73146038cdf20edc660b759ebb0af746b648bd92032c5.lean/declarations/indepfun-integral-mul-of-integrable--e33eb2c2e375e8d155a6309e.md) | 233 | `result-track:e33eb2c2e375e8d155a6309e095ae993448f8e08228c2bf72b73421ab5d3017e` |
| 11 | `theorem` | [IndepFun.integral_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant2ca5074b36cc3404fef73146038cdf20edc660b759ebb0af746b648bd92032c5.lean/declarations/indepfun-integral-mul--83c93122763c8c5cefc54c38.md) | 278 | `result-track:83c93122763c8c5cefc54c38c3637ffaf82e8e5af2a625eb4f1db8673b3d6f15` |
| 12 | `theorem` | [IndepFun.integral_mul'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant2ca5074b36cc3404fef73146038cdf20edc660b759ebb0af746b648bd92032c5.lean/declarations/indepfun-integral-mul--a5a8a4fa1df8ed61977e1218.md) | 304 | `result-track:a5a8a4fa1df8ed61977e12183cf9aa4faf90a3d5895195025652f90de2bbd7ba` |
| 13 | `theorem` | [indepFun_iff_integral_comp_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant2ca5074b36cc3404fef73146038cdf20edc660b759ebb0af746b648bd92032c5.lean/declarations/indepfun-iff-integral-comp-mul--9d64728753839aa66aa10593.md) | 313 | `result-track:9d64728753839aa66aa105930eecc9325d7fb27d3154a8bd177f36e35ad932a3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
