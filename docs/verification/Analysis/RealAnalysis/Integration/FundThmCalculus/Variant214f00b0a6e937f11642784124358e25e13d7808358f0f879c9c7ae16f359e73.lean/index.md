# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.FundThmCalculus.Variant214f00b0a6e937f11642784124358e25e13d7808358f0f879c9c7ae16f359e73

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cf48736f6e0c82864b67a48ba180a7d32a8d6123",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/FundThmCalculus/Variant214f00b0a6e937f11642784124358e25e13d7808358f0f879c9c7ae16f359e73.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FundThmCalculus/Variant214f00b0a6e937f11642784124358e25e13d7808358f0f879c9c7ae16f359e73.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FundThmCalculus/Variant214f00b0a6e937f11642784124358e25e13d7808358f0f879c9c7ae16f359e73.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cf48736f6e0c82864b67a48ba180a7d32a8d6123`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/FundThmCalculus/Variant214f00b0a6e937f11642784124358e25e13d7808358f0f879c9c7ae16f359e73.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/FundThmCalculus/Variant214f00b0a6e937f11642784124358e25e13d7808358f0f879c9c7ae16f359e73.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Filter.Tendsto.integral_sub_linear_isLittleO_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FundThmCalculus/Variant214f00b0a6e937f11642784124358e25e13d7808358f0f879c9c7ae16f359e73.lean/declarations/filter-tendsto-integral-sub-linear-islittleo-ae--efc946edcd95b5d6c8344c26.md) | 37 | `result-track:efc946edcd95b5d6c8344c267c7c354f03c9ea97e3d27fa14c8578cbfc0bcec6` |
| 2 | `theorem` | [ContinuousWithinAt.integral_sub_linear_isLittleO_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FundThmCalculus/Variant214f00b0a6e937f11642784124358e25e13d7808358f0f879c9c7ae16f359e73.lean/declarations/continuouswithinat-integral-sub-linear-islittleo-ae--561cba909f05ea03df160673.md) | 69 | `result-track:561cba909f05ea03df160673ac864f8931a92afe635eda10f75595b5dab95b54` |
| 3 | `theorem` | [ContinuousAt.integral_sub_linear_isLittleO_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FundThmCalculus/Variant214f00b0a6e937f11642784124358e25e13d7808358f0f879c9c7ae16f359e73.lean/declarations/continuousat-integral-sub-linear-islittleo-ae--db766aa1d917d241b5249af9.md) | 89 | `result-track:db766aa1d917d241b5249af9c914a5836990c950dc994e923b8041ca791cc511` |
| 4 | `theorem` | [ContinuousOn.integral_sub_linear_isLittleO_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FundThmCalculus/Variant214f00b0a6e937f11642784124358e25e13d7808358f0f879c9c7ae16f359e73.lean/declarations/continuouson-integral-sub-linear-islittleo-ae--94b075069264179194c24eee.md) | 105 | `result-track:94b075069264179194c24eee2825d614633f65fc1a9a9021aca226670ace8738` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
