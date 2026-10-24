# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Varianteb425da797e3c0b84f194001b1464f74180de8ebcf50c556cb9dc1dc413cd514

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f336e41e98c3168d53b422a184db398db2ea8d1b",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteb425da797e3c0b84f194001b1464f74180de8ebcf50c556cb9dc1dc413cd514.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteb425da797e3c0b84f194001b1464f74180de8ebcf50c556cb9dc1dc413cd514.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteb425da797e3c0b84f194001b1464f74180de8ebcf50c556cb9dc1dc413cd514.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f336e41e98c3168d53b422a184db398db2ea8d1b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteb425da797e3c0b84f194001b1464f74180de8ebcf50c556cb9dc1dc413cd514.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteb425da797e3c0b84f194001b1464f74180de8ebcf50c556cb9dc1dc413cd514.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.RegularMono` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Shift.Opposite` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Shift.Pullback` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [OppositeShiftAux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteb425da797e3c0b84f194001b1464f74180de8ebcf50c556cb9dc1dc413cd514.lean/declarations/oppositeshiftaux--a3f6fc3bc70e230a02057357.md) | 52 | `declaration-track:a3f6fc3bc70e230a02057357bd7589b3b48d72771af069371e1424ac8a8d9af6` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteb425da797e3c0b84f194001b1464f74180de8ebcf50c556cb9dc1dc413cd514.lean/declarations/instance--16aaf77e1007b906b0f49ca3.md) | 58 | `declaration-track:16aaf77e1007b906b0f49ca37a44e943f18b9e944e863047cf4a59dbabda6022` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteb425da797e3c0b84f194001b1464f74180de8ebcf50c556cb9dc1dc413cd514.lean/declarations/instance--84feacc2326b2d626ce29723.md) | 61 | `declaration-track:84feacc2326b2d626ce297230ee1cfa66a0545b697d2128c800391bf953d8d2f` |
| 4 | `def` | [shiftFunctorOpIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteb425da797e3c0b84f194001b1464f74180de8ebcf50c556cb9dc1dc413cd514.lean/declarations/shiftfunctoropiso--7a64f725e66ab2e5db015789.md) | 71 | `declaration-track:7a64f725e66ab2e5db01578962fc6b9ab49011cc0ed5409a564ab3b5fe43e0f2` |
| 5 | `lemma` | [shiftFunctorZero_op_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteb425da797e3c0b84f194001b1464f74180de8ebcf50c556cb9dc1dc413cd514.lean/declarations/shiftfunctorzero-op-hom-app--d316e021e6bd72e23ac546c8.md) | 78 | `result-track:d316e021e6bd72e23ac546c800d32836f16944767975d37844f6d625c83c1e41` |
| 6 | `lemma` | [shiftFunctorZero_op_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteb425da797e3c0b84f194001b1464f74180de8ebcf50c556cb9dc1dc413cd514.lean/declarations/shiftfunctorzero-op-inv-app--1f90881f8bc6383403ee7107.md) | 84 | `result-track:1f90881f8bc6383403ee7107dfebc5ce63240f1a81681bd90e89411a80543107` |
| 7 | `lemma` | [shiftFunctorAdd'_op_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteb425da797e3c0b84f194001b1464f74180de8ebcf50c556cb9dc1dc413cd514.lean/declarations/shiftfunctoradd-op-hom-app--806e2867896d3ed5b30d3d92.md) | 92 | `result-track:806e2867896d3ed5b30d3d92068eca0af6da12c2d7594538850f8ee0001eba75` |
| 8 | `lemma` | [shiftFunctorAdd'_op_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteb425da797e3c0b84f194001b1464f74180de8ebcf50c556cb9dc1dc413cd514.lean/declarations/shiftfunctoradd-op-inv-app--dfe2f3835162a988c8f23e1d.md) | 104 | `result-track:dfe2f3835162a988c8f23e1dbc3d5c77add51f8ff2f64539089dc7bdb312eda5` |
| 9 | `lemma` | [shiftFunctor_op_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteb425da797e3c0b84f194001b1464f74180de8ebcf50c556cb9dc1dc413cd514.lean/declarations/shiftfunctor-op-map--f6c4bef44efcad62c287ff7b.md) | 117 | `result-track:f6c4bef44efcad62c287ff7bef596b9494edba0e86ae766ecdeb6b6ff94394b2` |
| 10 | `def` | [opShiftFunctorEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteb425da797e3c0b84f194001b1464f74180de8ebcf50c556cb9dc1dc413cd514.lean/declarations/opshiftfunctorequivalence--683f8185dfc427217579b390.md) | 128 | `declaration-track:683f8185dfc427217579b390dedbc00f73bc5e82eeeebb327842277c9c54d2c4` |
| 11 | `lemma` | [opShiftFunctorEquivalence_unitIso_hom_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteb425da797e3c0b84f194001b1464f74180de8ebcf50c556cb9dc1dc413cd514.lean/declarations/opshiftfunctorequivalence-unitiso-hom-naturality--99da0bce216af2b582fc9e41.md) | 146 | `result-track:99da0bce216af2b582fc9e415cc6b24aac2400853d96ff41e66af277dcc9eb30` |
| 12 | `lemma` | [opShiftFunctorEquivalence_unitIso_inv_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteb425da797e3c0b84f194001b1464f74180de8ebcf50c556cb9dc1dc413cd514.lean/declarations/opshiftfunctorequivalence-unitiso-inv-naturality--4cd1f7bc6ea1c411abd7b319.md) | 152 | `result-track:4cd1f7bc6ea1c411abd7b3193b5726411ea2df1338d0fdfcacf7a27680ea837c` |
| 13 | `lemma` | [opShiftFunctorEquivalence_counitIso_hom_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteb425da797e3c0b84f194001b1464f74180de8ebcf50c556cb9dc1dc413cd514.lean/declarations/opshiftfunctorequivalence-counitiso-hom-naturality--429e9316cf873c00e0dbd7e8.md) | 158 | `result-track:429e9316cf873c00e0dbd7e8d615779c7e5df78fb57b14add0bb042bcd45b7e1` |
| 14 | `lemma` | [opShiftFunctorEquivalence_counitIso_inv_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteb425da797e3c0b84f194001b1464f74180de8ebcf50c556cb9dc1dc413cd514.lean/declarations/opshiftfunctorequivalence-counitiso-inv-naturality--4f9f8f4f815b416e1168d3ac.md) | 164 | `result-track:4f9f8f4f815b416e1168d3ac5a7eaac6b631f58ddbc9b228b4f3502180f87edb` |
| 15 | `lemma` | [opShiftFunctorEquivalence_zero_unitIso_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteb425da797e3c0b84f194001b1464f74180de8ebcf50c556cb9dc1dc413cd514.lean/declarations/opshiftfunctorequivalence-zero-unitiso-hom-app--bdd66e3ec8907abdc587b379.md) | 169 | `result-track:bdd66e3ec8907abdc587b3791440fa94295294e3b6ae3eaa5d25b31b2f460ca5` |
| 16 | `lemma` | [opShiftFunctorEquivalence_zero_unitIso_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteb425da797e3c0b84f194001b1464f74180de8ebcf50c556cb9dc1dc413cd514.lean/declarations/opshiftfunctorequivalence-zero-unitiso-inv-app--cd6398f2b798aa1bc8f47e83.md) | 178 | `result-track:cd6398f2b798aa1bc8f47e83b0496fc6afec45b13a4a831cca39cb5f90715c8d` |
| 17 | `lemma` | [opShiftFunctorEquivalence_unitIso_hom_app_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteb425da797e3c0b84f194001b1464f74180de8ebcf50c556cb9dc1dc413cd514.lean/declarations/opshiftfunctorequivalence-unitiso-hom-app-eq--2ed4b0742baa331acf86c4c4.md) | 187 | `result-track:2ed4b0742baa331acf86c4c4364fe61609c14be20f64699520588a1c35232ee6` |
| 18 | `lemma` | [opShiftFunctorEquivalence_unitIso_inv_app_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteb425da797e3c0b84f194001b1464f74180de8ebcf50c556cb9dc1dc413cd514.lean/declarations/opshiftfunctorequivalence-unitiso-inv-app-eq--f6bdc44874ff415a175327c7.md) | 206 | `result-track:f6bdc44874ff415a175327c7df27ad53af60bc0241a22ce633fc3553337f1b7f` |
| 19 | `lemma` | [shift_unop_opShiftFunctorEquivalence_counitIso_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteb425da797e3c0b84f194001b1464f74180de8ebcf50c556cb9dc1dc413cd514.lean/declarations/shift-unop-opshiftfunctorequivalence-counitiso-inv-app--c97fb402bc82b080bc7fd814.md) | 221 | `result-track:c97fb402bc82b080bc7fd81412c0ab78bd34988e6fc8e79eb5dd3ee6361d6f6e` |
| 20 | `lemma` | [shift_unop_opShiftFunctorEquivalence_counitIso_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteb425da797e3c0b84f194001b1464f74180de8ebcf50c556cb9dc1dc413cd514.lean/declarations/shift-unop-opshiftfunctorequivalence-counitiso-hom-app--76f2fe118bedaeb16dfeadd0.md) | 226 | `result-track:76f2fe118bedaeb16dfeadd017b864fc047e17c66a2c5f37438b88a5ebad9533` |
| 21 | `lemma` | [opShiftFunctorEquivalence_counitIso_inv_app_shift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteb425da797e3c0b84f194001b1464f74180de8ebcf50c556cb9dc1dc413cd514.lean/declarations/opshiftfunctorequivalence-counitiso-inv-app-shift--4b2255e7aca2ff1dbbfeaa84.md) | 231 | `result-track:4b2255e7aca2ff1dbbfeaa84ead66b5bb70c9ad8d516da08eae6071ff4ed1cc1` |
| 22 | `lemma` | [opShiftFunctorEquivalence_counitIso_hom_app_shift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteb425da797e3c0b84f194001b1464f74180de8ebcf50c556cb9dc1dc413cd514.lean/declarations/opshiftfunctorequivalence-counitiso-hom-app-shift--f2c5fb2619a3d7d5c5ea1ce1.md) | 236 | `result-track:f2c5fb2619a3d7d5c5ea1ce16deaa2eb858438ca1f889fc9b2010789a4bf42af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
