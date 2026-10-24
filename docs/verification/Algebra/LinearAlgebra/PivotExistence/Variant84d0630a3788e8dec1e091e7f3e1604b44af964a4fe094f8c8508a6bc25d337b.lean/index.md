# Verification target: GRWTSK.Algebra.LinearAlgebra.PivotExistence.Variant84d0630a3788e8dec1e091e7f3e1604b44af964a4fe094f8c8508a6bc25d337b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f9a8a9d2c08ce69b9b947e79d53baf9cfa4d6ff7",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PivotExistence/Variant84d0630a3788e8dec1e091e7f3e1604b44af964a4fe094f8c8508a6bc25d337b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Variant84d0630a3788e8dec1e091e7f3e1604b44af964a4fe094f8c8508a6bc25d337b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Variant84d0630a3788e8dec1e091e7f3e1604b44af964a4fe094f8c8508a6bc25d337b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f9a8a9d2c08ce69b9b947e79d53baf9cfa4d6ff7`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PivotExistence/Variant84d0630a3788e8dec1e091e7f3e1604b44af964a4fe094f8c8508a6bc25d337b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PivotExistence/Variant84d0630a3788e8dec1e091e7f3e1604b44af964a4fe094f8c8508a6bc25d337b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Grassmannian.PivotNormalization` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.StrongRankCondition` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLinearEquiv` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.PowersetCard` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [det_ne_zero_of_independent_columns](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Variant84d0630a3788e8dec1e091e7f3e1604b44af964a4fe094f8c8508a6bc25d337b.lean/declarations/det-ne-zero-of-independent-columns--10c91cec7ed64537ed8deea5.md) | 24 | `result-track:10c91cec7ed64537ed8deea54fe59cfeceafc8c157e87ce3139b639aea070afe` |
| 2 | `theorem` | [columnMinor_eq_zero_of_not_injective](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Variant84d0630a3788e8dec1e091e7f3e1604b44af964a4fe094f8c8508a6bc25d337b.lean/declarations/columnminor-eq-zero-of-not-injective--2eae7ee096a7e037da09aac4.md) | 39 | `result-track:2eae7ee096a7e037da09aac4c3eb1b4aaf6420922cd1abe5c1eb004c207e3e64` |
| 3 | `theorem` | [injective_of_columnMinor_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Variant84d0630a3788e8dec1e091e7f3e1604b44af964a4fe094f8c8508a6bc25d337b.lean/declarations/injective-of-columnminor-ne-zero--e5af2a64ec96f3429ee0e45d.md) | 50 | `result-track:e5af2a64ec96f3429ee0e45de5227caa26ebabe336a3a294e128e6b7b887e323` |
| 4 | `theorem` | [exists_ordered_selection](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Variant84d0630a3788e8dec1e091e7f3e1604b44af964a4fe094f8c8508a6bc25d337b.lean/declarations/exists-ordered-selection--f75f92b670421edf9ae5c32d.md) | 56 | `result-track:f75f92b670421edf9ae5c32def6f83cae16aa93bffca7a1aec23cb63c55fec84` |
| 5 | `theorem` | [columnMinor_comp_perm](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Variant84d0630a3788e8dec1e091e7f3e1604b44af964a4fe094f8c8508a6bc25d337b.lean/declarations/columnminor-comp-perm--e92c12f173af9ffc421aaaec.md) | 83 | `result-track:e92c12f173af9ffc421aaaecb4dd45f26b24479f1c3294152964aa503c1d1ff2` |
| 6 | `theorem` | [exists_independent_column_selection](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Variant84d0630a3788e8dec1e091e7f3e1604b44af964a4fe094f8c8508a6bc25d337b.lean/declarations/exists-independent-column-selection--2ecfb164d2f447d67cf08bd2.md) | 90 | `result-track:2ecfb164d2f447d67cf08bd2f03b0642589ceee36a1a43af17e7ace8dadeb9b6` |
| 7 | `theorem` | [exists_columnMinor_ne_zero_of_rank](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Variant84d0630a3788e8dec1e091e7f3e1604b44af964a4fe094f8c8508a6bc25d337b.lean/declarations/exists-columnminor-ne-zero-of-rank--425258645f3affdd51a820c4.md) | 108 | `result-track:425258645f3affdd51a820c4c4fbc44b813291e7cd60d0059d3449b2b4ce00c8` |
| 8 | `theorem` | [exists_orderedMinor_ne_zero_of_rank](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Variant84d0630a3788e8dec1e091e7f3e1604b44af964a4fe094f8c8508a6bc25d337b.lean/declarations/exists-orderedminor-ne-zero-of-rank--e215c319a4776b61bbf822b9.md) | 115 | `result-track:e215c319a4776b61bbf822b98a4b6d61b4b6780857c68c08384ba755f3c4167f` |
| 9 | `theorem` | [rank_eq_iff_exists_columnMinor_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Variant84d0630a3788e8dec1e091e7f3e1604b44af964a4fe094f8c8508a6bc25d337b.lean/declarations/rank-eq-iff-exists-columnminor-ne-zero--d862434f61b8287e15de0aae.md) | 128 | `result-track:d862434f61b8287e15de0aae04e1e0df8f9f84cb5d1afcc0f8e159d5571b8948` |
| 10 | `theorem` | [rank_eq_iff_exists_orderedMinor_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Variant84d0630a3788e8dec1e091e7f3e1604b44af964a4fe094f8c8508a6bc25d337b.lean/declarations/rank-eq-iff-exists-orderedminor-ne-zero--0f28b5142d8b61b9dde210b8.md) | 136 | `result-track:0f28b5142d8b61b9dde210b82f3e7e44fae3a7bc52acfac0c35df950a1661945` |
| 11 | `theorem` | [exists_orderedMinor_pos_of_rank_nonneg](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Variant84d0630a3788e8dec1e091e7f3e1604b44af964a4fe094f8c8508a6bc25d337b.lean/declarations/exists-orderedminor-pos-of-rank-nonneg--b2d90feeec8d5f0daf8f57e3.md) | 144 | `result-track:b2d90feeec8d5f0daf8f57e3c0ab56a09584d99baeddf4b2b3d4bad60f18cfc5` |
| 12 | `theorem` | [exists_ordered_pivot_normal_form](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Variant84d0630a3788e8dec1e091e7f3e1604b44af964a4fe094f8c8508a6bc25d337b.lean/declarations/exists-ordered-pivot-normal-form--6cfd1ceaa839df344845b6d4.md) | 151 | `result-track:6cfd1ceaa839df344845b6d41e54a4a6a2d9b77eb19bf1445415e4e50c448e9a` |
| 13 | `theorem` | [finrank_frameRowSpace_of_rank](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Variant84d0630a3788e8dec1e091e7f3e1604b44af964a4fe094f8c8508a6bc25d337b.lean/declarations/finrank-framerowspace-of-rank--6e6108b20ab8744c767e4c41.md) | 160 | `result-track:6e6108b20ab8744c767e4c41a9cb3cef5acbe6af7aec8b4ca507cc8e4f575c20` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
