# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Pow.Variant6bc16a41243b0efd32511dcaf5f63a79689c2ce022ce2c9d4a7ea8601f1f3800

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e4a67a5e7f3b5c6b3f7d4823765f6fe666431b6b",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Pow/Variant6bc16a41243b0efd32511dcaf5f63a79689c2ce022ce2c9d4a7ea8601f1f3800.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Pow/Variant6bc16a41243b0efd32511dcaf5f63a79689c2ce022ce2c9d4a7ea8601f1f3800.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Pow/Variant6bc16a41243b0efd32511dcaf5f63a79689c2ce022ce2c9d4a7ea8601f1f3800.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e4a67a5e7f3b5c6b3f7d4823765f6fe666431b6b`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Pow/Variant6bc16a41243b0efd32511dcaf5f63a79689c2ce022ce2c9d4a7ea8601f1f3800.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Pow/Variant6bc16a41243b0efd32511dcaf5f63a79689c2ce022ce2c9d4a7ea8601f1f3800.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.SpecificFunctions.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.NNReal` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [strictConcaveOn_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/Pow/Variant6bc16a41243b0efd32511dcaf5f63a79689c2ce022ce2c9d4a7ea8601f1f3800.lean/declarations/strictconcaveon-rpow--bdf477925f863c91beaecad4.md) | 42 | `result-track:bdf477925f863c91beaecad435916f561c9400fd91deeb5b52ae80a578f2f7be` |
| 2 | `lemma` | [concaveOn_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/Pow/Variant6bc16a41243b0efd32511dcaf5f63a79689c2ce022ce2c9d4a7ea8601f1f3800.lean/declarations/concaveon-rpow--32fb083b92fee26d50382942.md) | 55 | `result-track:32fb083b92fee26d5038294280756f3a7de7a5516f89b4d4b4c993e63e84fd38` |
| 3 | `lemma` | [strictConcaveOn_sqrt](../../../../../mathematics/Analysis/FunctionalAnalysis/Pow/Variant6bc16a41243b0efd32511dcaf5f63a79689c2ce022ce2c9d4a7ea8601f1f3800.lean/declarations/strictconcaveon-sqrt--731ad10727f5b01da6ede6cb.md) | 63 | `result-track:731ad10727f5b01da6ede6cbb4fc16696aaa4f7ff72c30e7c38a2ce92e8cc750` |
| 4 | `lemma` | [strictConcaveOn_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/Pow/Variant6bc16a41243b0efd32511dcaf5f63a79689c2ce022ce2c9d4a7ea8601f1f3800.lean/declarations/strictconcaveon-rpow--e914f2e7d4feecc2e410751f.md) | 75 | `result-track:e914f2e7d4feecc2e410751fa0b3b5de1c53ef4fa25d00d4bce8777c9f4122fe` |
| 5 | `lemma` | [concaveOn_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/Pow/Variant6bc16a41243b0efd32511dcaf5f63a79689c2ce022ce2c9d4a7ea8601f1f3800.lean/declarations/concaveon-rpow--8e7efe8b6c2654131884e558.md) | 87 | `result-track:8e7efe8b6c2654131884e558cc1563503a5aaafb2c77bf089150fddd3093b368` |
| 6 | `lemma` | [strictConcaveOn_sqrt](../../../../../mathematics/Analysis/FunctionalAnalysis/Pow/Variant6bc16a41243b0efd32511dcaf5f63a79689c2ce022ce2c9d4a7ea8601f1f3800.lean/declarations/strictconcaveon-sqrt--723e7762653e74f5b3d76191.md) | 95 | `result-track:723e7762653e74f5b3d761912c7c8be2082f82d234c4cdac1bca3d8b7196f621` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
