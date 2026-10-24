# Verification target: GRWTSK.Algebra.LinearAlgebra.PivotExistence.Variante0b299070bd1449d69afa5dee853d9eb41da26db37e4a5cee3f919e9734bac8b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fa77a8b9e9ce43dd5638826fdc5abc5eae85d35f",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PivotExistence/Variante0b299070bd1449d69afa5dee853d9eb41da26db37e4a5cee3f919e9734bac8b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Variante0b299070bd1449d69afa5dee853d9eb41da26db37e4a5cee3f919e9734bac8b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Variante0b299070bd1449d69afa5dee853d9eb41da26db37e4a5cee3f919e9734bac8b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fa77a8b9e9ce43dd5638826fdc5abc5eae85d35f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PivotExistence/Variante0b299070bd1449d69afa5dee853d9eb41da26db37e4a5cee3f919e9734bac8b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PivotExistence/Variante0b299070bd1449d69afa5dee853d9eb41da26db37e4a5cee3f919e9734bac8b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Grassmannian.PivotNormalization` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.StrongRankCondition` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLinearEquiv` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.PowersetCard` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [det_ne_zero_of_independent_columns](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Variante0b299070bd1449d69afa5dee853d9eb41da26db37e4a5cee3f919e9734bac8b.lean/declarations/det-ne-zero-of-independent-columns--75e7dd6051aab46e4af32a9c.md) | 32 | `result-track:75e7dd6051aab46e4af32a9cc715e08339bf35d97e5f00eca23a420a29e9fc43` |
| 2 | `theorem` | [columnMinor_eq_zero_of_not_injective](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Variante0b299070bd1449d69afa5dee853d9eb41da26db37e4a5cee3f919e9734bac8b.lean/declarations/columnminor-eq-zero-of-not-injective--77837275ca59bff6924d3e65.md) | 47 | `result-track:77837275ca59bff6924d3e657b75226543bb166cd999959b9e5665c5cc9d8804` |
| 3 | `theorem` | [injective_of_columnMinor_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Variante0b299070bd1449d69afa5dee853d9eb41da26db37e4a5cee3f919e9734bac8b.lean/declarations/injective-of-columnminor-ne-zero--aad220ed2bbbc28397a00899.md) | 62 | `result-track:aad220ed2bbbc28397a00899ba0aea8be964bc0d3153fb850df83a9ac4e1c6de` |
| 4 | `theorem` | [exists_ordered_selection](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Variante0b299070bd1449d69afa5dee853d9eb41da26db37e4a5cee3f919e9734bac8b.lean/declarations/exists-ordered-selection--ec7f8525cfd1368d148305c4.md) | 68 | `result-track:ec7f8525cfd1368d148305c46633096ec7544d4618ae326e8d36ab36773a3a35` |
| 5 | `theorem` | [columnMinor_comp_perm](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Variante0b299070bd1449d69afa5dee853d9eb41da26db37e4a5cee3f919e9734bac8b.lean/declarations/columnminor-comp-perm--3043102066d969c36df1e0be.md) | 95 | `result-track:3043102066d969c36df1e0beaf37fd4a59f3225abbdaca08e9d578822160a680` |
| 6 | `theorem` | [exists_independent_column_selection](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Variante0b299070bd1449d69afa5dee853d9eb41da26db37e4a5cee3f919e9734bac8b.lean/declarations/exists-independent-column-selection--92e48ed3481cd4e68c54e715.md) | 102 | `result-track:92e48ed3481cd4e68c54e71546e9ea7b10be5c228fa295db47f491086519fcdc` |
| 7 | `theorem` | [exists_columnMinor_ne_zero_of_rank](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Variante0b299070bd1449d69afa5dee853d9eb41da26db37e4a5cee3f919e9734bac8b.lean/declarations/exists-columnminor-ne-zero-of-rank--c105ebad33d16398d56fec6b.md) | 120 | `result-track:c105ebad33d16398d56fec6b2d36d1b3c94ff0e29dc292849f9d0187dbeaafac` |
| 8 | `theorem` | [exists_orderedMinor_ne_zero_of_rank](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Variante0b299070bd1449d69afa5dee853d9eb41da26db37e4a5cee3f919e9734bac8b.lean/declarations/exists-orderedminor-ne-zero-of-rank--af93e05511787ca9253ac957.md) | 127 | `result-track:af93e05511787ca9253ac9571ee52dc82b13cc7a81a061b8d46e4a574d8edaf0` |
| 9 | `theorem` | [rank_eq_iff_exists_columnMinor_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Variante0b299070bd1449d69afa5dee853d9eb41da26db37e4a5cee3f919e9734bac8b.lean/declarations/rank-eq-iff-exists-columnminor-ne-zero--d426482aa3d7b2dad37a3eae.md) | 140 | `result-track:d426482aa3d7b2dad37a3eaea41f8ea1345479b2fbb377919240ee62fda711f4` |
| 10 | `theorem` | [rank_eq_iff_exists_orderedMinor_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Variante0b299070bd1449d69afa5dee853d9eb41da26db37e4a5cee3f919e9734bac8b.lean/declarations/rank-eq-iff-exists-orderedminor-ne-zero--ad5fc8f220bccb294e92fcc0.md) | 148 | `result-track:ad5fc8f220bccb294e92fcc051af909dfaf234a3da7aae0dda78e22ea612dd6d` |
| 11 | `theorem` | [exists_orderedMinor_pos_of_rank_nonneg](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Variante0b299070bd1449d69afa5dee853d9eb41da26db37e4a5cee3f919e9734bac8b.lean/declarations/exists-orderedminor-pos-of-rank-nonneg--5bfbb3382fecccfc3103baf4.md) | 156 | `result-track:5bfbb3382fecccfc3103baf4995c147e8845e37e5fd5b6777bafa3805340ac79` |
| 12 | `theorem` | [exists_ordered_pivot_normal_form](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Variante0b299070bd1449d69afa5dee853d9eb41da26db37e4a5cee3f919e9734bac8b.lean/declarations/exists-ordered-pivot-normal-form--392c21a864aac38ca6a87497.md) | 163 | `result-track:392c21a864aac38ca6a874974220ea4a76a53234cfd9603c48effd2f66b92b2b` |
| 13 | `theorem` | [finrank_frameRowSpace_of_rank](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Variante0b299070bd1449d69afa5dee853d9eb41da26db37e4a5cee3f919e9734bac8b.lean/declarations/finrank-framerowspace-of-rank--65ed6b46c1a4177d82e789cd.md) | 172 | `result-track:65ed6b46c1a4177d82e789cd1d2b9f9206e7861f8c590bf17e86dcea94122f5a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
