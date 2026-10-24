# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PresheafedSpace.Variant37b27801c6a3afeb7e980dc93bd77515d88366419f21979c5f00d12edc74f155

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "382e944b3efe4352074de4332429a980521cd61c",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant37b27801c6a3afeb7e980dc93bd77515d88366419f21979c5f00d12edc74f155.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant37b27801c6a3afeb7e980dc93bd77515d88366419f21979c5f00d12edc74f155.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant37b27801c6a3afeb7e980dc93bd77515d88366419f21979c5f00d12edc74f155.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `382e944b3efe4352074de4332429a980521cd61c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant37b27801c6a3afeb7e980dc93bd77515d88366419f21979c5f00d12edc74f155.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant37b27801c6a3afeb7e980dc93bd77515d88366419f21979c5f00d12edc74f155.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.FullyFaithful` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Elementwise` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.Presheaf` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PresheafedSpace](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant37b27801c6a3afeb7e980dc93bd77515d88366419f21979c5f00d12edc74f155.lean/declarations/presheafedspace--c16c8de54a4d86a683d03dd6.md) | 56 | `declaration-track:c16c8de54a4d86a683d03dd660350a14de48df7ea8de0854c372e315f425f4d8` |
| 2 | `instance` | [coeCarrier](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant37b27801c6a3afeb7e980dc93bd77515d88366419f21979c5f00d12edc74f155.lean/declarations/coecarrier--d2404899b7fc23b01def14f0.md) | 64 | `declaration-track:d2404899b7fc23b01def14f08b8b2e154950715b84a53fe947d2e281e1eb5c65` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant37b27801c6a3afeb7e980dc93bd77515d88366419f21979c5f00d12edc74f155.lean/declarations/instance--26e5f4136fccbc019c771445.md) | 68 | `declaration-track:26e5f4136fccbc019c7714453f9469ac7e82cbe73bbf25d4f481d86eebf526bb` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant37b27801c6a3afeb7e980dc93bd77515d88366419f21979c5f00d12edc74f155.lean/declarations/instance--7cd6dd2fcb9d34d0fc2bbd00.md) | 70 | `declaration-track:7cd6dd2fcb9d34d0fc2bbd00b6581b7bbe9ddffe73201b52658090a5967fff4a` |
| 5 | `def` | [const](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant37b27801c6a3afeb7e980dc93bd77515d88366419f21979c5f00d12edc74f155.lean/declarations/const--e10f78e63e4669009b7da337.md) | 74 | `declaration-track:e10f78e63e4669009b7da33723d4bcf2f8c0b193f1f80b652c9962de44b0cd78` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant37b27801c6a3afeb7e980dc93bd77515d88366419f21979c5f00d12edc74f155.lean/declarations/instance--0045ec10b3b4cb67b1a906cd.md) | 78 | `declaration-track:0045ec10b3b4cb67b1a906cd1d3b92db07ba095084f9d5a6a05cfb29ce969b1e` |
| 7 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant37b27801c6a3afeb7e980dc93bd77515d88366419f21979c5f00d12edc74f155.lean/declarations/hom--43400c2fc6c40efd05073215.md) | 84 | `declaration-track:43400c2fc6c40efd05073215089b18f7dc009a01a1588ab4c5d3a578ee22e2b6` |
| 8 | `theorem` | [Hom.ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant37b27801c6a3afeb7e980dc93bd77515d88366419f21979c5f00d12edc74f155.lean/declarations/hom-ext--84f3d5ab998201f4db487d7a.md) | 89 | `result-track:84f3d5ab998201f4db487d7a5dacee31fb1d692b0c3638228efb5b7fff59aafd` |
| 9 | `theorem` | [hext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant37b27801c6a3afeb7e980dc93bd77515d88366419f21979c5f00d12edc74f155.lean/declarations/hext--0e52fe0cd69a4b38c822203a.md) | 101 | `result-track:0e52fe0cd69a4b38c822203a84bfc838c999b7b8cf0baea0ec657f3ab4996e50` |
| 10 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant37b27801c6a3afeb7e980dc93bd77515d88366419f21979c5f00d12edc74f155.lean/declarations/id--fd946398d507795b5ebf136a.md) | 108 | `declaration-track:fd946398d507795b5ebf136affabb30d79263b72bc9310fe34f86d4cf9855f65` |
| 11 | `instance` | [homInhabited](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant37b27801c6a3afeb7e980dc93bd77515d88366419f21979c5f00d12edc74f155.lean/declarations/hominhabited--11930bab1ff0fa3de03a1d8f.md) | 112 | `declaration-track:11930bab1ff0fa3de03a1d8fdbdf14261a43e187bc1b0fa738e2e5dd66477e64` |
| 12 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant37b27801c6a3afeb7e980dc93bd77515d88366419f21979c5f00d12edc74f155.lean/declarations/comp--38c7627478a1f3eae76b8af6.md) | 116 | `declaration-track:38c7627478a1f3eae76b8af66b9f44e16e3e3b2c57fa36a65f61d1d231dc6178` |
| 13 | `theorem` | [comp_c](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant37b27801c6a3afeb7e980dc93bd77515d88366419f21979c5f00d12edc74f155.lean/declarations/comp-c--34a20abb63081a6c10062875.md) | 120 | `result-track:34a20abb63081a6c10062875821ab703ee3cd7b48f7ee1150f02355430d887be` |
| 14 | `instance` | [categoryOfPresheafedSpaces](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant37b27801c6a3afeb7e980dc93bd77515d88366419f21979c5f00d12edc74f155.lean/declarations/categoryofpresheafedspaces--cce44780ddebeb9f6606487f.md) | 132 | `declaration-track:cce44780ddebeb9f6606487f049d9f40dc3dca3879e58b157763a17c18d5bf18` |
| 15 | `abbrev` | [Hom.toPshHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant37b27801c6a3afeb7e980dc93bd77515d88366419f21979c5f00d12edc74f155.lean/declarations/hom-topshhom--f82c046e5511f9cfea0cbbd7.md) | 140 | `declaration-track:f82c046e5511f9cfea0cbbd797af8d65ea942bcce1a840469361d24fa9491251` |
| 16 | `theorem` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant37b27801c6a3afeb7e980dc93bd77515d88366419f21979c5f00d12edc74f155.lean/declarations/ext--bc9f8e21387907d9244a7a3a.md) | 143 | `result-track:bc9f8e21387907d9244a7a3a1312b8697db9896c2df6ecff834ae444b940e15a` |
| 17 | `theorem` | [id_base](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant37b27801c6a3afeb7e980dc93bd77515d88366419f21979c5f00d12edc74f155.lean/declarations/id-base--9c085e4e276c9f0f8163e33b.md) | 154 | `result-track:9c085e4e276c9f0f8163e33b77669bffdc80ba6195a4e40496e900969f87d4cb` |
| 18 | `theorem` | [id_c](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant37b27801c6a3afeb7e980dc93bd77515d88366419f21979c5f00d12edc74f155.lean/declarations/id-c--5d9b557940d95d19b5e27b29.md) | 157 | `result-track:5d9b557940d95d19b5e27b299f52bf4256c09e3d351fafab63af6f25629a76ed` |
| 19 | `theorem` | [id_c_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant37b27801c6a3afeb7e980dc93bd77515d88366419f21979c5f00d12edc74f155.lean/declarations/id-c-app--ef9de727b9e258bf78b3a006.md) | 162 | `result-track:ef9de727b9e258bf78b3a006b124e86982f428890fa4ce293615fe6f3581effd` |
| 20 | `theorem` | [comp_base](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant37b27801c6a3afeb7e980dc93bd77515d88366419f21979c5f00d12edc74f155.lean/declarations/comp-base--4fc9546106a9e156d0e251db.md) | 168 | `result-track:4fc9546106a9e156d0e251db3f30d7550bbb300ffd0c161826713f0de7c7d142` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant37b27801c6a3afeb7e980dc93bd77515d88366419f21979c5f00d12edc74f155.lean/declarations/instance--85b836b5ef145f051992afb6.md) | 172 | `declaration-track:85b836b5ef145f051992afb6aeeeb434581ae15e09941d9b1963d8a90705fd2f` |
| 22 | `theorem` | [comp_c_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant37b27801c6a3afeb7e980dc93bd77515d88366419f21979c5f00d12edc74f155.lean/declarations/comp-c-app--206a74f7bd05b66298b0c084.md) | 188 | `result-track:206a74f7bd05b66298b0c084529d7d81b37efcc56aff4000539fc8629fcee66a` |
| 23 | `theorem` | [congr_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant37b27801c6a3afeb7e980dc93bd77515d88366419f21979c5f00d12edc74f155.lean/declarations/congr-app--691a0b1859eee2a0fe36910d.md) | 192 | `result-track:691a0b1859eee2a0fe36910d9991ed770d0b13bcec1a9da0117aef58e3cc7a66` |
| 24 | `def` | [forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant37b27801c6a3afeb7e980dc93bd77515d88366419f21979c5f00d12edc74f155.lean/declarations/forget--e6681d97ac1662c50cf3d942.md) | 203 | `declaration-track:e6681d97ac1662c50cf3d9423c3fa83a15cd37f10db8296050276b8b3e1d455e` |
| 25 | `def` | [isoOfComponents](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant37b27801c6a3afeb7e980dc93bd77515d88366419f21979c5f00d12edc74f155.lean/declarations/isoofcomponents--29b8b6de7201093b8d24d36f.md) | 217 | `declaration-track:29b8b6de7201093b8d24d36f1680e2d4c79d28fefee85cc66f8d9296a1050ce9` |
| 26 | `def` | [sheafIsoOfIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant37b27801c6a3afeb7e980dc93bd77515d88366419f21979c5f00d12edc74f155.lean/declarations/sheafisoofiso--64a3435fd5ed0c84f5eb290a.md) | 236 | `declaration-track:64a3435fd5ed0c84f5eb290a079320ee654cc561b98e0b2baec2c637a2bd68a1` |
| 27 | `instance` | [base_isIso_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant37b27801c6a3afeb7e980dc93bd77515d88366419f21979c5f00d12edc74f155.lean/declarations/base-isiso-of-iso--3ea9171d5ba0d33db9fcafee.md) | 257 | `declaration-track:3ea9171d5ba0d33db9fcafee1690fb40b6c937e8740e61cfb1ff767e6dcc8ef0` |
| 28 | `instance` | [c_isIso_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant37b27801c6a3afeb7e980dc93bd77515d88366419f21979c5f00d12edc74f155.lean/declarations/c-isiso-of-iso--3e33de63245799125b761fbb.md) | 260 | `declaration-track:3e33de63245799125b761fbb6d8e8fdd0a1a77faf7866904f0dea304c40b3d82` |
| 29 | `theorem` | [isIso_of_components](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant37b27801c6a3afeb7e980dc93bd77515d88366419f21979c5f00d12edc74f155.lean/declarations/isiso-of-components--8e820d7b87bc881c84b2734b.md) | 264 | `result-track:8e820d7b87bc881c84b2734b9f848dbf79de524b81228a4150bf3f7d6ab0a1bd` |
| 30 | `def` | [restrict](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant37b27801c6a3afeb7e980dc93bd77515d88366419f21979c5f00d12edc74f155.lean/declarations/restrict--1f9438967e56c64763549d3f.md) | 274 | `declaration-track:1f9438967e56c64763549d3f136d7212b2d3531ba4a8b90faca66c3dc3753bc9` |
| 31 | `def` | [ofRestrict](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant37b27801c6a3afeb7e980dc93bd77515d88366419f21979c5f00d12edc74f155.lean/declarations/ofrestrict--35edb0277f8ccc40f0737ba8.md) | 282 | `declaration-track:35edb0277f8ccc40f0737ba8b99396e81bff30ce342c2110a2622b68b736c9b0` |
| 32 | `instance` | [ofRestrict_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant37b27801c6a3afeb7e980dc93bd77515d88366419f21979c5f00d12edc74f155.lean/declarations/ofrestrict-mono--99e6bc47068193cabf1076a4.md) | 292 | `declaration-track:99e6bc47068193cabf1076a4707f67da0056de13f94604b2674d7bde086da46b` |
| 33 | `theorem` | [restrict_top_presheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant37b27801c6a3afeb7e980dc93bd77515d88366419f21979c5f00d12edc74f155.lean/declarations/restrict-top-presheaf--26faebc11f9ab73a3f83fd0a.md) | 320 | `result-track:26faebc11f9ab73a3f83fd0a363010a77d41b98a08b46b8323e39a24552cf80c` |
| 34 | `theorem` | [ofRestrict_top_c](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant37b27801c6a3afeb7e980dc93bd77515d88366419f21979c5f00d12edc74f155.lean/declarations/ofrestrict-top-c--e22b8aa704ea90f0ba831c1d.md) | 327 | `result-track:e22b8aa704ea90f0ba831c1d594457ff203f443e3a584a68e77446b43a36f4d6` |
| 35 | `def` | [toRestrictTop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant37b27801c6a3afeb7e980dc93bd77515d88366419f21979c5f00d12edc74f155.lean/declarations/torestricttop--af791d899f9a30b300a48d8a.md) | 347 | `declaration-track:af791d899f9a30b300a48d8aee5d2aa91779c82651f34fbd61ea66e06870e055` |
| 36 | `def` | [restrictTopIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant37b27801c6a3afeb7e980dc93bd77515d88366419f21979c5f00d12edc74f155.lean/declarations/restricttopiso--b45a2e3c0b4a497dcca1a4e3.md) | 354 | `declaration-track:b45a2e3c0b4a497dcca1a4e3f174c933ec335272483b0452e1454370e97196aa` |
| 37 | `def` | [Γ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant37b27801c6a3afeb7e980dc93bd77515d88366419f21979c5f00d12edc74f155.lean/declarations/anonymous--bbea90c9637fc2a83edad8fa.md) | 375 | `declaration-track:bbea90c9637fc2a83edad8facaad335b5218989f0756ad0f711bd562c5ef01f2` |
| 38 | `theorem` | [Γ_obj_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant37b27801c6a3afeb7e980dc93bd77515d88366419f21979c5f00d12edc74f155.lean/declarations/obj-op--f517baa84f886089ff2bfeed.md) | 379 | `result-track:f517baa84f886089ff2bfeed6df5babbe1625b64213ccdaf28ef8e4ccc92f307` |
| 39 | `theorem` | [Γ_map_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant37b27801c6a3afeb7e980dc93bd77515d88366419f21979c5f00d12edc74f155.lean/declarations/map-op--ba03be6924c55d600a59a218.md) | 382 | `result-track:ba03be6924c55d600a59a218a2c84b6e4f59db3e1cd1c88b8af3918eb854a74e` |
| 40 | `def` | [mapPresheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant37b27801c6a3afeb7e980dc93bd77515d88366419f21979c5f00d12edc74f155.lean/declarations/mappresheaf--9ab6d328b64a3e5b58ceeb3f.md) | 401 | `declaration-track:9ab6d328b64a3e5b58ceeb3fdf52dcad99c67ebdda9686dc31f7fcb89eb1e220` |
| 41 | `theorem` | [mapPresheaf_obj_X](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant37b27801c6a3afeb7e980dc93bd77515d88366419f21979c5f00d12edc74f155.lean/declarations/mappresheaf-obj-x--0e658f73516917a67d2c155e.md) | 419 | `result-track:0e658f73516917a67d2c155e8ba1bcda14749bf44e4eef537c72ee6fcc3006a1` |
| 42 | `theorem` | [mapPresheaf_obj_presheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant37b27801c6a3afeb7e980dc93bd77515d88366419f21979c5f00d12edc74f155.lean/declarations/mappresheaf-obj-presheaf--b8bcc7217f649533cfaf5826.md) | 424 | `result-track:b8bcc7217f649533cfaf58268e28384271a9359c74eaa3ce658fd50a945bf911` |
| 43 | `theorem` | [mapPresheaf_map_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant37b27801c6a3afeb7e980dc93bd77515d88366419f21979c5f00d12edc74f155.lean/declarations/mappresheaf-map-f--e9c2b9d81441fdcbef6aa75b.md) | 429 | `result-track:e9c2b9d81441fdcbef6aa75b9bd072c08d54ec0764b962bd4edb81368c185706` |
| 44 | `theorem` | [mapPresheaf_map_c](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant37b27801c6a3afeb7e980dc93bd77515d88366419f21979c5f00d12edc74f155.lean/declarations/mappresheaf-map-c--11456b232712f0296a966b76.md) | 434 | `result-track:11456b232712f0296a966b766ffd52ad6c4fca7639021a1b1f27bd229e8298c8` |
| 45 | `def` | [onPresheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant37b27801c6a3afeb7e980dc93bd77515d88366419f21979c5f00d12edc74f155.lean/declarations/onpresheaf--cce17a02f25fb90d29134fc9.md) | 444 | `declaration-track:cce17a02f25fb90d29134fc910f3abf5726db81e67177150d34c19fc420f6476` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
