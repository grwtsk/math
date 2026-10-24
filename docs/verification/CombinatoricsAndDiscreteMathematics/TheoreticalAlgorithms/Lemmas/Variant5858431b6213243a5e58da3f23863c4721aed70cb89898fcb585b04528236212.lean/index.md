# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Lemmas.Variant5858431b6213243a5e58da3f23863c4721aed70cb89898fcb585b04528236212

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b99eb33f850da5c87dc3bd81ab2fd37ea31df6b",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5858431b6213243a5e58da3f23863c4721aed70cb89898fcb585b04528236212.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5858431b6213243a5e58da3f23863c4721aed70cb89898fcb585b04528236212.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5858431b6213243a5e58da3f23863c4721aed70cb89898fcb585b04528236212.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b99eb33f850da5c87dc3bd81ab2fd37ea31df6b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5858431b6213243a5e58da3f23863c4721aed70cb89898fcb585b04528236212.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5858431b6213243a5e58da3f23863c4721aed70cb89898fcb585b04528236212.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Tactic.NoMatch` — import line 11; external provider; requires a separately pinned dependency.
- `Std.Tactic.HaveI` — import line 12; external provider; requires a separately pinned dependency.
- `Std.Classes.LawfulMonad` — import line 13; external provider; requires a separately pinned dependency.
- `Std.Data.Nat.Init.Lemmas` — import line 14; external provider; requires a separately pinned dependency.
- `Std.Data.List.Init.Lemmas` — import line 15; external provider; requires a separately pinned dependency.
- `Std.Data.Array.Init.Basic` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mkEmpty_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5858431b6213243a5e58da3f23863c4721aed70cb89898fcb585b04528236212.lean/declarations/mkempty-eq--07a046a32c067e46276146a3.md) | 31 | `result-track:07a046a32c067e46276146a39a68bca6c5ab10b42873db69dd8dd7be07c7260f` |
| 2 | `theorem` | [size_toArray](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5858431b6213243a5e58da3f23863c4721aed70cb89898fcb585b04528236212.lean/declarations/size-toarray--5b7cf3e8a8e6120722448308.md) | 33 | `result-track:5b7cf3e8a8e6120722448308cc5cd827615e8dfc7baa10381a6db7a546f04c84` |
| 3 | `theorem` | [size_mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5858431b6213243a5e58da3f23863c4721aed70cb89898fcb585b04528236212.lean/declarations/size-mk--1475baf734215f3a464d3ae8.md) | 35 | `result-track:1475baf734215f3a464d3ae80454ffe2d259eaf18171c06d8faa869598e391f3` |
| 4 | `theorem` | [getElem_eq_data_get](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5858431b6213243a5e58da3f23863c4721aed70cb89898fcb585b04528236212.lean/declarations/getelem-eq-data-get--b95daaf6cbdea63c620ef6e6.md) | 37 | `result-track:b95daaf6cbdea63c620ef6e6f9b2b8c6fdaf236abb9bcc031e9678ca62afbebb` |
| 5 | `theorem` | [foldlM_eq_foldlM_data.aux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5858431b6213243a5e58da3f23863c4721aed70cb89898fcb585b04528236212.lean/declarations/foldlm-eq-foldlm-data-aux--935ed1049841d7f1e8c6a98c.md) | 40 | `result-track:935ed1049841d7f1e8c6a98cc7843b784b86574728068d3ec6589453b19a02b2` |
| 6 | `theorem` | [foldlM_eq_foldlM_data](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5858431b6213243a5e58da3f23863c4721aed70cb89898fcb585b04528236212.lean/declarations/foldlm-eq-foldlm-data--bf7cbb6170b7524d5e0a4103.md) | 51 | `result-track:bf7cbb6170b7524d5e0a41031639c1bc2113651f60cc96be0bb3d7c43fdd740e` |
| 7 | `theorem` | [foldl_eq_foldl_data](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5858431b6213243a5e58da3f23863c4721aed70cb89898fcb585b04528236212.lean/declarations/foldl-eq-foldl-data--0dce4828088b4e8c166d60b4.md) | 56 | `result-track:0dce4828088b4e8c166d60b49c67291966b2cf9a4de60dc4fc2ea8a3a4628c44` |
| 8 | `theorem` | [foldrM_eq_reverse_foldlM_data.aux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5858431b6213243a5e58da3f23863c4721aed70cb89898fcb585b04528236212.lean/declarations/foldrm-eq-reverse-foldlm-data-aux--617f0ee5b2f8564af4c55314.md) | 60 | `result-track:617f0ee5b2f8564af4c5531415c172450114348096e08b5e3f8f9e419c20f831` |
| 9 | `theorem` | [foldrM_eq_reverse_foldlM_data](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5858431b6213243a5e58da3f23863c4721aed70cb89898fcb585b04528236212.lean/declarations/foldrm-eq-reverse-foldlm-data--ab680176347c32dd5ac59dd4.md) | 68 | `result-track:ab680176347c32dd5ac59dd4ea355abeafbe64f403a24e4750350495a522fc7b` |
| 10 | `theorem` | [foldrM_eq_foldrM_data](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5858431b6213243a5e58da3f23863c4721aed70cb89898fcb585b04528236212.lean/declarations/foldrm-eq-foldrm-data--0702223a667b754b25745992.md) | 75 | `result-track:0702223a667b754b2574599236db1ca125fde1f86840ae032b39bcb2d340778d` |
| 11 | `theorem` | [foldr_eq_foldr_data](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5858431b6213243a5e58da3f23863c4721aed70cb89898fcb585b04528236212.lean/declarations/foldr-eq-foldr-data--8319a6a6505c4049c25b2c02.md) | 80 | `result-track:8319a6a6505c4049c25b2c02b84e94d61a3e0043791d850afc17ae4041d99d70` |
| 12 | `theorem` | [push_data](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5858431b6213243a5e58da3f23863c4721aed70cb89898fcb585b04528236212.lean/declarations/push-data--9b31afe3a3823c372c1fb5f7.md) | 84 | `result-track:9b31afe3a3823c372c1fb5f7aa1d7661b2a5760e51ce6d17b0107324a4a4b846` |
| 13 | `theorem` | [foldrM_push](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5858431b6213243a5e58da3f23863c4721aed70cb89898fcb585b04528236212.lean/declarations/foldrm-push--377f9260ca3d3333d2e4493a.md) | 87 | `result-track:377f9260ca3d3333d2e4493a3f36742836536ba2887d375e48007b273310d8e2` |
| 14 | `theorem` | [foldrM_push'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5858431b6213243a5e58da3f23863c4721aed70cb89898fcb585b04528236212.lean/declarations/foldrm-push--6499a21fa141191e15c51bec.md) | 91 | `result-track:6499a21fa141191e15c51becc0c686de2fc9ff261445ba0f9b7895b21163658c` |
| 15 | `theorem` | [foldr_push](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5858431b6213243a5e58da3f23863c4721aed70cb89898fcb585b04528236212.lean/declarations/foldr-push--6191b236c5a3ba6daa032be1.md) | 95 | `result-track:6191b236c5a3ba6daa032be175101e7a466566b45b9074d28c8228a0b8051283` |
| 16 | `theorem` | [foldr_push'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5858431b6213243a5e58da3f23863c4721aed70cb89898fcb585b04528236212.lean/declarations/foldr-push--6bfc00bde7f22e56009d9585.md) | 98 | `result-track:6bfc00bde7f22e56009d95853586bfbf4931cb8ae66c0caec5d25021af4f6060` |
| 17 | `theorem` | [toListAppend_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5858431b6213243a5e58da3f23863c4721aed70cb89898fcb585b04528236212.lean/declarations/tolistappend-eq--67e7f32a63b7752fe4c3b620.md) | 101 | `result-track:67e7f32a63b7752fe4c3b620c564b564a28bdf8cf7604274a4e4106ad615c530` |
| 18 | `theorem` | [toList_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5858431b6213243a5e58da3f23863c4721aed70cb89898fcb585b04528236212.lean/declarations/tolist-eq--cdee5aa65bc343d683c61b70.md) | 104 | `result-track:cdee5aa65bc343d683c61b70b5655e48a2d8947d933dab565abf1a1c7b1c5d02` |
| 19 | `def` | [toListRev](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5858431b6213243a5e58da3f23863c4721aed70cb89898fcb585b04528236212.lean/declarations/tolistrev--01db0a4bd40a92e79a66bdb8.md) | 108 | `declaration-track:01db0a4bd40a92e79a66bdb8904f244cd802b36e6b9294a69d676b4fb0709f8a` |
| 20 | `theorem` | [toListRev_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5858431b6213243a5e58da3f23863c4721aed70cb89898fcb585b04528236212.lean/declarations/tolistrev-eq--0cead46001eb64c328471eae.md) | 110 | `result-track:0cead46001eb64c328471eae0bbbc8d282f8b10c22f92aceb44880480909c9a2` |
| 21 | `theorem` | [SatisfiesM_foldlM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5858431b6213243a5e58da3f23863c4721aed70cb89898fcb585b04528236212.lean/declarations/satisfiesm-foldlm--a4c982ed2b11dcfd8d78480c.md) | 113 | `result-track:a4c982ed2b11dcfd8d78480c6d0b07d6aa5e93e8b6f241b9e50eccf7797cb8c4` |
| 22 | `theorem` | [foldl_induction](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5858431b6213243a5e58da3f23863c4721aed70cb89898fcb585b04528236212.lean/declarations/foldl-induction--6f4a784699d1f943435e5c74.md) | 127 | `result-track:6f4a784699d1f943435e5c742f1d4a1f4c4062ba039f20ea6760ddae0a3e694b` |
| 23 | `theorem` | [get_push_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5858431b6213243a5e58da3f23863c4721aed70cb89898fcb585b04528236212.lean/declarations/get-push-lt--adb81094cfdbb1ec2736e819.md) | 135 | `result-track:adb81094cfdbb1ec2736e8195983fc378104196b5305e2a6625c487c03628f83` |
| 24 | `theorem` | [get_push_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5858431b6213243a5e58da3f23863c4721aed70cb89898fcb585b04528236212.lean/declarations/get-push-eq--bca196a0b34da6c9e16678d0.md) | 140 | `result-track:bca196a0b34da6c9e16678d066387311adce17799da5454f6a6237843ba70e40` |
| 25 | `theorem` | [get_push](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5858431b6213243a5e58da3f23863c4721aed70cb89898fcb585b04528236212.lean/declarations/get-push--4b7023660b14915912d00aea.md) | 144 | `result-track:4b7023660b14915912d00aea3b875d850e6aae123d9f313fe0feeaa2b80b16b7` |
| 26 | `theorem` | [mapM_eq_foldlM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5858431b6213243a5e58da3f23863c4721aed70cb89898fcb585b04528236212.lean/declarations/mapm-eq-foldlm--2697d068de6278c4b74e773f.md) | 152 | `result-track:2697d068de6278c4b74e773f0c38de2cbac988491ebf7b29ff5ae9d567491132` |
| 27 | `theorem` | [SatisfiesM_mapM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5858431b6213243a5e58da3f23863c4721aed70cb89898fcb585b04528236212.lean/declarations/satisfiesm-mapm--8918b23d1bda1b7364d4c185.md) | 164 | `result-track:8918b23d1bda1b7364d4c1850d4d9c8c3d52c64cde35ca483dc273414b6e42fe` |
| 28 | `theorem` | [SatisfiesM_mapM'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5858431b6213243a5e58da3f23863c4721aed70cb89898fcb585b04528236212.lean/declarations/satisfiesm-mapm--0481edf1a5bfc9c9873bc169.md) | 182 | `result-track:0481edf1a5bfc9c9873bc1691eed356923f4d218babd4a06d442c75826b839ae` |
| 29 | `theorem` | [size_mapM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5858431b6213243a5e58da3f23863c4721aed70cb89898fcb585b04528236212.lean/declarations/size-mapm--6a478612ee37650309795fe1.md) | 190 | `result-track:6a478612ee37650309795fe1d45df58f5acd1e78e844b7155737b87df5e7bd17` |
| 30 | `theorem` | [map_data](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5858431b6213243a5e58da3f23863c4721aed70cb89898fcb585b04528236212.lean/declarations/map-data--449645d99f1babb798ec6da1.md) | 194 | `result-track:449645d99f1babb798ec6da1550c725c01df6476d23f396df6134076dd873de2` |
| 31 | `theorem` | [size_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5858431b6213243a5e58da3f23863c4721aed70cb89898fcb585b04528236212.lean/declarations/size-map--6cb026730066cc57307ee792.md) | 201 | `result-track:6cb026730066cc57307ee792cefdf406c50887067867ab82086671d8f15c6ce0` |
| 32 | `theorem` | [getElem_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5858431b6213243a5e58da3f23863c4721aed70cb89898fcb585b04528236212.lean/declarations/getelem-map--4777682a96250311c702164f.md) | 204 | `result-track:4777682a96250311c702164f33c870a74aa8502e276d534f4ff4509b28ac21af` |
| 33 | `theorem` | [pop_data](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5858431b6213243a5e58da3f23863c4721aed70cb89898fcb585b04528236212.lean/declarations/pop-data--f613b90857c5b947e6a7f08e.md) | 210 | `result-track:f613b90857c5b947e6a7f08ecf361d28512c6284d504138ab62cd36899c07a7f` |
| 34 | `theorem` | [append_eq_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5858431b6213243a5e58da3f23863c4721aed70cb89898fcb585b04528236212.lean/declarations/append-eq-append--8c55fd549122a58284395731.md) | 212 | `result-track:8c55fd549122a582843957319bfca7e7b2a738072c9e0e922af6b7ad9cc6e1b5` |
| 35 | `theorem` | [append_data](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5858431b6213243a5e58da3f23863c4721aed70cb89898fcb585b04528236212.lean/declarations/append-data--1a18fcd9a4e869718394bb8a.md) | 214 | `result-track:1a18fcd9a4e869718394bb8a52d848478f1d3e4647556d220b34a5ecd5a2d8fd` |
| 36 | `theorem` | [appendList_eq_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5858431b6213243a5e58da3f23863c4721aed70cb89898fcb585b04528236212.lean/declarations/appendlist-eq-append--3798c827c5fdb535f1c98f62.md) | 220 | `result-track:3798c827c5fdb535f1c98f6290eb1a48c9a2538813d4d93f8aeae09ef4ae6238` |
| 37 | `theorem` | [appendList_data](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5858431b6213243a5e58da3f23863c4721aed70cb89898fcb585b04528236212.lean/declarations/appendlist-data--d753ca50845d49b66f50b411.md) | 223 | `result-track:d753ca50845d49b66f50b41125bacc4e8fc5d2e8b474f10195f68478f3ebbba4` |
| 38 | `theorem` | [appendList_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5858431b6213243a5e58da3f23863c4721aed70cb89898fcb585b04528236212.lean/declarations/appendlist-nil--d733e5ee6bd1433f6ea82d1e.md) | 228 | `result-track:d733e5ee6bd1433f6ea82d1e9db45f0215bb0ed5c44c13b3e00c1f000a89e7f2` |
| 39 | `theorem` | [appendList_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5858431b6213243a5e58da3f23863c4721aed70cb89898fcb585b04528236212.lean/declarations/appendlist-cons--bf6d2b4309021338aa7c2733.md) | 230 | `result-track:bf6d2b4309021338aa7c273310763e5f41f1ec8a8794755fd518dc1b01885739` |
| 40 | `theorem` | [foldl_data_eq_bind](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5858431b6213243a5e58da3f23863c4721aed70cb89898fcb585b04528236212.lean/declarations/foldl-data-eq-bind--8fca1229bae03c910241aa38.md) | 233 | `result-track:8fca1229bae03c910241aa389fe254ee302a97bea4f88a073520c27efddcf92a` |
| 41 | `theorem` | [foldl_data_eq_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5858431b6213243a5e58da3f23863c4721aed70cb89898fcb585b04528236212.lean/declarations/foldl-data-eq-map--9c5d983e8b046444b509b68b.md) | 239 | `result-track:9c5d983e8b046444b509b68b011d945b45547b227357b1771e80a53f3b8fc4ed` |
| 42 | `theorem` | [size_uset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5858431b6213243a5e58da3f23863c4721aed70cb89898fcb585b04528236212.lean/declarations/size-uset--8108686ec4c15dd7fa25a85d.md) | 243 | `result-track:8108686ec4c15dd7fa25a85d00c0064dd04cfaf4e2ac41d1e5c7a66e2c0af484` |
| 43 | `theorem` | [anyM_eq_anyM_loop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5858431b6213243a5e58da3f23863c4721aed70cb89898fcb585b04528236212.lean/declarations/anym-eq-anym-loop--46dc794c35eec74ab4ca22ab.md) | 245 | `result-track:46dc794c35eec74ab4ca22ab3f0b0c93523f567de1d8a9c2e60f9e762a1aee00` |
| 44 | `theorem` | [anyM_stop_le_start](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5858431b6213243a5e58da3f23863c4721aed70cb89898fcb585b04528236212.lean/declarations/anym-stop-le-start--8e11df3c62a311f185dd6912.md) | 249 | `result-track:8e11df3c62a311f185dd6912a4f01e53fa841bf68f1d09b41d51833bebd70e94` |
| 45 | `theorem` | [SatisfiesM_anyM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5858431b6213243a5e58da3f23863c4721aed70cb89898fcb585b04528236212.lean/declarations/satisfiesm-anym--ba2567f3fb90c184db7c3118.md) | 253 | `result-track:ba2567f3fb90c184db7c31188f26f633c539a9aa49cbf0ef073d629113a55188` |
| 46 | `theorem` | [SatisfiesM_anyM_iff_exists](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5858431b6213243a5e58da3f23863c4721aed70cb89898fcb585b04528236212.lean/declarations/satisfiesm-anym-iff-exists--c898ec466e244202a0c70779.md) | 276 | `result-track:c898ec466e244202a0c70779b0f7a22ad4bdc234e22052c501b63b158e1c60a9` |
| 47 | `theorem` | [any_iff_exists](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5858431b6213243a5e58da3f23863c4721aed70cb89898fcb585b04528236212.lean/declarations/any-iff-exists--645a5bcd7b49e2a26531eb0b.md) | 303 | `result-track:645a5bcd7b49e2a26531eb0b13134b8eb92af61a2377e4c285630a7b4c54a43f` |
| 48 | `theorem` | [any_eq_true](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5858431b6213243a5e58da3f23863c4721aed70cb89898fcb585b04528236212.lean/declarations/any-eq-true--33d652933d5616b227b6d289.md) | 308 | `result-track:33d652933d5616b227b6d289b9b48a6b489d591af37a3a3fec0ab143ce475ec4` |
| 49 | `theorem` | [mem_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5858431b6213243a5e58da3f23863c4721aed70cb89898fcb585b04528236212.lean/declarations/mem-def--975acd4e5aa9e8f307366a59.md) | 311 | `result-track:975acd4e5aa9e8f307366a5984c78de33eb83764c81cffa924a3f375930b1002` |
| 50 | `theorem` | [any_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5858431b6213243a5e58da3f23863c4721aed70cb89898fcb585b04528236212.lean/declarations/any-def--7117869b90727267fe5a9280.md) | 314 | `result-track:7117869b90727267fe5a9280bbb90d1d02207ad9bfca17beda3a798dfa04d6c2` |
| 51 | `theorem` | [contains_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5858431b6213243a5e58da3f23863c4721aed70cb89898fcb585b04528236212.lean/declarations/contains-def--d3f4a7f9b2c9c69286707a9c.md) | 318 | `result-track:d3f4a7f9b2c9c69286707a9cd11766e17248a09939b72cbe011453d2960d4c56` |
| 52 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5858431b6213243a5e58da3f23863c4721aed70cb89898fcb585b04528236212.lean/declarations/instance--ed6de70c9805ae655e53f822.md) | 321 | `declaration-track:ed6de70c9805ae655e53f8223ee0657909d6ac47f6b57b5aa5d19e0ec890bbbf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
