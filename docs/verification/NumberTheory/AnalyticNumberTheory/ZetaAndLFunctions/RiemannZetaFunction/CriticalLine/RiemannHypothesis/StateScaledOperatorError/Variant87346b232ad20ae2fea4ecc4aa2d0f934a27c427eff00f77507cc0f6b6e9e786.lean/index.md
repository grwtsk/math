# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.StateScaledOperatorError.Variant87346b232ad20ae2fea4ecc4aa2d0f934a27c427eff00f77507cc0f6b6e9e786

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "224b28d6b6076418637a93ee1665a8987a1e23bd",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StateScaledOperatorError/Variant87346b232ad20ae2fea4ecc4aa2d0f934a27c427eff00f77507cc0f6b6e9e786.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StateScaledOperatorError/Variant87346b232ad20ae2fea4ecc4aa2d0f934a27c427eff00f77507cc0f6b6e9e786.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StateScaledOperatorError/Variant87346b232ad20ae2fea4ecc4aa2d0f934a27c427eff00f77507cc0f6b6e9e786.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `224b28d6b6076418637a93ee1665a8987a1e23bd`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StateScaledOperatorError/Variant87346b232ad20ae2fea4ecc4aa2d0f934a27c427eff00f77507cc0f6b6e9e786.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StateScaledOperatorError/Variant87346b232ad20ae2fea4ecc4aa2d0f934a27c427eff00f77507cc0f6b6e9e786.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Continuous` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Operator.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [signedQuadraticValue](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StateScaledOperatorError/Variant87346b232ad20ae2fea4ecc4aa2d0f934a27c427eff00f77507cc0f6b6e9e786.lean/declarations/signedquadraticvalue--84226391683ec5797315a1a0.md) | 27 | `declaration-track:84226391683ec5797315a1a0812453a61afcec2e952aad82b5b85d3354323199` |
| 2 | `theorem` | [signedQuadraticValue_sub](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StateScaledOperatorError/Variant87346b232ad20ae2fea4ecc4aa2d0f934a27c427eff00f77507cc0f6b6e9e786.lean/declarations/signedquadraticvalue-sub--f1cabedcd3143435b127f536.md) | 30 | `result-track:f1cabedcd3143435b127f536fdff63f6fed26577db4ca0ee84f27c15f116a05a` |
| 3 | `theorem` | [quadratic_difference_abs_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StateScaledOperatorError/Variant87346b232ad20ae2fea4ecc4aa2d0f934a27c427eff00f77507cc0f6b6e9e786.lean/declarations/quadratic-difference-abs-le--b876b83bdfb54fc93900c429.md) | 36 | `result-track:b876b83bdfb54fc93900c4294d06737ab5a0e8b86bd39edd8f754d9c29e8c155` |
| 4 | `theorem` | [quadratic_difference_abs_le_of_norm_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StateScaledOperatorError/Variant87346b232ad20ae2fea4ecc4aa2d0f934a27c427eff00f77507cc0f6b6e9e786.lean/declarations/quadratic-difference-abs-le-of-norm-le--2ba457642b0b54a6b19230bf.md) | 47 | `result-track:2ba457642b0b54a6b19230bf8f25de21981298bc0dfb0681220f35b76b2bc337` |
| 5 | `theorem` | [quadratic_difference_abs_le_of_state_bound](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StateScaledOperatorError/Variant87346b232ad20ae2fea4ecc4aa2d0f934a27c427eff00f77507cc0f6b6e9e786.lean/declarations/quadratic-difference-abs-le-of-state-bound--ba7e693a106685f52881ef06.md) | 54 | `result-track:ba7e693a106685f52881ef06fb7f907f39892ccdd746044756ea2490c4933ec8` |
| 6 | `def` | [polarizedQuadraticValue](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StateScaledOperatorError/Variant87346b232ad20ae2fea4ecc4aa2d0f934a27c427eff00f77507cc0f6b6e9e786.lean/declarations/polarizedquadraticvalue--4c52cd6439ccbcd06f7c0a0f.md) | 62 | `declaration-track:4c52cd6439ccbcd06f7c0a0fe4e4a139a0ea47865a5e7e011c36a3703f3ac4b5` |
| 7 | `theorem` | [polarizedQuadraticValue_id](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StateScaledOperatorError/Variant87346b232ad20ae2fea4ecc4aa2d0f934a27c427eff00f77507cc0f6b6e9e786.lean/declarations/polarizedquadraticvalue-id--071888d44982afd07498112a.md) | 66 | `result-track:071888d44982afd07498112a8961280c456d201930f795da7f498891ac9cedad` |
| 8 | `theorem` | [polarized_difference_abs_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StateScaledOperatorError/Variant87346b232ad20ae2fea4ecc4aa2d0f934a27c427eff00f77507cc0f6b6e9e786.lean/declarations/polarized-difference-abs-le--ff8096430ea24bafd00b8fb4.md) | 73 | `result-track:ff8096430ea24bafd00b8fb4dd91527e599e8e1d5022e34a9d55971cd6d35a12` |
| 9 | `def` | [shrinkingScalarError](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StateScaledOperatorError/Variant87346b232ad20ae2fea4ecc4aa2d0f934a27c427eff00f77507cc0f6b6e9e786.lean/declarations/shrinkingscalarerror--88856101ff038a0ae37633ba.md) | 95 | `declaration-track:88856101ff038a0ae37633baa1b8d76b0822e2508e9a10ec0b557d36310cc5e1` |
| 10 | `theorem` | [shrinkingScalarError_norm](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StateScaledOperatorError/Variant87346b232ad20ae2fea4ecc4aa2d0f934a27c427eff00f77507cc0f6b6e9e786.lean/declarations/shrinkingscalarerror-norm--f46098ea0bfdd41ae6283cce.md) | 99 | `result-track:f46098ea0bfdd41ae6283ccede87c1783af1b138fbd88f12d272954106e28d8e` |
| 11 | `theorem` | [shrinkingScalarError_on_growing_state](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StateScaledOperatorError/Variant87346b232ad20ae2fea4ecc4aa2d0f934a27c427eff00f77507cc0f6b6e9e786.lean/declarations/shrinkingscalarerror-on-growing-state--9db7e83525e5960c03d9392b.md) | 107 | `result-track:9db7e83525e5960c03d9392b4ba98c01a34d975e3d534147babf9ea2f5a86e7a` |
| 12 | `theorem` | [shrinkingScalarError_exceeds_any_budget](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StateScaledOperatorError/Variant87346b232ad20ae2fea4ecc4aa2d0f934a27c427eff00f77507cc0f6b6e9e786.lean/declarations/shrinkingscalarerror-exceeds-any-budget--7b37199ca393ab8546b06dc5.md) | 115 | `result-track:7b37199ca393ab8546b06dc53d65a4772a0806500c4b00b586d3741818f14c7e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
