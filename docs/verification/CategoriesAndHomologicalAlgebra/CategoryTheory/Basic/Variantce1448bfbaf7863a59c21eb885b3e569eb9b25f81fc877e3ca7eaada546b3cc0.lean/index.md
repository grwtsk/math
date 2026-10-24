# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variantce1448bfbaf7863a59c21eb885b3e569eb9b25f81fc877e3ca7eaada546b3cc0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ac969b751ae7fb83b7559981edb89db164269115",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantce1448bfbaf7863a59c21eb885b3e569eb9b25f81fc877e3ca7eaada546b3cc0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantce1448bfbaf7863a59c21eb885b3e569eb9b25f81fc877e3ca7eaada546b3cc0.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantce1448bfbaf7863a59c21eb885b3e569eb9b25f81fc877e3ca7eaada546b3cc0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ac969b751ae7fb83b7559981edb89db164269115`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantce1448bfbaf7863a59c21eb885b3e569eb9b25f81fc877e3ca7eaada546b3cc0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantce1448bfbaf7863a59c21eb885b3e569eb9b25f81fc877e3ca7eaada546b3cc0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Category.Init` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Quiver.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.PPWithUniv` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Common` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.StacksAttribute` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TryThis` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [CategoryStruct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantce1448bfbaf7863a59c21eb885b3e569eb9b25f81fc877e3ca7eaada546b3cc0.lean/declarations/categorystruct--dd1fd41101321ec4c48ac8c5.md) | 85 | `declaration-track:dd1fd41101321ec4c48ac8c52ea5b46497f786300a7fb0508420d06e5bec5d02` |
| 2 | `syntax` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantce1448bfbaf7863a59c21eb885b3e569eb9b25f81fc877e3ca7eaada546b3cc0.lean/declarations/syntax--d6ffaf12b1c0b80f6e01b03a.md) | 100 | `declaration-track:d6ffaf12b1c0b80f6e01b03ad0cccf3cfb74e3a13433162a9d7b0f2cd7ca6e5b` |
| 3 | `def` | [evalSorryIfSorry](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantce1448bfbaf7863a59c21eb885b3e569eb9b25f81fc877e3ca7eaada546b3cc0.lean/declarations/evalsorryifsorry--61c4fd43463a0e7b4baa3e41.md) | 103 | `declaration-track:61c4fd43463a0e7b4baa3e4190b81cd89c39a4e91f63bca41e58159ce39b1332` |
| 4 | `macro` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantce1448bfbaf7863a59c21eb885b3e569eb9b25f81fc877e3ca7eaada546b3cc0.lean/declarations/macro--777b4460d816a13c28865b1d.md) | 129 | `declaration-track:777b4460d816a13c28865b1de2d23319b71db6d6da87e71ab2a1963fda29a0aa` |
| 5 | `macro` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantce1448bfbaf7863a59c21eb885b3e569eb9b25f81fc877e3ca7eaada546b3cc0.lean/declarations/macro--e80fa4e5d91ed6c8e47e737a.md) | 137 | `declaration-track:e80fa4e5d91ed6c8e47e737a88df952baa865c8591eed5c1a3056202031584f7` |
| 6 | `macro` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantce1448bfbaf7863a59c21eb885b3e569eb9b25f81fc877e3ca7eaada546b3cc0.lean/declarations/macro--2ec95c64bf72b70378a48f3d.md) | 146 | `declaration-track:2ec95c64bf72b70378a48f3d9c7a79f82a639701fc94fbf1530ea0cf585386e6` |
| 7 | `macro` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantce1448bfbaf7863a59c21eb885b3e569eb9b25f81fc877e3ca7eaada546b3cc0.lean/declarations/macro--5dddbbac1bf9a2d2f61ae6db.md) | 156 | `declaration-track:5dddbbac1bf9a2d2f61ae6db01c720d682fc11139e1957cf3716bafdcbb55406` |
| 8 | `class` | [Category](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantce1448bfbaf7863a59c21eb885b3e569eb9b25f81fc877e3ca7eaada546b3cc0.lean/declarations/category--564d644d82e31773c04ac131.md) | 167 | `declaration-track:564d644d82e31773c04ac13188515f2512d67ef9b160b219755fcf9c3aa3dcfe` |
| 9 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantce1448bfbaf7863a59c21eb885b3e569eb9b25f81fc877e3ca7eaada546b3cc0.lean/declarations/example--5e98b85c6231d4ad46467bd3.md) | 179 | `declaration-track:5e98b85c6231d4ad46467bd309728f4a03f5341d8aa2b3f687186e8d7a7ff11b` |
| 10 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantce1448bfbaf7863a59c21eb885b3e569eb9b25f81fc877e3ca7eaada546b3cc0.lean/declarations/example--55478ee237ddc6ddbfece871.md) | 180 | `declaration-track:55478ee237ddc6ddbfece8718092bd16e7d3a50175a940df754301563f9f9495` |
| 11 | `abbrev` | [LargeCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantce1448bfbaf7863a59c21eb885b3e569eb9b25f81fc877e3ca7eaada546b3cc0.lean/declarations/largecategory--a6f9d8a9173dd6bd914f1f92.md) | 186 | `declaration-track:a6f9d8a9173dd6bd914f1f922f3c084a051e96eca6f53f7952d4caff8bab1408` |
| 12 | `abbrev` | [SmallCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantce1448bfbaf7863a59c21eb885b3e569eb9b25f81fc877e3ca7eaada546b3cc0.lean/declarations/smallcategory--37ffec4fe1d0307f8f296e40.md) | 190 | `declaration-track:37ffec4fe1d0307f8f296e40610c96f41bba136945712b061b18835791af4466` |
| 13 | `theorem` | [eq_whisker](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantce1448bfbaf7863a59c21eb885b3e569eb9b25f81fc877e3ca7eaada546b3cc0.lean/declarations/eq-whisker--2d702c085022d407462a42a3.md) | 199 | `result-track:2d702c085022d407462a42a33a611b68d836335b382bbcbca75904167e5a43c7` |
| 14 | `theorem` | [whisker_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantce1448bfbaf7863a59c21eb885b3e569eb9b25f81fc877e3ca7eaada546b3cc0.lean/declarations/whisker-eq--8ba8b5f04ca634e516c5d3ed.md) | 202 | `result-track:8ba8b5f04ca634e516c5d3ed23e38fc9c82449242665b3d99047db8510fc7301` |
| 15 | `theorem` | [eq_of_comp_left_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantce1448bfbaf7863a59c21eb885b3e569eb9b25f81fc877e3ca7eaada546b3cc0.lean/declarations/eq-of-comp-left-eq--be35e56bb5db1fe77aec8dcf.md) | 216 | `result-track:be35e56bb5db1fe77aec8dcf0ce7090d2e7928e4fd4b2fa793940694f8d7c120` |
| 16 | `theorem` | [eq_of_comp_right_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantce1448bfbaf7863a59c21eb885b3e569eb9b25f81fc877e3ca7eaada546b3cc0.lean/declarations/eq-of-comp-right-eq--669cfc81e0df65c3f92514d8.md) | 220 | `result-track:669cfc81e0df65c3f92514d84bf9f84f2b68599bd6614533bd11c80fac5a985b` |
| 17 | `theorem` | [eq_of_comp_left_eq'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantce1448bfbaf7863a59c21eb885b3e569eb9b25f81fc877e3ca7eaada546b3cc0.lean/declarations/eq-of-comp-left-eq--1d2bb74632be7ee4eba90c80.md) | 224 | `result-track:1d2bb74632be7ee4eba90c8049789e49a4a39ad0bfd4c2c9681a0dbb5a253bab` |
| 18 | `theorem` | [eq_of_comp_right_eq'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantce1448bfbaf7863a59c21eb885b3e569eb9b25f81fc877e3ca7eaada546b3cc0.lean/declarations/eq-of-comp-right-eq--1f3cccadf285833ce50616db.md) | 228 | `result-track:1f3cccadf285833ce50616db3f99b17a03932890f17fffe1096c2b105bd9619e` |
| 19 | `theorem` | [id_of_comp_left_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantce1448bfbaf7863a59c21eb885b3e569eb9b25f81fc877e3ca7eaada546b3cc0.lean/declarations/id-of-comp-left-id--a724a5f7c1ef5e911f9426c7.md) | 232 | `result-track:a724a5f7c1ef5e911f9426c74208b93825d8362f5b8d00371f936a83a7cc79ff` |
| 20 | `theorem` | [id_of_comp_right_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantce1448bfbaf7863a59c21eb885b3e569eb9b25f81fc877e3ca7eaada546b3cc0.lean/declarations/id-of-comp-right-id--378995232018f0f20712998a.md) | 236 | `result-track:378995232018f0f20712998a1cda7fefaee139db46725264ea7293c5a8e89c8e` |
| 21 | `theorem` | [comp_ite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantce1448bfbaf7863a59c21eb885b3e569eb9b25f81fc877e3ca7eaada546b3cc0.lean/declarations/comp-ite--0769f3ebd70f095fc8455bf9.md) | 240 | `result-track:0769f3ebd70f095fc8455bf95933bac5e82245d035d1eefd52a8f52e4917f848` |
| 22 | `theorem` | [ite_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantce1448bfbaf7863a59c21eb885b3e569eb9b25f81fc877e3ca7eaada546b3cc0.lean/declarations/ite-comp--449102c4103ccc6e2c101534.md) | 243 | `result-track:449102c4103ccc6e2c10153429edb7adff98b795dce142ae2e612b54a55343ed` |
| 23 | `theorem` | [comp_dite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantce1448bfbaf7863a59c21eb885b3e569eb9b25f81fc877e3ca7eaada546b3cc0.lean/declarations/comp-dite--a14aa444a3ec49e8aa0bcfc6.md) | 246 | `result-track:a14aa444a3ec49e8aa0bcfc6fbbb715ba7cde0bfefa49b049d4ca3905adc0779` |
| 24 | `theorem` | [dite_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantce1448bfbaf7863a59c21eb885b3e569eb9b25f81fc877e3ca7eaada546b3cc0.lean/declarations/dite-comp--6e9fa6dad06149bab55d45eb.md) | 250 | `result-track:6e9fa6dad06149bab55d45eb9ddde4b39ddf434a4b3f208adfb5ca9be3440d6c` |
| 25 | `class` | [Epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantce1448bfbaf7863a59c21eb885b3e569eb9b25f81fc877e3ca7eaada546b3cc0.lean/declarations/epi--51ec17e5bbb9d139c1c365be.md) | 257 | `declaration-track:51ec17e5bbb9d139c1c365be1c9702b7e025eb7b127b9f81cdb9a91607304a6c` |
| 26 | `class` | [Mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantce1448bfbaf7863a59c21eb885b3e569eb9b25f81fc877e3ca7eaada546b3cc0.lean/declarations/mono--b475af4f95fb9fe949373cfb.md) | 264 | `declaration-track:b475af4f95fb9fe949373cfb39da96d2b756737d89d7c1b30ff74269aabad753` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantce1448bfbaf7863a59c21eb885b3e569eb9b25f81fc877e3ca7eaada546b3cc0.lean/declarations/instance--f5c90d7aba7eca4c6a55609b.md) | 268 | `declaration-track:f5c90d7aba7eca4c6a55609b2b3683f747f67476056085d005595842e0f9d074` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantce1448bfbaf7863a59c21eb885b3e569eb9b25f81fc877e3ca7eaada546b3cc0.lean/declarations/instance--6ffc0437d504a5accdeec8ab.md) | 271 | `declaration-track:6ffc0437d504a5accdeec8ab4c4fde599f276e14133661df3df71f8627368bc8` |
| 29 | `theorem` | [cancel_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantce1448bfbaf7863a59c21eb885b3e569eb9b25f81fc877e3ca7eaada546b3cc0.lean/declarations/cancel-epi--af24e55b92bbdc57f82b12b0.md) | 274 | `result-track:af24e55b92bbdc57f82b12b0a0ff48ec06f2bed0ed383a8eee880f6c4184c059` |
| 30 | `theorem` | [cancel_epi_assoc_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantce1448bfbaf7863a59c21eb885b3e569eb9b25f81fc877e3ca7eaada546b3cc0.lean/declarations/cancel-epi-assoc-iff--c43b7d45c629a25878a3598c.md) | 277 | `result-track:c43b7d45c629a25878a3598cb866dd9256659d8f44ca209fbb6bebf32cd42412` |
| 31 | `theorem` | [cancel_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantce1448bfbaf7863a59c21eb885b3e569eb9b25f81fc877e3ca7eaada546b3cc0.lean/declarations/cancel-mono--1b163cf8b0c047c16abd1955.md) | 281 | `result-track:1b163cf8b0c047c16abd195557ee34af52e6ce47eacc2f33f4e25e335fc48f64` |
| 32 | `theorem` | [cancel_mono_assoc_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantce1448bfbaf7863a59c21eb885b3e569eb9b25f81fc877e3ca7eaada546b3cc0.lean/declarations/cancel-mono-assoc-iff--dad9a9dd72b4d17e8a2cfe47.md) | 285 | `result-track:dad9a9dd72b4d17e8a2cfe47bfdd55cfd86b6c154702bb9bf6b7dac3d6c12122` |
| 33 | `theorem` | [cancel_epi_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantce1448bfbaf7863a59c21eb885b3e569eb9b25f81fc877e3ca7eaada546b3cc0.lean/declarations/cancel-epi-id--084d4fbd9a817b7ad52f5c68.md) | 289 | `result-track:084d4fbd9a817b7ad52f5c68aca8abb0774d61b9ead667ca816799e0460ac8a8` |
| 34 | `theorem` | [cancel_mono_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantce1448bfbaf7863a59c21eb885b3e569eb9b25f81fc877e3ca7eaada546b3cc0.lean/declarations/cancel-mono-id--84bcc70d9505a6816f1cb5a3.md) | 293 | `result-track:84bcc70d9505a6816f1cb5a3a9e951253907e21f484301df09444bad8ac846f4` |
| 35 | `instance` | [epi_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantce1448bfbaf7863a59c21eb885b3e569eb9b25f81fc877e3ca7eaada546b3cc0.lean/declarations/epi-comp--ac2399f53446c160416ba307.md) | 299 | `declaration-track:ac2399f53446c160416ba3079613d86b6b121ac2436ef7ba47d34b5c43f6bf5e` |
| 36 | `theorem` | [epi_comp'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantce1448bfbaf7863a59c21eb885b3e569eb9b25f81fc877e3ca7eaada546b3cc0.lean/declarations/epi-comp--8f447681f2eb9a806f17c57d.md) | 304 | `result-track:8f447681f2eb9a806f17c57d3b3f543999d71a1af34d74c5a98d49a658dfc3d4` |
| 37 | `instance` | [mono_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantce1448bfbaf7863a59c21eb885b3e569eb9b25f81fc877e3ca7eaada546b3cc0.lean/declarations/mono-comp--d1d294c236686edfe7151546.md) | 310 | `declaration-track:d1d294c236686edfe715154673500f5af94ce4b7eb1622f01f1a9569a7c32fab` |
| 38 | `theorem` | [mono_comp'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantce1448bfbaf7863a59c21eb885b3e569eb9b25f81fc877e3ca7eaada546b3cc0.lean/declarations/mono-comp--70f83b3ae8a8cf46aa5c386e.md) | 316 | `result-track:70f83b3ae8a8cf46aa5c386ee789abe5df1782dd37390eddcf80cdccf124e089` |
| 39 | `theorem` | [mono_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantce1448bfbaf7863a59c21eb885b3e569eb9b25f81fc877e3ca7eaada546b3cc0.lean/declarations/mono-of-mono--41c846f222ce340dfe691edb.md) | 320 | `result-track:41c846f222ce340dfe691edbb6e4094cc09240312dcc72e28bee719c34d2cd74` |
| 40 | `theorem` | [mono_of_mono_fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantce1448bfbaf7863a59c21eb885b3e569eb9b25f81fc877e3ca7eaada546b3cc0.lean/declarations/mono-of-mono-fac--658563a53cfa3a190eea857d.md) | 323 | `result-track:658563a53cfa3a190eea857d04ab266edd0233a218210dc637eaf3153b8fac9f` |
| 41 | `theorem` | [epi_of_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantce1448bfbaf7863a59c21eb885b3e569eb9b25f81fc877e3ca7eaada546b3cc0.lean/declarations/epi-of-epi--0c7284ce28a2bf4a7c130ec5.md) | 327 | `result-track:0c7284ce28a2bf4a7c130ec502d2bf1323ff8dba8c4be285aa7ab52708f3b7e2` |
| 42 | `theorem` | [epi_of_epi_fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantce1448bfbaf7863a59c21eb885b3e569eb9b25f81fc877e3ca7eaada546b3cc0.lean/declarations/epi-of-epi-fac--d123e809108527402cbcf55a.md) | 330 | `result-track:d123e809108527402cbcf55a57106606d4ad1172297912bb537a603c81b5ec1e` |
| 43 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantce1448bfbaf7863a59c21eb885b3e569eb9b25f81fc877e3ca7eaada546b3cc0.lean/declarations/instance--ad7fc24df64add25abcd35e4.md) | 338 | `declaration-track:ad7fc24df64add25abcd35e4d70f3aabbab133d23a1b2777f23b5779c43554fc` |
| 44 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantce1448bfbaf7863a59c21eb885b3e569eb9b25f81fc877e3ca7eaada546b3cc0.lean/declarations/instance--99ac62f22be398adac7f2399.md) | 341 | `declaration-track:99ac62f22be398adac7f239978b50e0a271199b495827a1eb275b7f540725ca6` |
| 45 | `instance` | [uliftCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantce1448bfbaf7863a59c21eb885b3e569eb9b25f81fc877e3ca7eaada546b3cc0.lean/declarations/uliftcategory--2bb68391d4393afeff87094b.md) | 355 | `declaration-track:2bb68391d4393afeff87094b21959f791d3238cf4f425744867d8f4f4fd3bd07` |
| 46 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantce1448bfbaf7863a59c21eb885b3e569eb9b25f81fc877e3ca7eaada546b3cc0.lean/declarations/example--91b2f6641cf109528195c59d.md) | 361 | `declaration-track:91b2f6641cf109528195c59dd6a257911f3b4322fedb39b5938062d5bae83156` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
