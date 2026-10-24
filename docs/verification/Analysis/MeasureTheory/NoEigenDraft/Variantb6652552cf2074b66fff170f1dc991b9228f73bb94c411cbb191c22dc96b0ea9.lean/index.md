# Verification target: GRWTSK.Analysis.MeasureTheory.NoEigenDraft.Variantb6652552cf2074b66fff170f1dc991b9228f73bb94c411cbb191c22dc96b0ea9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dc5067144907f5f4cf7f6acc8d70acd9c88a67f3",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/NoEigenDraft/Variantb6652552cf2074b66fff170f1dc991b9228f73bb94c411cbb191c22dc96b0ea9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/NoEigenDraft/Variantb6652552cf2074b66fff170f1dc991b9228f73bb94c411cbb191c22dc96b0ea9.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/NoEigenDraft/Variantb6652552cf2074b66fff170f1dc991b9228f73bb94c411cbb191c22dc96b0ea9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dc5067144907f5f4cf7f6acc8d70acd9c88a67f3`.

Source path: `GRWTSK/Analysis/MeasureTheory/NoEigenDraft/Variantb6652552cf2074b66fff170f1dc991b9228f73bb94c411cbb191c22dc96b0ea9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/NoEigenDraft/Variantb6652552cf2074b66fff170f1dc991b9228f73bb94c411cbb191c22dc96b0ea9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaMultiplicationDomain` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.WithDensity` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [shiftedDensityMeasure](../../../../../mathematics/Analysis/MeasureTheory/NoEigenDraft/Variantb6652552cf2074b66fff170f1dc991b9228f73bb94c411cbb191c22dc96b0ea9.lean/declarations/shifteddensitymeasure--0526c7d4753a4a02d1fa5174.md) | 16 | `declaration-track:0526c7d4753a4a02d1fa5174e368789bb02779b8891cb082fd080bfde7edb625` |
| 2 | `theorem` | [shiftedDensityMeasure_nullSingleton](../../../../../mathematics/Analysis/MeasureTheory/NoEigenDraft/Variantb6652552cf2074b66fff170f1dc991b9228f73bb94c411cbb191c22dc96b0ea9.lean/declarations/shifteddensitymeasure-nullsingleton--e4bd4b5bcb753e38e8f9fa52.md) | 20 | `result-track:e4bd4b5bcb753e38e8f9fa52028dcf9a278c50fc594cf9d497721ad385d62415` |
| 3 | `theorem` | [coordinate_eigenvector_eq_zero](../../../../../mathematics/Analysis/MeasureTheory/NoEigenDraft/Variantb6652552cf2074b66fff170f1dc991b9228f73bb94c411cbb191c22dc96b0ea9.lean/declarations/coordinate-eigenvector-eq-zero--f85448cafeddbc0c6c3d1105.md) | 35 | `result-track:f85448cafeddbc0c6c3d110514792bbf242fd28d17477b2d653625e7b28441bb` |
| 4 | `theorem` | [shiftedDensity_coordinate_eigenvector_eq_zero](../../../../../mathematics/Analysis/MeasureTheory/NoEigenDraft/Variantb6652552cf2074b66fff170f1dc991b9228f73bb94c411cbb191c22dc96b0ea9.lean/declarations/shifteddensity-coordinate-eigenvector-eq-zero--63d4cd2832793b844f2da56a.md) | 57 | `result-track:63d4cd2832793b844f2da56a0a8be7562c556131d14b653565dadaafa5535a68` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
