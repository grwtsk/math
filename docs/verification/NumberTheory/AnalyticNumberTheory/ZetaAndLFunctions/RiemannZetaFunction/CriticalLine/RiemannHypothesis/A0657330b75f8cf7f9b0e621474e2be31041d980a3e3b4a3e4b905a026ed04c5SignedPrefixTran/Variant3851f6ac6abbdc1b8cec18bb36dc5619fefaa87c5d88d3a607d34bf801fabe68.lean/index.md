# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.A0657330b75f8cf7f9b0e621474e2be31041d980a3e3b4a3e4b905a026ed04c5SignedPrefixTran.Variant3851f6ac6abbdc1b8cec18bb36dc5619fefaa87c5d88d3a607d34bf801fabe68

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "450e06f9171581c8710cfb6a196b09b7e373d5c6",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A0657330b75f8cf7f9b0e621474e2be31041d980a3e3b4a3e4b905a026ed04c5SignedPrefixTran/Variant3851f6ac6abbdc1b8cec18bb36dc5619fefaa87c5d88d3a607d34bf801fabe68.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A0657330b75f8cf7f9b0e621474e2be31041d980a3e3b4a3e4b905a026ed04c5SignedPrefixTran/Variant3851f6ac6abbdc1b8cec18bb36dc5619fefaa87c5d88d3a607d34bf801fabe68.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A0657330b75f8cf7f9b0e621474e2be31041d980a3e3b4a3e4b905a026ed04c5SignedPrefixTran/Variant3851f6ac6abbdc1b8cec18bb36dc5619fefaa87c5d88d3a607d34bf801fabe68.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `450e06f9171581c8710cfb6a196b09b7e373d5c6`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A0657330b75f8cf7f9b0e621474e2be31041d980a3e3b4a3e4b905a026ed04c5SignedPrefixTran/Variant3851f6ac6abbdc1b8cec18bb36dc5619fefaa87c5d88d3a607d34bf801fabe68.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A0657330b75f8cf7f9b0e621474e2be31041d980a3e3b4a3e4b905a026ed04c5SignedPrefixTran/Variant3851f6ac6abbdc1b8cec18bb36dc5619fefaa87c5d88d3a607d34bf801fabe68.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.AbelSummation` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GCongr` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cumulativeSum](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A0657330b75f8cf7f9b0e621474e2be31041d980a3e3b4a3e4b905a026ed04c5SignedPrefixTran/Variant3851f6ac6abbdc1b8cec18bb36dc5619fefaa87c5d88d3a607d34bf801fabe68.lean/declarations/cumulativesum--9c7f7712f42c3a13b7901fe8.md) | 29 | `declaration-track:9c7f7712f42c3a13b7901fe8a199f22087e80d4af7c98956ba819738dcb3cbab` |
| 2 | `theorem` | [signed_sum_by_parts](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A0657330b75f8cf7f9b0e621474e2be31041d980a3e3b4a3e4b905a026ed04c5SignedPrefixTran/Variant3851f6ac6abbdc1b8cec18bb36dc5619fefaa87c5d88d3a607d34bf801fabe68.lean/declarations/signed-sum-by-parts--b063b4e75c67803ca94f17f5.md) | 34 | `result-track:b063b4e75c67803ca94f17f55daa63c6a44da54829556dc33539770610b1c3ab` |
| 3 | `theorem` | [abs_weighted_sum_le_prefix_variation](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A0657330b75f8cf7f9b0e621474e2be31041d980a3e3b4a3e4b905a026ed04c5SignedPrefixTran/Variant3851f6ac6abbdc1b8cec18bb36dc5619fefaa87c5d88d3a607d34bf801fabe68.lean/declarations/abs-weighted-sum-le-prefix-variation--d91a532ca443d08984abab85.md) | 47 | `result-track:d91a532ca443d08984abab85dc59fcee44dfca52b65804a300985112aa6137b9` |
| 4 | `theorem` | [weighted_actual_le_model_add_budget](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A0657330b75f8cf7f9b0e621474e2be31041d980a3e3b4a3e4b905a026ed04c5SignedPrefixTran/Variant3851f6ac6abbdc1b8cec18bb36dc5619fefaa87c5d88d3a607d34bf801fabe68.lean/declarations/weighted-actual-le-model-add-budget--cbefc7e80cecf1c3c2c79feb.md) | 65 | `result-track:cbefc7e80cecf1c3c2c79feb388e9c7b7dece6a4d1d51c8852b66a10469b0ae2` |
| 5 | `theorem` | [closed_sum_eq_neg_cumulative_integral](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A0657330b75f8cf7f9b0e621474e2be31041d980a3e3b4a3e4b905a026ed04c5SignedPrefixTran/Variant3851f6ac6abbdc1b8cec18bb36dc5619fefaa87c5d88d3a607d34bf801fabe68.lean/declarations/closed-sum-eq-neg-cumulative-integral--914d183638f72d218b1e40a5.md) | 82 | `result-track:914d183638f72d218b1e40a5f26cd9013afc391e6d67d46b2500e4e8d36b86f9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
