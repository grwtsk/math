# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.EndpointRadiusBudget.Variantd2ef7a30b7b90e0178736b6160275c09e28f7c0b7684690e8f0088ea0f60f7e5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c21eaaff2b59d78353ce5872dd756264185bcbe",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointRadiusBudget/Variantd2ef7a30b7b90e0178736b6160275c09e28f7c0b7684690e8f0088ea0f60f7e5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointRadiusBudget/Variantd2ef7a30b7b90e0178736b6160275c09e28f7c0b7684690e8f0088ea0f60f7e5.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointRadiusBudget/Variantd2ef7a30b7b90e0178736b6160275c09e28f7c0b7684690e8f0088ea0f60f7e5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c21eaaff2b59d78353ce5872dd756264185bcbe`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointRadiusBudget/Variantd2ef7a30b7b90e0178736b6160275c09e28f7c0b7684690e8f0088ea0f60f7e5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointRadiusBudget/Variantd2ef7a30b7b90e0178736b6160275c09e28f7c0b7684690e8f0088ea0f60f7e5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `RecoveredEndpointThree` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [envelope](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointRadiusBudget/Variantd2ef7a30b7b90e0178736b6160275c09e28f7c0b7684690e8f0088ea0f60f7e5.lean/declarations/envelope--123003f68021d46778b318a2.md) | 22 | `declaration-track:123003f68021d46778b318a27e849345fbb2d4e6e983e43e281be56d1154a942` |
| 2 | `def` | [radiusBudget](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointRadiusBudget/Variantd2ef7a30b7b90e0178736b6160275c09e28f7c0b7684690e8f0088ea0f60f7e5.lean/declarations/radiusbudget--1bfb63ec1a33eb7d3c35c67f.md) | 23 | `declaration-track:1bfb63ec1a33eb7d3c35c67f84f065c0d3dd450f4d6033f20078f484abaa8510` |
| 3 | `theorem` | [envelope_nonneg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointRadiusBudget/Variantd2ef7a30b7b90e0178736b6160275c09e28f7c0b7684690e8f0088ea0f60f7e5.lean/declarations/envelope-nonneg--c40f9e4e6512ac0208f5258e.md) | 25 | `result-track:c40f9e4e6512ac0208f5258e1218d789287c0ff58b988a37ae26c5442c978d00` |
| 4 | `theorem` | [envelope_le_peak](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointRadiusBudget/Variantd2ef7a30b7b90e0178736b6160275c09e28f7c0b7684690e8f0088ea0f60f7e5.lean/declarations/envelope-le-peak--366ecbc0d3d72c898caed550.md) | 30 | `result-track:366ecbc0d3d72c898caed550564e9ae912f8715aa4c7ef36bbf7a0959c3a59f6` |
| 5 | `theorem` | [envelope_le_of_three_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointRadiusBudget/Variantd2ef7a30b7b90e0178736b6160275c09e28f7c0b7684690e8f0088ea0f60f7e5.lean/declarations/envelope-le-of-three-le--b8e52f2e316d4ff26b602c8b.md) | 63 | `result-track:b8e52f2e316d4ff26b602c8bf3df481ae85280fe92ee221bcb84511fa9d198fe` |
| 6 | `theorem` | [envelope_le_radiusBudget](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointRadiusBudget/Variantd2ef7a30b7b90e0178736b6160275c09e28f7c0b7684690e8f0088ea0f60f7e5.lean/declarations/envelope-le-radiusbudget--582bbe8fc549ba39be5fab8c.md) | 102 | `result-track:582bbe8fc549ba39be5fab8cb95874863e26f15ba79e69904e0866696260eba5` |
| 7 | `theorem` | [radiusBudget_nonneg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointRadiusBudget/Variantd2ef7a30b7b90e0178736b6160275c09e28f7c0b7684690e8f0088ea0f60f7e5.lean/declarations/radiusbudget-nonneg--5a1b0c6a75dafdcbf3b583cc.md) | 112 | `result-track:5a1b0c6a75dafdcbf3b583cca6072e003f34f78fe893439761919c556fd6fabd` |
| 8 | `theorem` | [radiusBudget_le_three](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointRadiusBudget/Variantd2ef7a30b7b90e0178736b6160275c09e28f7c0b7684690e8f0088ea0f60f7e5.lean/declarations/radiusbudget-le-three--bfe17a926af22402db49ad7c.md) | 115 | `result-track:bfe17a926af22402db49ad7c6f440686dbccf3c36417fcaee8f1de2a21c3518f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
