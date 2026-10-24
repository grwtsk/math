# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.SourceCompleteDivisorTailReturn.Variant5bb1a0dca6a50eed6c25f261d9422c6d1e4e78d72dd9212f8fee155bb9a89d09

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "57092382e3bbaf0f1e534a6daaa1298e350da57d",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceCompleteDivisorTailReturn/Variant5bb1a0dca6a50eed6c25f261d9422c6d1e4e78d72dd9212f8fee155bb9a89d09.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceCompleteDivisorTailReturn/Variant5bb1a0dca6a50eed6c25f261d9422c6d1e4e78d72dd9212f8fee155bb9a89d09.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceCompleteDivisorTailReturn/Variant5bb1a0dca6a50eed6c25f261d9422c6d1e4e78d72dd9212f8fee155bb9a89d09.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `57092382e3bbaf0f1e534a6daaa1298e350da57d`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/SourceCompleteDivisorTailReturn/Variant5bb1a0dca6a50eed6c25f261d9422c6d1e4e78d72dd9212f8fee155bb9a89d09.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/SourceCompleteDivisorTailReturn/Variant5bb1a0dca6a50eed6c25f261d9422c6d1e4e78d72dd9212f8fee155bb9a89d09.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceCompleteXiTailConsumer` — import line 6; external provider; requires a separately pinned dependency.
- `SourceCompleteDivisorCancellation` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [completeXiHead](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceCompleteDivisorTailReturn/Variant5bb1a0dca6a50eed6c25f261d9422c6d1e4e78d72dd9212f8fee155bb9a89d09.lean/declarations/completexihead--512afa74b6014c9192419228.md) | 39 | `declaration-track:512afa74b6014c9192419228ab9dce82afa94725021ec9464e62d131982cf6b7` |
| 2 | `theorem` | [remaining_work_eq_gamma_head_tail](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceCompleteDivisorTailReturn/Variant5bb1a0dca6a50eed6c25f261d9422c6d1e4e78d72dd9212f8fee155bb9a89d09.lean/declarations/remaining-work-eq-gamma-head-tail--914b64685601d1808b5edbee.md) | 41 | `result-track:914b64685601d1808b5edbee22f9dc7b293cbacf00e9a665804560e19f692bf7` |
| 3 | `theorem` | [complete_tail_eq_residual_corrections](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceCompleteDivisorTailReturn/Variant5bb1a0dca6a50eed6c25f261d9422c6d1e4e78d72dd9212f8fee155bb9a89d09.lean/declarations/complete-tail-eq-residual-corrections--50ccba4bc81f4ac5c7fe8e64.md) | 69 | `result-track:50ccba4bc81f4ac5c7fe8e648598a6dbe1b73265c6405a1db508cff469548504` |
| 4 | `theorem` | [residual_upper_implies_complete_tail_lower](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceCompleteDivisorTailReturn/Variant5bb1a0dca6a50eed6c25f261d9422c6d1e4e78d72dd9212f8fee155bb9a89d09.lean/declarations/residual-upper-implies-complete-tail-lower--59d67ffd8194d48362790c8e.md) | 80 | `result-track:59d67ffd8194d48362790c8ec42ca2b769f1792d700159de28cec126fbf22f8c` |
| 5 | `def` | [finiteLedgerCorrection](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceCompleteDivisorTailReturn/Variant5bb1a0dca6a50eed6c25f261d9422c6d1e4e78d72dd9212f8fee155bb9a89d09.lean/declarations/finiteledgercorrection--e5650582fc7632abb2e5cb19.md) | 90 | `declaration-track:e5650582fc7632abb2e5cb197f148784596210b427da8ee853ca5981d192c8b6` |
| 6 | `def` | [completeBlockTailBudget](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceCompleteDivisorTailReturn/Variant5bb1a0dca6a50eed6c25f261d9422c6d1e4e78d72dd9212f8fee155bb9a89d09.lean/declarations/completeblocktailbudget--56febf5378c0e1c9c6e5aa29.md) | 93 | `declaration-track:56febf5378c0e1c9c6e5aa299ecce6f8552103672199207cf6560c766eb4bd5f` |
| 7 | `theorem` | [residual_eq_complete_block_corrections](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceCompleteDivisorTailReturn/Variant5bb1a0dca6a50eed6c25f261d9422c6d1e4e78d72dd9212f8fee155bb9a89d09.lean/declarations/residual-eq-complete-block-corrections--471107b8d7e1c0f0dbd7102c.md) | 96 | `result-track:471107b8d7e1c0f0dbd7102cc00ac5ec588ae16a1b04f9fb9fa875b8559dc773` |
| 8 | `theorem` | [complete_block_upper_implies_residual_upper](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceCompleteDivisorTailReturn/Variant5bb1a0dca6a50eed6c25f261d9422c6d1e4e78d72dd9212f8fee155bb9a89d09.lean/declarations/complete-block-upper-implies-residual-upper--f5aa824059a3b6dc2b22c24c.md) | 104 | `result-track:f5aa824059a3b6dc2b22c24c33866c202cb22d95676f1b03dd764d3493ca8007` |
| 9 | `theorem` | [complete_block_upper_implies_tail_lower](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceCompleteDivisorTailReturn/Variant5bb1a0dca6a50eed6c25f261d9422c6d1e4e78d72dd9212f8fee155bb9a89d09.lean/declarations/complete-block-upper-implies-tail-lower--57c61618320a5e45972a040e.md) | 113 | `result-track:57c61618320a5e45972a040e4adc1766eca50d8ef60d061c91c06cb156a14cee` |
| 10 | `theorem` | [fixed_corrections_and_tail_of_complete_block](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceCompleteDivisorTailReturn/Variant5bb1a0dca6a50eed6c25f261d9422c6d1e4e78d72dd9212f8fee155bb9a89d09.lean/declarations/fixed-corrections-and-tail-of-complete-block--eaffd39703dc9c379ff415ee.md) | 122 | `result-track:eaffd39703dc9c379ff415ee686bd528a71e85fffd4a5a5372893d96465c8f56` |
| 11 | `theorem` | [all_real_lower_of_complete_block_inputs](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceCompleteDivisorTailReturn/Variant5bb1a0dca6a50eed6c25f261d9422c6d1e4e78d72dd9212f8fee155bb9a89d09.lean/declarations/all-real-lower-of-complete-block-inputs--5ac8f82dc6ae514f2fef4333.md) | 143 | `result-track:5ac8f82dc6ae514f2fef4333b852ce943cdc81abd20edc2f7b0ce698b4f053f3` |
| 12 | `theorem` | [estimate_of_complete_block](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceCompleteDivisorTailReturn/Variant5bb1a0dca6a50eed6c25f261d9422c6d1e4e78d72dd9212f8fee155bb9a89d09.lean/declarations/estimate-of-complete-block--bc3f135ebfd08f07919b48bd.md) | 168 | `result-track:bc3f135ebfd08f07919b48bd720c3146e3c9142372c58c0455adf13560a3a584` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
