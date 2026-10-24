# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.Double.Variant5c570622f3d6e3790a4bbe8f1a42175a1fd82452dcad029ed3a0ce9a7b54828d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f3d61640d9c9b496636e6e05301bb2f918d50749",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Double/Variant5c570622f3d6e3790a4bbe8f1a42175a1fd82452dcad029ed3a0ce9a7b54828d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Double/Variant5c570622f3d6e3790a4bbe8f1a42175a1fd82452dcad029ed3a0ce9a7b54828d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Double/Variant5c570622f3d6e3790a4bbe8f1a42175a1fd82452dcad029ed3a0ce9a7b54828d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f3d61640d9c9b496636e6e05301bb2f918d50749`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Double/Variant5c570622f3d6e3790a4bbe8f1a42175a1fd82452dcad029ed3a0ce9a7b54828d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Double/Variant5c570622f3d6e3790a4bbe8f1a42175a1fd82452dcad029ed3a0ce9a7b54828d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.HasNoLoop` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.Single` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Yoneda` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [double](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Double/Variant5c570622f3d6e3790a4bbe8f1a42175a1fd82452dcad029ed3a0ce9a7b54828d.lean/declarations/double--f5afd0ed1476cd3df57949e8.md) | 35 | `declaration-track:f5afd0ed1476cd3df57949e842b9ddf8067257a3f8435b98a33242d70db1b6f1` |
| 2 | `lemma` | [isZero_double_X](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Double/Variant5c570622f3d6e3790a4bbe8f1a42175a1fd82452dcad029ed3a0ce9a7b54828d.lean/declarations/iszero-double-x--c7b149e629f7347ae58ad950.md) | 56 | `result-track:c7b149e629f7347ae58ad9504626efdfeb5178ba857b80067adcb70ea7adbf06` |
| 3 | `def` | [doubleXIso₀](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Double/Variant5c570622f3d6e3790a4bbe8f1a42175a1fd82452dcad029ed3a0ce9a7b54828d.lean/declarations/doublexiso--e638e95790ebf106f8669dd7.md) | 63 | `declaration-track:e638e95790ebf106f8669dd7193a20643ca9742be4ef86a443bece4ca2726f2a` |
| 4 | `def` | [doubleXIso₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Double/Variant5c570622f3d6e3790a4bbe8f1a42175a1fd82452dcad029ed3a0ce9a7b54828d.lean/declarations/doublexiso--6e72956e716971f069363dad.md) | 67 | `declaration-track:6e72956e716971f069363dadbe188393fca9defecfa06145d94ec29f5a1a1752` |
| 5 | `lemma` | [double_d](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Double/Variant5c570622f3d6e3790a4bbe8f1a42175a1fd82452dcad029ed3a0ce9a7b54828d.lean/declarations/double-d--bf2069a5173451ecb5d082fb.md) | 72 | `result-track:bf2069a5173451ecb5d082fbbaa630033383764a96998ae61a582754796ae670` |
| 6 | `lemma` | [double_d_eq_zero₀](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Double/Variant5c570622f3d6e3790a4bbe8f1a42175a1fd82452dcad029ed3a0ce9a7b54828d.lean/declarations/double-d-eq-zero--79a52fc0187d55b93744776e.md) | 77 | `result-track:79a52fc0187d55b93744776e5ea8ad2492d737b26d5d20d266f38a3d0a4c0d17` |
| 7 | `lemma` | [double_d_eq_zero₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Double/Variant5c570622f3d6e3790a4bbe8f1a42175a1fd82452dcad029ed3a0ce9a7b54828d.lean/declarations/double-d-eq-zero--f88fa3a2535e213be0db52e2.md) | 81 | `result-track:f88fa3a2535e213be0db52e2fa13cdaf8b4efc69f5e5b6f62d383943c4488adb` |
| 8 | `lemma` | [from_double_hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Double/Variant5c570622f3d6e3790a4bbe8f1a42175a1fd82452dcad029ed3a0ce9a7b54828d.lean/declarations/from-double-hom-ext--c09ca2703a148d9b79f13b7c.md) | 87 | `result-track:c09ca2703a148d9b79f13b7c51491b5b13f55bac07ac2c992c6da4edaed79c4a` |
| 9 | `lemma` | [to_double_hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Double/Variant5c570622f3d6e3790a4bbe8f1a42175a1fd82452dcad029ed3a0ce9a7b54828d.lean/declarations/to-double-hom-ext--d4a5727d0e4cc7dc1259830f.md) | 97 | `result-track:d4a5727d0e4cc7dc1259830f904ffa5cc3d0e0d75f9339638b4d9d99bd6449cc` |
| 10 | `def` | [mkHomFromDouble](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Double/Variant5c570622f3d6e3790a4bbe8f1a42175a1fd82452dcad029ed3a0ce9a7b54828d.lean/declarations/mkhomfromdouble--5aef43cbe71dc079300517e4.md) | 113 | `declaration-track:5aef43cbe71dc079300517e444d3efd4e190ffc572eabf3a019963cb1dbadf3c` |
| 11 | `lemma` | [mkHomFromDouble_f₀](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Double/Variant5c570622f3d6e3790a4bbe8f1a42175a1fd82452dcad029ed3a0ce9a7b54828d.lean/declarations/mkhomfromdouble-f--9f9976fcbb54c58f3ba57c8b.md) | 136 | `result-track:9f9976fcbb54c58f3ba57c8ba55cf9e5fb14792a3283ee94a0a608a018bf914d` |
| 12 | `lemma` | [mkHomFromDouble_f₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Double/Variant5c570622f3d6e3790a4bbe8f1a42175a1fd82452dcad029ed3a0ce9a7b54828d.lean/declarations/mkhomfromdouble-f--d3edfacc4a608b10309de734.md) | 143 | `result-track:d3edfacc4a608b10309de73459d23aeb008e75ff60ad3db84304577c6bce29c3` |
| 13 | `def` | [evalCompCoyonedaCorepresentableByDoubleId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Double/Variant5c570622f3d6e3790a4bbe8f1a42175a1fd82452dcad029ed3a0ce9a7b54828d.lean/declarations/evalcompcoyonedacorepresentablebydoubleid--4c38b0996bbee9c9e0749075.md) | 155 | `declaration-track:4c38b0996bbee9c9e074907503b0349ba4704250daa3730fe1c0dc33eb262998` |
| 14 | `def` | [evalCompCoyonedaCorepresentableBySingle](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Double/Variant5c570622f3d6e3790a4bbe8f1a42175a1fd82452dcad029ed3a0ce9a7b54828d.lean/declarations/evalcompcoyonedacorepresentablebysingle--5d3553000c7fa124970dad02.md) | 175 | `declaration-track:5d3553000c7fa124970dad0282da7d20da6db8d593c9685d40fd596dec87eb62` |
| 15 | `def` | [evalCompCoyonedaCorepresentative](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Double/Variant5c570622f3d6e3790a4bbe8f1a42175a1fd82452dcad029ed3a0ce9a7b54828d.lean/declarations/evalcompcoyonedacorepresentative--286bdc78bfeafd590cf28a69.md) | 191 | `declaration-track:286bdc78bfeafd590cf28a699060af006220fdfea8e92b2fa088add6f71167c7` |
| 16 | `def` | [evalCompCoyonedaCorepresentable](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Double/Variant5c570622f3d6e3790a4bbe8f1a42175a1fd82452dcad029ed3a0ce9a7b54828d.lean/declarations/evalcompcoyonedacorepresentable--96665fae7b8fccbb1147afe1.md) | 200 | `declaration-track:96665fae7b8fccbb1147afe15ad1af82ccc109b6e6fa8e2a45e628fa99367cb2` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Double/Variant5c570622f3d6e3790a4bbe8f1a42175a1fd82452dcad029ed3a0ce9a7b54828d.lean/declarations/instance--dcff8ad4e9c544ca4850d14d.md) | 211 | `declaration-track:dcff8ad4e9c544ca4850d14da6dba639432c7c007d498442ea54841f54dfdb7b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
