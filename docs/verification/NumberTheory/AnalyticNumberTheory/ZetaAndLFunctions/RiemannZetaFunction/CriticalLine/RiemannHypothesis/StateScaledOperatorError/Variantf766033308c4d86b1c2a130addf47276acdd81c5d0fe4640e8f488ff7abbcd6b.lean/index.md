# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.StateScaledOperatorError.Variantf766033308c4d86b1c2a130addf47276acdd81c5d0fe4640e8f488ff7abbcd6b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "26ca5f84a9f4a1f8d0b9bc557d64d4e138dabc87",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StateScaledOperatorError/Variantf766033308c4d86b1c2a130addf47276acdd81c5d0fe4640e8f488ff7abbcd6b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StateScaledOperatorError/Variantf766033308c4d86b1c2a130addf47276acdd81c5d0fe4640e8f488ff7abbcd6b.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StateScaledOperatorError/Variantf766033308c4d86b1c2a130addf47276acdd81c5d0fe4640e8f488ff7abbcd6b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `26ca5f84a9f4a1f8d0b9bc557d64d4e138dabc87`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StateScaledOperatorError/Variantf766033308c4d86b1c2a130addf47276acdd81c5d0fe4640e8f488ff7abbcd6b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StateScaledOperatorError/Variantf766033308c4d86b1c2a130addf47276acdd81c5d0fe4640e8f488ff7abbcd6b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Continuous` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Operator.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [signedQuadraticValue](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StateScaledOperatorError/Variantf766033308c4d86b1c2a130addf47276acdd81c5d0fe4640e8f488ff7abbcd6b.lean/declarations/signedquadraticvalue--4f27c22e41039800293f6107.md) | 35 | `declaration-track:4f27c22e41039800293f61077113b2792d7da8ffcbdf920e59a4132b88e96dbe` |
| 2 | `theorem` | [signedQuadraticValue_sub](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StateScaledOperatorError/Variantf766033308c4d86b1c2a130addf47276acdd81c5d0fe4640e8f488ff7abbcd6b.lean/declarations/signedquadraticvalue-sub--73b4a2231a1909842bb1e658.md) | 38 | `result-track:73b4a2231a1909842bb1e658421a0386315ea6fa5a12477476aaf3de2e6aba8c` |
| 3 | `theorem` | [quadratic_difference_abs_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StateScaledOperatorError/Variantf766033308c4d86b1c2a130addf47276acdd81c5d0fe4640e8f488ff7abbcd6b.lean/declarations/quadratic-difference-abs-le--30104ca2ee4815627c7320cf.md) | 44 | `result-track:30104ca2ee4815627c7320cf0d06aa8494f6fbd29dd09812df83d9403546e5e2` |
| 4 | `theorem` | [quadratic_difference_abs_le_of_norm_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StateScaledOperatorError/Variantf766033308c4d86b1c2a130addf47276acdd81c5d0fe4640e8f488ff7abbcd6b.lean/declarations/quadratic-difference-abs-le-of-norm-le--4a99acd7955b67296b7dd457.md) | 55 | `result-track:4a99acd7955b67296b7dd457979a25a7d7c42efc557558b1bb393a4a8d674214` |
| 5 | `theorem` | [quadratic_difference_abs_le_of_state_bound](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StateScaledOperatorError/Variantf766033308c4d86b1c2a130addf47276acdd81c5d0fe4640e8f488ff7abbcd6b.lean/declarations/quadratic-difference-abs-le-of-state-bound--92893099f85da67102f7db9f.md) | 62 | `result-track:92893099f85da67102f7db9f1b70690208d94ee26c373c730b276ccf40c83348` |
| 6 | `def` | [polarizedQuadraticValue](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StateScaledOperatorError/Variantf766033308c4d86b1c2a130addf47276acdd81c5d0fe4640e8f488ff7abbcd6b.lean/declarations/polarizedquadraticvalue--9f0b267dc9aab6cccc591cc3.md) | 70 | `declaration-track:9f0b267dc9aab6cccc591cc38314dd1ee904725a090d0956bafba1467ec5311b` |
| 7 | `theorem` | [polarizedQuadraticValue_id](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StateScaledOperatorError/Variantf766033308c4d86b1c2a130addf47276acdd81c5d0fe4640e8f488ff7abbcd6b.lean/declarations/polarizedquadraticvalue-id--e0774f58c60d405ad89ebfb6.md) | 74 | `result-track:e0774f58c60d405ad89ebfb6dbb52b9ce0e56489c1fb1d947b84597f9544b5f6` |
| 8 | `theorem` | [polarized_difference_abs_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StateScaledOperatorError/Variantf766033308c4d86b1c2a130addf47276acdd81c5d0fe4640e8f488ff7abbcd6b.lean/declarations/polarized-difference-abs-le--6330e135d5d84fc846967bed.md) | 81 | `result-track:6330e135d5d84fc846967bedea5270120f848de87133746ef8547f876aa76f0d` |
| 9 | `def` | [shrinkingScalarError](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StateScaledOperatorError/Variantf766033308c4d86b1c2a130addf47276acdd81c5d0fe4640e8f488ff7abbcd6b.lean/declarations/shrinkingscalarerror--2ab4166f88e43b33932fb5ac.md) | 103 | `declaration-track:2ab4166f88e43b33932fb5aca23b60719276872b13ffd83a6286d4ff1fc4792d` |
| 10 | `theorem` | [shrinkingScalarError_norm](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StateScaledOperatorError/Variantf766033308c4d86b1c2a130addf47276acdd81c5d0fe4640e8f488ff7abbcd6b.lean/declarations/shrinkingscalarerror-norm--b41b3568487b5eb890ac73e1.md) | 107 | `result-track:b41b3568487b5eb890ac73e1defe2094c1de178cdbb08f75a30c17fa7143f906` |
| 11 | `theorem` | [shrinkingScalarError_on_growing_state](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StateScaledOperatorError/Variantf766033308c4d86b1c2a130addf47276acdd81c5d0fe4640e8f488ff7abbcd6b.lean/declarations/shrinkingscalarerror-on-growing-state--d0a6b1abcc031ac8c9700db1.md) | 115 | `result-track:d0a6b1abcc031ac8c9700db12bcf964d9d58e8951a3082cf3c5da33fa84eaaac` |
| 12 | `theorem` | [shrinkingScalarError_exceeds_any_budget](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StateScaledOperatorError/Variantf766033308c4d86b1c2a130addf47276acdd81c5d0fe4640e8f488ff7abbcd6b.lean/declarations/shrinkingscalarerror-exceeds-any-budget--e4f017e9a59fe01bae11a978.md) | 123 | `result-track:e4f017e9a59fe01bae11a978f6672903d760636be01daf9bd1b002a4d25124b9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
