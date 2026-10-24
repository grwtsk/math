# Verification target: GRWTSK.Algebra.LinearAlgebra.PivotExistence.Variantf8383ba585f1c99f103bd0b7ebf314dc68aec25b56e88b462304479caf3ad60a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "adf3edbd6fd3f1bdd6ef017d7b952795ca9a265b",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PivotExistence/Variantf8383ba585f1c99f103bd0b7ebf314dc68aec25b56e88b462304479caf3ad60a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Variantf8383ba585f1c99f103bd0b7ebf314dc68aec25b56e88b462304479caf3ad60a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Variantf8383ba585f1c99f103bd0b7ebf314dc68aec25b56e88b462304479caf3ad60a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `adf3edbd6fd3f1bdd6ef017d7b952795ca9a265b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PivotExistence/Variantf8383ba585f1c99f103bd0b7ebf314dc68aec25b56e88b462304479caf3ad60a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PivotExistence/Variantf8383ba585f1c99f103bd0b7ebf314dc68aec25b56e88b462304479caf3ad60a.lean.json)

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
| 1 | `theorem` | [det_ne_zero_of_independent_columns](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Variantf8383ba585f1c99f103bd0b7ebf314dc68aec25b56e88b462304479caf3ad60a.lean/declarations/det-ne-zero-of-independent-columns--675b2c30e618cf619f4b3860.md) | 32 | `result-track:675b2c30e618cf619f4b386046d89e766e016655ef61ec415ffb7f383a1bdf71` |
| 2 | `theorem` | [columnMinor_eq_zero_of_not_injective](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Variantf8383ba585f1c99f103bd0b7ebf314dc68aec25b56e88b462304479caf3ad60a.lean/declarations/columnminor-eq-zero-of-not-injective--209ae5638347108efb6ccfdf.md) | 47 | `result-track:209ae5638347108efb6ccfdfe0006d26a479bd648c3d3d0c830533e5f5a7ffcf` |
| 3 | `theorem` | [injective_of_columnMinor_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Variantf8383ba585f1c99f103bd0b7ebf314dc68aec25b56e88b462304479caf3ad60a.lean/declarations/injective-of-columnminor-ne-zero--77f17327c9c0fb6ed7c4e87f.md) | 58 | `result-track:77f17327c9c0fb6ed7c4e87ff67935444f866956aa8920aa01f0e736d3de34dc` |
| 4 | `theorem` | [exists_ordered_selection](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Variantf8383ba585f1c99f103bd0b7ebf314dc68aec25b56e88b462304479caf3ad60a.lean/declarations/exists-ordered-selection--0e10bfed99b6d90caa419f79.md) | 64 | `result-track:0e10bfed99b6d90caa419f790347e7b81a3c3534a62a58b62c962c938ccac361` |
| 5 | `theorem` | [columnMinor_comp_perm](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Variantf8383ba585f1c99f103bd0b7ebf314dc68aec25b56e88b462304479caf3ad60a.lean/declarations/columnminor-comp-perm--bee391e3f9b9b076b56dfdb5.md) | 91 | `result-track:bee391e3f9b9b076b56dfdb5dc935a87616bfde7e5a80e0495526731d1d98531` |
| 6 | `theorem` | [exists_independent_column_selection](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Variantf8383ba585f1c99f103bd0b7ebf314dc68aec25b56e88b462304479caf3ad60a.lean/declarations/exists-independent-column-selection--24bec3558afffa15e15a7c50.md) | 98 | `result-track:24bec3558afffa15e15a7c5015b16927d74b99c10be9782f76d33a58f98f7808` |
| 7 | `theorem` | [exists_columnMinor_ne_zero_of_rank](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Variantf8383ba585f1c99f103bd0b7ebf314dc68aec25b56e88b462304479caf3ad60a.lean/declarations/exists-columnminor-ne-zero-of-rank--f9962262f43157f89186173e.md) | 116 | `result-track:f9962262f43157f89186173e130306b71bae95738b9e67a58e5f90c052dea8d0` |
| 8 | `theorem` | [exists_orderedMinor_ne_zero_of_rank](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Variantf8383ba585f1c99f103bd0b7ebf314dc68aec25b56e88b462304479caf3ad60a.lean/declarations/exists-orderedminor-ne-zero-of-rank--7c28278f7d82960f9e8edfc3.md) | 123 | `result-track:7c28278f7d82960f9e8edfc35e74333ef49d7255c148445c2d1caba5acd89074` |
| 9 | `theorem` | [rank_eq_iff_exists_columnMinor_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Variantf8383ba585f1c99f103bd0b7ebf314dc68aec25b56e88b462304479caf3ad60a.lean/declarations/rank-eq-iff-exists-columnminor-ne-zero--47e023bc8ca9048ab7ec0048.md) | 136 | `result-track:47e023bc8ca9048ab7ec0048b4a7c8a7a74ed104c88a80d434fe0894c822ca2e` |
| 10 | `theorem` | [rank_eq_iff_exists_orderedMinor_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Variantf8383ba585f1c99f103bd0b7ebf314dc68aec25b56e88b462304479caf3ad60a.lean/declarations/rank-eq-iff-exists-orderedminor-ne-zero--76f57ddc3613aea4018824a4.md) | 144 | `result-track:76f57ddc3613aea4018824a4192d087abb03274c85203a4504acb0546b197a49` |
| 11 | `theorem` | [exists_orderedMinor_pos_of_rank_nonneg](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Variantf8383ba585f1c99f103bd0b7ebf314dc68aec25b56e88b462304479caf3ad60a.lean/declarations/exists-orderedminor-pos-of-rank-nonneg--f887cc3f1fa9235273a9f7ed.md) | 152 | `result-track:f887cc3f1fa9235273a9f7edc8ed61184167bd1bbda75ce52bebadc38e5c90ed` |
| 12 | `theorem` | [exists_ordered_pivot_normal_form](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Variantf8383ba585f1c99f103bd0b7ebf314dc68aec25b56e88b462304479caf3ad60a.lean/declarations/exists-ordered-pivot-normal-form--29d91184c0344cff3e7b8033.md) | 159 | `result-track:29d91184c0344cff3e7b80338bcfe07b2da3cf9ca0a59bd2a2c1fa9886ca4ee4` |
| 13 | `theorem` | [finrank_frameRowSpace_of_rank](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Variantf8383ba585f1c99f103bd0b7ebf314dc68aec25b56e88b462304479caf3ad60a.lean/declarations/finrank-framerowspace-of-rank--02278e5df90b1326e0091f4e.md) | 168 | `result-track:02278e5df90b1326e0091f4e596604d45b7910af2d0215618a10d58b112c1140` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
