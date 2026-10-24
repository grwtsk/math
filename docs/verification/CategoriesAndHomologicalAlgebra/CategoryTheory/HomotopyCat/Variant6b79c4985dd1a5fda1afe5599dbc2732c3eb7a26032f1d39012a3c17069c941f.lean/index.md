# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HomotopyCat.Variant6b79c4985dd1a5fda1afe5599dbc2732c3eb7a26032f1d39012a3c17069c941f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5735b26e11096397d31d1caffd34f764a611a43d",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variant6b79c4985dd1a5fda1afe5599dbc2732c3eb7a26032f1d39012a3c17069c941f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variant6b79c4985dd1a5fda1afe5599dbc2732c3eb7a26032f1d39012a3c17069c941f.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variant6b79c4985dd1a5fda1afe5599dbc2732c3eb7a26032f1d39012a3c17069c941f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5735b26e11096397d31d1caffd34f764a611a43d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variant6b79c4985dd1a5fda1afe5599dbc2732c3eb7a26032f1d39012a3c17069c941f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variant6b79c4985dd1a5fda1afe5599dbc2732c3eb7a26032f1d39012a3c17069c941f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.SimplicialObject.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.SimplicialSet.Coskeletal` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Category.ReflQuiv` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Quiver.ReflQuiver` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [OneTruncation₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variant6b79c4985dd1a5fda1afe5599dbc2732c3eb7a26032f1d39012a3c17069c941f.lean/declarations/onetruncation--41673a3989b152ac4a9af56e.md) | 55 | `declaration-track:41673a3989b152ac4a9af56e71177995157e970714d1dfbfeff869b1a80d324c` |
| 2 | `abbrev` | [δ₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variant6b79c4985dd1a5fda1afe5599dbc2732c3eb7a26032f1d39012a3c17069c941f.lean/declarations/anonymous--4ca85317923cd4ee0ca9a931.md) | 58 | `declaration-track:4ca85317923cd4ee0ca9a931c84803f7cf74bcdd0172baab8af8092c56281d29` |
| 3 | `abbrev` | [σ₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variant6b79c4985dd1a5fda1afe5599dbc2732c3eb7a26032f1d39012a3c17069c941f.lean/declarations/anonymous--311c4f867ac53f24007fb84b.md) | 62 | `declaration-track:311c4f867ac53f24007fb84be4cbd055604be4dfe734afc6efed8bce64a247f2` |
| 4 | `lemma` | [δ₂_zero_comp_σ₂_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variant6b79c4985dd1a5fda1afe5599dbc2732c3eb7a26032f1d39012a3c17069c941f.lean/declarations/zero-comp-zero--3166ef37646fb55cd5bc149b.md) | 66 | `result-track:3166ef37646fb55cd5bc149b85e63cfdf11cad1a05cd263ae5811598a14399af` |
| 5 | `lemma` | [δ₂_zero_comp_σ₂_one](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variant6b79c4985dd1a5fda1afe5599dbc2732c3eb7a26032f1d39012a3c17069c941f.lean/declarations/zero-comp-one--03d684f577faa6c2d9acf3ac.md) | 70 | `result-track:03d684f577faa6c2d9acf3ac7a18d170fb4f538da5c48882906a2b33cfc78daa` |
| 6 | `lemma` | [δ₂_one_comp_σ₂_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variant6b79c4985dd1a5fda1afe5599dbc2732c3eb7a26032f1d39012a3c17069c941f.lean/declarations/one-comp-zero--9ba0f201d5eb55e0e10d8878.md) | 74 | `result-track:9ba0f201d5eb55e0e10d8878f6ff68c10641af451993011a6b937820c07021d2` |
| 7 | `lemma` | [δ₂_two_comp_σ₂_one](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variant6b79c4985dd1a5fda1afe5599dbc2732c3eb7a26032f1d39012a3c17069c941f.lean/declarations/two-comp-one--e5c9f9102cc33e8f100839c5.md) | 78 | `result-track:e5c9f9102cc33e8f100839c5511482fe45726101566ecbf8e73dffe21248cad8` |
| 8 | `lemma` | [δ₂_two_comp_σ₂_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variant6b79c4985dd1a5fda1afe5599dbc2732c3eb7a26032f1d39012a3c17069c941f.lean/declarations/two-comp-zero--ff2bda5694457dd9c057c454.md) | 81 | `result-track:ff2bda5694457dd9c057c45478260caf03a503a9ccf6777e09187eeae818f698` |
| 9 | `structure` | [OneTruncation₂.Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variant6b79c4985dd1a5fda1afe5599dbc2732c3eb7a26032f1d39012a3c17069c941f.lean/declarations/onetruncation-hom--f76557074a5475a5ea78d7ea.md) | 87 | `declaration-track:f76557074a5475a5ea78d7ea4836d56cbb3b26f9bdf2995799bc2bdc011a1ba1` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variant6b79c4985dd1a5fda1afe5599dbc2732c3eb7a26032f1d39012a3c17069c941f.lean/declarations/instance--c0a5968e2a21598de5535ead.md) | 96 | `declaration-track:c0a5968e2a21598de5535eadfacd4b23f188bce97b2a166f23e01e4e49ecf5d3` |
| 11 | `lemma` | [OneTruncation₂.id_edge](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variant6b79c4985dd1a5fda1afe5599dbc2732c3eb7a26032f1d39012a3c17069c941f.lean/declarations/onetruncation-id-edge--a6522e90a42e275fe2460023.md) | 108 | `result-track:a6522e90a42e275fe24600235ec127fab25fbaadf3fb21019ec7ef5231179b4e` |
| 12 | `def` | [oneTruncation₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variant6b79c4985dd1a5fda1afe5599dbc2732c3eb7a26032f1d39012a3c17069c941f.lean/declarations/onetruncation--ea58b14ab95d7f456cbc469c.md) | 113 | `declaration-track:ea58b14ab95d7f456cbc469ce5314cb59504004dfdbe10162bca60d14858cbd7` |
| 13 | `lemma` | [OneTruncation₂.hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variant6b79c4985dd1a5fda1afe5599dbc2732c3eb7a26032f1d39012a3c17069c941f.lean/declarations/onetruncation-hom-ext--984d5e1e5031cafc5ee426a4.md) | 126 | `result-track:984d5e1e5031cafc5ee426a4b0b5b8e8354a8b6d1a531daeb9b239d2b7636e1c` |
| 14 | `lemma` | [OneTruncation₂.homOfEq_edge](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variant6b79c4985dd1a5fda1afe5599dbc2732c3eb7a26032f1d39012a3c17069c941f.lean/declarations/onetruncation-homofeq-edge--c7799a3343256a995926c2cb.md) | 130 | `result-track:c7799a3343256a995926c2cbe08ab5b93c688c41ebadf003de86dd89696ef592` |
| 15 | `def` | [OneTruncation₂.nerveEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variant6b79c4985dd1a5fda1afe5599dbc2732c3eb7a26032f1d39012a3c17069c941f.lean/declarations/onetruncation-nerveequiv--2e0bad8f7a083631be1b5596.md) | 143 | `declaration-track:2e0bad8f7a083631be1b5596e5097c1adab0b509ac2161acf6be938ef3138ae0` |
| 16 | `def` | [OneTruncation₂.nerveHomEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variant6b79c4985dd1a5fda1afe5599dbc2732c3eb7a26032f1d39012a3c17069c941f.lean/declarations/onetruncation-nervehomequiv--f13ccc5341d38d3805bd4a90.md) | 151 | `declaration-track:f13ccc5341d38d3805bd4a90b8e719e28febfc2575f284c58be62d74ae99a433` |
| 17 | `def` | [OneTruncation₂.ofNerve₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variant6b79c4985dd1a5fda1afe5599dbc2732c3eb7a26032f1d39012a3c17069c941f.lean/declarations/onetruncation-ofnerve--ee068b7900d7eae9cdc7435b.md) | 166 | `declaration-track:ee068b7900d7eae9cdc7435b5457ee1395930180bee441fb84458aca21eb7def` |
| 18 | `def` | [OneTruncation₂.ofNerve₂.natIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variant6b79c4985dd1a5fda1afe5599dbc2732c3eb7a26032f1d39012a3c17069c941f.lean/declarations/onetruncation-ofnerve-natiso--bf91626ea2199d3710c1fd18.md) | 187 | `declaration-track:bf91626ea2199d3710c1fd1832aeff32e4152aa78a84133863ca874f13058e60` |
| 19 | `lemma` | [map_map_of_eq.](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variant6b79c4985dd1a5fda1afe5599dbc2732c3eb7a26032f1d39012a3c17069c941f.lean/declarations/map-map-of-eq--2ad6e7384d40421a940df665.md) | 209 | `result-track:2ad6e7384d40421a940df6655db53bbf2aa8c951c70b6baf3f831dd68cd5c404` |
| 20 | `def` | [ι0₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variant6b79c4985dd1a5fda1afe5599dbc2732c3eb7a26032f1d39012a3c17069c941f.lean/declarations/0--f4d493dfe086af87ef448f02.md) | 221 | `declaration-track:f4d493dfe086af87ef448f028cf53d4e2139d095d995d6ec700d7127a05ceaca` |
| 21 | `def` | [ι1₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variant6b79c4985dd1a5fda1afe5599dbc2732c3eb7a26032f1d39012a3c17069c941f.lean/declarations/1--d5c1f919761ac2266c8f3a87.md) | 225 | `declaration-track:d5c1f919761ac2266c8f3a878ad1033f380aa65ccd595f9f14cc57f3e8ddc148` |
| 22 | `def` | [ι2₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variant6b79c4985dd1a5fda1afe5599dbc2732c3eb7a26032f1d39012a3c17069c941f.lean/declarations/2--4c0a8d1d7ff9180dd842b24f.md) | 229 | `declaration-track:4c0a8d1d7ff9180dd842b24f0847d1b977a1cbd0fd408cda93da4773f5dabe53` |
| 23 | `def` | [ev0₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variant6b79c4985dd1a5fda1afe5599dbc2732c3eb7a26032f1d39012a3c17069c941f.lean/declarations/ev0--3de1b1b736a1e8c44661fde2.md) | 232 | `declaration-track:3de1b1b736a1e8c44661fde2e186c0df3492af29ad42d1e616570aae84de3343` |
| 24 | `def` | [ev1₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variant6b79c4985dd1a5fda1afe5599dbc2732c3eb7a26032f1d39012a3c17069c941f.lean/declarations/ev1--7c7f963f7e2265c39ad8b9fc.md) | 235 | `declaration-track:7c7f963f7e2265c39ad8b9fce164f6b83beef271c85e80fcfed5eabf87c16aa4` |
| 25 | `def` | [ev2₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variant6b79c4985dd1a5fda1afe5599dbc2732c3eb7a26032f1d39012a3c17069c941f.lean/declarations/ev2--2fe3eb997158fc035261ec4a.md) | 238 | `declaration-track:2fe3eb997158fc035261ec4a833b8e2ec84cbd8f955c4885a833da9b75cd704f` |
| 26 | `def` | [δ0₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variant6b79c4985dd1a5fda1afe5599dbc2732c3eb7a26032f1d39012a3c17069c941f.lean/declarations/0--37cd7197a85815b1d290e760.md) | 241 | `declaration-track:37cd7197a85815b1d290e760c79a7b04c835aefffeb46254caba87e1f40acec3` |
| 27 | `def` | [δ1₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variant6b79c4985dd1a5fda1afe5599dbc2732c3eb7a26032f1d39012a3c17069c941f.lean/declarations/1--633ed65d17ba2f8467b336d0.md) | 244 | `declaration-track:633ed65d17ba2f8467b336d03854959c18398bc336b1bc29556b67f4e2549e1f` |
| 28 | `def` | [δ2₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variant6b79c4985dd1a5fda1afe5599dbc2732c3eb7a26032f1d39012a3c17069c941f.lean/declarations/2--b82c32d9e70caee76ab174c6.md) | 247 | `declaration-track:b82c32d9e70caee76ab174c6a6483514ae1314bf617c2fd9b3e8a7b5e98adf5f` |
| 29 | `def` | [ev12₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variant6b79c4985dd1a5fda1afe5599dbc2732c3eb7a26032f1d39012a3c17069c941f.lean/declarations/ev12--b5de308f1b0e2297983aa515.md) | 251 | `declaration-track:b5de308f1b0e2297983aa5154d8295d848059b6fdebb11e464a6b3d500b9d9ae` |
| 30 | `def` | [ev02₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variant6b79c4985dd1a5fda1afe5599dbc2732c3eb7a26032f1d39012a3c17069c941f.lean/declarations/ev02--e8df1b31fdcc49ddf674160d.md) | 258 | `declaration-track:e8df1b31fdcc49ddf674160d33fd4b6d5de7277fe6bca351d4652425d7676765` |
| 31 | `def` | [ev01₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variant6b79c4985dd1a5fda1afe5599dbc2732c3eb7a26032f1d39012a3c17069c941f.lean/declarations/ev01--559f5765ee3a6a9d9bc2766f.md) | 263 | `declaration-track:559f5765ee3a6a9d9bc2766fbaf1d7e659533769d775a20e9b6c851d660557d2` |
| 32 | `inductive` | [HoRel₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variant6b79c4985dd1a5fda1afe5599dbc2732c3eb7a26032f1d39012a3c17069c941f.lean/declarations/horel--14211ea116ab18683151ab20.md) | 269 | `declaration-track:14211ea116ab18683151ab2030ca936d1d7621725f15ffc2a54086c1819cec2b` |
| 33 | `theorem` | [HoRel₂.mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variant6b79c4985dd1a5fda1afe5599dbc2732c3eb7a26032f1d39012a3c17069c941f.lean/declarations/horel-mk--b1ae87acca396c6a9d2fa8c5.md) | 279 | `result-track:b1ae87acca396c6a9d2fa8c5c82f71c74ff7d117f477b7d6d95aa2e8b7497eba` |
| 34 | `def` | [_root_.GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.OneTruncationHom.Varianta85c2a8bc956218a54f07e3b4ffecdf6ca99dcbc0ff31e4fc414242c8a8f628f.SSet.Truncated.HomotopyCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variant6b79c4985dd1a5fda1afe5599dbc2732c3eb7a26032f1d39012a3c17069c941f.lean/declarations/root-grwtsk-categoriesandhomologicalalgebra-categorytheory-onetruncation--e84daf2a0d6cba308c99809d.md) | 300 | `declaration-track:e84daf2a0d6cba308c99809dbd205b00464afa45b31ecea22ac8276c3b9f91eb` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variant6b79c4985dd1a5fda1afe5599dbc2732c3eb7a26032f1d39012a3c17069c941f.lean/declarations/instance--c95498d3ea3e02b66b97d4dd.md) | 303 | `declaration-track:c95498d3ea3e02b66b97d4dd0c9a9d3d745fcebf092ebb1337bff12545a65093` |
| 36 | `def` | [_root_.GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.OneTruncationHom.Varianta85c2a8bc956218a54f07e3b4ffecdf6ca99dcbc0ff31e4fc414242c8a8f628f.SSet.Truncated.HomotopyCategory.quotientFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variant6b79c4985dd1a5fda1afe5599dbc2732c3eb7a26032f1d39012a3c17069c941f.lean/declarations/root-grwtsk-categoriesandhomologicalalgebra-categorytheory-onetruncation--5dec83e31e8e507c47ae0a74.md) | 308 | `declaration-track:5dec83e31e8e507c47ae0a74ad8c864f792bd59dfc5a2625e84b474716d55e5f` |
| 37 | `theorem` | [HomotopyCategory.lift_unique'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variant6b79c4985dd1a5fda1afe5599dbc2732c3eb7a26032f1d39012a3c17069c941f.lean/declarations/homotopycategory-lift-unique--36c055fc3ee9134a6d6f7f7e.md) | 314 | `result-track:36c055fc3ee9134a6d6f7f7ee957c23ac215ba2a2f6a428b3efaca3c5d19a3ed` |
| 38 | `def` | [mapHomotopyCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variant6b79c4985dd1a5fda1afe5599dbc2732c3eb7a26032f1d39012a3c17069c941f.lean/declarations/maphomotopycategory--b8a81fbc6fec724aab54ed10.md) | 322 | `declaration-track:b8a81fbc6fec724aab54ed105a2bdee84cc3ea6b74e8196b710e201601ebe8e8` |
| 39 | `def` | [hoFunctor₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variant6b79c4985dd1a5fda1afe5599dbc2732c3eb7a26032f1d39012a3c17069c941f.lean/declarations/hofunctor--5f63d4783ab8662786215b73.md) | 337 | `declaration-track:5f63d4783ab8662786215b73dd493c6c23bbf34179fc04da8b6355f5f7538ad4` |
| 40 | `theorem` | [hoFunctor₂_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variant6b79c4985dd1a5fda1afe5599dbc2732c3eb7a26032f1d39012a3c17069c941f.lean/declarations/hofunctor-naturality--abc1f3469756a482474efa9e.md) | 350 | `result-track:abc1f3469756a482474efa9e2f286c67c3ea1dec9c31bdeefab06fd1049a93ef` |
| 41 | `def` | [hoFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variant6b79c4985dd1a5fda1afe5599dbc2732c3eb7a26032f1d39012a3c17069c941f.lean/declarations/hofunctor--edaebab86d5f15c3f9721874.md) | 358 | `declaration-track:edaebab86d5f15c3f97218741bf65e556a4903a911aeea5fde007431c52a785b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
