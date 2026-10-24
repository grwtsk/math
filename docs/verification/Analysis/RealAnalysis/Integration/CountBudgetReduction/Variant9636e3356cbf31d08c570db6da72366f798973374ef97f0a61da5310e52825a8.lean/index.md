# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.CountBudgetReduction.Variant9636e3356cbf31d08c570db6da72366f798973374ef97f0a61da5310e52825a8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a505f89b4a0dcecbc6cfc456120833b36b46af38",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/CountBudgetReduction/Variant9636e3356cbf31d08c570db6da72366f798973374ef97f0a61da5310e52825a8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CountBudgetReduction/Variant9636e3356cbf31d08c570db6da72366f798973374ef97f0a61da5310e52825a8.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CountBudgetReduction/Variant9636e3356cbf31d08c570db6da72366f798973374ef97f0a61da5310e52825a8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a505f89b4a0dcecbc6cfc456120833b36b46af38`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/CountBudgetReduction/Variant9636e3356cbf31d08c570db6da72366f798973374ef97f0a61da5310e52825a8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/CountBudgetReduction/Variant9636e3356cbf31d08c570db6da72366f798973374ef97f0a61da5310e52825a8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `scratch.common_mean_stieltjes_20261004.ActualStieltjes` — import line 1; external provider; requires a separately pinned dependency.
- `scratch.common_mean_stieltjes_20261004.CountErrorEnvelope` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [countUpperKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CountBudgetReduction/Variant9636e3356cbf31d08c570db6da72366f798973374ef97f0a61da5310e52825a8.lean/declarations/countupperkernel--58cb4ca0c68270ec2ddc1efd.md) | 16 | `declaration-track:58cb4ca0c68270ec2ddc1efd6f9cdc710aa567c058f2eff82159c652e495cf57` |
| 2 | `theorem` | [count_upper_kernel_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CountBudgetReduction/Variant9636e3356cbf31d08c570db6da72366f798973374ef97f0a61da5310e52825a8.lean/declarations/count-upper-kernel-bound--b796c4096ba4c235b8db8f23.md) | 20 | `result-track:b796c4096ba4c235b8db8f23480785396ab36a03182a24cb377c178d0cd551eb` |
| 3 | `theorem` | [count_main_endpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CountBudgetReduction/Variant9636e3356cbf31d08c570db6da72366f798973374ef97f0a61da5310e52825a8.lean/declarations/count-main-endpoint--09fc1e5c112af138cd5d2d4f.md) | 28 | `result-track:09fc1e5c112af138cd5d2d4f6072a0cab3edb7d9488a5ccc3c361cc81b602ab3` |
| 4 | `theorem` | [corrected_count_budget_of_integral_moments](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CountBudgetReduction/Variant9636e3356cbf31d08c570db6da72366f798973374ef97f0a61da5310e52825a8.lean/declarations/corrected-count-budget-of-integral-moments--16b693c2aecc20013aef91a0.md) | 34 | `result-track:16b693c2aecc20013aef91a009c4a437f4a9ba60bc4ff8114cbbf5cc137ea028` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
