# Verification target: GRWTSK.Algebra.LinearAlgebra.SignedMinorElimination.Variant72e8569514d3d6e73d2d6849f4ff6c2bbd0876620cb38029155e99d9cf8423a6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6dd55d9392af17a167eb7e4c49797ba087596929",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SignedMinorElimination/Variant72e8569514d3d6e73d2d6849f4ff6c2bbd0876620cb38029155e99d9cf8423a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/SignedMinorElimination/Variant72e8569514d3d6e73d2d6849f4ff6c2bbd0876620cb38029155e99d9cf8423a6.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/SignedMinorElimination/Variant72e8569514d3d6e73d2d6849f4ff6c2bbd0876620cb38029155e99d9cf8423a6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6dd55d9392af17a167eb7e4c49797ba087596929`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SignedMinorElimination/Variant72e8569514d3d6e73d2d6849f4ff6c2bbd0876620cb38029155e99d9cf8423a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SignedMinorElimination/Variant72e8569514d3d6e73d2d6849f4ff6c2bbd0876620cb38029155e99d9cf8423a6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Grassmannian.SignedGraph` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.SuccPred` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [det_cancel_signed_unit](../../../../../mathematics/Algebra/LinearAlgebra/SignedMinorElimination/Variant72e8569514d3d6e73d2d6849f4ff6c2bbd0876620cb38029155e99d9cf8423a6.lean/declarations/det-cancel-signed-unit--f349cb765fe8674bfd7be12e.md) | 32 | `result-track:f349cb765fe8674bfd7be12e72d930b0142d95c75839a78a5c0984e613b58b73` |
| 2 | `def` | [antiReverse](../../../../../mathematics/Algebra/LinearAlgebra/SignedMinorElimination/Variant72e8569514d3d6e73d2d6849f4ff6c2bbd0876620cb38029155e99d9cf8423a6.lean/declarations/antireverse--eafe3ecdc2be026572070364.md) | 53 | `declaration-track:eafe3ecdc2be026572070364cbd8656307b00b0787818efe6c5ec64b8411ab05` |
| 3 | `def` | [augment](../../../../../mathematics/Algebra/LinearAlgebra/SignedMinorElimination/Variant72e8569514d3d6e73d2d6849f4ff6c2bbd0876620cb38029155e99d9cf8423a6.lean/declarations/augment--09b7bb1b44197ff2a13927f0.md) | 57 | `declaration-track:09b7bb1b44197ff2a13927f075f4c288f759be1bdf7f31482e6dcf04c9ae4737` |
| 4 | `theorem` | [antiReverse_delete_last](../../../../../mathematics/Algebra/LinearAlgebra/SignedMinorElimination/Variant72e8569514d3d6e73d2d6849f4ff6c2bbd0876620cb38029155e99d9cf8423a6.lean/declarations/antireverse-delete-last--bf57e9188219a124d0bef67f.md) | 63 | `result-track:bf57e9188219a124d0bef67fa3e61d634e6e99adb9b11f45b2d0963a5f21a5ba` |
| 5 | `theorem` | [antiReverse_det](../../../../../mathematics/Algebra/LinearAlgebra/SignedMinorElimination/Variant72e8569514d3d6e73d2d6849f4ff6c2bbd0876620cb38029155e99d9cf8423a6.lean/declarations/antireverse-det--24e28e1bd7db975113f4f9d1.md) | 81 | `result-track:24e28e1bd7db975113f4f9d1ac1f8c921625298505faa804e512738737f24d4f` |
| 6 | `theorem` | [antiReverse_mul_frame](../../../../../mathematics/Algebra/LinearAlgebra/SignedMinorElimination/Variant72e8569514d3d6e73d2d6849f4ff6c2bbd0876620cb38029155e99d9cf8423a6.lean/declarations/antireverse-mul-frame--22b3bdd7e55a4e1e7fd9140c.md) | 103 | `result-track:22b3bdd7e55a4e1e7fd9140c0632ec35e7b6a0db6bb2d04e53794ce9fe9ce016` |
| 7 | `theorem` | [frame_minor_eq_augment](../../../../../mathematics/Algebra/LinearAlgebra/SignedMinorElimination/Variant72e8569514d3d6e73d2d6849f4ff6c2bbd0876620cb38029155e99d9cf8423a6.lean/declarations/frame-minor-eq-augment--8664ecfbb7afa37b7128c9f3.md) | 116 | `result-track:8664ecfbb7afa37b7128c9f3cc1c0154d347fb5926ef95b8e51a39c37828682e` |
| 8 | `structure` | [Selection](../../../../../mathematics/Algebra/LinearAlgebra/SignedMinorElimination/Variant72e8569514d3d6e73d2d6849f4ff6c2bbd0876620cb38029155e99d9cf8423a6.lean/declarations/selection--250e8b13dd623089e7f23835.md) | 122 | `declaration-track:250e8b13dd623089e7f238354170be31db678e9b69e6bd863ffaac997cdeb2d4` |
| 9 | `def` | [Selection.value](../../../../../mathematics/Algebra/LinearAlgebra/SignedMinorElimination/Variant72e8569514d3d6e73d2d6849f4ff6c2bbd0876620cb38029155e99d9cf8423a6.lean/declarations/selection-value--1c38b74f26fd0be5371ad839.md) | 131 | `declaration-track:1c38b74f26fd0be5371ad839f016b48d29d56922ce6ccc37513e15ab2cb1050d` |
| 10 | `def` | [emptySelection](../../../../../mathematics/Algebra/LinearAlgebra/SignedMinorElimination/Variant72e8569514d3d6e73d2d6849f4ff6c2bbd0876620cb38029155e99d9cf8423a6.lean/declarations/emptyselection--f5dec48e5c044ffdf09c3aa4.md) | 135 | `declaration-track:f5dec48e5c044ffdf09c3aa494c2eeca14cae6730fc587e4e658457a9ca1f449` |
| 11 | `theorem` | [succAbove_strictMono](../../../../../mathematics/Algebra/LinearAlgebra/SignedMinorElimination/Variant72e8569514d3d6e73d2d6849f4ff6c2bbd0876620cb38029155e99d9cf8423a6.lean/declarations/succabove-strictmono--82b5b795f85106d214119128.md) | 139 | `result-track:82b5b795f85106d214119128d8b07d865d8e88cef7f18096205229819b3b30d7` |
| 12 | `def` | [deleteFirstColumns](../../../../../mathematics/Algebra/LinearAlgebra/SignedMinorElimination/Variant72e8569514d3d6e73d2d6849f4ff6c2bbd0876620cb38029155e99d9cf8423a6.lean/declarations/deletefirstcolumns--9e0d5bf60811615e604041b8.md) | 146 | `declaration-track:9e0d5bf60811615e604041b8d230d65d2e711974ecf9cbce3573648c5970758e` |
| 13 | `def` | [firstPivot](../../../../../mathematics/Algebra/LinearAlgebra/SignedMinorElimination/Variant72e8569514d3d6e73d2d6849f4ff6c2bbd0876620cb38029155e99d9cf8423a6.lean/declarations/firstpivot--d8715785d82dae3647626abe.md) | 164 | `declaration-track:d8715785d82dae3647626abe2d8692c8d54f9ab2050175ba58a69ca9a7c95df0` |
| 14 | `def` | [rightColumns](../../../../../mathematics/Algebra/LinearAlgebra/SignedMinorElimination/Variant72e8569514d3d6e73d2d6849f4ff6c2bbd0876620cb38029155e99d9cf8423a6.lean/declarations/rightcolumns--ce579e65c3e73a5381625702.md) | 169 | `declaration-track:ce579e65c3e73a538162570213762ba7063853b86a248e01e60fea422a3a7864` |
| 15 | `theorem` | [all_right_of_first](../../../../../mathematics/Algebra/LinearAlgebra/SignedMinorElimination/Variant72e8569514d3d6e73d2d6849f4ff6c2bbd0876620cb38029155e99d9cf8423a6.lean/declarations/all-right-of-first--35a1c1a80008c56ef086a37d.md) | 182 | `result-track:35a1c1a80008c56ef086a37d798cd9038dbfb2bd36333385fbf47dfb9944a79f` |
| 16 | `def` | [liftSelection](../../../../../mathematics/Algebra/LinearAlgebra/SignedMinorElimination/Variant72e8569514d3d6e73d2d6849f4ff6c2bbd0876620cb38029155e99d9cf8423a6.lean/declarations/liftselection--9d1dc7b4683b859064770350.md) | 190 | `declaration-track:9d1dc7b4683b859064770350e3ed8206fead7def49a413e5ce1cb1e0b4d84aa6` |
| 17 | `def` | [decodeSelection](../../../../../mathematics/Algebra/LinearAlgebra/SignedMinorElimination/Variant72e8569514d3d6e73d2d6849f4ff6c2bbd0876620cb38029155e99d9cf8423a6.lean/declarations/decodeselection--fc8681ff75b8febf673e68be.md) | 195 | `declaration-track:fc8681ff75b8febf673e68be426209550bdfc1f0f2b0f9be5e13b7e6f9cec0f2` |
| 18 | `theorem` | [first_column_pattern](../../../../../mathematics/Algebra/LinearAlgebra/SignedMinorElimination/Variant72e8569514d3d6e73d2d6849f4ff6c2bbd0876620cb38029155e99d9cf8423a6.lean/declarations/first-column-pattern--418f202c6a82e8895387c90e.md) | 203 | `result-track:418f202c6a82e8895387c90e6c183500257929ce3357ab96f5a6d0d3e2c5ad64` |
| 19 | `theorem` | [delete_first_submatrix](../../../../../mathematics/Algebra/LinearAlgebra/SignedMinorElimination/Variant72e8569514d3d6e73d2d6849f4ff6c2bbd0876620cb38029155e99d9cf8423a6.lean/declarations/delete-first-submatrix--e66c187b24b8fddaa8055810.md) | 223 | `result-track:e66c187b24b8fddaa805581014721f793781a2cbb280807a3025dc4e24ed3b96` |
| 20 | `theorem` | [augment_minor_eq_decoded](../../../../../mathematics/Algebra/LinearAlgebra/SignedMinorElimination/Variant72e8569514d3d6e73d2d6849f4ff6c2bbd0876620cb38029155e99d9cf8423a6.lean/declarations/augment-minor-eq-decoded--09497aefc89b7cd667fe72d9.md) | 273 | `result-track:09497aefc89b7cd667fe72d98e050f9d43e63174449b6b3d3a9fc4bb1c92470a` |
| 21 | `theorem` | [frame_minor_eq_decoded](../../../../../mathematics/Algebra/LinearAlgebra/SignedMinorElimination/Variant72e8569514d3d6e73d2d6849f4ff6c2bbd0876620cb38029155e99d9cf8423a6.lean/declarations/frame-minor-eq-decoded--0fd866cad11a4a66dea479d8.md) | 304 | `result-track:0fd866cad11a4a66dea479d8944079d56afb4fe9ee8f8dda25d72091be8b8bb8` |
| 22 | `theorem` | [frame_nonnegative_of_source](../../../../../mathematics/Algebra/LinearAlgebra/SignedMinorElimination/Variant72e8569514d3d6e73d2d6849f4ff6c2bbd0876620cb38029155e99d9cf8423a6.lean/declarations/frame-nonnegative-of-source--72055a4bd48c779fb5098c52.md) | 311 | `result-track:72055a4bd48c779fb5098c5276ec816de279e5915aad342f97c749cb5ee829e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
