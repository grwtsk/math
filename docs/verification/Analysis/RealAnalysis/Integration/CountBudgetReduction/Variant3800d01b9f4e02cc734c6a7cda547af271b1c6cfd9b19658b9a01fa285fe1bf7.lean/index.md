# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.CountBudgetReduction.Variant3800d01b9f4e02cc734c6a7cda547af271b1c6cfd9b19658b9a01fa285fe1bf7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dc38be2e6cc9ce74bdf022de11f5cecc982d6c03",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/CountBudgetReduction/Variant3800d01b9f4e02cc734c6a7cda547af271b1c6cfd9b19658b9a01fa285fe1bf7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CountBudgetReduction/Variant3800d01b9f4e02cc734c6a7cda547af271b1c6cfd9b19658b9a01fa285fe1bf7.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CountBudgetReduction/Variant3800d01b9f4e02cc734c6a7cda547af271b1c6cfd9b19658b9a01fa285fe1bf7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dc38be2e6cc9ce74bdf022de11f5cecc982d6c03`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/CountBudgetReduction/Variant3800d01b9f4e02cc734c6a7cda547af271b1c6cfd9b19658b9a01fa285fe1bf7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/CountBudgetReduction/Variant3800d01b9f4e02cc734c6a7cda547af271b1c6cfd9b19658b9a01fa285fe1bf7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `scratch.common_mean_stieltjes_20261004.ActualStieltjes` — import line 6; external provider; requires a separately pinned dependency.
- `scratch.common_mean_stieltjes_20261004.CountErrorEnvelope` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [countUpperKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CountBudgetReduction/Variant3800d01b9f4e02cc734c6a7cda547af271b1c6cfd9b19658b9a01fa285fe1bf7.lean/declarations/countupperkernel--43f67524fec5ae1dc4233385.md) | 24 | `declaration-track:43f67524fec5ae1dc4233385f3bc83e3c22bd5522f9c0c664eddccca4be3606e` |
| 2 | `theorem` | [count_upper_kernel_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CountBudgetReduction/Variant3800d01b9f4e02cc734c6a7cda547af271b1c6cfd9b19658b9a01fa285fe1bf7.lean/declarations/count-upper-kernel-bound--3b878554f4ad6f6e46df6527.md) | 28 | `result-track:3b878554f4ad6f6e46df6527c79113e0b574b08f2d8ba4c644dc39b9fb4e1324` |
| 3 | `theorem` | [count_main_endpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CountBudgetReduction/Variant3800d01b9f4e02cc734c6a7cda547af271b1c6cfd9b19658b9a01fa285fe1bf7.lean/declarations/count-main-endpoint--ba547c1073e31f79fc963ffc.md) | 36 | `result-track:ba547c1073e31f79fc963ffcf4ca8f79dd8d412d12979490e0187813a5294923` |
| 4 | `theorem` | [corrected_count_budget_of_integral_moments](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CountBudgetReduction/Variant3800d01b9f4e02cc734c6a7cda547af271b1c6cfd9b19658b9a01fa285fe1bf7.lean/declarations/corrected-count-budget-of-integral-moments--913587a0bd6c261b5df2260b.md) | 42 | `result-track:913587a0bd6c261b5df2260bb9330cc12a21a88c3c9365ba0b7d27cc0e93a88d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
