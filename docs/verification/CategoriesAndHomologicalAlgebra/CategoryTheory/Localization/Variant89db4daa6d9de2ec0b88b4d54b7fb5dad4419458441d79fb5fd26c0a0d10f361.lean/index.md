# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Localization.Variant89db4daa6d9de2ec0b88b4d54b7fb5dad4419458441d79fb5fd26c0a0d10f361

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "96a076cca26490ae73cb50f7a17b11ca11eb3dcc",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant89db4daa6d9de2ec0b88b4d54b7fb5dad4419458441d79fb5fd26c0a0d10f361.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant89db4daa6d9de2ec0b88b4d54b7fb5dad4419458441d79fb5fd26c0a0d10f361.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant89db4daa6d9de2ec0b88b4d54b7fb5dad4419458441d79fb5fd26c0a0d10f361.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `96a076cca26490ae73cb50f7a17b11ca11eb3dcc`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant89db4daa6d9de2ec0b88b4d54b7fb5dad4419458441d79fb5fd26c0a0d10f361.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant89db4daa6d9de2ec0b88b4d54b7fb5dad4419458441d79fb5fd26c0a0d10f361.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Shift.Induced` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Localization.HasLocalization` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Localization.LocalizerMorphism` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsCompatibleWithShift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant89db4daa6d9de2ec0b88b4d54b7fb5dad4419458441d79fb5fd26c0a0d10f361.lean/declarations/iscompatiblewithshift--21983e5a2d292d1cd6168643.md) | 35 | `declaration-track:21983e5a2d292d1cd61686430dc6cf889011bcd8fdf958c7b96ddf5edd7961d7` |
| 2 | `lemma` | [iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant89db4daa6d9de2ec0b88b4d54b7fb5dad4419458441d79fb5fd26c0a0d10f361.lean/declarations/iff--ea5ccfedb0915fb66398a1a8.md) | 46 | `result-track:ea5ccfedb0915fb66398a1a8b1ca49012915a9f26b73587f58d1d65e5981b493` |
| 3 | `lemma` | [shiftFunctor_comp_inverts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant89db4daa6d9de2ec0b88b4d54b7fb5dad4419458441d79fb5fd26c0a0d10f361.lean/declarations/shiftfunctor-comp-inverts--45184736227bf03084a65719.md) | 50 | `result-track:45184736227bf03084a65719bfcde9751f350e62ffd23a05190823b714baa9cc` |
| 4 | `lemma` | [shift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant89db4daa6d9de2ec0b88b4d54b7fb5dad4419458441d79fb5fd26c0a0d10f361.lean/declarations/shift--e4588f7e9389d16abaaf065a.md) | 57 | `result-track:e4588f7e9389d16abaaf065a11cc747f77b739319bcd0ecdfe9b48abdfbe2105` |
| 5 | `abbrev` | [shiftLocalizerMorphism](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant89db4daa6d9de2ec0b88b4d54b7fb5dad4419458441d79fb5fd26c0a0d10f361.lean/declarations/shiftlocalizermorphism--aa1c82a593bf15fcea30dc99.md) | 63 | `declaration-track:aa1c82a593bf15fcea30dc993618705fcfbf613891b233e573bcc31f43824360` |
| 6 | `def` | [HasShift.localized](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant89db4daa6d9de2ec0b88b4d54b7fb5dad4419458441d79fb5fd26c0a0d10f361.lean/declarations/hasshift-localized--7c63ef4dfd003ccd20740549.md) | 75 | `declaration-track:7c63ef4dfd003ccd207405491b82588e720c1ba558399436287a0109ce7d287a` |
| 7 | `def` | [Functor.CommShift.localized](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant89db4daa6d9de2ec0b88b4d54b7fb5dad4419458441d79fb5fd26c0a0d10f361.lean/declarations/functor-commshift-localized--7d010f0c5b6bb702093c4a5a.md) | 85 | `declaration-track:7d010f0c5b6bb702093c4a5a744ae0c8c17389e7dd094f404ec68acdc0ec5e01` |
| 8 | `instance` | [HasShift.localization](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant89db4daa6d9de2ec0b88b4d54b7fb5dad4419458441d79fb5fd26c0a0d10f361.lean/declarations/hasshift-localization--2de96d512832f9d31104e303.md) | 94 | `declaration-track:2de96d512832f9d31104e3030d436870208ad91842b82e6163eba678c4f8d9a3` |
| 9 | `instance` | [MorphismProperty.commShift_Q](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant89db4daa6d9de2ec0b88b4d54b7fb5dad4419458441d79fb5fd26c0a0d10f361.lean/declarations/morphismproperty-commshift-q--5e31613a80dafd6eb6032a10.md) | 99 | `declaration-track:5e31613a80dafd6eb6032a10cfd698461f3400e082fddbe056d28105e21da9b7` |
| 10 | `instance` | [HasShift.localization'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant89db4daa6d9de2ec0b88b4d54b7fb5dad4419458441d79fb5fd26c0a0d10f361.lean/declarations/hasshift-localization--c90be6329ef80c26973ea83d.md) | 108 | `declaration-track:c90be6329ef80c26973ea83d4ff936208b0b3790f1744a22ec423eaba3b62f4f` |
| 11 | `instance` | [MorphismProperty.commShift_Q'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant89db4daa6d9de2ec0b88b4d54b7fb5dad4419458441d79fb5fd26c0a0d10f361.lean/declarations/morphismproperty-commshift-q--97c59650f13496fe819da232.md) | 113 | `declaration-track:97c59650f13496fe819da2329360e9ac7da9a66dd210dbafacfb487b837015d1` |
| 12 | `def` | [iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant89db4daa6d9de2ec0b88b4d54b7fb5dad4419458441d79fb5fd26c0a0d10f361.lean/declarations/iso--df940aadbef59fd8e4a3d4ea.md) | 135 | `declaration-track:df940aadbef59fd8e4a3d4ea9aacd37ac22f69a50a8cf97ae2aa6132cca93e4d` |
| 13 | `lemma` | [iso_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant89db4daa6d9de2ec0b88b4d54b7fb5dad4419458441d79fb5fd26c0a0d10f361.lean/declarations/iso-hom-app--9d7d63b13879296f77a49706.md) | 147 | `result-track:9d7d63b13879296f77a497068e32c1d121eea8d7d4718908056bf7672f971270` |
| 14 | `lemma` | [iso_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant89db4daa6d9de2ec0b88b4d54b7fb5dad4419458441d79fb5fd26c0a0d10f361.lean/declarations/iso-inv-app--d319888f8d26ac726d877494.md) | 156 | `result-track:d319888f8d26ac726d87749484833880d69011ce9a5e6f111ee1713e6153983d` |
| 15 | `def` | [commShiftOfLocalization](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant89db4daa6d9de2ec0b88b4d54b7fb5dad4419458441d79fb5fd26c0a0d10f361.lean/declarations/commshiftoflocalization--8393c8947f9fafa9aa6aad0e.md) | 169 | `declaration-track:8393c8947f9fafa9aa6aad0e65a52fab206197068dfb0dd8851787cf40ec5e36` |
| 16 | `lemma` | [commShiftOfLocalization_iso_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant89db4daa6d9de2ec0b88b4d54b7fb5dad4419458441d79fb5fd26c0a0d10f361.lean/declarations/commshiftoflocalization-iso-hom-app--29824c0114a87a43a002f9ec.md) | 211 | `result-track:29824c0114a87a43a002f9ec123c770a94ca68493878eecc655413abf40b5a83` |
| 17 | `lemma` | [commShiftOfLocalization_iso_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant89db4daa6d9de2ec0b88b4d54b7fb5dad4419458441d79fb5fd26c0a0d10f361.lean/declarations/commshiftoflocalization-iso-inv-app--127c9a1c661473e0b0328ecc.md) | 219 | `result-track:127c9a1c661473e0b0328ecc84611cb9197ec94772f9152af5c861377fe521eb` |
| 18 | `instance` | [NatTrans.commShift_iso_hom_of_localization](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant89db4daa6d9de2ec0b88b4d54b7fb5dad4419458441d79fb5fd26c0a0d10f361.lean/declarations/nattrans-commshift-iso-hom-of-localization--b3024bcede9c1762d02f30a0.md) | 229 | `declaration-track:b3024bcede9c1762d02f30a04fa0ec0c36b7e55f2c00ba562bf9f358dbc0eb2a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
