# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.IntegrationByParts.Variant2c42c1016389d7140ce734ef5a403e76914cd3f856c890e8b9c43ba9623d03e1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "676329355ecfbd25655d6a877de6193d3cee275a",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant2c42c1016389d7140ce734ef5a403e76914cd3f856c890e8b9c43ba9623d03e1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant2c42c1016389d7140ce734ef5a403e76914cd3f856c890e8b9c43ba9623d03e1.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant2c42c1016389d7140ce734ef5a403e76914cd3f856c890e8b9c43ba9623d03e1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `676329355ecfbd25655d6a877de6193d3cee275a`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant2c42c1016389d7140ce734ef5a403e76914cd3f856c890e8b9c43ba9623d03e1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant2c42c1016389d7140ce734ef5a403e76914cd3f856c890e8b9c43ba9623d03e1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.LineDeriv.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [integral_bilinear_hasLineDerivAt_right_eq_neg_left_of_integrable_aux1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant2c42c1016389d7140ce734ef5a403e76914cd3f856c890e8b9c43ba9623d03e1.lean/declarations/integral-bilinear-haslinederivat-right-eq-neg-left-of-integrable-aux1--0dacdf96dccdbdf5f0f436b0.md) | 61 | `result-track:0dacdf96dccdbdf5f0f436b06343ec8cf3ce764ecbc547e42a90237c86c349f7` |
| 2 | `lemma` | [integral_bilinear_hasLineDerivAt_right_eq_neg_left_of_integrable_aux2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant2c42c1016389d7140ce734ef5a403e76914cd3f856c890e8b9c43ba9623d03e1.lean/declarations/integral-bilinear-haslinederivat-right-eq-neg-left-of-integrable-aux2--7d9db96758796f1aae3728ce.md) | 85 | `result-track:7d9db96758796f1aae3728ce8cf1c4f09a0dc3b6e7b6fc372e2a8727d8b4d25f` |
| 3 | `theorem` | [integral_bilinear_hasLineDerivAt_right_eq_neg_left_of_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant2c42c1016389d7140ce734ef5a403e76914cd3f856c890e8b9c43ba9623d03e1.lean/declarations/integral-bilinear-haslinederivat-right-eq-neg-left-of-integrable--ec4fc60c64ac4ee22c4d1572.md) | 111 | `result-track:ec4fc60c64ac4ee22c4d1572bcbfd9cd69a36fea6afe0a6a80474e1aa1827b3f` |
| 4 | `theorem` | [integral_bilinear_hasFDerivAt_right_eq_neg_left_of_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant2c42c1016389d7140ce734ef5a403e76914cd3f856c890e8b9c43ba9623d03e1.lean/declarations/integral-bilinear-hasfderivat-right-eq-neg-left-of-integrable--132623e579603840f6a698ba.md) | 167 | `result-track:132623e579603840f6a698bae7bb7cd07398c5d978829a361586770a347945a9` |
| 5 | `theorem` | [integral_bilinear_fderiv_right_eq_neg_left_of_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant2c42c1016389d7140ce734ef5a403e76914cd3f856c890e8b9c43ba9623d03e1.lean/declarations/integral-bilinear-fderiv-right-eq-neg-left-of-integrable--ecd5be09bea0ca80b8c5ad3a.md) | 182 | `result-track:ecd5be09bea0ca80b8c5ad3a8ed2c685b09e2078c019633fd4f206ee1e6c4f70` |
| 6 | `theorem` | [integral_smul_fderiv_eq_neg_fderiv_smul_of_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant2c42c1016389d7140ce734ef5a403e76914cd3f856c890e8b9c43ba9623d03e1.lean/declarations/integral-smul-fderiv-eq-neg-fderiv-smul-of-integrable--5b77b4da500eaa4ccbaaf8e5.md) | 198 | `result-track:5b77b4da500eaa4ccbaaf8e52040406dd7dcd28011a97b334eb1f7765a85629b` |
| 7 | `theorem` | [integral_mul_fderiv_eq_neg_fderiv_mul_of_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant2c42c1016389d7140ce734ef5a403e76914cd3f856c890e8b9c43ba9623d03e1.lean/declarations/integral-mul-fderiv-eq-neg-fderiv-mul-of-integrable--01773d17aca8824429cf694a.md) | 211 | `result-track:01773d17aca8824429cf694a8e3897d4e0e32a4a0df4b5532784b82632ddfb84` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
