# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Frm.Variant0cc57d4b04df8e86ba82a2efc7f60de066de08734485e7891c604bf64d4b4645

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f5d466facace8d321408c1b43f1c594c0f8838ca",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Frm/Variant0cc57d4b04df8e86ba82a2efc7f60de066de08734485e7891c604bf64d4b4645.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Frm/Variant0cc57d4b04df8e86ba82a2efc7f60de066de08734485e7891c604bf64d4b4645.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Frm/Variant0cc57d4b04df8e86ba82a2efc7f60de066de08734485e7891c604bf64d4b4645.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f5d466facace8d321408c1b43f1c594c0f8838ca`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Frm/Variant0cc57d4b04df8e86ba82a2efc7f60de066de08734485e7891c604bf64d4b4645.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Frm/Variant0cc57d4b04df8e86ba82a2efc7f60de066de08734485e7891c604bf64d4b4645.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Category.Lat` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.CompleteLattice` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConcreteCategory.Bundled` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Frm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Frm/Variant0cc57d4b04df8e86ba82a2efc7f60de066de08734485e7891c604bf64d4b4645.lean/declarations/frm--8cbde64b6243fcf9083a250a.md) | 26 | `declaration-track:8cbde64b6243fcf9083a250ae324dff1093a919a0a32d669fda51bbececd90ab` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Frm/Variant0cc57d4b04df8e86ba82a2efc7f60de066de08734485e7891c604bf64d4b4645.lean/declarations/instance--6f69b82d3e61c44d88c86568.md) | 37 | `declaration-track:6f69b82d3e61c44d88c8656840090d1dd36e7a13cd09bf694c77dc49f106dbd6` |
| 3 | `abbrev` | [of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Frm/Variant0cc57d4b04df8e86ba82a2efc7f60de066de08734485e7891c604bf64d4b4645.lean/declarations/of--d4bf379d71897fdbca8f02ff.md) | 43 | `declaration-track:d4bf379d71897fdbca8f02ff9b7ad697d6bc24b13c20d3b065c42100c49c4d06` |
| 4 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Frm/Variant0cc57d4b04df8e86ba82a2efc7f60de066de08734485e7891c604bf64d4b4645.lean/declarations/hom--d761bd24eea9468a7718ba22.md) | 47 | `declaration-track:d761bd24eea9468a7718ba226ada050ee7ca1228870536511d3a3b42ccc73c05` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Frm/Variant0cc57d4b04df8e86ba82a2efc7f60de066de08734485e7891c604bf64d4b4645.lean/declarations/instance--db0e9fe3a08cd1c496936781.md) | 52 | `declaration-track:db0e9fe3a08cd1c496936781037da0d9d3b6073cb3d03025e4db4859f1f40796` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Frm/Variant0cc57d4b04df8e86ba82a2efc7f60de066de08734485e7891c604bf64d4b4645.lean/declarations/instance--d1358552210b5edef59255b7.md) | 57 | `declaration-track:d1358552210b5edef59255b7e01fd56b26e2ce34d35eec8a1314452cb638f067` |
| 7 | `abbrev` | [Hom.hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Frm/Variant0cc57d4b04df8e86ba82a2efc7f60de066de08734485e7891c604bf64d4b4645.lean/declarations/hom-hom--60702e21e7de41a02f59a93b.md) | 62 | `declaration-track:60702e21e7de41a02f59a93b0f23854dd1a8b2d6a2c5edd8323752f3966faa28` |
| 8 | `abbrev` | [ofHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Frm/Variant0cc57d4b04df8e86ba82a2efc7f60de066de08734485e7891c604bf64d4b4645.lean/declarations/ofhom--c6e387258f671b38dc143ac7.md) | 66 | `declaration-track:c6e387258f671b38dc143ac76ba195225b55af0d8f55b4b3f2c4937ae954eb70` |
| 9 | `def` | [Hom.Simps.hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Frm/Variant0cc57d4b04df8e86ba82a2efc7f60de066de08734485e7891c604bf64d4b4645.lean/declarations/hom-simps-hom--fa906229f5568c23e5a7dd97.md) | 71 | `declaration-track:fa906229f5568c23e5a7dd973ee97cc969a648e9ed70d70eb3013a2554b29112` |
| 10 | `lemma` | [coe_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Frm/Variant0cc57d4b04df8e86ba82a2efc7f60de066de08734485e7891c604bf64d4b4645.lean/declarations/coe-id--cd012def1eb8ba2381f7b1ac.md) | 81 | `result-track:cd012def1eb8ba2381f7b1ac10bcbed3880f11a0fb976b5736ad94a3ba43268a` |
| 11 | `lemma` | [coe_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Frm/Variant0cc57d4b04df8e86ba82a2efc7f60de066de08734485e7891c604bf64d4b4645.lean/declarations/coe-comp--55a488d66976c5f094074934.md) | 84 | `result-track:55a488d66976c5f094074934e0c5fc39bbde76b594b706c44e630139ae394409` |
| 12 | `lemma` | [forget_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Frm/Variant0cc57d4b04df8e86ba82a2efc7f60de066de08734485e7891c604bf64d4b4645.lean/declarations/forget-map--960a2ff269b23fbe94e0fcf2.md) | 87 | `result-track:960a2ff269b23fbe94e0fcf22e2666ef6e852d8597c7593b55b25a7c6450bd28` |
| 13 | `lemma` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Frm/Variant0cc57d4b04df8e86ba82a2efc7f60de066de08734485e7891c604bf64d4b4645.lean/declarations/ext--29d9aec7331fcd7f4fa52c06.md) | 91 | `result-track:29d9aec7331fcd7f4fa52c06154a5720c92aaf1fa0abebd6c075cb7e4194d43d` |
| 14 | `theorem` | [coe_of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Frm/Variant0cc57d4b04df8e86ba82a2efc7f60de066de08734485e7891c604bf64d4b4645.lean/declarations/coe-of--fa5bb63afaccbdf090457949.md) | 95 | `result-track:fa5bb63afaccbdf09045794999c5df4eaf24d73e5e77de9edc578bdf53225413` |
| 15 | `lemma` | [hom_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Frm/Variant0cc57d4b04df8e86ba82a2efc7f60de066de08734485e7891c604bf64d4b4645.lean/declarations/hom-id--646a6b58c3a7c80e17d7d4b1.md) | 98 | `result-track:646a6b58c3a7c80e17d7d4b1eccb16ef56ad8cb0adb643438d5d746bcda2b7cd` |
| 16 | `lemma` | [id_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Frm/Variant0cc57d4b04df8e86ba82a2efc7f60de066de08734485e7891c604bf64d4b4645.lean/declarations/id-apply--3bb4397a1a65895aa665a614.md) | 101 | `result-track:3bb4397a1a65895aa665a614e584e984329a8cac34a8f4d55fb6dd0f2b697646` |
| 17 | `lemma` | [hom_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Frm/Variant0cc57d4b04df8e86ba82a2efc7f60de066de08734485e7891c604bf64d4b4645.lean/declarations/hom-comp--eda815ef7e6f52dd1b3e6e49.md) | 105 | `result-track:eda815ef7e6f52dd1b3e6e493dbe0db6ff2c86c8509463c6d54c6078f36ca21e` |
| 18 | `lemma` | [comp_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Frm/Variant0cc57d4b04df8e86ba82a2efc7f60de066de08734485e7891c604bf64d4b4645.lean/declarations/comp-apply--875e9da3b054bfb4eb3c6829.md) | 109 | `result-track:875e9da3b054bfb4eb3c68293d00e0374be977a4048c7627f1d5623e7becff56` |
| 19 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Frm/Variant0cc57d4b04df8e86ba82a2efc7f60de066de08734485e7891c604bf64d4b4645.lean/declarations/hom-ext--2f86064f00793a89a2b76c89.md) | 113 | `result-track:2f86064f00793a89a2b76c895daaadea896c7308c0072250cd952ae1494d0be3` |
| 20 | `lemma` | [hom_ofHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Frm/Variant0cc57d4b04df8e86ba82a2efc7f60de066de08734485e7891c604bf64d4b4645.lean/declarations/hom-ofhom--bc47b265c0c5b41098c46b78.md) | 117 | `result-track:bc47b265c0c5b41098c46b789f5a31deaad41c65b42ebf626a61c88b90eb4777` |
| 21 | `lemma` | [ofHom_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Frm/Variant0cc57d4b04df8e86ba82a2efc7f60de066de08734485e7891c604bf64d4b4645.lean/declarations/ofhom-hom--a05b0deb7c511ba30d80a9c8.md) | 121 | `result-track:a05b0deb7c511ba30d80a9c87649e8f9269f9a12d7142f8ab72c112846c4c211` |
| 22 | `lemma` | [ofHom_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Frm/Variant0cc57d4b04df8e86ba82a2efc7f60de066de08734485e7891c604bf64d4b4645.lean/declarations/ofhom-id--a11738f04c98330caec47370.md) | 125 | `result-track:a11738f04c98330caec47370e8d147f64ac9c5ad35fbcb91c307535eccfc9efc` |
| 23 | `lemma` | [ofHom_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Frm/Variant0cc57d4b04df8e86ba82a2efc7f60de066de08734485e7891c604bf64d4b4645.lean/declarations/ofhom-comp--ef06b29313de48ebf71139e5.md) | 128 | `result-track:ef06b29313de48ebf71139e507ebeb8e1a7b76ace12638094f87783a63b6b541` |
| 24 | `lemma` | [ofHom_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Frm/Variant0cc57d4b04df8e86ba82a2efc7f60de066de08734485e7891c604bf64d4b4645.lean/declarations/ofhom-apply--d6c774f74507280d9c0685ff.md) | 133 | `result-track:d6c774f74507280d9c0685ffc1da476bd38010e9e6e5d176ad3de7a018ed4008` |
| 25 | `lemma` | [inv_hom_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Frm/Variant0cc57d4b04df8e86ba82a2efc7f60de066de08734485e7891c604bf64d4b4645.lean/declarations/inv-hom-apply--5c1f884231ba883243e76368.md) | 136 | `result-track:5c1f884231ba883243e76368f0b5328e67f6f4f619b12c827b7fe5ee6fa84e3f` |
| 26 | `lemma` | [hom_inv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Frm/Variant0cc57d4b04df8e86ba82a2efc7f60de066de08734485e7891c604bf64d4b4645.lean/declarations/hom-inv-apply--eb6f3dfbac94ff141378e967.md) | 139 | `result-track:eb6f3dfbac94ff141378e9672b01db1356ada1e43ecbba8f9fb5725a5f95ac40` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Frm/Variant0cc57d4b04df8e86ba82a2efc7f60de066de08734485e7891c604bf64d4b4645.lean/declarations/instance--798977ff56f082b3b171e76d.md) | 142 | `declaration-track:798977ff56f082b3b171e76d1c0b3cdf137e44844f3f30cc8b113892e82d38f0` |
| 28 | `instance` | [hasForgetToLat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Frm/Variant0cc57d4b04df8e86ba82a2efc7f60de066de08734485e7891c604bf64d4b4645.lean/declarations/hasforgettolat--c65ebf1ec125b5410b53426f.md) | 145 | `declaration-track:c65ebf1ec125b5410b53426f8a2dd89065263dabd17ecbc4dd802e5dff348d9c` |
| 29 | `def` | [Iso.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Frm/Variant0cc57d4b04df8e86ba82a2efc7f60de066de08734485e7891c604bf64d4b4645.lean/declarations/iso-mk--adb4001cda322c8106767a12.md) | 151 | `declaration-track:adb4001cda322c8106767a126ab6c8e23e3909ea8944c713720645bbad016ab8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
