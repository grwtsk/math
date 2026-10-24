# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PresheafedSpace.Variant4577a88b49f4fd7e7104078af8bd34ba2e02a9183a0ee211c2b6e52b09ff6128

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d51774576f959be438bcf92ed8816fce9861fb1f",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant4577a88b49f4fd7e7104078af8bd34ba2e02a9183a0ee211c2b6e52b09ff6128.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant4577a88b49f4fd7e7104078af8bd34ba2e02a9183a0ee211c2b6e52b09ff6128.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant4577a88b49f4fd7e7104078af8bd34ba2e02a9183a0ee211c2b6e52b09ff6128.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d51774576f959be438bcf92ed8816fce9861fb1f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant4577a88b49f4fd7e7104078af8bd34ba2e02a9183a0ee211c2b6e52b09ff6128.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant4577a88b49f4fd7e7104078af8bd34ba2e02a9183a0ee211c2b6e52b09ff6128.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Sheaves.Presheaf` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.FullyFaithful` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PresheafedSpace](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant4577a88b49f4fd7e7104078af8bd34ba2e02a9183a0ee211c2b6e52b09ff6128.lean/declarations/presheafedspace--7b82f1a06436177ecf61b245.md) | 56 | `declaration-track:7b82f1a06436177ecf61b24567786e17b16198a2b0c637feb873a816b9c2c2e3` |
| 2 | `instance` | [coeCarrier](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant4577a88b49f4fd7e7104078af8bd34ba2e02a9183a0ee211c2b6e52b09ff6128.lean/declarations/coecarrier--2c2a7b4c1ceaa4c116004be1.md) | 67 | `declaration-track:2c2a7b4c1ceaa4c116004be17b55293d56ae29114c3a7794751d12829f5df91a` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant4577a88b49f4fd7e7104078af8bd34ba2e02a9183a0ee211c2b6e52b09ff6128.lean/declarations/instance--f809a540c8820178f80187f0.md) | 75 | `declaration-track:f809a540c8820178f80187f0e0d4ca4853aceea80f6bd50796494ec8cc585f22` |
| 4 | `theorem` | [mk_coe](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant4577a88b49f4fd7e7104078af8bd34ba2e02a9183a0ee211c2b6e52b09ff6128.lean/declarations/mk-coe--bc6bdfa9e2ce3a4a25b43e15.md) | 86 | `result-track:bc6bdfa9e2ce3a4a25b43e151c1bbd05d91e1dcb84d030aa6e70a6660f30a72b` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant4577a88b49f4fd7e7104078af8bd34ba2e02a9183a0ee211c2b6e52b09ff6128.lean/declarations/instance--6ef7a792c06f6837d7d20437.md) | 93 | `declaration-track:6ef7a792c06f6837d7d2043756b22f6d5537e4becc5a783e49e91694e8516531` |
| 6 | `def` | [const](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant4577a88b49f4fd7e7104078af8bd34ba2e02a9183a0ee211c2b6e52b09ff6128.lean/declarations/const--171ae88aa8d115513d31143f.md) | 97 | `declaration-track:171ae88aa8d115513d31143fcd208617d72224e1265fe7b423731fe9aa2d12c0` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant4577a88b49f4fd7e7104078af8bd34ba2e02a9183a0ee211c2b6e52b09ff6128.lean/declarations/instance--129b9ea2562417a6727b1cb1.md) | 103 | `declaration-track:129b9ea2562417a6727b1cb11c078286477fabe557d0a0025acd405c70ac615e` |
| 8 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant4577a88b49f4fd7e7104078af8bd34ba2e02a9183a0ee211c2b6e52b09ff6128.lean/declarations/hom--f55d0c77e244915fe9c9ee79.md) | 109 | `declaration-track:f55d0c77e244915fe9c9ee791aac65a77feb1cb8961fb43c4fdc3fbe99daa2f5` |
| 9 | `theorem` | [Hom.ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant4577a88b49f4fd7e7104078af8bd34ba2e02a9183a0ee211c2b6e52b09ff6128.lean/declarations/hom-ext--95b017fade0fb7dec6428053.md) | 120 | `result-track:95b017fade0fb7dec6428053e7d571120be99bf57a6db1703abfcc72669f22e5` |
| 10 | `theorem` | [hext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant4577a88b49f4fd7e7104078af8bd34ba2e02a9183a0ee211c2b6e52b09ff6128.lean/declarations/hext--5d00c6fe5bc74a7c96bb8970.md) | 134 | `result-track:5d00c6fe5bc74a7c96bb89702a2c61bfaa21be1b9c8c79e31ec08072f501da98` |
| 11 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant4577a88b49f4fd7e7104078af8bd34ba2e02a9183a0ee211c2b6e52b09ff6128.lean/declarations/id--5db5b37a5a1ebfc6c204ccd0.md) | 144 | `declaration-track:5db5b37a5a1ebfc6c204ccd0a13a8bd9473daad09367b4b159dc5f83d6c8f6fb` |
| 12 | `instance` | [homInhabited](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant4577a88b49f4fd7e7104078af8bd34ba2e02a9183a0ee211c2b6e52b09ff6128.lean/declarations/hominhabited--65738d89a7d0d48ec361a49a.md) | 150 | `declaration-track:65738d89a7d0d48ec361a49add13eefa5f53552a2b70966e6f4f379ae753640e` |
| 13 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant4577a88b49f4fd7e7104078af8bd34ba2e02a9183a0ee211c2b6e52b09ff6128.lean/declarations/comp--8efd3eaadd7c2e44214c39fe.md) | 156 | `declaration-track:8efd3eaadd7c2e44214c39fefa89130e55fbd658c1fbcac73064523681091595` |
| 14 | `theorem` | [comp_c](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant4577a88b49f4fd7e7104078af8bd34ba2e02a9183a0ee211c2b6e52b09ff6128.lean/declarations/comp-c--7014532349d0bbba6de7f7d1.md) | 162 | `result-track:7014532349d0bbba6de7f7d18e2aef56398d1c1c21b3751239b8d82a4e844da6` |
| 15 | `instance` | [categoryOfPresheafedSpaces](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant4577a88b49f4fd7e7104078af8bd34ba2e02a9183a0ee211c2b6e52b09ff6128.lean/declarations/categoryofpresheafedspaces--aa647ba91c5d5c219618dd0b.md) | 179 | `declaration-track:aa647ba91c5d5c219618dd0b996e46309210b3f8625e4fa283d141d92a5ee268` |
| 16 | `theorem` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant4577a88b49f4fd7e7104078af8bd34ba2e02a9183a0ee211c2b6e52b09ff6128.lean/declarations/ext--6d9c93a0a8b6c479f90699bd.md) | 199 | `result-track:6d9c93a0a8b6c479f90699bdead5e3495d55c543039cb21db48f0930c0245cdb` |
| 17 | `theorem` | [id_base](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant4577a88b49f4fd7e7104078af8bd34ba2e02a9183a0ee211c2b6e52b09ff6128.lean/declarations/id-base--309b01826a6a70e104c4525b.md) | 210 | `result-track:309b01826a6a70e104c4525b1637a6d84740f06b557b1cdc229213deffc4d41d` |
| 18 | `theorem` | [id_c](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant4577a88b49f4fd7e7104078af8bd34ba2e02a9183a0ee211c2b6e52b09ff6128.lean/declarations/id-c--4350f82d1fe5e002fc39505c.md) | 216 | `result-track:4350f82d1fe5e002fc39505ce655dd35e2a5d565ddebb40c5a67c7896258c356` |
| 19 | `theorem` | [id_c_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant4577a88b49f4fd7e7104078af8bd34ba2e02a9183a0ee211c2b6e52b09ff6128.lean/declarations/id-c-app--ae1da334bb3e1e001c7a0424.md) | 223 | `result-track:ae1da334bb3e1e001c7a0424cb21de094d9515edd54c82141ec3405be2a8530e` |
| 20 | `theorem` | [comp_base](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant4577a88b49f4fd7e7104078af8bd34ba2e02a9183a0ee211c2b6e52b09ff6128.lean/declarations/comp-base--055ab93579da5d33b2e43cd5.md) | 231 | `result-track:055ab93579da5d33b2e43cd55f2518abe76d3432761eefa8b95d229178220994` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant4577a88b49f4fd7e7104078af8bd34ba2e02a9183a0ee211c2b6e52b09ff6128.lean/declarations/instance--228c2e5ae2401ff9158be6af.md) | 237 | `declaration-track:228c2e5ae2401ff9158be6af5db697f515a50c40f51aeded4512ea53f741d62c` |
| 22 | `theorem` | [comp_c_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant4577a88b49f4fd7e7104078af8bd34ba2e02a9183a0ee211c2b6e52b09ff6128.lean/declarations/comp-c-app--f68e00676961b1e04f401dbb.md) | 253 | `result-track:f68e00676961b1e04f401dbb299846023ed2045a1f1c69fd59199be7ee30301f` |
| 23 | `theorem` | [congr_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant4577a88b49f4fd7e7104078af8bd34ba2e02a9183a0ee211c2b6e52b09ff6128.lean/declarations/congr-app--52b50f952d7c5e56f968defc.md) | 259 | `result-track:52b50f952d7c5e56f968defc35155fbcb555911855d9a0c1cdcfc22d77090e31` |
| 24 | `def` | [forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant4577a88b49f4fd7e7104078af8bd34ba2e02a9183a0ee211c2b6e52b09ff6128.lean/declarations/forget--fc42eb1b6d44be4fb6c52ee8.md) | 272 | `declaration-track:fc42eb1b6d44be4fb6c52ee8e48165eb0383425f012fa2e0d7426097ec9f0e73` |
| 25 | `def` | [isoOfComponents](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant4577a88b49f4fd7e7104078af8bd34ba2e02a9183a0ee211c2b6e52b09ff6128.lean/declarations/isoofcomponents--daa89b5e7cf0e527bb7e8bd8.md) | 288 | `declaration-track:daa89b5e7cf0e527bb7e8bd8d86b8e57838c7b90827ac4404c2802e8b6d121df` |
| 26 | `def` | [sheafIsoOfIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant4577a88b49f4fd7e7104078af8bd34ba2e02a9183a0ee211c2b6e52b09ff6128.lean/declarations/sheafisoofiso--1e47a443bca726153f66e347.md) | 320 | `declaration-track:1e47a443bca726153f66e347db479544db4fd4f31019a5be8d133b53265b33fc` |
| 27 | `instance` | [base_isIso_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant4577a88b49f4fd7e7104078af8bd34ba2e02a9183a0ee211c2b6e52b09ff6128.lean/declarations/base-isiso-of-iso--64d55b0ea29c8a56778212b4.md) | 344 | `declaration-track:64d55b0ea29c8a56778212b4c8beaadc0daad27ab2167b1070797449f628ec97` |
| 28 | `instance` | [c_isIso_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant4577a88b49f4fd7e7104078af8bd34ba2e02a9183a0ee211c2b6e52b09ff6128.lean/declarations/c-isiso-of-iso--95ed95c00e1ae3cd2f116114.md) | 349 | `declaration-track:95ed95c00e1ae3cd2f116114913b860d4f6bb3b62c381cc2193a330c7c1703a8` |
| 29 | `theorem` | [isIso_of_components](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant4577a88b49f4fd7e7104078af8bd34ba2e02a9183a0ee211c2b6e52b09ff6128.lean/declarations/isiso-of-components--4955a9081b0e9de851aef33f.md) | 355 | `result-track:4955a9081b0e9de851aef33faa58cad06d98615d8256ae7b42574e46f506c005` |
| 30 | `def` | [restrict](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant4577a88b49f4fd7e7104078af8bd34ba2e02a9183a0ee211c2b6e52b09ff6128.lean/declarations/restrict--e2eedd80c1782d27f404a081.md) | 367 | `declaration-track:e2eedd80c1782d27f404a0810daca92d9441951a09130ac67f0706c5146cd5c0` |
| 31 | `def` | [ofRestrict](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant4577a88b49f4fd7e7104078af8bd34ba2e02a9183a0ee211c2b6e52b09ff6128.lean/declarations/ofrestrict--ee40aab1df7a89c2aed04266.md) | 377 | `declaration-track:ee40aab1df7a89c2aed042662b54523f8471ea7e1cc417bb8d83913315d6380c` |
| 32 | `instance` | [ofRestrict_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant4577a88b49f4fd7e7104078af8bd34ba2e02a9183a0ee211c2b6e52b09ff6128.lean/declarations/ofrestrict-mono--b6d16075a8db1fe1b3d9f042.md) | 389 | `declaration-track:b6d16075a8db1fe1b3d9f0420b8ff2e90271351ba55cfff86e2693776bfca162` |
| 33 | `theorem` | [restrict_top_presheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant4577a88b49f4fd7e7104078af8bd34ba2e02a9183a0ee211c2b6e52b09ff6128.lean/declarations/restrict-top-presheaf--3a793a1857f40ec537c7ef89.md) | 422 | `result-track:3a793a1857f40ec537c7ef8932036c35936643ca6c294bb3fd5e978454ce1833` |
| 34 | `theorem` | [ofRestrict_top_c](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant4577a88b49f4fd7e7104078af8bd34ba2e02a9183a0ee211c2b6e52b09ff6128.lean/declarations/ofrestrict-top-c--c5e01deaaf9575c93643a8b2.md) | 431 | `result-track:c5e01deaaf9575c93643a8b238438c0c675a5ca96d4a5fad3d32e795832236cd` |
| 35 | `def` | [toRestrictTop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant4577a88b49f4fd7e7104078af8bd34ba2e02a9183a0ee211c2b6e52b09ff6128.lean/declarations/torestricttop--d96b9583b1fe628e77abdbf9.md) | 452 | `declaration-track:d96b9583b1fe628e77abdbf9277e986c05d77f75c1c97003fba78b0882228487` |
| 36 | `def` | [restrictTopIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant4577a88b49f4fd7e7104078af8bd34ba2e02a9183a0ee211c2b6e52b09ff6128.lean/declarations/restricttopiso--5ff19117311adc80cbede0a2.md) | 461 | `declaration-track:5ff19117311adc80cbede0a2db2863a474740b241f8e8a11d2cbd2ce86447b2d` |
| 37 | `def` | [Γ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant4577a88b49f4fd7e7104078af8bd34ba2e02a9183a0ee211c2b6e52b09ff6128.lean/declarations/anonymous--2a4adf8bc1a320cfc2353895.md) | 486 | `declaration-track:2a4adf8bc1a320cfc2353895cad4402407a9ac76981a2bbe3c4e2fd95be54902` |
| 38 | `theorem` | [Γ_obj_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant4577a88b49f4fd7e7104078af8bd34ba2e02a9183a0ee211c2b6e52b09ff6128.lean/declarations/obj-op--debc4c08fb8f1cb8c2eec47a.md) | 492 | `result-track:debc4c08fb8f1cb8c2eec47a1ebe425952c195b17710a83003f82f70f06897dd` |
| 39 | `theorem` | [Γ_map_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant4577a88b49f4fd7e7104078af8bd34ba2e02a9183a0ee211c2b6e52b09ff6128.lean/declarations/map-op--2047b96ea0bbd9d14d23fd61.md) | 497 | `result-track:2047b96ea0bbd9d14d23fd61e215f779ee6fce1af9ce9cf362207ec31181f903` |
| 40 | `def` | [mapPresheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant4577a88b49f4fd7e7104078af8bd34ba2e02a9183a0ee211c2b6e52b09ff6128.lean/declarations/mappresheaf--7aa0b20be6a58aa418e939e8.md) | 520 | `declaration-track:7aa0b20be6a58aa418e939e84ad9d18e2b4bf99279aaaa8551a0b2235e1525a0` |
| 41 | `theorem` | [mapPresheaf_obj_X](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant4577a88b49f4fd7e7104078af8bd34ba2e02a9183a0ee211c2b6e52b09ff6128.lean/declarations/mappresheaf-obj-x--b8db2b59c4564b900a362b38.md) | 539 | `result-track:b8db2b59c4564b900a362b38400b4522207e74c9e4a2d6c3234f7010376a485e` |
| 42 | `theorem` | [mapPresheaf_obj_presheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant4577a88b49f4fd7e7104078af8bd34ba2e02a9183a0ee211c2b6e52b09ff6128.lean/declarations/mappresheaf-obj-presheaf--c1aebbe28605c242f271ba40.md) | 546 | `result-track:c1aebbe28605c242f271ba4077d89cf793261867fb5e7a1e7fc65d8f3bf60e6f` |
| 43 | `theorem` | [mapPresheaf_map_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant4577a88b49f4fd7e7104078af8bd34ba2e02a9183a0ee211c2b6e52b09ff6128.lean/declarations/mappresheaf-map-f--85bcbc80b9c0a3a8bded7677.md) | 552 | `result-track:85bcbc80b9c0a3a8bded7677cb47654431b688ef066d20a4f6d32735394eb0f3` |
| 44 | `theorem` | [mapPresheaf_map_c](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant4577a88b49f4fd7e7104078af8bd34ba2e02a9183a0ee211c2b6e52b09ff6128.lean/declarations/mappresheaf-map-c--51c9183f62aee462350493b3.md) | 558 | `result-track:51c9183f62aee462350493b3122d876700cf48a967b2b9c4933d98d6b9eeee48` |
| 45 | `def` | [onPresheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant4577a88b49f4fd7e7104078af8bd34ba2e02a9183a0ee211c2b6e52b09ff6128.lean/declarations/onpresheaf--565257d5150a0d3cf681ab02.md) | 569 | `declaration-track:565257d5150a0d3cf681ab023578d9cea69c2e1358089232b3fe1e3af80632c1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
