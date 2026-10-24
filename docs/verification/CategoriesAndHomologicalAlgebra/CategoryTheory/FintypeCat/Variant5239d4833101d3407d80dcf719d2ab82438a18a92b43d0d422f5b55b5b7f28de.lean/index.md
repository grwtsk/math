# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FintypeCat.Variant5239d4833101d3407d80dcf719d2ab82438a18a92b43d0d422f5b55b5b7f28de

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cf3122a2d7d9081c9080759a9929d34c34c56b67",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant5239d4833101d3407d80dcf719d2ab82438a18a92b43d0d422f5b55b5b7f28de.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant5239d4833101d3407d80dcf719d2ab82438a18a92b43d0d422f5b55b5b7f28de.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant5239d4833101d3407d80dcf719d2ab82438a18a92b43d0d422f5b55b5b7f28de.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cf3122a2d7d9081c9080759a9929d34c34c56b67`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant5239d4833101d3407d80dcf719d2ab82438a18a92b43d0d422f5b55b5b7f28de.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant5239d4833101d3407d80dcf719d2ab82438a18a92b43d0d422f5b55b5b7f28de.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.ConcreteCategory.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Endomorphism` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Skeletal` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finite.Prod` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FintypeCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant5239d4833101d3407d80dcf719d2ab82438a18a92b43d0d422f5b55b5b7f28de.lean/declarations/fintypecat--711ad7764910471edb15e9dd.md) | 27 | `declaration-track:711ad7764910471edb15e9ddee6c89166002b617ff495b8071849bb947f45d39` |
| 2 | `instance` | [instCoeSort](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant5239d4833101d3407d80dcf719d2ab82438a18a92b43d0d422f5b55b5b7f28de.lean/declarations/instcoesort--8e248be14885ddd11ba2db07.md) | 36 | `declaration-track:8e248be14885ddd11ba2db0742703d9c3a1fa0661c36853eb6df1ef863766b2e` |
| 3 | `abbrev` | [of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant5239d4833101d3407d80dcf719d2ab82438a18a92b43d0d422f5b55b5b7f28de.lean/declarations/of--253a7aee47fa42e15bea496d.md) | 40 | `declaration-track:253a7aee47fa42e15bea496d77ffa53f8fc86283cfa6881ce61dc5c0d6fc126b` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant5239d4833101d3407d80dcf719d2ab82438a18a92b43d0d422f5b55b5b7f28de.lean/declarations/instance--6adff7f0a9d27f140d05385b.md) | 43 | `declaration-track:6adff7f0a9d27f140d05385b2c279ea2edacd65b79276b729eec45bfc1859f2b` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant5239d4833101d3407d80dcf719d2ab82438a18a92b43d0d422f5b55b5b7f28de.lean/declarations/instance--438f18e557206408f464e927.md) | 46 | `declaration-track:438f18e557206408f464e927bfc225628bad2d67c3d545893417a479de74e7f0` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant5239d4833101d3407d80dcf719d2ab82438a18a92b43d0d422f5b55b5b7f28de.lean/declarations/instance--1161451646f6f54a678e64ee.md) | 49 | `declaration-track:1161451646f6f54a678e64eebcbfe4bb48c24046a1af9e7be21e591af7ce64c6` |
| 7 | `def` | [incl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant5239d4833101d3407d80dcf719d2ab82438a18a92b43d0d422f5b55b5b7f28de.lean/declarations/incl--38ea110c6357caeb9c3333bb.md) | 54 | `declaration-track:38ea110c6357caeb9c3333bbe9b4a67b43b1409a9c513a97b5ee3a39d44cc8c8` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant5239d4833101d3407d80dcf719d2ab82438a18a92b43d0d422f5b55b5b7f28de.lean/declarations/instance--bcec3deeb4844b5f2b933f96.md) | 57 | `declaration-track:bcec3deeb4844b5f2b933f9607a03153f633c0bb827a5f630b91494367621890` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant5239d4833101d3407d80dcf719d2ab82438a18a92b43d0d422f5b55b5b7f28de.lean/declarations/instance--730b3f3fdefb16db2b100454.md) | 58 | `declaration-track:730b3f3fdefb16db2b10045400461d352993fbb4b410e15cfeb8f3f1798e881d` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant5239d4833101d3407d80dcf719d2ab82438a18a92b43d0d422f5b55b5b7f28de.lean/declarations/instance--6c862dbeeb4b8cfd8cb5d083.md) | 60 | `declaration-track:6c862dbeeb4b8cfd8cb5d083e2d6f2f6bb29cff3a5c2a3770c0b0570e7091db5` |
| 11 | `instance` | [concreteCategoryFintype](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant5239d4833101d3407d80dcf719d2ab82438a18a92b43d0d422f5b55b5b7f28de.lean/declarations/concretecategoryfintype--833e20702385e16a3dcbb63f.md) | 64 | `declaration-track:833e20702385e16a3dcbb63fe92097efcb8972b0ca3ee372173cfd29789c374e` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant5239d4833101d3407d80dcf719d2ab82438a18a92b43d0d422f5b55b5b7f28de.lean/declarations/instance--c220430c2d01eb84c8031f58.md) | 69 | `declaration-track:c220430c2d01eb84c8031f58c71d0c3f7e249a5fc8388cbec80c95f4d0fe76ad` |
| 13 | `theorem` | [id_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant5239d4833101d3407d80dcf719d2ab82438a18a92b43d0d422f5b55b5b7f28de.lean/declarations/id-apply--ee28934bffbcea51bda4fe63.md) | 72 | `result-track:ee28934bffbcea51bda4fe63ccb1fd60da3d48ef6a2d55bbb8a3819975b90e63` |
| 14 | `theorem` | [comp_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant5239d4833101d3407d80dcf719d2ab82438a18a92b43d0d422f5b55b5b7f28de.lean/declarations/comp-apply--1fb6dfacf81993e5abbc9f85.md) | 76 | `result-track:1fb6dfacf81993e5abbc9f85b780f712f5f14e45c96375f819f059663136acc6` |
| 15 | `lemma` | [hom_inv_id_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant5239d4833101d3407d80dcf719d2ab82438a18a92b43d0d422f5b55b5b7f28de.lean/declarations/hom-inv-id-apply--d7b2c4cd2ae018b51c19235c.md) | 80 | `result-track:d7b2c4cd2ae018b51c19235cbb5de8b5a6a25fd383640b17e0365dfd316b8da8` |
| 16 | `lemma` | [inv_hom_id_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant5239d4833101d3407d80dcf719d2ab82438a18a92b43d0d422f5b55b5b7f28de.lean/declarations/inv-hom-id-apply--8b18420f3c337a5e25749fb6.md) | 84 | `result-track:8b18420f3c337a5e25749fb65081152c58ff1a183ed8c55259cd04a8414e3ca0` |
| 17 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant5239d4833101d3407d80dcf719d2ab82438a18a92b43d0d422f5b55b5b7f28de.lean/declarations/hom-ext--05e7335dce4309bd57a01407.md) | 88 | `result-track:05e7335dce4309bd57a014072f8f242eab3b4bddc7bf749d64fbf2398e2a8ea9` |
| 18 | `def` | [equivEquivIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant5239d4833101d3407d80dcf719d2ab82438a18a92b43d0d422f5b55b5b7f28de.lean/declarations/equivequiviso--3fcb3715ac478ec7deb01676.md) | 95 | `declaration-track:3fcb3715ac478ec7deb016762b192dd7e6421df4fad5b40361b7858e0353f72d` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant5239d4833101d3407d80dcf719d2ab82438a18a92b43d0d422f5b55b5b7f28de.lean/declarations/instance--b97c4c37042a0b8282847602.md) | 107 | `declaration-track:b97c4c37042a0b828284760238359e9277f3daf46a75fa7172852bea188b8d37` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant5239d4833101d3407d80dcf719d2ab82438a18a92b43d0d422f5b55b5b7f28de.lean/declarations/instance--3a0e286a6f7fa68b0ebc0a82.md) | 110 | `declaration-track:3a0e286a6f7fa68b0ebc0a82c83f8d25f7a2394e9c4a7786d96fea22b9796c82` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant5239d4833101d3407d80dcf719d2ab82438a18a92b43d0d422f5b55b5b7f28de.lean/declarations/instance--1a6b73e7e029f34226f485d2.md) | 113 | `declaration-track:1a6b73e7e029f34226f485d21015a63809cbaea75508a264938d41bebff41723` |
| 22 | `def` | [Skeleton](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant5239d4833101d3407d80dcf719d2ab82438a18a92b43d0d422f5b55b5b7f28de.lean/declarations/skeleton--7a90f55d78a85111ea78858d.md) | 125 | `declaration-track:7a90f55d78a85111ea78858d9b1d0e8f406bd8669791ac9078e44dce38c2bc9a` |
| 23 | `def` | [mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant5239d4833101d3407d80dcf719d2ab82438a18a92b43d0d422f5b55b5b7f28de.lean/declarations/mk--fd096666e2e559a0deebba66.md) | 131 | `declaration-track:fd096666e2e559a0deebba661ea4a358d8fbebc5a6197b790a9b6e959f5e9631` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant5239d4833101d3407d80dcf719d2ab82438a18a92b43d0d422f5b55b5b7f28de.lean/declarations/instance--80b46e489018944d2a1c43da.md) | 134 | `declaration-track:80b46e489018944d2a1c43da6e3692468b877132c36721e58b8b6fabf42ebf75` |
| 25 | `def` | [len](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant5239d4833101d3407d80dcf719d2ab82438a18a92b43d0d422f5b55b5b7f28de.lean/declarations/len--6f81a5bd418b84c6bf2afb52.md) | 138 | `declaration-track:6f81a5bd418b84c6bf2afb528d72663d312d530365a9dcb4ecd15417f0b0ebf8` |
| 26 | `theorem` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant5239d4833101d3407d80dcf719d2ab82438a18a92b43d0d422f5b55b5b7f28de.lean/declarations/ext--5aa193712bc94237227d8044.md) | 142 | `result-track:5aa193712bc94237227d8044a7a9b6dea5847a77ef1d470eb00fa7f39ddf0f55` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant5239d4833101d3407d80dcf719d2ab82438a18a92b43d0d422f5b55b5b7f28de.lean/declarations/instance--fee38cea6a406c0bef5551f4.md) | 145 | `declaration-track:fee38cea6a406c0bef5551f4ea7fc14ececae19b482fc65935b6fd8e4c99c275` |
| 28 | `theorem` | [is_skeletal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant5239d4833101d3407d80dcf719d2ab82438a18a92b43d0d422f5b55b5b7f28de.lean/declarations/is-skeletal--1e97ec939fa236c07b183983.md) | 150 | `result-track:1e97ec939fa236c07b1839836403e56646273ef7d84a2fe463f21a7456450455` |
| 29 | `def` | [incl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant5239d4833101d3407d80dcf719d2ab82438a18a92b43d0d422f5b55b5b7f28de.lean/declarations/incl--28966789aa01f0826b12b587.md) | 172 | `declaration-track:28966789aa01f0826b12b587f3821616effc830ba5ba505065d5f8396f1d0cb4` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant5239d4833101d3407d80dcf719d2ab82438a18a92b43d0d422f5b55b5b7f28de.lean/declarations/instance--6b139eea9c734b00f1b0eacf.md) | 176 | `declaration-track:6b139eea9c734b00f1b0eacf771712098fde679126baf6952785945cb11bf214` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant5239d4833101d3407d80dcf719d2ab82438a18a92b43d0d422f5b55b5b7f28de.lean/declarations/instance--c216fc0b2408c2a833fd03a0.md) | 178 | `declaration-track:c216fc0b2408c2a833fd03a0add4becfdf462a4b83c48d35b61e2b24a640ce43` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant5239d4833101d3407d80dcf719d2ab82438a18a92b43d0d422f5b55b5b7f28de.lean/declarations/instance--9659d9e539ba4db7b28419e2.md) | 180 | `declaration-track:9659d9e539ba4db7b28419e211461a519743dc18a7c71599a0a6d978e4cc30e9` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant5239d4833101d3407d80dcf719d2ab82438a18a92b43d0d422f5b55b5b7f28de.lean/declarations/instance--6d9383eb6d8a2eb9db0fb3a7.md) | 188 | `declaration-track:6d9383eb6d8a2eb9db0fb3a7014d95ded8db676d19fc865a78f3072c39d3e6bc` |
| 34 | `def` | [equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant5239d4833101d3407d80dcf719d2ab82438a18a92b43d0d422f5b55b5b7f28de.lean/declarations/equivalence--898d2e1daa3e43bc182aaf3a.md) | 191 | `declaration-track:898d2e1daa3e43bc182aaf3af2838399474da422628d41518fc68bc810c4c5e7` |
| 35 | `theorem` | [incl_mk_nat_card](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant5239d4833101d3407d80dcf719d2ab82438a18a92b43d0d422f5b55b5b7f28de.lean/declarations/incl-mk-nat-card--7951c0ec08c62042839a3a00.md) | 195 | `result-track:7951c0ec08c62042839a3a005b8f3ef02aaa8bf8be6e34ca94dc33009694c241` |
| 36 | `lemma` | [isSkeleton](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant5239d4833101d3407d80dcf719d2ab82438a18a92b43d0d422f5b55b5b7f28de.lean/declarations/isskeleton--9f95cdb2c26e3958fad7cef4.md) | 202 | `result-track:9f95cdb2c26e3958fad7cef45480491d1d214b90e70f91e35de4125805d106bf` |
| 37 | `def` | [uSwitch](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant5239d4833101d3407d80dcf719d2ab82438a18a92b43d0d422f5b55b5b7f28de.lean/declarations/uswitch--79eee929179dcc858aa4ab96.md) | 213 | `declaration-track:79eee929179dcc858aa4ab961991af7404228b6c448129a79e048752b0f48b32` |
| 38 | `def` | [uSwitchEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant5239d4833101d3407d80dcf719d2ab82438a18a92b43d0d422f5b55b5b7f28de.lean/declarations/uswitchequiv--39e455bb9b3c21239a35d3cc.md) | 221 | `declaration-track:39e455bb9b3c21239a35d3cc60753d90e070ebeb67d5507395fcc0bf64500e08` |
| 39 | `lemma` | [uSwitchEquiv_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant5239d4833101d3407d80dcf719d2ab82438a18a92b43d0d422f5b55b5b7f28de.lean/declarations/uswitchequiv-naturality--c9704ff7687020c2918c6a1e.md) | 225 | `result-track:c9704ff7687020c2918c6a1e35102398e45a6442a6062fda8307fbe548cea5b5` |
| 40 | `lemma` | [uSwitchEquiv_symm_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant5239d4833101d3407d80dcf719d2ab82438a18a92b43d0d422f5b55b5b7f28de.lean/declarations/uswitchequiv-symm-naturality--46975d7c9611b2d43d2862c1.md) | 230 | `result-track:46975d7c9611b2d43d2862c1cefab9f320701c3cb6f53e02bf2fc334b91b2197` |
| 41 | `lemma` | [uSwitch_map_uSwitch_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant5239d4833101d3407d80dcf719d2ab82438a18a92b43d0d422f5b55b5b7f28de.lean/declarations/uswitch-map-uswitch-map--234c6b3998163d2266185d79.md) | 235 | `result-track:234c6b3998163d2266185d79a80dd38a401991d68faf55d27971afbd64751fe3` |
| 42 | `def` | [uSwitchEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant5239d4833101d3407d80dcf719d2ab82438a18a92b43d0d422f5b55b5b7f28de.lean/declarations/uswitchequivalence--dbfb15ff53b9d3d4e3180fb8.md) | 246 | `declaration-track:dbfb15ff53b9d3d4e3180fb88d3bb52623684dc4a25eda6f2ed7e733f197a962` |
| 43 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant5239d4833101d3407d80dcf719d2ab82438a18a92b43d0d422f5b55b5b7f28de.lean/declarations/instance--5d0aab21a50b9ff4202db3ad.md) | 259 | `declaration-track:5d0aab21a50b9ff4202db3ad881f86710b09d78f1bbf204b8f111a81224adcd7` |
| 44 | `lemma` | [naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant5239d4833101d3407d80dcf719d2ab82438a18a92b43d0d422f5b55b5b7f28de.lean/declarations/naturality--0bad58945cea1e10dd353063.md) | 272 | `result-track:0bad58945cea1e10dd3530638606e3b3be3a13a63a0bd8b207db63645c28fef2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
