# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceExactEnergyComparison.Variant6c17cd154a5ed1da80534bb3377886fe5c3364929782a986257f42393852fd92

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fc418f23d9363841f941dd00bc10670b0746e68d",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceExactEnergyComparison/Variant6c17cd154a5ed1da80534bb3377886fe5c3364929782a986257f42393852fd92.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceExactEnergyComparison/Variant6c17cd154a5ed1da80534bb3377886fe5c3364929782a986257f42393852fd92.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceExactEnergyComparison/Variant6c17cd154a5ed1da80534bb3377886fe5c3364929782a986257f42393852fd92.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fc418f23d9363841f941dd00bc10670b0746e68d`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceExactEnergyComparison/Variant6c17cd154a5ed1da80534bb3377886fe5c3364929782a986257f42393852fd92.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceExactEnergyComparison/Variant6c17cd154a5ed1da80534bb3377886fe5c3364929782a986257f42393852fd92.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceExactEnergyMeanConsumer` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exactMeanTailBudget_le_original](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceExactEnergyComparison/Variant6c17cd154a5ed1da80534bb3377886fe5c3364929782a986257f42393852fd92.lean/declarations/exactmeantailbudget-le-original--d77363c1906aaeb6d686c675.md) | 28 | `result-track:d77363c1906aaeb6d686c675db4eae9cf0db69d992252510c771cc0506729488` |
| 2 | `theorem` | [exactMeanAtomBudget_le_original](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceExactEnergyComparison/Variant6c17cd154a5ed1da80534bb3377886fe5c3364929782a986257f42393852fd92.lean/declarations/exactmeanatombudget-le-original--cbb252585eb5eeda01c29672.md) | 44 | `result-track:cbb252585eb5eeda01c29672050828a58987d5b4120caca9a81fde69023e92ba` |
| 3 | `theorem` | [exactMeanResidualBudget_le_original](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceExactEnergyComparison/Variant6c17cd154a5ed1da80534bb3377886fe5c3364929782a986257f42393852fd92.lean/declarations/exactmeanresidualbudget-le-original--5539dc41772858059424f446.md) | 50 | `result-track:5539dc41772858059424f4467627a2bbd3a58218fb69e45169e1b0b249fc4540` |
| 4 | `theorem` | [atom_budget_gain_when_active](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceExactEnergyComparison/Variant6c17cd154a5ed1da80534bb3377886fe5c3364929782a986257f42393852fd92.lean/declarations/atom-budget-gain-when-active--086bb8836f9b8f9d7b2eb94b.md) | 56 | `result-track:086bb8836f9b8f9d7b2eb94b88f9bfb2e47081db76822c5d0dcd85c18dbb4b64` |
| 5 | `theorem` | [original_lower_budget_le_exact](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceExactEnergyComparison/Variant6c17cd154a5ed1da80534bb3377886fe5c3364929782a986257f42393852fd92.lean/declarations/original-lower-budget-le-exact--0bed6aa141510b4723395c05.md) | 68 | `result-track:0bed6aa141510b4723395c053fea8e63384f644a6310402b07ec258ccabd497e` |
| 6 | `theorem` | [tail_lower_gain_when_active](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceExactEnergyComparison/Variant6c17cd154a5ed1da80534bb3377886fe5c3364929782a986257f42393852fd92.lean/declarations/tail-lower-gain-when-active--51424c5871704f219f5e6372.md) | 76 | `result-track:51424c5871704f219f5e6372a36fa37a7817663c904769d1daedf1617de04f6c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
