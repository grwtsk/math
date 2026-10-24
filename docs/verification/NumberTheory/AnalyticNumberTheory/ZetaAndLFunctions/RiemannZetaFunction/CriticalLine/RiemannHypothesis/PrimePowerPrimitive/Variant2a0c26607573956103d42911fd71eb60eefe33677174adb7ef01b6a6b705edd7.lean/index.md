# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PrimePowerPrimitive.Variant2a0c26607573956103d42911fd71eb60eefe33677174adb7ef01b6a6b705edd7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6ddd3785598ccd3abcb04781cfc25f9e4fb84cd8",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimePowerPrimitive/Variant2a0c26607573956103d42911fd71eb60eefe33677174adb7ef01b6a6b705edd7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimePowerPrimitive/Variant2a0c26607573956103d42911fd71eb60eefe33677174adb7ef01b6a6b705edd7.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimePowerPrimitive/Variant2a0c26607573956103d42911fd71eb60eefe33677174adb7ef01b6a6b705edd7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6ddd3785598ccd3abcb04781cfc25f9e4fb84cd8`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimePowerPrimitive/Variant2a0c26607573956103d42911fd71eb60eefe33677174adb7ef01b6a6b705edd7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimePowerPrimitive/Variant2a0c26607573956103d42911fd71eb60eefe33677174adb7ef01b6a6b705edd7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.OpenArithmeticSuppliers` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primeLogAtom](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimePowerPrimitive/Variant2a0c26607573956103d42911fd71eb60eefe33677174adb7ef01b6a6b705edd7.lean/declarations/primelogatom--0f21e528c0f266f5cc7ffa97.md) | 29 | `declaration-track:0f21e528c0f266f5cc7ffa9757350f61b6e85118494eb105ae499835d70b4607` |
| 2 | `def` | [primePowerCorrection](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimePowerPrimitive/Variant2a0c26607573956103d42911fd71eb60eefe33677174adb7ef01b6a6b705edd7.lean/declarations/primepowercorrection--217301858d0e5e927f4c7e2a.md) | 34 | `declaration-track:217301858d0e5e927f4c7e2a4575822f22dcf29642f79ae6b703ece3a95d6120` |
| 3 | `theorem` | [mangoldt_minus_primeLog_nonneg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimePowerPrimitive/Variant2a0c26607573956103d42911fd71eb60eefe33677174adb7ef01b6a6b705edd7.lean/declarations/mangoldt-minus-primelog-nonneg--570862d8c4e3e2587bf650ab.md) | 36 | `result-track:570862d8c4e3e2587bf650ab9eeb9fc8da04746e8096e62e9a3ecfd743d9bc7d` |
| 4 | `theorem` | [primePowerCorrection_eq_sum](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimePowerPrimitive/Variant2a0c26607573956103d42911fd71eb60eefe33677174adb7ef01b6a6b705edd7.lean/declarations/primepowercorrection-eq-sum--4f8720740caf43aabcaa7aeb.md) | 42 | `result-track:4f8720740caf43aabcaa7aeb377a153c287496c3437502a2ec5802313e32812f` |
| 5 | `theorem` | [primePowerCorrection_nonneg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimePowerPrimitive/Variant2a0c26607573956103d42911fd71eb60eefe33677174adb7ef01b6a6b705edd7.lean/declarations/primepowercorrection-nonneg--45c96c7a5691b9ee5934ccea.md) | 67 | `result-track:45c96c7a5691b9ee5934cceae1cbc68d7531fe580d9ea5f0d39ebbb0f0ebe066` |
| 6 | `theorem` | [ordinaryPrimePrimitive_le_actual](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimePowerPrimitive/Variant2a0c26607573956103d42911fd71eb60eefe33677174adb7ef01b6a6b705edd7.lean/declarations/ordinaryprimeprimitive-le-actual--f2aa9322f3648516763e059f.md) | 79 | `result-track:f2aa9322f3648516763e059f5f7659dd9a7680f16fff91d0e90c886c955c7115` |
| 7 | `theorem` | [actual_eq_ordinary_add_correction](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimePowerPrimitive/Variant2a0c26607573956103d42911fd71eb60eefe33677174adb7ef01b6a6b705edd7.lean/declarations/actual-eq-ordinary-add-correction--244e9a7d988402dac5dddbdc.md) | 85 | `result-track:244e9a7d988402dac5dddbdc3f27860b8f5c9707780a06e2a71a1ae2dbb1ac20` |
| 8 | `theorem` | [primePowerCorrection_continuousAt](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimePowerPrimitive/Variant2a0c26607573956103d42911fd71eb60eefe33677174adb7ef01b6a6b705edd7.lean/declarations/primepowercorrection-continuousat--13a1b9f2881b33f0180fdc31.md) | 90 | `result-track:13a1b9f2881b33f0180fdc313f1babb2db85bea59f9b1f5d5f5e6daaaae42166` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
