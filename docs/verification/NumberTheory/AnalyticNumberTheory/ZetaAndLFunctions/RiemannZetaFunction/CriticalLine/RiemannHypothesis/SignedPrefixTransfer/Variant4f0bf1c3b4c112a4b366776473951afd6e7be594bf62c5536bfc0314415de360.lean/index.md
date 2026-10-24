# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SignedPrefixTransfer.Variant4f0bf1c3b4c112a4b366776473951afd6e7be594bf62c5536bfc0314415de360

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d4baaeba6a7832014a8f3688cdd243bec4217fd3",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SignedPrefixTransfer/Variant4f0bf1c3b4c112a4b366776473951afd6e7be594bf62c5536bfc0314415de360.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SignedPrefixTransfer/Variant4f0bf1c3b4c112a4b366776473951afd6e7be594bf62c5536bfc0314415de360.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SignedPrefixTransfer/Variant4f0bf1c3b4c112a4b366776473951afd6e7be594bf62c5536bfc0314415de360.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d4baaeba6a7832014a8f3688cdd243bec4217fd3`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SignedPrefixTransfer/Variant4f0bf1c3b4c112a4b366776473951afd6e7be594bf62c5536bfc0314415de360.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SignedPrefixTransfer/Variant4f0bf1c3b4c112a4b366776473951afd6e7be594bf62c5536bfc0314415de360.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.AbelSummation` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GCongr` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cumulativeSum](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SignedPrefixTransfer/Variant4f0bf1c3b4c112a4b366776473951afd6e7be594bf62c5536bfc0314415de360.lean/declarations/cumulativesum--e3e802e3926e5eb461d68de6.md) | 20 | `declaration-track:e3e802e3926e5eb461d68de6135d45777053fca027e999e1b522e30be2c18f28` |
| 2 | `theorem` | [signed_sum_by_parts](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SignedPrefixTransfer/Variant4f0bf1c3b4c112a4b366776473951afd6e7be594bf62c5536bfc0314415de360.lean/declarations/signed-sum-by-parts--c8989f02ab1bc4f0ffea716f.md) | 25 | `result-track:c8989f02ab1bc4f0ffea716f478e2c5515865b9b61e93d565e7796d1ed551609` |
| 3 | `theorem` | [abs_weighted_sum_le_prefix_variation](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SignedPrefixTransfer/Variant4f0bf1c3b4c112a4b366776473951afd6e7be594bf62c5536bfc0314415de360.lean/declarations/abs-weighted-sum-le-prefix-variation--9193ac1553f6bebbc6b3497e.md) | 38 | `result-track:9193ac1553f6bebbc6b3497ea0bd063624da836b32c019a2bbd82475ad556393` |
| 4 | `theorem` | [weighted_actual_le_model_add_budget](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SignedPrefixTransfer/Variant4f0bf1c3b4c112a4b366776473951afd6e7be594bf62c5536bfc0314415de360.lean/declarations/weighted-actual-le-model-add-budget--0a3718305b457ed60f96099e.md) | 56 | `result-track:0a3718305b457ed60f96099eebbf4be671ebeb738da2adb9443e40c8f485fdcf` |
| 5 | `theorem` | [closed_sum_eq_neg_cumulative_integral](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SignedPrefixTransfer/Variant4f0bf1c3b4c112a4b366776473951afd6e7be594bf62c5536bfc0314415de360.lean/declarations/closed-sum-eq-neg-cumulative-integral--df08c050f94dd153d6cc7f8c.md) | 73 | `result-track:df08c050f94dd153d6cc7f8cf614d36d7c25cb32a6aa549c3d605ec4990cb128` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
