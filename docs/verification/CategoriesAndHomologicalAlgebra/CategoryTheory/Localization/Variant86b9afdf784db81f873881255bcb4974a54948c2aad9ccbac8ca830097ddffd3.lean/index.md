# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Localization.Variant86b9afdf784db81f873881255bcb4974a54948c2aad9ccbac8ca830097ddffd3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b4a25de78fb9586f5ed0aed0c3b9685c04abd197",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant86b9afdf784db81f873881255bcb4974a54948c2aad9ccbac8ca830097ddffd3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant86b9afdf784db81f873881255bcb4974a54948c2aad9ccbac8ca830097ddffd3.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant86b9afdf784db81f873881255bcb4974a54948c2aad9ccbac8ca830097ddffd3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b4a25de78fb9586f5ed0aed0c3b9685c04abd197`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant86b9afdf784db81f873881255bcb4974a54948c2aad9ccbac8ca830097ddffd3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant86b9afdf784db81f873881255bcb4974a54948c2aad9ccbac8ca830097ddffd3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Shift.Induced` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Localization.HasLocalization` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Localization.LocalizerMorphism` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsCompatibleWithShift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant86b9afdf784db81f873881255bcb4974a54948c2aad9ccbac8ca830097ddffd3.lean/declarations/iscompatiblewithshift--d97103f49c52f0389c50bc1d.md) | 43 | `declaration-track:d97103f49c52f0389c50bc1dcfb914e2646d75171a6554c528c668ff4741b96f` |
| 2 | `lemma` | [iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant86b9afdf784db81f873881255bcb4974a54948c2aad9ccbac8ca830097ddffd3.lean/declarations/iff--552a002a6d3f3c9b968464e2.md) | 54 | `result-track:552a002a6d3f3c9b968464e28b33a7cfd5613955336a8dfa6f0c148bb5cf3807` |
| 3 | `lemma` | [shiftFunctor_comp_inverts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant86b9afdf784db81f873881255bcb4974a54948c2aad9ccbac8ca830097ddffd3.lean/declarations/shiftfunctor-comp-inverts--357569852e8437f5f22de15f.md) | 58 | `result-track:357569852e8437f5f22de15f9d2544f966775478632bb86c743df5e17654e76e` |
| 4 | `lemma` | [shift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant86b9afdf784db81f873881255bcb4974a54948c2aad9ccbac8ca830097ddffd3.lean/declarations/shift--653e21eefa9841d68703d6fb.md) | 65 | `result-track:653e21eefa9841d68703d6fb3a0b3ec1a788d0dd2640b074f59721f083d5aa51` |
| 5 | `abbrev` | [shiftLocalizerMorphism](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant86b9afdf784db81f873881255bcb4974a54948c2aad9ccbac8ca830097ddffd3.lean/declarations/shiftlocalizermorphism--81959f6b5b78d5791762f1d8.md) | 71 | `declaration-track:81959f6b5b78d5791762f1d8b6a377c6936c01ea75feca1436496b521491e389` |
| 6 | `def` | [HasShift.localized](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant86b9afdf784db81f873881255bcb4974a54948c2aad9ccbac8ca830097ddffd3.lean/declarations/hasshift-localized--05dbf6e9b8b33e99300f19be.md) | 83 | `declaration-track:05dbf6e9b8b33e99300f19be6f5e800969064353a16a61753e9d988dbd94cb94` |
| 7 | `def` | [Functor.CommShift.localized](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant86b9afdf784db81f873881255bcb4974a54948c2aad9ccbac8ca830097ddffd3.lean/declarations/functor-commshift-localized--4524a5c6e671217844eadb58.md) | 93 | `declaration-track:4524a5c6e671217844eadb58db7b8719bd2f68451a2ab6046604b97647e9c6be` |
| 8 | `instance` | [HasShift.localization](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant86b9afdf784db81f873881255bcb4974a54948c2aad9ccbac8ca830097ddffd3.lean/declarations/hasshift-localization--5bf03f7f71395e4a22b91c30.md) | 102 | `declaration-track:5bf03f7f71395e4a22b91c30aec1d671e717cae5d13209d6a7d19fd211ae3163` |
| 9 | `instance` | [MorphismProperty.commShift_Q](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant86b9afdf784db81f873881255bcb4974a54948c2aad9ccbac8ca830097ddffd3.lean/declarations/morphismproperty-commshift-q--339c3ff9a18bcff6d4da7c5c.md) | 107 | `declaration-track:339c3ff9a18bcff6d4da7c5c3b131432643d01ae41febdc4c9871413bc582b1b` |
| 10 | `instance` | [HasShift.localization'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant86b9afdf784db81f873881255bcb4974a54948c2aad9ccbac8ca830097ddffd3.lean/declarations/hasshift-localization--311e5e57a097b9ea3d8bb08b.md) | 116 | `declaration-track:311e5e57a097b9ea3d8bb08ba9cb8671d50fa947699fbc69767a9b4aaf042c5a` |
| 11 | `instance` | [MorphismProperty.commShift_Q'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant86b9afdf784db81f873881255bcb4974a54948c2aad9ccbac8ca830097ddffd3.lean/declarations/morphismproperty-commshift-q--a8f90bedff7462b6d9382d00.md) | 121 | `declaration-track:a8f90bedff7462b6d9382d0092f537017c7dce74edefe3d6bc9dcbd798084ec5` |
| 12 | `def` | [iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant86b9afdf784db81f873881255bcb4974a54948c2aad9ccbac8ca830097ddffd3.lean/declarations/iso--f8a5c1d08ba0a067d1bfc1a3.md) | 143 | `declaration-track:f8a5c1d08ba0a067d1bfc1a373ee4f5eddf0e4ac6b2434a482a7d056496b0571` |
| 13 | `lemma` | [iso_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant86b9afdf784db81f873881255bcb4974a54948c2aad9ccbac8ca830097ddffd3.lean/declarations/iso-hom-app--4609823b0333097b1a402f99.md) | 155 | `result-track:4609823b0333097b1a402f99f59727baf5f49131954833a4c19bc61384ca516c` |
| 14 | `lemma` | [iso_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant86b9afdf784db81f873881255bcb4974a54948c2aad9ccbac8ca830097ddffd3.lean/declarations/iso-inv-app--14e176eb7064857d46c5725e.md) | 164 | `result-track:14e176eb7064857d46c5725e4d9af7f8a37ce237f86e7f5420a8de00c38d2d0d` |
| 15 | `def` | [commShiftOfLocalization](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant86b9afdf784db81f873881255bcb4974a54948c2aad9ccbac8ca830097ddffd3.lean/declarations/commshiftoflocalization--3500690c71248b46cbf1e24f.md) | 177 | `declaration-track:3500690c71248b46cbf1e24f8fc65473c449ccd34f780398fc164d481adecb06` |
| 16 | `lemma` | [commShiftOfLocalization_iso_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant86b9afdf784db81f873881255bcb4974a54948c2aad9ccbac8ca830097ddffd3.lean/declarations/commshiftoflocalization-iso-hom-app--614cac4a0dd5e705ab3bdcf4.md) | 219 | `result-track:614cac4a0dd5e705ab3bdcf42e59779b0d2a3c19d8cddac8ebfc8b4bdc1fd051` |
| 17 | `lemma` | [commShiftOfLocalization_iso_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant86b9afdf784db81f873881255bcb4974a54948c2aad9ccbac8ca830097ddffd3.lean/declarations/commshiftoflocalization-iso-inv-app--dc6b4ac2a9b04df2f5da39d4.md) | 227 | `result-track:dc6b4ac2a9b04df2f5da39d4892d031d091ed19f4b7ac4aa75255538e9ed221f` |
| 18 | `instance` | [NatTrans.commShift_iso_hom_of_localization](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant86b9afdf784db81f873881255bcb4974a54948c2aad9ccbac8ca830097ddffd3.lean/declarations/nattrans-commshift-iso-hom-of-localization--67acd63364e1ce671d3ccc48.md) | 237 | `declaration-track:67acd63364e1ce671d3ccc48e323d8fb18773289515fc4eadc24ab665b0f93b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
