# Verification target: GRWTSK.Algebra.LinearAlgebra.PivotExistence.Variant8e7dbf29561f220816838f483bbab066214935635fd38b74380f404964e2aa3e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6de09ad40420c68132631f3bd2812ade72dd62ce",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PivotExistence/Variant8e7dbf29561f220816838f483bbab066214935635fd38b74380f404964e2aa3e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Variant8e7dbf29561f220816838f483bbab066214935635fd38b74380f404964e2aa3e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Variant8e7dbf29561f220816838f483bbab066214935635fd38b74380f404964e2aa3e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6de09ad40420c68132631f3bd2812ade72dd62ce`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PivotExistence/Variant8e7dbf29561f220816838f483bbab066214935635fd38b74380f404964e2aa3e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PivotExistence/Variant8e7dbf29561f220816838f483bbab066214935635fd38b74380f404964e2aa3e.lean.json)

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
| 1 | `theorem` | [det_ne_zero_of_independent_columns](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Variant8e7dbf29561f220816838f483bbab066214935635fd38b74380f404964e2aa3e.lean/declarations/det-ne-zero-of-independent-columns--0d070043fe18c74b0a6d3a49.md) | 24 | `result-track:0d070043fe18c74b0a6d3a4973adbb0eb41716c166cfc7e38ad7b258dd96a38a` |
| 2 | `theorem` | [columnMinor_eq_zero_of_not_injective](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Variant8e7dbf29561f220816838f483bbab066214935635fd38b74380f404964e2aa3e.lean/declarations/columnminor-eq-zero-of-not-injective--3de376486f82835caff16792.md) | 39 | `result-track:3de376486f82835caff16792bd4d679de9867844b4d84c37d75645b1943f2d04` |
| 3 | `theorem` | [injective_of_columnMinor_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Variant8e7dbf29561f220816838f483bbab066214935635fd38b74380f404964e2aa3e.lean/declarations/injective-of-columnminor-ne-zero--6c2ced86ed79412001e55605.md) | 50 | `result-track:6c2ced86ed79412001e55605943597535f840cc091d217de4d9b72901a1ab25a` |
| 4 | `theorem` | [exists_ordered_selection](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Variant8e7dbf29561f220816838f483bbab066214935635fd38b74380f404964e2aa3e.lean/declarations/exists-ordered-selection--ede19c879537505878614752.md) | 56 | `result-track:ede19c879537505878614752e17c96e4205433e3441ea19dfa18dee47b4f8068` |
| 5 | `theorem` | [columnMinor_comp_perm](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Variant8e7dbf29561f220816838f483bbab066214935635fd38b74380f404964e2aa3e.lean/declarations/columnminor-comp-perm--979ab65b922e0be9a4844728.md) | 83 | `result-track:979ab65b922e0be9a48447280a9b186faf02be2f1fcb619a6701a68279e3411c` |
| 6 | `theorem` | [exists_independent_column_selection](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Variant8e7dbf29561f220816838f483bbab066214935635fd38b74380f404964e2aa3e.lean/declarations/exists-independent-column-selection--3e387ec1be40bbe481073e48.md) | 90 | `result-track:3e387ec1be40bbe481073e48b972a5a30779c7d5de19c5dcc61662165efc7b42` |
| 7 | `theorem` | [exists_columnMinor_ne_zero_of_rank](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Variant8e7dbf29561f220816838f483bbab066214935635fd38b74380f404964e2aa3e.lean/declarations/exists-columnminor-ne-zero-of-rank--fc71d3cb130b7457ec1bcdb5.md) | 108 | `result-track:fc71d3cb130b7457ec1bcdb55b8adda4af9d7f45c0c594b85586dd82b81fe034` |
| 8 | `theorem` | [exists_orderedMinor_ne_zero_of_rank](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Variant8e7dbf29561f220816838f483bbab066214935635fd38b74380f404964e2aa3e.lean/declarations/exists-orderedminor-ne-zero-of-rank--05fb895fce3019b4f979a113.md) | 115 | `result-track:05fb895fce3019b4f979a1136a58ca4ab9038ea81888d5d4bbf532a3db63ca93` |
| 9 | `theorem` | [rank_eq_iff_exists_columnMinor_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Variant8e7dbf29561f220816838f483bbab066214935635fd38b74380f404964e2aa3e.lean/declarations/rank-eq-iff-exists-columnminor-ne-zero--db1ac5b91ad9104ae5b25994.md) | 128 | `result-track:db1ac5b91ad9104ae5b25994eb4bba4f6ab580576a33ec587adfdcebafe10c1e` |
| 10 | `theorem` | [rank_eq_iff_exists_orderedMinor_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Variant8e7dbf29561f220816838f483bbab066214935635fd38b74380f404964e2aa3e.lean/declarations/rank-eq-iff-exists-orderedminor-ne-zero--66832d415c299aa70931e612.md) | 136 | `result-track:66832d415c299aa70931e6120033f15de22283d90dcce74cc6b7e1104a11dc35` |
| 11 | `theorem` | [exists_orderedMinor_pos_of_rank_nonneg](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Variant8e7dbf29561f220816838f483bbab066214935635fd38b74380f404964e2aa3e.lean/declarations/exists-orderedminor-pos-of-rank-nonneg--9ba62619e139653e9e4b00f6.md) | 144 | `result-track:9ba62619e139653e9e4b00f6b680e2d364347174e399224fcb3cf24c7b846fb4` |
| 12 | `theorem` | [exists_ordered_pivot_normal_form](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Variant8e7dbf29561f220816838f483bbab066214935635fd38b74380f404964e2aa3e.lean/declarations/exists-ordered-pivot-normal-form--349f34dacf27c28aa78461da.md) | 151 | `result-track:349f34dacf27c28aa78461dac81e040a9bd89698817a7044a43e84a1f0446a98` |
| 13 | `theorem` | [finrank_frameRowSpace_of_rank](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Variant8e7dbf29561f220816838f483bbab066214935635fd38b74380f404964e2aa3e.lean/declarations/finrank-framerowspace-of-rank--a4fe77d21df7948df3e0fb7e.md) | 160 | `result-track:a4fe77d21df7948df3e0fb7edefdd95ab379f4fd3bcab1a43ad4bfc47ea68d7f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
