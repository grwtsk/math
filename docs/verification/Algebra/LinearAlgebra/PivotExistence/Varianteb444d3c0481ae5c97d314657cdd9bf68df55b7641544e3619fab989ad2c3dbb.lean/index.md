# Verification target: GRWTSK.Algebra.LinearAlgebra.PivotExistence.Varianteb444d3c0481ae5c97d314657cdd9bf68df55b7641544e3619fab989ad2c3dbb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6aace9f2684c1bf4f57419d9827903cd23c67c93",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PivotExistence/Varianteb444d3c0481ae5c97d314657cdd9bf68df55b7641544e3619fab989ad2c3dbb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Varianteb444d3c0481ae5c97d314657cdd9bf68df55b7641544e3619fab989ad2c3dbb.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Varianteb444d3c0481ae5c97d314657cdd9bf68df55b7641544e3619fab989ad2c3dbb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6aace9f2684c1bf4f57419d9827903cd23c67c93`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PivotExistence/Varianteb444d3c0481ae5c97d314657cdd9bf68df55b7641544e3619fab989ad2c3dbb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PivotExistence/Varianteb444d3c0481ae5c97d314657cdd9bf68df55b7641544e3619fab989ad2c3dbb.lean.json)

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
| 1 | `theorem` | [det_ne_zero_of_independent_columns](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Varianteb444d3c0481ae5c97d314657cdd9bf68df55b7641544e3619fab989ad2c3dbb.lean/declarations/det-ne-zero-of-independent-columns--ec5a35bb9648176c63daf894.md) | 32 | `result-track:ec5a35bb9648176c63daf89413b252db58db5fc8e7aafbe224055d4778a6f872` |
| 2 | `theorem` | [columnMinor_eq_zero_of_not_injective](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Varianteb444d3c0481ae5c97d314657cdd9bf68df55b7641544e3619fab989ad2c3dbb.lean/declarations/columnminor-eq-zero-of-not-injective--2d712bc19e0ec2373da260df.md) | 47 | `result-track:2d712bc19e0ec2373da260df0af665942e6ccd88ade5abebf20a33cf0912ea11` |
| 3 | `theorem` | [injective_of_columnMinor_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Varianteb444d3c0481ae5c97d314657cdd9bf68df55b7641544e3619fab989ad2c3dbb.lean/declarations/injective-of-columnminor-ne-zero--b299ac3e8ccf60a3fc8762cb.md) | 58 | `result-track:b299ac3e8ccf60a3fc8762cb557e1a0a50e49ed12d90f94084f394b3df4a6f8c` |
| 4 | `theorem` | [exists_ordered_selection](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Varianteb444d3c0481ae5c97d314657cdd9bf68df55b7641544e3619fab989ad2c3dbb.lean/declarations/exists-ordered-selection--b4ef33d8e0c3b2a52c60e9d9.md) | 64 | `result-track:b4ef33d8e0c3b2a52c60e9d9458f9a217e319131e85a1a69e333e7091839eed5` |
| 5 | `theorem` | [columnMinor_comp_perm](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Varianteb444d3c0481ae5c97d314657cdd9bf68df55b7641544e3619fab989ad2c3dbb.lean/declarations/columnminor-comp-perm--0adfa640a281cedbca96bec9.md) | 91 | `result-track:0adfa640a281cedbca96bec93bc8c19020639f1e73e0e3776181df979e88da0a` |
| 6 | `theorem` | [exists_independent_column_selection](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Varianteb444d3c0481ae5c97d314657cdd9bf68df55b7641544e3619fab989ad2c3dbb.lean/declarations/exists-independent-column-selection--e89cac011d34d9dec59bf4af.md) | 98 | `result-track:e89cac011d34d9dec59bf4af166c497196b8d626a57cdc79ed79f68d59f6e99a` |
| 7 | `theorem` | [exists_columnMinor_ne_zero_of_rank](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Varianteb444d3c0481ae5c97d314657cdd9bf68df55b7641544e3619fab989ad2c3dbb.lean/declarations/exists-columnminor-ne-zero-of-rank--38c2f40bbce0d0bb5b00eb5a.md) | 116 | `result-track:38c2f40bbce0d0bb5b00eb5a3dc5c1d1ff9fc0c088fba67b46c1a39464587e20` |
| 8 | `theorem` | [exists_orderedMinor_ne_zero_of_rank](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Varianteb444d3c0481ae5c97d314657cdd9bf68df55b7641544e3619fab989ad2c3dbb.lean/declarations/exists-orderedminor-ne-zero-of-rank--57e1b262407f27b11ed2f2c6.md) | 123 | `result-track:57e1b262407f27b11ed2f2c6e8e975dce8629b5cc7945d91eb5bd3f9b95a1b35` |
| 9 | `theorem` | [rank_eq_iff_exists_columnMinor_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Varianteb444d3c0481ae5c97d314657cdd9bf68df55b7641544e3619fab989ad2c3dbb.lean/declarations/rank-eq-iff-exists-columnminor-ne-zero--0de4b13ec55db15b078a4892.md) | 136 | `result-track:0de4b13ec55db15b078a489286741a753852aca5340ebd6aaea5e0293b50d934` |
| 10 | `theorem` | [rank_eq_iff_exists_orderedMinor_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Varianteb444d3c0481ae5c97d314657cdd9bf68df55b7641544e3619fab989ad2c3dbb.lean/declarations/rank-eq-iff-exists-orderedminor-ne-zero--c917709242b7af6f6705d189.md) | 144 | `result-track:c917709242b7af6f6705d189838cf5772f732146350b9cdcdbeb320887272d13` |
| 11 | `theorem` | [exists_orderedMinor_pos_of_rank_nonneg](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Varianteb444d3c0481ae5c97d314657cdd9bf68df55b7641544e3619fab989ad2c3dbb.lean/declarations/exists-orderedminor-pos-of-rank-nonneg--56a29334400dce4c0efdb640.md) | 152 | `result-track:56a29334400dce4c0efdb640d6c2c534591e45045c291a8153a1edec8aa7bcfe` |
| 12 | `theorem` | [exists_ordered_pivot_normal_form](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Varianteb444d3c0481ae5c97d314657cdd9bf68df55b7641544e3619fab989ad2c3dbb.lean/declarations/exists-ordered-pivot-normal-form--6effd2f8b85d01710412856d.md) | 159 | `result-track:6effd2f8b85d01710412856da2f216683ec42fdcbc90526a00cd027f47a76a06` |
| 13 | `theorem` | [finrank_frameRowSpace_of_rank](../../../../../mathematics/Algebra/LinearAlgebra/PivotExistence/Varianteb444d3c0481ae5c97d314657cdd9bf68df55b7641544e3619fab989ad2c3dbb.lean/declarations/finrank-framerowspace-of-rank--13efa17dae008e8dbd6c3b24.md) | 168 | `result-track:13efa17dae008e8dbd6c3b247c82fc4aa69cf94d6a44f58e872a9cfd51b9a525` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
