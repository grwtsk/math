# Verification target: GRWTSK.Geometry.ConvexGeometry.ConvexSets.ConvexHulls.FiniteConvexCombinations.BarycentricCoefficients.FiniteSimplexGammaAndObservation.Variant0fa9931be90482a3.BarycentricMergeAndDependentWeights

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "27ea0ad3cfbb2108a2f50aa6420717921ec0899f",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ConvexGeometry/ConvexSets/ConvexHulls/FiniteConvexCombinations/BarycentricCoefficients/FiniteSimplexGammaAndObservation/Variant0fa9931be90482a3/BarycentricMergeAndDependentWeights.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../../mathematics/Geometry/ConvexGeometry/ConvexSets/ConvexHulls/FiniteConvexCombinations/BarycentricCoefficients/FiniteSimplexGammaAndObservation/Variant0fa9931be90482a3/BarycentricMergeAndDependentWeights.lean/index.md) · [Full source](../../../../../../../../../../mathematics/Geometry/ConvexGeometry/ConvexSets/ConvexHulls/FiniteConvexCombinations/BarycentricCoefficients/FiniteSimplexGammaAndObservation/Variant0fa9931be90482a3/BarycentricMergeAndDependentWeights.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `27ea0ad3cfbb2108a2f50aa6420717921ec0899f`.

Source path: `GRWTSK/Geometry/ConvexGeometry/ConvexSets/ConvexHulls/FiniteConvexCombinations/BarycentricCoefficients/FiniteSimplexGammaAndObservation/Variant0fa9931be90482a3/BarycentricMergeAndDependentWeights.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ConvexGeometry/ConvexSets/ConvexHulls/FiniteConvexCombinations/BarycentricCoefficients/FiniteSimplexGammaAndObservation/Variant0fa9931be90482a3/BarycentricMergeAndDependentWeights.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.BigOperators` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 21; external provider; requires a separately pinned dependency.
- [`GRWTSK.Geometry.ConvexGeometry.ConvexSets.ConvexHulls.FiniteConvexCombinations.BarycentricCoefficients.FiniteSimplexGammaAndObservation.Variant0fa9931be90482a3.NormalizedWeightsAndRelabeling`](../../../../../../../../../../mathematics/Geometry/ConvexGeometry/ConvexSets/ConvexHulls/FiniteConvexCombinations/BarycentricCoefficients/FiniteSimplexGammaAndObservation/Variant0fa9931be90482a3/NormalizedWeightsAndRelabeling.lean/index.md) — import line 23; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [barycentric](../../../../../../../../../../mathematics/Geometry/ConvexGeometry/ConvexSets/ConvexHulls/FiniteConvexCombinations/BarycentricCoefficients/FiniteSimplexGammaAndObservation/Variant0fa9931be90482a3/BarycentricMergeAndDependentWeights.lean/declarations/barycentric--29b99a8db45e04ec96a53d8b.md) | 43 | `declaration-track:29b99a8db45e04ec96a53d8b13fbbe4d2880b33d9ed7c2ec651f0f1dc3e4951f` |
| 2 | `theorem` | [barycentric_apply](../../../../../../../../../../mathematics/Geometry/ConvexGeometry/ConvexSets/ConvexHulls/FiniteConvexCombinations/BarycentricCoefficients/FiniteSimplexGammaAndObservation/Variant0fa9931be90482a3/BarycentricMergeAndDependentWeights.lean/declarations/barycentric-apply--a8900e1638c6b6d3bbaac658.md) | 60 | `result-track:a8900e1638c6b6d3bbaac6582221db77de75b28275d8a72181cf839e6c81c1d7` |
| 3 | `def` | [merge](../../../../../../../../../../mathematics/Geometry/ConvexGeometry/ConvexSets/ConvexHulls/FiniteConvexCombinations/BarycentricCoefficients/FiniteSimplexGammaAndObservation/Variant0fa9931be90482a3/BarycentricMergeAndDependentWeights.lean/declarations/merge--589f5e89cd3a6e83ce54c0a9.md) | 68 | `declaration-track:589f5e89cd3a6e83ce54c0a9ae72c1a8cf8a8cd71540b48b9d5458bc9b77dc47` |
| 4 | `theorem` | [merge_apply](../../../../../../../../../../mathematics/Geometry/ConvexGeometry/ConvexSets/ConvexHulls/FiniteConvexCombinations/BarycentricCoefficients/FiniteSimplexGammaAndObservation/Variant0fa9931be90482a3/BarycentricMergeAndDependentWeights.lean/declarations/merge-apply--fa0dec526fd51d3648026624.md) | 84 | `result-track:fa0dec526fd51d3648026624a360b1eba3df6db567e39247fe534f4660c5a478` |
| 5 | `def` | [hierarchical](../../../../../../../../../../mathematics/Geometry/ConvexGeometry/ConvexSets/ConvexHulls/FiniteConvexCombinations/BarycentricCoefficients/FiniteSimplexGammaAndObservation/Variant0fa9931be90482a3/BarycentricMergeAndDependentWeights.lean/declarations/hierarchical--8e73022d7d973ba1e6617d0d.md) | 90 | `declaration-track:8e73022d7d973ba1e6617d0db3f45791b662b37a4dd9cdeefbee5cb3106d6237` |
| 6 | `theorem` | [hierarchical_apply](../../../../../../../../../../mathematics/Geometry/ConvexGeometry/ConvexSets/ConvexHulls/FiniteConvexCombinations/BarycentricCoefficients/FiniteSimplexGammaAndObservation/Variant0fa9931be90482a3/BarycentricMergeAndDependentWeights.lean/declarations/hierarchical-apply--ff31333488911aafa49ceb59.md) | 109 | `result-track:ff31333488911aafa49ceb59dc9daa85023d124258cd682adee8930d0fd54203` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
