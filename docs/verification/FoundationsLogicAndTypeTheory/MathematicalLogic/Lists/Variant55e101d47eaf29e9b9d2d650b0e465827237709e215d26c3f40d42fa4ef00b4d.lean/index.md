# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Lists.Variant55e101d47eaf29e9b9d2d650b0e465827237709e215d26c3f40d42fa4ef00b4d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "df5ecb33c68697a9d3be27bc7615c9452583bd80",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant55e101d47eaf29e9b9d2d650b0e465827237709e215d26c3f40d42fa4ef00b4d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant55e101d47eaf29e9b9d2d650b0e465827237709e215d26c3f40d42fa4ef00b4d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant55e101d47eaf29e9b9d2d650b0e465827237709e215d26c3f40d42fa4ef00b4d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `df5ecb33c68697a9d3be27bc7615c9452583bd80`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant55e101d47eaf29e9b9d2d650b0e465827237709e215d26c3f40d42fa4ef00b4d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant55e101d47eaf29e9b9d2d650b0e465827237709e215d26c3f40d42fa4ef00b4d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Lists'.](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant55e101d47eaf29e9b9d2d650b0e465827237709e215d26c3f40d42fa4ef00b4d.lean/declarations/lists--06954accb4cc845f4261bfa6.md) | 59 | `declaration-track:06954accb4cc845f4261bfa679a2488245eadfda56e458733f5bcd7fc2b8fcf6` |
| 2 | `def` | [Lists](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant55e101d47eaf29e9b9d2d650b0e465827237709e215d26c3f40d42fa4ef00b4d.lean/declarations/lists--3fe1852a62a246dfd00c596d.md) | 70 | `declaration-track:3fe1852a62a246dfd00c596d48dbb2abce7d326b19863f1a14abd94be5cfea07` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant55e101d47eaf29e9b9d2d650b0e465827237709e215d26c3f40d42fa4ef00b4d.lean/declarations/instance--8f7d9f11b5e9322fff0b9c6d.md) | 76 | `declaration-track:8f7d9f11b5e9322fff0b9c6d217b44ce4ec56b00d6b96ddf9c43bf5a3404ccbf` |
| 4 | `def` | [cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant55e101d47eaf29e9b9d2d650b0e465827237709e215d26c3f40d42fa4ef00b4d.lean/declarations/cons--84204e87fc19b3b66d490039.md) | 81 | `declaration-track:84204e87fc19b3b66d4900399376ea8370ecd0f5d906c217abfd7667783570c7` |
| 5 | `def` | [toList](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant55e101d47eaf29e9b9d2d650b0e465827237709e215d26c3f40d42fa4ef00b4d.lean/declarations/tolist--58746175bce57ea53cf4b53f.md) | 87 | `declaration-track:58746175bce57ea53cf4b53f815250002dbb6c90d9a08bcf01b0c56e93230937` |
| 6 | `theorem` | [toList_cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant55e101d47eaf29e9b9d2d650b0e465827237709e215d26c3f40d42fa4ef00b4d.lean/declarations/tolist-cons--19614489e6e001955660bdcf.md) | 95 | `result-track:19614489e6e001955660bdcf027af0dd2ef45bc7bee9a13426b9b2c709000ec1` |
| 7 | `def` | [ofList](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant55e101d47eaf29e9b9d2d650b0e465827237709e215d26c3f40d42fa4ef00b4d.lean/declarations/oflist--f5c127923a854cf6b4f59516.md) | 100 | `declaration-track:f5c127923a854cf6b4f59516c2cc78d207a0968eb431120dfa924ecb823f6f95` |
| 8 | `theorem` | [to_ofList](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant55e101d47eaf29e9b9d2d650b0e465827237709e215d26c3f40d42fa4ef00b4d.lean/declarations/to-oflist--3efb7f3dbb0639fe7292506c.md) | 106 | `result-track:3efb7f3dbb0639fe7292506c8879d793c5d6f2533fc781501f9353ffaf4e398e` |
| 9 | `theorem` | [of_toList](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant55e101d47eaf29e9b9d2d650b0e465827237709e215d26c3f40d42fa4ef00b4d.lean/declarations/of-tolist--3c8081801ebd04bd7e4d2a0c.md) | 110 | `result-track:3c8081801ebd04bd7e4d2a0ccd012703119107957bf00b26bb5d3f338cbe1392` |
| 10 | `inductive` | [Lists.Equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant55e101d47eaf29e9b9d2d650b0e465827237709e215d26c3f40d42fa4ef00b4d.lean/declarations/lists-equiv--7f910151ce150be00eca398e.md) | 133 | `declaration-track:7f910151ce150be00eca398ec16781af2640fce04036f96fda9d031d72ed51da` |
| 11 | `inductive` | [Lists'.Subset](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant55e101d47eaf29e9b9d2d650b0e465827237709e215d26c3f40d42fa4ef00b4d.lean/declarations/lists-subset--c9045638984d72be9733d6b0.md) | 137 | `declaration-track:c9045638984d72be9733d6b0cff7ff7c2a0b7ae1f30f84a1fafa76ad9e9a4986` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant55e101d47eaf29e9b9d2d650b0e465827237709e215d26c3f40d42fa4ef00b4d.lean/declarations/instance--52234630f36bc6791ebc38b4.md) | 156 | `declaration-track:52234630f36bc6791ebc38b42f1abbebb8f91f8446fa099f6bb7bc2aedf7f443` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant55e101d47eaf29e9b9d2d650b0e465827237709e215d26c3f40d42fa4ef00b4d.lean/declarations/instance--746c40d1a1d159a23eb21174.md) | 161 | `declaration-track:746c40d1a1d159a23eb211744c647d4db286663302646a663cb11f2e4caac08d` |
| 14 | `theorem` | [mem_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant55e101d47eaf29e9b9d2d650b0e465827237709e215d26c3f40d42fa4ef00b4d.lean/declarations/mem-def--d43de1a1fd340c76ec369c0f.md) | 164 | `result-track:d43de1a1fd340c76ec369c0fea91e4fc583aaac700bf0fc37f79fa66a415d2e1` |
| 15 | `theorem` | [mem_cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant55e101d47eaf29e9b9d2d650b0e465827237709e215d26c3f40d42fa4ef00b4d.lean/declarations/mem-cons--21cc3165346b09f7351c13d7.md) | 169 | `result-track:21cc3165346b09f7351c13d762c315dff22b4fdf129428330fe553fb7094a750` |
| 16 | `theorem` | [cons_subset](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant55e101d47eaf29e9b9d2d650b0e465827237709e215d26c3f40d42fa4ef00b4d.lean/declarations/cons-subset--d05650939ffdbbd543d7595f.md) | 173 | `result-track:d05650939ffdbbd543d7595f16d73f4a4bab9e101322d9d590522e90bcf20df6` |
| 17 | `theorem` | [ofList_subset](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant55e101d47eaf29e9b9d2d650b0e465827237709e215d26c3f40d42fa4ef00b4d.lean/declarations/oflist-subset--a23c9331de61c4410065bb67.md) | 182 | `result-track:a23c9331de61c4410065bb67e6fe9b7e210493e5c24d2264b601c4618662e477` |
| 18 | `theorem` | [Subset.refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant55e101d47eaf29e9b9d2d650b0e465827237709e215d26c3f40d42fa4ef00b4d.lean/declarations/subset-refl--3e375cbb63492ddc5a762fa2.md) | 190 | `result-track:3e375cbb63492ddc5a762fa29f78d71bbfb870bba2228be675b60ade989a3c15` |
| 19 | `theorem` | [subset_nil](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant55e101d47eaf29e9b9d2d650b0e465827237709e215d26c3f40d42fa4ef00b4d.lean/declarations/subset-nil--0f42180011c7d07c68717ca0.md) | 194 | `result-track:0f42180011c7d07c68717ca0465652bfdad2fdc24039d7748815511d6f606622` |
| 20 | `theorem` | [mem_of_subset'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant55e101d47eaf29e9b9d2d650b0e465827237709e215d26c3f40d42fa4ef00b4d.lean/declarations/mem-of-subset--273419476f99a27fcb46ba9f.md) | 201 | `result-track:273419476f99a27fcb46ba9f68139bd3e2c55904d10a4a9218b6e060ee011711` |
| 21 | `theorem` | [subset_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant55e101d47eaf29e9b9d2d650b0e465827237709e215d26c3f40d42fa4ef00b4d.lean/declarations/subset-def--0f3e6c34d898182c7e8d0b8c.md) | 211 | `result-track:0f3e6c34d898182c7e8d0b8c8e2fac41b35d90d411588cc3ade5b7b09dc92f79` |
| 22 | `def` | [atom](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant55e101d47eaf29e9b9d2d650b0e465827237709e215d26c3f40d42fa4ef00b4d.lean/declarations/atom--b8b7a407b32b61aa7b772830.md) | 226 | `declaration-track:b8b7a407b32b61aa7b7728303502b376e55e1932655958dc9c03f71598d1b3e7` |
| 23 | `def` | [of'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant55e101d47eaf29e9b9d2d650b0e465827237709e215d26c3f40d42fa4ef00b4d.lean/declarations/of--b8c96722d099eeaa835986d2.md) | 232 | `declaration-track:b8c96722d099eeaa835986d26e34caec35531b39735ac89297ff0373bfcab792` |
| 24 | `def` | [toList](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant55e101d47eaf29e9b9d2d650b0e465827237709e215d26c3f40d42fa4ef00b4d.lean/declarations/tolist--111c22d55699f3f1495b44b1.md) | 238 | `declaration-track:111c22d55699f3f1495b44b1916d9d1279a81f38d6db0b6afcfc3c1507de9dd8` |
| 25 | `def` | [IsList](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant55e101d47eaf29e9b9d2d650b0e465827237709e215d26c3f40d42fa4ef00b4d.lean/declarations/islist--14a782412930f21decaa083b.md) | 243 | `declaration-track:14a782412930f21decaa083b7e79c5327196ffe8b311063e885cc17890daa0b1` |
| 26 | `def` | [ofList](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant55e101d47eaf29e9b9d2d650b0e465827237709e215d26c3f40d42fa4ef00b4d.lean/declarations/oflist--11540a265e3cc535ea1fec6f.md) | 248 | `declaration-track:11540a265e3cc535ea1fec6fdb71ba665af2bab2f5a26339860221ab16381c99` |
| 27 | `theorem` | [isList_toList](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant55e101d47eaf29e9b9d2d650b0e465827237709e215d26c3f40d42fa4ef00b4d.lean/declarations/islist-tolist--5d3243e1b1a8f02a97c5aeb7.md) | 252 | `result-track:5d3243e1b1a8f02a97c5aeb7ff221736bd7519835065123150361f589bd7ef4a` |
| 28 | `theorem` | [to_ofList](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant55e101d47eaf29e9b9d2d650b0e465827237709e215d26c3f40d42fa4ef00b4d.lean/declarations/to-oflist--b9e789ca8c327f4f77b9b622.md) | 256 | `result-track:b9e789ca8c327f4f77b9b62203323051b74faf57491af70410a20adc6fe83638` |
| 29 | `theorem` | [of_toList](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant55e101d47eaf29e9b9d2d650b0e465827237709e215d26c3f40d42fa4ef00b4d.lean/declarations/of-tolist--e57caa88806930772832755c.md) | 259 | `result-track:e57caa88806930772832755c7dd2c299284fbae5693af68b1a33d14804b46638` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant55e101d47eaf29e9b9d2d650b0e465827237709e215d26c3f40d42fa4ef00b4d.lean/declarations/instance--34433a4aeee27f7f81fcfd1d.md) | 263 | `declaration-track:34433a4aeee27f7f81fcfd1db47e0b836b4913037d3fbdc407a417ec5809bf8e` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant55e101d47eaf29e9b9d2d650b0e465827237709e215d26c3f40d42fa4ef00b4d.lean/declarations/instance--dd653dd85726d128a8b8d5f4.md) | 266 | `declaration-track:dd653dd85726d128a8b8d5f4c4fedbca6948ab7e4f07555714397c038902dc49` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant55e101d47eaf29e9b9d2d650b0e465827237709e215d26c3f40d42fa4ef00b4d.lean/declarations/instance--a8b93c0eb8a8d41e57c46707.md) | 268 | `declaration-track:a8b93c0eb8a8d41e57c46707bb7098b4ca9f756d86855686376875e0e06577b1` |
| 33 | `def` | [inductionMut](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant55e101d47eaf29e9b9d2d650b0e465827237709e215d26c3f40d42fa4ef00b4d.lean/declarations/inductionmut--40f5dc561ab0c4808f2d37db.md) | 271 | `declaration-track:40f5dc561ab0c4808f2d37dbb213971940d80dd3401e6805047e93442847060b` |
| 34 | `def` | [mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant55e101d47eaf29e9b9d2d650b0e465827237709e215d26c3f40d42fa4ef00b4d.lean/declarations/mem--f429a974925e796c5a59b45b.md) | 292 | `declaration-track:f429a974925e796c5a59b45b084c276f8f063a12f8faf9c0b1155b0825228b98` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant55e101d47eaf29e9b9d2d650b0e465827237709e215d26c3f40d42fa4ef00b4d.lean/declarations/instance--85e9d7801de64724e706e0ba.md) | 297 | `declaration-track:85e9d7801de64724e706e0ba2c770825bd615219958d8f921e9030b3c337958b` |
| 36 | `theorem` | [isList_of_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant55e101d47eaf29e9b9d2d650b0e465827237709e215d26c3f40d42fa4ef00b4d.lean/declarations/islist-of-mem--bc3d69275bfe0f15fe1e0b1a.md) | 300 | `result-track:bc3d69275bfe0f15fe1e0b1a1f66fbfe0575bac75d60d9d2d85be86187c297d7` |
| 37 | `theorem` | [Equiv.antisymm_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant55e101d47eaf29e9b9d2d650b0e465827237709e215d26c3f40d42fa4ef00b4d.lean/declarations/equiv-antisymm-iff--48d2816fc256bc3e98e0a5dd.md) | 305 | `result-track:48d2816fc256bc3e98e0a5dd628e13c9e30dbc1959926b86a1c12e385ee35a69` |
| 38 | `theorem` | [equiv_atom](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant55e101d47eaf29e9b9d2d650b0e465827237709e215d26c3f40d42fa4ef00b4d.lean/declarations/equiv-atom--01c4045b113414c39f2e78f1.md) | 314 | `result-track:01c4045b113414c39f2e78f106b2f3b11cea29b0e0be13bfc2e4e25eb7909adf` |
| 39 | `theorem` | [Equiv.symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant55e101d47eaf29e9b9d2d650b0e465827237709e215d26c3f40d42fa4ef00b4d.lean/declarations/equiv-symm--6b2d39a8cfb3417ddb11cfd3.md) | 319 | `result-track:6b2d39a8cfb3417ddb11cfd31d668e06baca841d9ed5a81fcf5d4a7500cdbf23` |
| 40 | `theorem` | [Equiv.trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant55e101d47eaf29e9b9d2d650b0e465827237709e215d26c3f40d42fa4ef00b4d.lean/declarations/equiv-trans--be46da62be1fd00b4654f617.md) | 323 | `result-track:be46da62be1fd00b4654f617ffb84d76b634f49cbf3618f87b5c9153ef9b1fc8` |
| 41 | `instance` | [instSetoidLists](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant55e101d47eaf29e9b9d2d650b0e465827237709e215d26c3f40d42fa4ef00b4d.lean/declarations/instsetoidlists--e0d75ae53e458bd02bcad7b5.md) | 362 | `declaration-track:e0d75ae53e458bd02bcad7b509c16e60f2b90bc11ef7517c496252ec244251dd` |
| 42 | `def` | [Equiv.decidableMeas](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant55e101d47eaf29e9b9d2d650b0e465827237709e215d26c3f40d42fa4ef00b4d.lean/declarations/equiv-decidablemeas--9988e9f6164a0e276f1fb606.md) | 369 | `declaration-track:9988e9f6164a0e276f1fb606875e32cc6f7f78ed9774a5d3ca6e5ec833cfc1dd` |
| 43 | `theorem` | [sizeof_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant55e101d47eaf29e9b9d2d650b0e465827237709e215d26c3f40d42fa4ef00b4d.lean/declarations/sizeof-pos--12c548a62add75ac6e161acb.md) | 378 | `result-track:12c548a62add75ac6e161acb46b762ac8b76aa9ca6689d35e3bcf4f2b3a9b750` |
| 44 | `theorem` | [lt_sizeof_cons'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant55e101d47eaf29e9b9d2d650b0e465827237709e215d26c3f40d42fa4ef00b4d.lean/declarations/lt-sizeof-cons--8cd12973d4d7ab3a38d88c54.md) | 383 | `result-track:8cd12973d4d7ab3a38d88c54466247abb822f8eca7a38ea373d1b161280da32a` |
| 45 | `instance` | [Equiv.decidable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant55e101d47eaf29e9b9d2d650b0e465827237709e215d26c3f40d42fa4ef00b4d.lean/declarations/equiv-decidable--680edbb3c31517bb1eaa1289.md) | 392 | `declaration-track:680edbb3c31517bb1eaa128927f8128566067b790d1a0e558bc516ba1f46f798` |
| 46 | `instance` | [Subset.decidable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant55e101d47eaf29e9b9d2d650b0e465827237709e215d26c3f40d42fa4ef00b4d.lean/declarations/subset-decidable--a57163385e05f6ea2f7153a9.md) | 413 | `declaration-track:a57163385e05f6ea2f7153a9ab3ee612bbed9cdc815abc193c2a0d5d4b12ce2f` |
| 47 | `instance` | [mem.decidable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant55e101d47eaf29e9b9d2d650b0e465827237709e215d26c3f40d42fa4ef00b4d.lean/declarations/mem-decidable--216b4cce07317edbe5bb4498.md) | 425 | `declaration-track:216b4cce07317edbe5bb44985a85167092c44d1e9255cfd283bd35353ea34eda` |
| 48 | `theorem` | [mem_equiv_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant55e101d47eaf29e9b9d2d650b0e465827237709e215d26c3f40d42fa4ef00b4d.lean/declarations/mem-equiv-left--59807bafb8de5a3e3268e33a.md) | 454 | `result-track:59807bafb8de5a3e3268e33ae699daa88dd0705e0924520ba48549986862da54` |
| 49 | `theorem` | [mem_of_subset](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant55e101d47eaf29e9b9d2d650b0e465827237709e215d26c3f40d42fa4ef00b4d.lean/declarations/mem-of-subset--05878ed53ebbdec8afc37664.md) | 459 | `result-track:05878ed53ebbdec8afc37664c586a70c5dc277ddb4f114dfddca2e1827335b4b` |
| 50 | `theorem` | [Subset.trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant55e101d47eaf29e9b9d2d650b0e465827237709e215d26c3f40d42fa4ef00b4d.lean/declarations/subset-trans--5104c40e99240c06ff398b31.md) | 463 | `result-track:5104c40e99240c06ff398b3188bd350872a721d40011b80726895bd985d5ee05` |
| 51 | `def` | [Finsets](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant55e101d47eaf29e9b9d2d650b0e465827237709e215d26c3f40d42fa4ef00b4d.lean/declarations/finsets--145ad6dddb2e946fc7505fee.md) | 470 | `declaration-track:145ad6dddb2e946fc7505fee11bb52d1d4afd3723dc263046ace7a08971fcfcd` |
| 52 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant55e101d47eaf29e9b9d2d650b0e465827237709e215d26c3f40d42fa4ef00b4d.lean/declarations/instance--e19307ade7c54887e4aff1d1.md) | 476 | `declaration-track:e19307ade7c54887e4aff1d11421b55ea6f4afd5e0010bfcda5373576f46bf5d` |
| 53 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant55e101d47eaf29e9b9d2d650b0e465827237709e215d26c3f40d42fa4ef00b4d.lean/declarations/instance--6f3ebaeddc1a0fd3e76156bd.md) | 479 | `declaration-track:6f3ebaeddc1a0fd3e76156bd45f696f328f8f369badd5a46538ef1391ac83b92` |
| 54 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant55e101d47eaf29e9b9d2d650b0e465827237709e215d26c3f40d42fa4ef00b4d.lean/declarations/instance--7925f2066fb791bdb0a035e2.md) | 482 | `declaration-track:7925f2066fb791bdb0a035e2f7525c4f0a3791a76584ca89843c64ea54d4c7ab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
