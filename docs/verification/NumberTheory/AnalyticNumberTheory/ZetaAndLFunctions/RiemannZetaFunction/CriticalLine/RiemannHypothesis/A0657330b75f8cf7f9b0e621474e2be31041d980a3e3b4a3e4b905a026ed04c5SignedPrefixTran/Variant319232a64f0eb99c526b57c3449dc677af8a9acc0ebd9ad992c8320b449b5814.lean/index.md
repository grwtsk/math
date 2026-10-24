# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.A0657330b75f8cf7f9b0e621474e2be31041d980a3e3b4a3e4b905a026ed04c5SignedPrefixTran.Variant319232a64f0eb99c526b57c3449dc677af8a9acc0ebd9ad992c8320b449b5814

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4ebeaff867c2ae67ba910efac7b319eb67f4e978",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A0657330b75f8cf7f9b0e621474e2be31041d980a3e3b4a3e4b905a026ed04c5SignedPrefixTran/Variant319232a64f0eb99c526b57c3449dc677af8a9acc0ebd9ad992c8320b449b5814.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A0657330b75f8cf7f9b0e621474e2be31041d980a3e3b4a3e4b905a026ed04c5SignedPrefixTran/Variant319232a64f0eb99c526b57c3449dc677af8a9acc0ebd9ad992c8320b449b5814.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A0657330b75f8cf7f9b0e621474e2be31041d980a3e3b4a3e4b905a026ed04c5SignedPrefixTran/Variant319232a64f0eb99c526b57c3449dc677af8a9acc0ebd9ad992c8320b449b5814.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4ebeaff867c2ae67ba910efac7b319eb67f4e978`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A0657330b75f8cf7f9b0e621474e2be31041d980a3e3b4a3e4b905a026ed04c5SignedPrefixTran/Variant319232a64f0eb99c526b57c3449dc677af8a9acc0ebd9ad992c8320b449b5814.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A0657330b75f8cf7f9b0e621474e2be31041d980a3e3b4a3e4b905a026ed04c5SignedPrefixTran/Variant319232a64f0eb99c526b57c3449dc677af8a9acc0ebd9ad992c8320b449b5814.lean.json)

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
| 1 | `def` | [cumulativeSum](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A0657330b75f8cf7f9b0e621474e2be31041d980a3e3b4a3e4b905a026ed04c5SignedPrefixTran/Variant319232a64f0eb99c526b57c3449dc677af8a9acc0ebd9ad992c8320b449b5814.lean/declarations/cumulativesum--4552e27674e94be7f5fc8f87.md) | 21 | `declaration-track:4552e27674e94be7f5fc8f87090d000c7c55ba0a80ea27e0a57537f8ebf9b226` |
| 2 | `theorem` | [signed_sum_by_parts](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A0657330b75f8cf7f9b0e621474e2be31041d980a3e3b4a3e4b905a026ed04c5SignedPrefixTran/Variant319232a64f0eb99c526b57c3449dc677af8a9acc0ebd9ad992c8320b449b5814.lean/declarations/signed-sum-by-parts--f6b9ca07bae684266062e857.md) | 26 | `result-track:f6b9ca07bae684266062e857aee6ec4cd6c3a64f0df1bc3f0c8353e74af49f73` |
| 3 | `theorem` | [abs_weighted_sum_le_prefix_variation](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A0657330b75f8cf7f9b0e621474e2be31041d980a3e3b4a3e4b905a026ed04c5SignedPrefixTran/Variant319232a64f0eb99c526b57c3449dc677af8a9acc0ebd9ad992c8320b449b5814.lean/declarations/abs-weighted-sum-le-prefix-variation--06a10042686c2a7fd8ac83e2.md) | 39 | `result-track:06a10042686c2a7fd8ac83e2a90efd1c192eaa41d757faa028e02723a8d5a458` |
| 4 | `theorem` | [weighted_actual_le_model_add_budget](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A0657330b75f8cf7f9b0e621474e2be31041d980a3e3b4a3e4b905a026ed04c5SignedPrefixTran/Variant319232a64f0eb99c526b57c3449dc677af8a9acc0ebd9ad992c8320b449b5814.lean/declarations/weighted-actual-le-model-add-budget--1b03c80cd9acd891c1202604.md) | 57 | `result-track:1b03c80cd9acd891c120260441f6cdc2609127507d67a7ed78ee6c9af025746e` |
| 5 | `theorem` | [closed_sum_eq_neg_cumulative_integral](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A0657330b75f8cf7f9b0e621474e2be31041d980a3e3b4a3e4b905a026ed04c5SignedPrefixTran/Variant319232a64f0eb99c526b57c3449dc677af8a9acc0ebd9ad992c8320b449b5814.lean/declarations/closed-sum-eq-neg-cumulative-integral--78459e044264b32bb329a3d6.md) | 74 | `result-track:78459e044264b32bb329a3d6ce9c8ed7c9d17b9b430affba2bd9537b03875f77` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
