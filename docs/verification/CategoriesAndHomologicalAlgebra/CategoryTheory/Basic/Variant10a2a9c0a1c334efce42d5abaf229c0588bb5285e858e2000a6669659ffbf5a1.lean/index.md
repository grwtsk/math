# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant10a2a9c0a1c334efce42d5abaf229c0588bb5285e858e2000a6669659ffbf5a1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e21aec357a0d3eac5230355a51e81984eb460c86",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant10a2a9c0a1c334efce42d5abaf229c0588bb5285e858e2000a6669659ffbf5a1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant10a2a9c0a1c334efce42d5abaf229c0588bb5285e858e2000a6669659ffbf5a1.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant10a2a9c0a1c334efce42d5abaf229c0588bb5285e858e2000a6669659ffbf5a1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e21aec357a0d3eac5230355a51e81984eb460c86`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant10a2a9c0a1c334efce42d5abaf229c0588bb5285e858e2000a6669659ffbf5a1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant10a2a9c0a1c334efce42d5abaf229c0588bb5285e858e2000a6669659ffbf5a1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Whiskering` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.FullyFaithful` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.NatIso` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [SigmaHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant10a2a9c0a1c334efce42d5abaf229c0588bb5285e858e2000a6669659ffbf5a1.lean/declarations/sigmahom--45f8d1d8c8ea9e9bbc846eb3.md) | 38 | `declaration-track:45f8d1d8c8ea9e9bbc846eb34f796cbbe83bb73363c5f32a1595ad6aad22afb8` |
| 2 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant10a2a9c0a1c334efce42d5abaf229c0588bb5285e858e2000a6669659ffbf5a1.lean/declarations/id--cd782c79cc4b14554ff54f3c.md) | 45 | `declaration-track:cd782c79cc4b14554ff54f3c006d3e6e0de74fb63a6365b8c42ac1a47d1c281e` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant10a2a9c0a1c334efce42d5abaf229c0588bb5285e858e2000a6669659ffbf5a1.lean/declarations/instance--9a7e944f9619b3584115ee95.md) | 50 | `declaration-track:9a7e944f9619b3584115ee951988826228ca26648c627dbf2893c85f44b030a2` |
| 4 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant10a2a9c0a1c334efce42d5abaf229c0588bb5285e858e2000a6669659ffbf5a1.lean/declarations/comp--d46d06239b324744f0f7afbc.md) | 54 | `declaration-track:d46d06239b324744f0f7afbc6d823c77c7202c1b4de81c21158ec2fded7cc479` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant10a2a9c0a1c334efce42d5abaf229c0588bb5285e858e2000a6669659ffbf5a1.lean/declarations/instance--dcb59cbbd073238f8eba7cb8.md) | 59 | `declaration-track:dcb59cbbd073238f8eba7cb81a486599d64f35a0f466c1cf74afd00d60081ab5` |
| 6 | `lemma` | [comp_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant10a2a9c0a1c334efce42d5abaf229c0588bb5285e858e2000a6669659ffbf5a1.lean/declarations/comp-def--62a340189ceae2a1672574a2.md) | 65 | `result-track:62a340189ceae2a1672574a240f15d8cf0cc9b7eeec8c87d09080152cf1ea8a6` |
| 7 | `lemma` | [assoc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant10a2a9c0a1c334efce42d5abaf229c0588bb5285e858e2000a6669659ffbf5a1.lean/declarations/assoc--c7faf13daab764fdae065bf9.md) | 69 | `result-track:c7faf13daab764fdae065bf95478b5d04d8996138e49757ccc9bf0cc53f31a08` |
| 8 | `lemma` | [id_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant10a2a9c0a1c334efce42d5abaf229c0588bb5285e858e2000a6669659ffbf5a1.lean/declarations/id-comp--fd4dbe2be57be457638c2f3e.md) | 74 | `result-track:fd4dbe2be57be457638c2f3e0a15ad7188df2c33c3f2232fbc39e7838766461a` |
| 9 | `lemma` | [comp_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant10a2a9c0a1c334efce42d5abaf229c0588bb5285e858e2000a6669659ffbf5a1.lean/declarations/comp-id--08a30e73be706438ce449d6c.md) | 78 | `result-track:08a30e73be706438ce449d6ce9ccc6915f3f85cdec8bf6974a7b1a0b1c3d4df0` |
| 10 | `instance` | [sigma](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant10a2a9c0a1c334efce42d5abaf229c0588bb5285e858e2000a6669659ffbf5a1.lean/declarations/sigma--5c248a8e09b9f90daec5bea2.md) | 84 | `declaration-track:5c248a8e09b9f90daec5bea245d80174377f21b00e29302f28997eb8dd247e31` |
| 11 | `def` | [incl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant10a2a9c0a1c334efce42d5abaf229c0588bb5285e858e2000a6669659ffbf5a1.lean/declarations/incl--3303a810e54f70e1f222faa6.md) | 92 | `declaration-track:3303a810e54f70e1f222faa6f8428200507f23d0d3209e3ea81c4011efa222f5` |
| 12 | `lemma` | [incl_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant10a2a9c0a1c334efce42d5abaf229c0588bb5285e858e2000a6669659ffbf5a1.lean/declarations/incl-obj--cefd970de4116f389131b097.md) | 98 | `result-track:cefd970de4116f389131b09747c3ce60113e337a4061591a814af6503548c099` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant10a2a9c0a1c334efce42d5abaf229c0588bb5285e858e2000a6669659ffbf5a1.lean/declarations/instance--6058350a4b91a4ee3aeeba1f.md) | 102 | `declaration-track:6058350a4b91a4ee3aeeba1feb93de139437299317611d513d81ff4ae0c26c5e` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant10a2a9c0a1c334efce42d5abaf229c0588bb5285e858e2000a6669659ffbf5a1.lean/declarations/instance--096592d307c691471143e679.md) | 106 | `declaration-track:096592d307c691471143e679e57e45cffb2eed93f1c7e884b71071d9b0bf9fe9` |
| 15 | `def` | [natTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant10a2a9c0a1c334efce42d5abaf229c0588bb5285e858e2000a6669659ffbf5a1.lean/declarations/nattrans--4e8e4390b21e60862d447f42.md) | 118 | `declaration-track:4e8e4390b21e60862d447f42aa90aaecddfdc2dc86057f9e50d18bfe662e960b` |
| 16 | `lemma` | [natTrans_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant10a2a9c0a1c334efce42d5abaf229c0588bb5285e858e2000a6669659ffbf5a1.lean/declarations/nattrans-app--0cad1bee5a277e08c78d9814.md) | 126 | `result-track:0cad1bee5a277e08c78d9814e07423a30896ca29e6162ec0c2e28fe7e7b5edcd` |
| 17 | `def` | [descMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant10a2a9c0a1c334efce42d5abaf229c0588bb5285e858e2000a6669659ffbf5a1.lean/declarations/descmap--382e1ea551c4af37c0752e50.md) | 132 | `declaration-track:382e1ea551c4af37c0752e5062a065393c58baea57c4f9dca26e7e2b8f91d4fe` |
| 18 | `def` | [desc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant10a2a9c0a1c334efce42d5abaf229c0588bb5285e858e2000a6669659ffbf5a1.lean/declarations/desc--8ef43f611924d82e2c314209.md) | 146 | `declaration-track:8ef43f611924d82e2c31420953a147b00039cc8c14eec7482c5f93d7c353134b` |
| 19 | `lemma` | [desc_map_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant10a2a9c0a1c334efce42d5abaf229c0588bb5285e858e2000a6669659ffbf5a1.lean/declarations/desc-map-mk--c7786ce544a91dfa9bb8ec85.md) | 158 | `result-track:c7786ce544a91dfa9bb8ec85bd526a13e6d820f2b0473df0d35bcff2923bb565` |
| 20 | `def` | [inclDesc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant10a2a9c0a1c334efce42d5abaf229c0588bb5285e858e2000a6669659ffbf5a1.lean/declarations/incldesc--62804aaf2bf297dc13547a40.md) | 166 | `declaration-track:62804aaf2bf297dc13547a4002e68da9ca22a55e417e78969e7e281a65975ad4` |
| 21 | `lemma` | [inclDesc_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant10a2a9c0a1c334efce42d5abaf229c0588bb5285e858e2000a6669659ffbf5a1.lean/declarations/incldesc-hom-app--c0f67ae942fbbfda0a57bdcd.md) | 171 | `result-track:c0f67ae942fbbfda0a57bdcd5c4bfa4b37454758bf02de76b316ca1b02b8b954` |
| 22 | `lemma` | [inclDesc_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant10a2a9c0a1c334efce42d5abaf229c0588bb5285e858e2000a6669659ffbf5a1.lean/declarations/incldesc-inv-app--3be4994d198067a868dfe338.md) | 176 | `result-track:3be4994d198067a868dfe3388dd0f14bb1266d675767b1248a0f896b53188d88` |
| 23 | `def` | [descUniq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant10a2a9c0a1c334efce42d5abaf229c0588bb5285e858e2000a6669659ffbf5a1.lean/declarations/descuniq--bc73c0ff50ea6dc877253a20.md) | 183 | `declaration-track:bc73c0ff50ea6dc877253a2043746b8479a78f33f7f9c68a008633360c388b8e` |
| 24 | `lemma` | [descUniq_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant10a2a9c0a1c334efce42d5abaf229c0588bb5285e858e2000a6669659ffbf5a1.lean/declarations/descuniq-hom-app--50917ecdf3e8444f4c6042c3.md) | 190 | `result-track:50917ecdf3e8444f4c6042c3553e6386c2d71f17cee9ffd96a10c058585a9cdd` |
| 25 | `lemma` | [descUniq_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant10a2a9c0a1c334efce42d5abaf229c0588bb5285e858e2000a6669659ffbf5a1.lean/declarations/descuniq-inv-app--67bb1e625cb1b13bb23d8606.md) | 196 | `result-track:67bb1e625cb1b13bb23d86063edec33110f099a93740172e0b8213171865fa51` |
| 26 | `def` | [natIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant10a2a9c0a1c334efce42d5abaf229c0588bb5285e858e2000a6669659ffbf5a1.lean/declarations/natiso--f534d596f3fcbb23a592bbf4.md) | 205 | `declaration-track:f534d596f3fcbb23a592bbf44f6990050e68b0a6e62eb200cef0ee792ffb4e65` |
| 27 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant10a2a9c0a1c334efce42d5abaf229c0588bb5285e858e2000a6669659ffbf5a1.lean/declarations/map--18698944591b07810e9de090.md) | 217 | `declaration-track:18698944591b07810e9de090b73e077b137e179d57fc0aa76d72876895c7dc37` |
| 28 | `lemma` | [map_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant10a2a9c0a1c334efce42d5abaf229c0588bb5285e858e2000a6669659ffbf5a1.lean/declarations/map-obj--67c049fad55ac0f7f87566cd.md) | 222 | `result-track:67c049fad55ac0f7f87566cd053a5aeab2028acea47213e24c20dd2fe40e9d44` |
| 29 | `lemma` | [map_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant10a2a9c0a1c334efce42d5abaf229c0588bb5285e858e2000a6669659ffbf5a1.lean/declarations/map-map--de00e4c6ac9325de3807ad79.md) | 227 | `result-track:de00e4c6ac9325de3807ad7960eab2106fd3ca2916cc6cdea2285443552f586d` |
| 30 | `def` | [inclCompMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant10a2a9c0a1c334efce42d5abaf229c0588bb5285e858e2000a6669659ffbf5a1.lean/declarations/inclcompmap--e20a670ac0cea72e1ed32e15.md) | 235 | `declaration-track:e20a670ac0cea72e1ed32e15eb928ac78d269ed103b9c9eefef58ff644c7fff3` |
| 31 | `def` | [mapId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant10a2a9c0a1c334efce42d5abaf229c0588bb5285e858e2000a6669659ffbf5a1.lean/declarations/mapid--35e3c47514209eb88b5769aa.md) | 243 | `declaration-track:35e3c47514209eb88b5769aa117d3947e665c795fe42ce9c731716bcef25b7ed` |
| 32 | `def` | [mapComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant10a2a9c0a1c334efce42d5abaf229c0588bb5285e858e2000a6669659ffbf5a1.lean/declarations/mapcomp--90babb82535df387136eff4a.md) | 253 | `declaration-track:90babb82535df387136eff4aa1958713a24850d66462e5ed03c96c33b4fd8875` |
| 33 | `def` | [sigma](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant10a2a9c0a1c334efce42d5abaf229c0588bb5285e858e2000a6669659ffbf5a1.lean/declarations/sigma--28a9a7ffa103ff422a838365.md) | 268 | `declaration-track:28a9a7ffa103ff422a8383656135291bad6be1ed481fbe740ce436e2278923b4` |
| 34 | `def` | [sigma](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant10a2a9c0a1c334efce42d5abaf229c0588bb5285e858e2000a6669659ffbf5a1.lean/declarations/sigma--9ea4c549629d468fa56f0866.md) | 282 | `declaration-track:9ea4c549629d468fa56f0866271234c3db969ad97c79e67b98bf97bdde5a284e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
