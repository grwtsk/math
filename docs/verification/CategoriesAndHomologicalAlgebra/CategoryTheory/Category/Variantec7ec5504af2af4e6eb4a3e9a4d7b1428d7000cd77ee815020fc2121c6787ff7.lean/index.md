# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Category.Variantec7ec5504af2af4e6eb4a3e9a4d7b1428d7000cd77ee815020fc2121c6787ff7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b26858b117556765e862c978c8fd0d552f24d8cb",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantec7ec5504af2af4e6eb4a3e9a4d7b1428d7000cd77ee815020fc2121c6787ff7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantec7ec5504af2af4e6eb4a3e9a4d7b1428d7000cd77ee815020fc2121c6787ff7.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantec7ec5504af2af4e6eb4a3e9a4d7b1428d7000cd77ee815020fc2121c6787ff7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b26858b117556765e862c978c8fd0d552f24d8cb`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantec7ec5504af2af4e6eb4a3e9a4d7b1428d7000cd77ee815020fc2121c6787ff7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantec7ec5504af2af4e6eb4a3e9a4d7b1428d7000cd77ee815020fc2121c6787ff7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.NatTrans` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Iso` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Functor.category](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantec7ec5504af2af4e6eb4a3e9a4d7b1428d7000cd77ee815020fc2121c6787ff7.lean/declarations/functor-category--1a4eba6431aad7a1d0f79569.md) | 50 | `declaration-track:1a4eba6431aad7a1d0f79569aca1e3ff0a43765e0a5cb6512064b43020ce2643` |
| 2 | `theorem` | [ext'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantec7ec5504af2af4e6eb4a3e9a4d7b1428d7000cd77ee815020fc2121c6787ff7.lean/declarations/ext--830d4b90403ea41c1d70d423.md) | 58 | `result-track:830d4b90403ea41c1d70d423f62994fb65bb9b11965179377250b9e31bbc9274` |
| 3 | `theorem` | [vcomp_eq_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantec7ec5504af2af4e6eb4a3e9a4d7b1428d7000cd77ee815020fc2121c6787ff7.lean/declarations/vcomp-eq-comp--f350732f6ac8741b3d54ab38.md) | 61 | `result-track:f350732f6ac8741b3d54ab38cf5a7398893b7aab9b2854a7767bcceea6f71c04` |
| 4 | `theorem` | [vcomp_app'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantec7ec5504af2af4e6eb4a3e9a4d7b1428d7000cd77ee815020fc2121c6787ff7.lean/declarations/vcomp-app--7f86f42da872f978fabc4106.md) | 63 | `result-track:7f86f42da872f978fabc4106c5986b2161e4c772de48b5432b185da83915e412` |
| 5 | `theorem` | [congr_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantec7ec5504af2af4e6eb4a3e9a4d7b1428d7000cd77ee815020fc2121c6787ff7.lean/declarations/congr-app--af67ad56bcc6fc1d440763dc.md) | 65 | `result-track:af67ad56bcc6fc1d440763dc246f9750debb0840c5a11db9d2d24aa1ac5f73d6` |
| 6 | `theorem` | [id_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantec7ec5504af2af4e6eb4a3e9a4d7b1428d7000cd77ee815020fc2121c6787ff7.lean/declarations/id-app--7f1e8f6bb91440ff97326a44.md) | 68 | `result-track:7f1e8f6bb91440ff97326a4464b0ae7a724347b367a655f561b80bb8a57f244c` |
| 7 | `theorem` | [comp_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantec7ec5504af2af4e6eb4a3e9a4d7b1428d7000cd77ee815020fc2121c6787ff7.lean/declarations/comp-app--1169863551c0361be1f3bcd1.md) | 71 | `result-track:1169863551c0361be1f3bcd1df3a0632565c70de2e7036d21326bc463b72e61f` |
| 8 | `theorem` | [app_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantec7ec5504af2af4e6eb4a3e9a4d7b1428d7000cd77ee815020fc2121c6787ff7.lean/declarations/app-naturality--352d570862a03c01c704dd08.md) | 77 | `result-track:352d570862a03c01c704dd082c5ea5c7a37b3fdff969cc1229cf2eb2c2c7ebf0` |
| 9 | `theorem` | [naturality_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantec7ec5504af2af4e6eb4a3e9a4d7b1428d7000cd77ee815020fc2121c6787ff7.lean/declarations/naturality-app--87dbb7bd870d87c1aa84c001.md) | 82 | `result-track:87dbb7bd870d87c1aa84c00191ba107f27627139957241251c6f43811d89a231` |
| 10 | `theorem` | [naturality_app_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantec7ec5504af2af4e6eb4a3e9a4d7b1428d7000cd77ee815020fc2121c6787ff7.lean/declarations/naturality-app-app--a95add224fc9838736c0f02a.md) | 87 | `result-track:a95add224fc9838736c0f02a0d643beb778982d5e166050c965cca44af1bcad3` |
| 11 | `theorem` | [mono_of_mono_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantec7ec5504af2af4e6eb4a3e9a4d7b1428d7000cd77ee815020fc2121c6787ff7.lean/declarations/mono-of-mono-app--7530e1157941fd544beeb2c8.md) | 94 | `result-track:7530e1157941fd544beeb2c8c29dfa75696fd4dbf48a612b78c3b202f8b6f91d` |
| 12 | `theorem` | [epi_of_epi_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantec7ec5504af2af4e6eb4a3e9a4d7b1428d7000cd77ee815020fc2121c6787ff7.lean/declarations/epi-of-epi-app--48714f8d93fcd49490b11191.md) | 100 | `result-track:48714f8d93fcd49490b11191a0dd54973cee0b3e21595f531d9ef46bb7de91e3` |
| 13 | `lemma` | [id_comm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantec7ec5504af2af4e6eb4a3e9a4d7b1428d7000cd77ee815020fc2121c6787ff7.lean/declarations/id-comm--43b0c1ee619d7e5de1112bea.md) | 106 | `result-track:43b0c1ee619d7e5de1112bea789d672e9fd3e794e007686a853f087c9e169b62` |
| 14 | `def` | [hcomp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantec7ec5504af2af4e6eb4a3e9a4d7b1428d7000cd77ee815020fc2121c6787ff7.lean/declarations/hcomp--55bb6f2d22ad637f97367acd.md) | 112 | `declaration-track:55bb6f2d22ad637f97367acd93b453f7bbd6a0041fe4f23ffaf81bdd229993d3` |
| 15 | `theorem` | [hcomp_id_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantec7ec5504af2af4e6eb4a3e9a4d7b1428d7000cd77ee815020fc2121c6787ff7.lean/declarations/hcomp-id-app--1247010d5c103f6be3c02b3f.md) | 121 | `result-track:1247010d5c103f6be3c02b3f245d7d71690f66b9684020e588a16b9aab80222c` |
| 16 | `theorem` | [id_hcomp_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantec7ec5504af2af4e6eb4a3e9a4d7b1428d7000cd77ee815020fc2121c6787ff7.lean/declarations/id-hcomp-app--b3a3023523b6980e3a188964.md) | 124 | `result-track:b3a3023523b6980e3a188964996071cd890e0a4acd7eb45343aca9bf3d8abdf7` |
| 17 | `theorem` | [exchange](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantec7ec5504af2af4e6eb4a3e9a4d7b1428d7000cd77ee815020fc2121c6787ff7.lean/declarations/exchange--0290b3e9b5de21074fdfc595.md) | 130 | `result-track:0290b3e9b5de21074fdfc595da83d20968ee632cd19b76b50540d63fae07fa52` |
| 18 | `def` | [flip](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantec7ec5504af2af4e6eb4a3e9a4d7b1428d7000cd77ee815020fc2121c6787ff7.lean/declarations/flip--57da2b0d212190444b4b8a85.md) | 142 | `declaration-track:57da2b0d212190444b4b8a85e7d0a261ba37382b97e90262ae4f750ae61bc411` |
| 19 | `def` | [leftUnitor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantec7ec5504af2af4e6eb4a3e9a4d7b1428d7000cd77ee815020fc2121c6787ff7.lean/declarations/leftunitor--a0818c0b2e61e189329e69a0.md) | 152 | `declaration-track:a0818c0b2e61e189329e69a0ac6cb42af8802859ae8cfd999b495fe6e7e923d2` |
| 20 | `def` | [rightUnitor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantec7ec5504af2af4e6eb4a3e9a4d7b1428d7000cd77ee815020fc2121c6787ff7.lean/declarations/rightunitor--01b688245aad035412f8f5e2.md) | 160 | `declaration-track:01b688245aad035412f8f5e2d0f98d504857e800bc671fadc6ddf8122997b7c0` |
| 21 | `def` | [associator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantec7ec5504af2af4e6eb4a3e9a4d7b1428d7000cd77ee815020fc2121c6787ff7.lean/declarations/associator--faa8ae9a8464b21a9d81ba80.md) | 171 | `declaration-track:faa8ae9a8464b21a9d81ba8069cd461fede96fb7649f3b598540dee023af92fb` |
| 22 | `theorem` | [assoc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantec7ec5504af2af4e6eb4a3e9a4d7b1428d7000cd77ee815020fc2121c6787ff7.lean/declarations/assoc--ad5ef6c93d82e68ee94ba090.md) | 176 | `result-track:ad5ef6c93d82e68ee94ba0904cd6c2b5250dd2d3f10caf3eb5532e3d234ae074` |
| 23 | `def` | [flipFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantec7ec5504af2af4e6eb4a3e9a4d7b1428d7000cd77ee815020fc2121c6787ff7.lean/declarations/flipfunctor--9fcea8c5ad7fcca75afbbcae.md) | 184 | `declaration-track:9fcea8c5ad7fcca75afbbcaeb1b6bc6a44bbf6e8651afeeb784c0410ca8c9ca6` |
| 24 | `theorem` | [map_hom_inv_id_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantec7ec5504af2af4e6eb4a3e9a4d7b1428d7000cd77ee815020fc2121c6787ff7.lean/declarations/map-hom-inv-id-app--4266df7d41f22be5eacc2617.md) | 196 | `result-track:4266df7d41f22be5eacc2617142545190cea90f72f9ceb26f6f3e10b9033a87b` |
| 25 | `theorem` | [map_inv_hom_id_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantec7ec5504af2af4e6eb4a3e9a4d7b1428d7000cd77ee815020fc2121c6787ff7.lean/declarations/map-inv-hom-id-app--7f591bac5568ce7858cf2837.md) | 201 | `result-track:7f591bac5568ce7858cf2837f41b042aa496d7af4d0be10431d322d73916f397` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
