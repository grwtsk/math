# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Category.Variante99efb0a955f73cd9901bff086ae9b9ab12dbd23f3d0e049d9d062849d393504

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "46b6dcce71fa2500742140fb3ff12b415e2c0b68",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variante99efb0a955f73cd9901bff086ae9b9ab12dbd23f3d0e049d9d062849d393504.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variante99efb0a955f73cd9901bff086ae9b9ab12dbd23f3d0e049d9d062849d393504.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variante99efb0a955f73cd9901bff086ae9b9ab12dbd23f3d0e049d9d062849d393504.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `46b6dcce71fa2500742140fb3ff12b415e2c0b68`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variante99efb0a955f73cd9901bff086ae9b9ab12dbd23f3d0e049d9d062849d393504.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variante99efb0a955f73cd9901bff086ae9b9ab12dbd23f3d0e049d9d062849d393504.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.NatTrans` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Iso` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Functor.category](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variante99efb0a955f73cd9901bff086ae9b9ab12dbd23f3d0e049d9d062849d393504.lean/declarations/functor-category--69938e1bc1ea85557dd138e8.md) | 58 | `declaration-track:69938e1bc1ea85557dd138e8daacb15017e36d9a50d7b2d38b7c9ee27619e554` |
| 2 | `theorem` | [ext'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variante99efb0a955f73cd9901bff086ae9b9ab12dbd23f3d0e049d9d062849d393504.lean/declarations/ext--989e1414065fdd676eb62e06.md) | 66 | `result-track:989e1414065fdd676eb62e06f25d03b1f6adb4927e1616a3c5a3fcedfcec8091` |
| 3 | `theorem` | [vcomp_eq_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variante99efb0a955f73cd9901bff086ae9b9ab12dbd23f3d0e049d9d062849d393504.lean/declarations/vcomp-eq-comp--b4f8ef4a759738a5052bff0f.md) | 69 | `result-track:b4f8ef4a759738a5052bff0f705979db5c301428325642460a24e652fb54558b` |
| 4 | `theorem` | [vcomp_app'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variante99efb0a955f73cd9901bff086ae9b9ab12dbd23f3d0e049d9d062849d393504.lean/declarations/vcomp-app--721bb34d70e62a85e971c5b7.md) | 71 | `result-track:721bb34d70e62a85e971c5b7df5dab66cfd4a25bf2b8541fc6fe9d99e07ba32e` |
| 5 | `theorem` | [congr_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variante99efb0a955f73cd9901bff086ae9b9ab12dbd23f3d0e049d9d062849d393504.lean/declarations/congr-app--193aef6dd9d591f1da5d3d0f.md) | 73 | `result-track:193aef6dd9d591f1da5d3d0fcf56daed8c42a61793828c180fce8dfd8f6829c0` |
| 6 | `theorem` | [id_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variante99efb0a955f73cd9901bff086ae9b9ab12dbd23f3d0e049d9d062849d393504.lean/declarations/id-app--8044144d956c9f4a54c2fb37.md) | 76 | `result-track:8044144d956c9f4a54c2fb3718009aa3adb0bc9768470f10a5aee44cea9b8267` |
| 7 | `theorem` | [comp_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variante99efb0a955f73cd9901bff086ae9b9ab12dbd23f3d0e049d9d062849d393504.lean/declarations/comp-app--221991fecda09f1a7b023549.md) | 79 | `result-track:221991fecda09f1a7b023549d174b31a45d4861b09dbd994ef915a06828d2334` |
| 8 | `theorem` | [app_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variante99efb0a955f73cd9901bff086ae9b9ab12dbd23f3d0e049d9d062849d393504.lean/declarations/app-naturality--de2967d319db3e6cbad92a1d.md) | 85 | `result-track:de2967d319db3e6cbad92a1d14e8ee08ba8cbecb8b34c1b791c035f6e88e8c57` |
| 9 | `theorem` | [naturality_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variante99efb0a955f73cd9901bff086ae9b9ab12dbd23f3d0e049d9d062849d393504.lean/declarations/naturality-app--8c853c4983fc50e635723f5f.md) | 90 | `result-track:8c853c4983fc50e635723f5f2b9727b76ddc8732997e5db7556cb951562e9fd6` |
| 10 | `theorem` | [naturality_app_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variante99efb0a955f73cd9901bff086ae9b9ab12dbd23f3d0e049d9d062849d393504.lean/declarations/naturality-app-app--b18e260d05279962e75092e2.md) | 95 | `result-track:b18e260d05279962e75092e21ab13b8ae70901e66b5544ca4b1c4a12bfc5a553` |
| 11 | `theorem` | [mono_of_mono_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variante99efb0a955f73cd9901bff086ae9b9ab12dbd23f3d0e049d9d062849d393504.lean/declarations/mono-of-mono-app--4d17e6413557398d18818c02.md) | 102 | `result-track:4d17e6413557398d18818c0233bc0b2a591eef0eaef7aca01a8c931c1fbbb06e` |
| 12 | `theorem` | [epi_of_epi_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variante99efb0a955f73cd9901bff086ae9b9ab12dbd23f3d0e049d9d062849d393504.lean/declarations/epi-of-epi-app--74df7a158ee2ce57bc5c1e0f.md) | 108 | `result-track:74df7a158ee2ce57bc5c1e0fad03a516d6d5c995b88b7247516d84a70e63c5a9` |
| 13 | `lemma` | [id_comm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variante99efb0a955f73cd9901bff086ae9b9ab12dbd23f3d0e049d9d062849d393504.lean/declarations/id-comm--97cc2b2ba69087d0bde99ca1.md) | 114 | `result-track:97cc2b2ba69087d0bde99ca144479cee301c333cc0512150c245f4a451a8df0d` |
| 14 | `def` | [hcomp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variante99efb0a955f73cd9901bff086ae9b9ab12dbd23f3d0e049d9d062849d393504.lean/declarations/hcomp--9c649f2ddb1804aa9b3808b6.md) | 120 | `declaration-track:9c649f2ddb1804aa9b3808b6ed025e551c3bbb5eec0e934b888fb100a6e7aa35` |
| 15 | `theorem` | [hcomp_id_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variante99efb0a955f73cd9901bff086ae9b9ab12dbd23f3d0e049d9d062849d393504.lean/declarations/hcomp-id-app--8d2a590ba9dff6affbcbb358.md) | 129 | `result-track:8d2a590ba9dff6affbcbb358657b2bdad6902480f986d8ff2ecab5f18d07d299` |
| 16 | `theorem` | [id_hcomp_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variante99efb0a955f73cd9901bff086ae9b9ab12dbd23f3d0e049d9d062849d393504.lean/declarations/id-hcomp-app--8ed75616644704ec299994f6.md) | 132 | `result-track:8ed75616644704ec299994f66868387a93dad9e8029ed5cdbfb674c05f01b613` |
| 17 | `theorem` | [exchange](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variante99efb0a955f73cd9901bff086ae9b9ab12dbd23f3d0e049d9d062849d393504.lean/declarations/exchange--58284fa4677a5de6c2bbcff3.md) | 138 | `result-track:58284fa4677a5de6c2bbcff3c1609f592f46a17a94997c12c88ee0f533f76b6c` |
| 18 | `def` | [flip](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variante99efb0a955f73cd9901bff086ae9b9ab12dbd23f3d0e049d9d062849d393504.lean/declarations/flip--e4c4a9f3dbfcfb9bb7cab8ca.md) | 150 | `declaration-track:e4c4a9f3dbfcfb9bb7cab8ca2ab065349dd07b5d4ce9aa8c68a6134378574463` |
| 19 | `def` | [leftUnitor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variante99efb0a955f73cd9901bff086ae9b9ab12dbd23f3d0e049d9d062849d393504.lean/declarations/leftunitor--2e348d7144f86f8492ab74d7.md) | 160 | `declaration-track:2e348d7144f86f8492ab74d75cc6e34ae76fe030fa4ecdbac36b21f5ecfda63c` |
| 20 | `def` | [rightUnitor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variante99efb0a955f73cd9901bff086ae9b9ab12dbd23f3d0e049d9d062849d393504.lean/declarations/rightunitor--e936fa1b5fdb97861e4a8ab8.md) | 168 | `declaration-track:e936fa1b5fdb97861e4a8ab819f791aa204484272e6243f9a1fcaf1231937b16` |
| 21 | `def` | [associator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variante99efb0a955f73cd9901bff086ae9b9ab12dbd23f3d0e049d9d062849d393504.lean/declarations/associator--8c4858862767eebc43340f09.md) | 179 | `declaration-track:8c4858862767eebc43340f09066a55c40e1aef46f23188255444e8b057a4f0eb` |
| 22 | `theorem` | [assoc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variante99efb0a955f73cd9901bff086ae9b9ab12dbd23f3d0e049d9d062849d393504.lean/declarations/assoc--4b2d36a907329ddd4ac33ec3.md) | 184 | `result-track:4b2d36a907329ddd4ac33ec3b8935c1bbd2b616538299b3fa820ba3af6bc0bf5` |
| 23 | `def` | [flipFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variante99efb0a955f73cd9901bff086ae9b9ab12dbd23f3d0e049d9d062849d393504.lean/declarations/flipfunctor--7229d951199a9b5776786a3e.md) | 192 | `declaration-track:7229d951199a9b5776786a3eede3247617a4513cd090bc75f5160209375f54bc` |
| 24 | `theorem` | [map_hom_inv_id_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variante99efb0a955f73cd9901bff086ae9b9ab12dbd23f3d0e049d9d062849d393504.lean/declarations/map-hom-inv-id-app--a1f6858aab8ec20c77c85e1e.md) | 204 | `result-track:a1f6858aab8ec20c77c85e1e4f32c7f1604d61632e7cf1f8ab098ecdbd0164bb` |
| 25 | `theorem` | [map_inv_hom_id_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variante99efb0a955f73cd9901bff086ae9b9ab12dbd23f3d0e049d9d062849d393504.lean/declarations/map-inv-hom-id-app--655a48cd4da19f872e431022.md) | 209 | `result-track:655a48cd4da19f872e4310224f1df42c883d95874c281ecfd34ea0ec9e84dabe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
