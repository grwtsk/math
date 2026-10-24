# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant1dacdc56ad8fdfea8e66b4fe8c37840e26f464271b17837df6e3dc1d6d2be5e9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b8ba9f64d56f2b6470834c02ade3c1d0ae3d4a48",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1dacdc56ad8fdfea8e66b4fe8c37840e26f464271b17837df6e3dc1d6d2be5e9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1dacdc56ad8fdfea8e66b4fe8c37840e26f464271b17837df6e3dc1d6d2be5e9.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1dacdc56ad8fdfea8e66b4fe8c37840e26f464271b17837df6e3dc1d6d2be5e9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b8ba9f64d56f2b6470834c02ade3c1d0ae3d4a48`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1dacdc56ad8fdfea8e66b4fe8c37840e26f464271b17837df6e3dc1d6d2be5e9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1dacdc56ad8fdfea8e66b4fe8c37840e26f464271b17837df6e3dc1d6d2be5e9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Subalgebra.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.FreeAlgebra` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Ring.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AlgCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1dacdc56ad8fdfea8e66b4fe8c37840e26f464271b17837df6e3dc1d6d2be5e9.lean/declarations/algcat--2d7d94a8e1aacd3942032876.md) | 34 | `declaration-track:2d7d94a8e1aacd3942032876ebab5646e07d247a94269d90ffb5218fc40f3cf0` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1dacdc56ad8fdfea8e66b4fe8c37840e26f464271b17837df6e3dc1d6d2be5e9.lean/declarations/instance--e177a6a0ac3adf54673ba5b8.md) | 47 | `declaration-track:e177a6a0ac3adf54673ba5b8200b13d196edf919759e38d8569f70cdaee7cd64` |
| 3 | `abbrev` | [of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1dacdc56ad8fdfea8e66b4fe8c37840e26f464271b17837df6e3dc1d6d2be5e9.lean/declarations/of--cb61e77a2f1cbba4d4a8068e.md) | 54 | `declaration-track:cb61e77a2f1cbba4d4a8068e78a14c00adf436cd1a67ba279618c0692bd93f36` |
| 4 | `lemma` | [coe_of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1dacdc56ad8fdfea8e66b4fe8c37840e26f464271b17837df6e3dc1d6d2be5e9.lean/declarations/coe-of--7a17dccf91d1f0ab195c2406.md) | 57 | `result-track:7a17dccf91d1f0ab195c24064ada54bdbb9cab35aba56b85fbbc845a6e639064` |
| 5 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1dacdc56ad8fdfea8e66b4fe8c37840e26f464271b17837df6e3dc1d6d2be5e9.lean/declarations/hom--3fc99e9d74411459fe7266dd.md) | 63 | `declaration-track:3fc99e9d74411459fe7266dd18ada190305debc995718a0cf9026bf54336a920` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1dacdc56ad8fdfea8e66b4fe8c37840e26f464271b17837df6e3dc1d6d2be5e9.lean/declarations/instance--6d385341c53bc85c981f75da.md) | 68 | `declaration-track:6d385341c53bc85c981f75da34a826f6370afff787464b369fad096b99bce2c7` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1dacdc56ad8fdfea8e66b4fe8c37840e26f464271b17837df6e3dc1d6d2be5e9.lean/declarations/instance--a28fc99ebf2daf81f0b2cbfc.md) | 73 | `declaration-track:a28fc99ebf2daf81f0b2cbfc27841e64d72d99926f3df04c33c24edaf2db6cb4` |
| 8 | `abbrev` | [Hom.hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1dacdc56ad8fdfea8e66b4fe8c37840e26f464271b17837df6e3dc1d6d2be5e9.lean/declarations/hom-hom--3e415a304601e94795d312fb.md) | 79 | `declaration-track:3e415a304601e94795d312fb195fa5985fd104c54e6006047dbb5a27e503da93` |
| 9 | `abbrev` | [ofHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1dacdc56ad8fdfea8e66b4fe8c37840e26f464271b17837df6e3dc1d6d2be5e9.lean/declarations/ofhom--d68c683f6c59cc77ba5fe635.md) | 84 | `declaration-track:d68c683f6c59cc77ba5fe635a1811b20e9aa34c579282f478cfab6ab59ec3a20` |
| 10 | `def` | [Hom.Simps.hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1dacdc56ad8fdfea8e66b4fe8c37840e26f464271b17837df6e3dc1d6d2be5e9.lean/declarations/hom-simps-hom--1ef41eb83a3c1a9ec0854448.md) | 90 | `declaration-track:1ef41eb83a3c1a9ec0854448b87fc578d9199e7c9fef7af3dda5f9e24803f29e` |
| 11 | `lemma` | [hom_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1dacdc56ad8fdfea8e66b4fe8c37840e26f464271b17837df6e3dc1d6d2be5e9.lean/declarations/hom-id--b253082c2ee292880383400a.md) | 100 | `result-track:b253082c2ee292880383400a3a05254bfda9a2cb538e25e326d505b42cfa2df3` |
| 12 | `lemma` | [id_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1dacdc56ad8fdfea8e66b4fe8c37840e26f464271b17837df6e3dc1d6d2be5e9.lean/declarations/id-apply--f9149bee2b36e6e29e3a020c.md) | 103 | `result-track:f9149bee2b36e6e29e3a020cd2b40620ddda6466282a824098c65b04714e9ea4` |
| 13 | `lemma` | [hom_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1dacdc56ad8fdfea8e66b4fe8c37840e26f464271b17837df6e3dc1d6d2be5e9.lean/declarations/hom-comp--a8038aac931d5a2e7ad7f44e.md) | 107 | `result-track:a8038aac931d5a2e7ad7f44e1e678382ae09e80cd3b98d163767492da5914fb0` |
| 14 | `lemma` | [comp_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1dacdc56ad8fdfea8e66b4fe8c37840e26f464271b17837df6e3dc1d6d2be5e9.lean/declarations/comp-apply--0a453c493b72694174958baf.md) | 111 | `result-track:0a453c493b72694174958bafb55db237cb77363c8107687a464c120ea1c96c1c` |
| 15 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1dacdc56ad8fdfea8e66b4fe8c37840e26f464271b17837df6e3dc1d6d2be5e9.lean/declarations/hom-ext--1997a43918a72166c8d57984.md) | 115 | `result-track:1997a43918a72166c8d57984ff6966d9fe90e9275ea9317c38090b238928dd1c` |
| 16 | `lemma` | [hom_ofHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1dacdc56ad8fdfea8e66b4fe8c37840e26f464271b17837df6e3dc1d6d2be5e9.lean/declarations/hom-ofhom--e06e87207e85c1dee27669a6.md) | 119 | `result-track:e06e87207e85c1dee27669a6e78538481742f5b227729d26f79c3a61ed18b526` |
| 17 | `lemma` | [ofHom_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1dacdc56ad8fdfea8e66b4fe8c37840e26f464271b17837df6e3dc1d6d2be5e9.lean/declarations/ofhom-hom--ba9f2bcdc3d441c673bc20d4.md) | 123 | `result-track:ba9f2bcdc3d441c673bc20d433b7ce5a66b476891f4f6c2a1de409bddfa7b04c` |
| 18 | `lemma` | [ofHom_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1dacdc56ad8fdfea8e66b4fe8c37840e26f464271b17837df6e3dc1d6d2be5e9.lean/declarations/ofhom-id--2bf84b76cb97b36dfab0433d.md) | 127 | `result-track:2bf84b76cb97b36dfab0433d226ee51df9b073d4b61948ddf440b2bbbcfbc7a3` |
| 19 | `lemma` | [ofHom_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1dacdc56ad8fdfea8e66b4fe8c37840e26f464271b17837df6e3dc1d6d2be5e9.lean/declarations/ofhom-comp--9f0eb677456626b52e91f82d.md) | 130 | `result-track:9f0eb677456626b52e91f82db1d879385bc42c385fb261b8ea9970b9738b91ee` |
| 20 | `lemma` | [ofHom_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1dacdc56ad8fdfea8e66b4fe8c37840e26f464271b17837df6e3dc1d6d2be5e9.lean/declarations/ofhom-apply--27dbfeee6f912cd8e72bdc1e.md) | 135 | `result-track:27dbfeee6f912cd8e72bdc1e04486fd2ebf486c38f2d2ad3f7ef100167bcb4fe` |
| 21 | `lemma` | [inv_hom_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1dacdc56ad8fdfea8e66b4fe8c37840e26f464271b17837df6e3dc1d6d2be5e9.lean/declarations/inv-hom-apply--74427793aef70a978c48286b.md) | 138 | `result-track:74427793aef70a978c48286b6df26eae652f3c9c6171cf2ce1fde4d08a6223d4` |
| 22 | `lemma` | [hom_inv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1dacdc56ad8fdfea8e66b4fe8c37840e26f464271b17837df6e3dc1d6d2be5e9.lean/declarations/hom-inv-apply--de56d5a1acfee369a24f6c84.md) | 142 | `result-track:de56d5a1acfee369a24f6c8431d41ac38813c0ee9e4ce22d3384b58456599463` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1dacdc56ad8fdfea8e66b4fe8c37840e26f464271b17837df6e3dc1d6d2be5e9.lean/declarations/instance--324dd46d349c92b7fda8a00b.md) | 146 | `declaration-track:324dd46d349c92b7fda8a00be80ef403838b1dc7df14b4e9a07cc97c1ea1ab59` |
| 24 | `lemma` | [forget_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1dacdc56ad8fdfea8e66b4fe8c37840e26f464271b17837df6e3dc1d6d2be5e9.lean/declarations/forget-obj--74dcd92b25a0657a240dfb00.md) | 149 | `result-track:74dcd92b25a0657a240dfb00844d451ea35100f8b47291d487d479ff8082cc51` |
| 25 | `lemma` | [forget_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1dacdc56ad8fdfea8e66b4fe8c37840e26f464271b17837df6e3dc1d6d2be5e9.lean/declarations/forget-map--ef6da1fc0bcda33d5a3cde26.md) | 151 | `result-track:ef6da1fc0bcda33d5a3cde2649812c058af0feb1ba8e0bfdf42633f17a55e542` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1dacdc56ad8fdfea8e66b4fe8c37840e26f464271b17837df6e3dc1d6d2be5e9.lean/declarations/instance--81d0455a00478ec6c21b10bd.md) | 155 | `declaration-track:81d0455a00478ec6c21b10bd511d2572114b8af4929824f53a5573c80ee22ea3` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1dacdc56ad8fdfea8e66b4fe8c37840e26f464271b17837df6e3dc1d6d2be5e9.lean/declarations/instance--a77b6ec35f2aec0775b9a6cd.md) | 158 | `declaration-track:a77b6ec35f2aec0775b9a6cd61cc15b7e292d61af39a416fad544ffb80fbb2bb` |
| 28 | `instance` | [hasForgetToRing](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1dacdc56ad8fdfea8e66b4fe8c37840e26f464271b17837df6e3dc1d6d2be5e9.lean/declarations/hasforgettoring--f1bbc991a31835bd3df51e74.md) | 161 | `declaration-track:f1bbc991a31835bd3df51e74e70997f116277da9d83805bb6b467332868ff6eb` |
| 29 | `instance` | [hasForgetToModule](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1dacdc56ad8fdfea8e66b4fe8c37840e26f464271b17837df6e3dc1d6d2be5e9.lean/declarations/hasforgettomodule--9427b04a39c48b2f07b746c8.md) | 166 | `declaration-track:9427b04a39c48b2f07b746c82c23abf1afb36796b49c53b0695f0d9f59602af0` |
| 30 | `lemma` | [forget₂_module_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1dacdc56ad8fdfea8e66b4fe8c37840e26f464271b17837df6e3dc1d6d2be5e9.lean/declarations/forget-module-obj--08f5caaf1518903d5553565c.md) | 172 | `result-track:08f5caaf1518903d5553565c2abb745aeae376cb43275bd86c2e7b4a9c1bc227` |
| 31 | `lemma` | [forget₂_module_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1dacdc56ad8fdfea8e66b4fe8c37840e26f464271b17837df6e3dc1d6d2be5e9.lean/declarations/forget-module-map--28df2ff58ccbd87e3a262798.md) | 177 | `result-track:28df2ff58ccbd87e3a262798369472d0ae7e3e16795f6f853c8ca6414feafe57` |
| 32 | `def` | [ofSelfIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1dacdc56ad8fdfea8e66b4fe8c37840e26f464271b17837df6e3dc1d6d2be5e9.lean/declarations/ofselfiso--0f1b7184521e217757a06521.md) | 185 | `declaration-track:0f1b7184521e217757a06521ba08feef92a7571be4a53aad24321b7d6d7573eb` |
| 33 | `def` | [free](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1dacdc56ad8fdfea8e66b4fe8c37840e26f464271b17837df6e3dc1d6d2be5e9.lean/declarations/free--af0cb8999b91493db9c26c35.md) | 191 | `declaration-track:af0cb8999b91493db9c26c358e16d1c3c8ced9834517f4accda2b5d80ace047b` |
| 34 | `def` | [adj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1dacdc56ad8fdfea8e66b4fe8c37840e26f464271b17837df6e3dc1d6d2be5e9.lean/declarations/adj--7a82ebdccb6d821b77c8272b.md) | 196 | `declaration-track:7a82ebdccb6d821b77c8272bde087e28c8d63e7a4b2330910165b42b26795c7a` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1dacdc56ad8fdfea8e66b4fe8c37840e26f464271b17837df6e3dc1d6d2be5e9.lean/declarations/instance--c696982c3d2ecc9f2627a303.md) | 204 | `declaration-track:c696982c3d2ecc9f2627a3038db02857fb89a8cefbd4f4587027ea0cb3492295` |
| 36 | `def` | [AlgEquiv.toAlgebraIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1dacdc56ad8fdfea8e66b4fe8c37840e26f464271b17837df6e3dc1d6d2be5e9.lean/declarations/algequiv-toalgebraiso--be875e10692bbe9d961aa567.md) | 213 | `declaration-track:be875e10692bbe9d961aa567c6e94e678a847cb1d95c058ad13cd0ef15aa87b0` |
| 37 | `def` | [toAlgEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1dacdc56ad8fdfea8e66b4fe8c37840e26f464271b17837df6e3dc1d6d2be5e9.lean/declarations/toalgequiv--df525c5ec25c5375ee3813a6.md) | 222 | `declaration-track:df525c5ec25c5375ee3813a65660e7c42ca954b329d79ba2c06e59687675ad2c` |
| 38 | `def` | [algEquivIsoAlgebraIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1dacdc56ad8fdfea8e66b4fe8c37840e26f464271b17837df6e3dc1d6d2be5e9.lean/declarations/algequivisoalgebraiso--143cfecadb7894b1e3bf35f6.md) | 234 | `declaration-track:143cfecadb7894b1e3bf35f6c21095df383ac08833ceecc4ae76277b907bd031` |
| 39 | `instance` | [AlgCat.forget_reflects_isos](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1dacdc56ad8fdfea8e66b4fe8c37840e26f464271b17837df6e3dc1d6d2be5e9.lean/declarations/algcat-forget-reflects-isos--8078f3ea25e5e6d623c782cc.md) | 239 | `declaration-track:8078f3ea25e5e6d623c782ccb049dc4ae56b571f2208c022173c9588b59ff7ce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
