# Verification target: GRWTSK.Algebra.LinearAlgebra.PivotExistence.Variant9b25d43f112808d74e457f0b63bb737401d1e3622d24281549a6fc11d652bc22

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d721aebe0b39e3789be81e9d0cad24587a868151",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PivotExistence/Variant9b25d43f112808d74e457f0b63bb737401d1e3622d24281549a6fc11d652bc22.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Variant9b25d43f112808d74e457f0b63bb737401d1e3622d24281549a6fc11d652bc22.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Variant9b25d43f112808d74e457f0b63bb737401d1e3622d24281549a6fc11d652bc22.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d721aebe0b39e3789be81e9d0cad24587a868151`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PivotExistence/Variant9b25d43f112808d74e457f0b63bb737401d1e3622d24281549a6fc11d652bc22.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PivotExistence/Variant9b25d43f112808d74e457f0b63bb737401d1e3622d24281549a6fc11d652bc22.lean.json)

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
| 1 | `theorem` | [det_ne_zero_of_independent_columns](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Variant9b25d43f112808d74e457f0b63bb737401d1e3622d24281549a6fc11d652bc22.lean/declarations/det-ne-zero-of-independent-columns--6f770a177be1ed61207c2b77.md) | 24 | `result-track:6f770a177be1ed61207c2b77df2d1555017c713b3c7a22d80e33a87a2d6f16bc` |
| 2 | `theorem` | [columnMinor_eq_zero_of_not_injective](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Variant9b25d43f112808d74e457f0b63bb737401d1e3622d24281549a6fc11d652bc22.lean/declarations/columnminor-eq-zero-of-not-injective--615d9e9fa03a7609b177e4aa.md) | 39 | `result-track:615d9e9fa03a7609b177e4aaf01782cc54a7c60d80be6e605ceaba5e22ea207c` |
| 3 | `theorem` | [injective_of_columnMinor_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Variant9b25d43f112808d74e457f0b63bb737401d1e3622d24281549a6fc11d652bc22.lean/declarations/injective-of-columnminor-ne-zero--8d43c638a69d914d1bc6fdd6.md) | 54 | `result-track:8d43c638a69d914d1bc6fdd6c7983ff01dba4f7a6bf9fcc82e330d3e8d3cebb0` |
| 4 | `theorem` | [exists_ordered_selection](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Variant9b25d43f112808d74e457f0b63bb737401d1e3622d24281549a6fc11d652bc22.lean/declarations/exists-ordered-selection--a0068cd56f2747eeb0f53016.md) | 60 | `result-track:a0068cd56f2747eeb0f53016689a416003833a6bf64e1a62d94d25f3e8038809` |
| 5 | `theorem` | [columnMinor_comp_perm](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Variant9b25d43f112808d74e457f0b63bb737401d1e3622d24281549a6fc11d652bc22.lean/declarations/columnminor-comp-perm--a6b772ed03759eee9f5c144c.md) | 87 | `result-track:a6b772ed03759eee9f5c144c00cc8f12219b1a845527f0f0187b94b1d4ee8064` |
| 6 | `theorem` | [exists_independent_column_selection](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Variant9b25d43f112808d74e457f0b63bb737401d1e3622d24281549a6fc11d652bc22.lean/declarations/exists-independent-column-selection--459867d78efce09e36857653.md) | 94 | `result-track:459867d78efce09e368576534fd39b41c40a688f83d1885244abf5c0e2aadeea` |
| 7 | `theorem` | [exists_columnMinor_ne_zero_of_rank](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Variant9b25d43f112808d74e457f0b63bb737401d1e3622d24281549a6fc11d652bc22.lean/declarations/exists-columnminor-ne-zero-of-rank--68ef209a4f517e6275131d4b.md) | 112 | `result-track:68ef209a4f517e6275131d4b4342ce531763a33fa09f53924a3cb4decbfb9d0d` |
| 8 | `theorem` | [exists_orderedMinor_ne_zero_of_rank](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Variant9b25d43f112808d74e457f0b63bb737401d1e3622d24281549a6fc11d652bc22.lean/declarations/exists-orderedminor-ne-zero-of-rank--63920c9144655adcabccd88e.md) | 119 | `result-track:63920c9144655adcabccd88e0475b37827d19c3a6a1d005f18745c7159220ad5` |
| 9 | `theorem` | [rank_eq_iff_exists_columnMinor_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Variant9b25d43f112808d74e457f0b63bb737401d1e3622d24281549a6fc11d652bc22.lean/declarations/rank-eq-iff-exists-columnminor-ne-zero--5a0105074d50d5499b65e025.md) | 132 | `result-track:5a0105074d50d5499b65e025badf1dd9b4ff167d51c8938a489c8c1be3e6725f` |
| 10 | `theorem` | [rank_eq_iff_exists_orderedMinor_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Variant9b25d43f112808d74e457f0b63bb737401d1e3622d24281549a6fc11d652bc22.lean/declarations/rank-eq-iff-exists-orderedminor-ne-zero--6df889ec302c8f3c9e6940a5.md) | 140 | `result-track:6df889ec302c8f3c9e6940a595dbff04aa9b1d0ecd0a8c5fedf4069323976f09` |
| 11 | `theorem` | [exists_orderedMinor_pos_of_rank_nonneg](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Variant9b25d43f112808d74e457f0b63bb737401d1e3622d24281549a6fc11d652bc22.lean/declarations/exists-orderedminor-pos-of-rank-nonneg--27f163fac5a785aa8415fb86.md) | 148 | `result-track:27f163fac5a785aa8415fb86f2b02f0fdb454f13e58b375169f34e5dae2ca082` |
| 12 | `theorem` | [exists_ordered_pivot_normal_form](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Variant9b25d43f112808d74e457f0b63bb737401d1e3622d24281549a6fc11d652bc22.lean/declarations/exists-ordered-pivot-normal-form--f44c7692ede6d23afa34a95a.md) | 155 | `result-track:f44c7692ede6d23afa34a95aef8cb16f64f720d78b3122ffcec5390771dd9e4d` |
| 13 | `theorem` | [finrank_frameRowSpace_of_rank](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Variant9b25d43f112808d74e457f0b63bb737401d1e3622d24281549a6fc11d652bc22.lean/declarations/finrank-framerowspace-of-rank--75a74025397745f0bc4cc754.md) | 164 | `result-track:75a74025397745f0bc4cc75407dcc2b160f5078d9d0429a5d4020a346c468f04` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
