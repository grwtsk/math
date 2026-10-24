# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Pseudoelements.Variant8026e92668846da1240a4ff76fbd847be243529d9cafdbb72ee0d97358875227

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2bd508d07b5808a2aa284f679425a46b1be2f01d",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant8026e92668846da1240a4ff76fbd847be243529d9cafdbb72ee0d97358875227.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant8026e92668846da1240a4ff76fbd847be243529d9cafdbb72ee0d97358875227.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant8026e92668846da1240a4ff76fbd847be243529d9cafdbb72ee0d97358875227.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2bd508d07b5808a2aa284f679425a46b1be2f01d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant8026e92668846da1240a4ff76fbd847be243529d9cafdbb72ee0d97358875227.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant8026e92668846da1240a4ff76fbd847be243529d9cafdbb72ee0d97358875227.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init.Align` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.Exact` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Over` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.EpiMono` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant8026e92668846da1240a4ff76fbd847be243529d9cafdbb72ee0d97358875227.lean/declarations/app--8928e57548a0d365dd83e5ef.md) | 96 | `declaration-track:8928e57548a0d365dd83e5efb5029621f14e8ec864e7dd163fb29f5c8240184d` |
| 2 | `theorem` | [app_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant8026e92668846da1240a4ff76fbd847be243529d9cafdbb72ee0d97358875227.lean/declarations/app-hom--f888b0f9fba87c04a04cdce0.md) | 101 | `result-track:f888b0f9fba87c04a04cdce00c00ecc27d1c728d4e62a61749cc6a8ae88b0045` |
| 3 | `def` | [PseudoEqual](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant8026e92668846da1240a4ff76fbd847be243529d9cafdbb72ee0d97358875227.lean/declarations/pseudoequal--a150c885b82282b5c1e473ca.md) | 106 | `declaration-track:a150c885b82282b5c1e473caa982e8f4eba33e613645e9e2dcadc13dc5a99e7a` |
| 4 | `theorem` | [pseudoEqual_refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant8026e92668846da1240a4ff76fbd847be243529d9cafdbb72ee0d97358875227.lean/declarations/pseudoequal-refl--8e602144fb575ba3a935395f.md) | 110 | `result-track:8e602144fb575ba3a935395ff31104b6debea522145dcf4a10825f75472f7cb5` |
| 5 | `theorem` | [pseudoEqual_symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant8026e92668846da1240a4ff76fbd847be243529d9cafdbb72ee0d97358875227.lean/declarations/pseudoequal-symm--02d9dce0f0beff0014eae060.md) | 114 | `result-track:02d9dce0f0beff0014eae0609dee4f7ecb89beb83f10ba34ae2038a74c8513f1` |
| 6 | `theorem` | [pseudoEqual_trans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant8026e92668846da1240a4ff76fbd847be243529d9cafdbb72ee0d97358875227.lean/declarations/pseudoequal-trans--1cdbb1a2ec9c70e9567078ce.md) | 124 | `result-track:1cdbb1a2ec9c70e9567078ce20c82a28f7fad29d8176f05aa35d8f3493cf4434` |
| 7 | `def` | [Pseudoelement.setoid](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant8026e92668846da1240a4ff76fbd847be243529d9cafdbb72ee0d97358875227.lean/declarations/pseudoelement-setoid--715ba478284193d88cc42d6b.md) | 134 | `declaration-track:715ba478284193d88cc42d6bd34cfe62a980754ca6f44cf81336adcc484e272c` |
| 8 | `def` | [Pseudoelement](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant8026e92668846da1240a4ff76fbd847be243529d9cafdbb72ee0d97358875227.lean/declarations/pseudoelement--12b86eb9eb483d299b64b625.md) | 142 | `declaration-track:12b86eb9eb483d299b64b6257d285b9196a5dd13a4c64909acf9f83212b449cf` |
| 9 | `def` | [objectToSort](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant8026e92668846da1240a4ff76fbd847be243529d9cafdbb72ee0d97358875227.lean/declarations/objecttosort--e709724f79258a9fb1330063.md) | 149 | `declaration-track:e709724f79258a9fb13300632e823998ebfbdba0f777c8b092372a886f2d9a98` |
| 10 | `def` | [overToSort](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant8026e92668846da1240a4ff76fbd847be243529d9cafdbb72ee0d97358875227.lean/declarations/overtosort--6f06a5d3a7edca4ed6c0888a.md) | 158 | `declaration-track:6f06a5d3a7edca4ed6c0888a7e2c92751dabc851dd851985c3d1bf44f014f17b` |
| 11 | `theorem` | [over_coe_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant8026e92668846da1240a4ff76fbd847be243529d9cafdbb72ee0d97358875227.lean/declarations/over-coe-def--dc9d10972e6046d018e14257.md) | 164 | `result-track:dc9d10972e6046d018e14257fba8b622d86e1bf62b86d241914d5d0cf08c3625` |
| 12 | `theorem` | [pseudoApply_aux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant8026e92668846da1240a4ff76fbd847be243529d9cafdbb72ee0d97358875227.lean/declarations/pseudoapply-aux--82e52979778762c211e67f0d.md) | 168 | `result-track:82e52979778762c211e67f0d474bc8e0f2248aa83fa0fc6b5313613e6f33452f` |
| 13 | `def` | [pseudoApply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant8026e92668846da1240a4ff76fbd847be243529d9cafdbb72ee0d97358875227.lean/declarations/pseudoapply--d37d8c6fca57a12840275c93.md) | 174 | `declaration-track:d37d8c6fca57a12840275c93351d6a04d1ffe45d1070de4eed2fbd5174cefa24` |
| 14 | `def` | [homToFun](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant8026e92668846da1240a4ff76fbd847be243529d9cafdbb72ee0d97358875227.lean/declarations/homtofun--8f4e01b05ab1b985338ef92b.md) | 179 | `declaration-track:8f4e01b05ab1b985338ef92b68c68720b46d1a7c3146b74345a4e6fede60a21e` |
| 15 | `theorem` | [pseudoApply_mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant8026e92668846da1240a4ff76fbd847be243529d9cafdbb72ee0d97358875227.lean/declarations/pseudoapply-mk--58781c24b3e376be0c836e6a.md) | 187 | `result-track:58781c24b3e376be0c836e6ab23235a1d1b40089bf020a0356246ae2c7824e8b` |
| 16 | `theorem` | [comp_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant8026e92668846da1240a4ff76fbd847be243529d9cafdbb72ee0d97358875227.lean/declarations/comp-apply--48577d2acd33a2f0b85e4650.md) | 193 | `result-track:48577d2acd33a2f0b85e4650b3a2e36da163f95d36a902de5a37fa38e71bb444` |
| 17 | `theorem` | [comp_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant8026e92668846da1240a4ff76fbd847be243529d9cafdbb72ee0d97358875227.lean/declarations/comp-comp--ea76c9dde9c8253f229b01b5.md) | 201 | `result-track:ea76c9dde9c8253f229b01b5770646bdf2a50ac606958d12ed59f03df03e1aac` |
| 18 | `theorem` | [pseudoZero_aux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant8026e92668846da1240a4ff76fbd847be243529d9cafdbb72ee0d97358875227.lean/declarations/pseudozero-aux--e5aea6e6efbce507891d4fd3.md) | 219 | `result-track:e5aea6e6efbce507891d4fd3e3a594186767b698ce58d38e86dc1390c504dd47` |
| 19 | `theorem` | [zero_eq_zero'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant8026e92668846da1240a4ff76fbd847be243529d9cafdbb72ee0d97358875227.lean/declarations/zero-eq-zero--19d02d123dd6a136b0436712.md) | 227 | `result-track:19d02d123dd6a136b04367120917911535deb606935206370c135ef8a2360265` |
| 20 | `def` | [pseudoZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant8026e92668846da1240a4ff76fbd847be243529d9cafdbb72ee0d97358875227.lean/declarations/pseudozero--32cce0586c4d4380ae5d4bbe.md) | 233 | `declaration-track:32cce0586c4d4380ae5d4bbeca52e7d0bf62a553aad92c4cbd16a6360777bade` |
| 21 | `instance` | [hasZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant8026e92668846da1240a4ff76fbd847be243529d9cafdbb72ee0d97358875227.lean/declarations/haszero--67d29f1efed4e2913cf924c8.md) | 241 | `declaration-track:67d29f1efed4e2913cf924c83c72956b89f353c761f579e9e5f09087cd776000` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant8026e92668846da1240a4ff76fbd847be243529d9cafdbb72ee0d97358875227.lean/declarations/instance--b9c46a89bc0c5ddd4d1140d3.md) | 245 | `declaration-track:b9c46a89bc0c5ddd4d1140d3d9cfbafd5ef920ef181c942ddfb108a444297933` |
| 23 | `theorem` | [pseudoZero_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant8026e92668846da1240a4ff76fbd847be243529d9cafdbb72ee0d97358875227.lean/declarations/pseudozero-def--9bfaf3e9e3568638c2723636.md) | 248 | `result-track:9bfaf3e9e3568638c2723636e259d7f04ad71cacb0609dedbbc2696f7e835563` |
| 24 | `theorem` | [zero_eq_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant8026e92668846da1240a4ff76fbd847be243529d9cafdbb72ee0d97358875227.lean/declarations/zero-eq-zero--eb15b105db4c8ce999be6120.md) | 252 | `result-track:eb15b105db4c8ce999be6120368568ddd6711ffe30328b43959b4f1d7c3363b1` |
| 25 | `theorem` | [pseudoZero_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant8026e92668846da1240a4ff76fbd847be243529d9cafdbb72ee0d97358875227.lean/declarations/pseudozero-iff--5b4754dcd1d790b92729c8c4.md) | 257 | `result-track:5b4754dcd1d790b92729c8c438abe090c3ff08051734362bb91518499413a739` |
| 26 | `theorem` | [apply_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant8026e92668846da1240a4ff76fbd847be243529d9cafdbb72ee0d97358875227.lean/declarations/apply-zero--60294a09d4f68880e7a022c6.md) | 268 | `result-track:60294a09d4f68880e7a022c68c5fab2529ad6144ed94c213da514fa49047a1d5` |
| 27 | `theorem` | [zero_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant8026e92668846da1240a4ff76fbd847be243529d9cafdbb72ee0d97358875227.lean/declarations/zero-apply--160ba4e2f5e349156a9298ee.md) | 275 | `result-track:160ba4e2f5e349156a9298eee2d7c9ea180ef4e11c63106b19b2f777ad6dd279` |
| 28 | `theorem` | [zero_morphism_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant8026e92668846da1240a4ff76fbd847be243529d9cafdbb72ee0d97358875227.lean/declarations/zero-morphism-ext--724264aa8fd68db2285f4bc7.md) | 282 | `result-track:724264aa8fd68db2285f4bc77386243603583fb4f0bf25a9ce5e88f49f5953af` |
| 29 | `theorem` | [zero_morphism_ext'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant8026e92668846da1240a4ff76fbd847be243529d9cafdbb72ee0d97358875227.lean/declarations/zero-morphism-ext--ad8404828211953434df263f.md) | 287 | `result-track:ad8404828211953434df263f8eac3ea1bf748989df6d920a58d3763d671ecf45` |
| 30 | `theorem` | [eq_zero_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant8026e92668846da1240a4ff76fbd847be243529d9cafdbb72ee0d97358875227.lean/declarations/eq-zero-iff--6abfab1551ec3e20e9f69afa.md) | 297 | `result-track:6abfab1551ec3e20e9f69afa08e4c53d46d7fdf96ad02ff62520833333ceeb88` |
| 31 | `theorem` | [pseudo_injective_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant8026e92668846da1240a4ff76fbd847be243529d9cafdbb72ee0d97358875227.lean/declarations/pseudo-injective-of-mono--708df22c21334e41d6f88d44.md) | 302 | `result-track:708df22c21334e41d6f88d4407f1659c36714e77c7f99073468cb2529db4ff3f` |
| 32 | `theorem` | [zero_of_map_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant8026e92668846da1240a4ff76fbd847be243529d9cafdbb72ee0d97358875227.lean/declarations/zero-of-map-zero--02bf6e46b164220f4a28fc40.md) | 314 | `result-track:02bf6e46b164220f4a28fc40b53feede02d8e29ea2fa7d6d4c466051fecd9dc0` |
| 33 | `theorem` | [mono_of_zero_of_map_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant8026e92668846da1240a4ff76fbd847be243529d9cafdbb72ee0d97358875227.lean/declarations/mono-of-zero-of-map-zero--75e6517ec7f7b3334aebbbc2.md) | 321 | `result-track:75e6517ec7f7b3334aebbbc2f68ba37a32abe53fff0c611d3590a844c8663329` |
| 34 | `theorem` | [pseudo_surjective_of_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant8026e92668846da1240a4ff76fbd847be243529d9cafdbb72ee0d97358875227.lean/declarations/pseudo-surjective-of-epi--424c0af7078d4257ee3f9f3d.md) | 330 | `result-track:424c0af7078d4257ee3f9f3d2efe8a574891dbbdffdd6f3bc28d3230b6b8a1be` |
| 35 | `theorem` | [epi_of_pseudo_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant8026e92668846da1240a4ff76fbd847be243529d9cafdbb72ee0d97358875227.lean/declarations/epi-of-pseudo-surjective--1cd09f832db59a62b6c2b103.md) | 342 | `result-track:1cd09f832db59a62b6c2b10306382b0be021f1ab5bb93cf2826e96373c5a0f61` |
| 36 | `theorem` | [pseudo_exact_of_exact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant8026e92668846da1240a4ff76fbd847be243529d9cafdbb72ee0d97358875227.lean/declarations/pseudo-exact-of-exact--03a788ade4c1612e6d9b4113.md) | 359 | `result-track:03a788ade4c1612e6d9b4113c88c1e477349065de012d925586176c82c9a5c7f` |
| 37 | `theorem` | [apply_eq_zero_of_comp_eq_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant8026e92668846da1240a4ff76fbd847be243529d9cafdbb72ee0d97358875227.lean/declarations/apply-eq-zero-of-comp-eq-zero--860fe38ebe07a1454c04f5d2.md) | 392 | `result-track:860fe38ebe07a1454c04f5d2f365a4bb06d8ecc754a4f68563154f44bb9725fb` |
| 38 | `theorem` | [exact_of_pseudo_exact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant8026e92668846da1240a4ff76fbd847be243529d9cafdbb72ee0d97358875227.lean/declarations/exact-of-pseudo-exact--bbcf8fb2eabf69b9e91c2789.md) | 399 | `result-track:bbcf8fb2eabf69b9e91c27899bf2a7e62d1c124aa02f787f7edb5af920222a91` |
| 39 | `theorem` | [sub_of_eq_image](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant8026e92668846da1240a4ff76fbd847be243529d9cafdbb72ee0d97358875227.lean/declarations/sub-of-eq-image--7010b5131bcb6e6c22f40cda.md) | 436 | `result-track:7010b5131bcb6e6c22f40cda4165b1eb7240eeddd3cbd5e9d5c3560c77a9a2d5` |
| 40 | `theorem` | [pseudo_pullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant8026e92668846da1240a4ff76fbd847be243529d9cafdbb72ee0d97358875227.lean/declarations/pseudo-pullback--766da981150c5a24455a6ad4.md) | 464 | `result-track:766da981150c5a24455a6ad48d94f97d5e0232394b42243630b6f58a72972671` |
| 41 | `theorem` | [ModuleCat.eq_range_of_pseudoequal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant8026e92668846da1240a4ff76fbd847be243529d9cafdbb72ee0d97358875227.lean/declarations/modulecat-eq-range-of-pseudoequal--645dc5c24ec304e85a0f05f2.md) | 480 | `result-track:645dc5c24ec304e85a0f05f2175b5f59df81771f8717b0f3a26123847af2bea1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
