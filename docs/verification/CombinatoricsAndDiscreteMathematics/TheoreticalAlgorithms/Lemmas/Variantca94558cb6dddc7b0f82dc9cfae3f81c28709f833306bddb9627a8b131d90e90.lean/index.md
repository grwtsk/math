# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Lemmas.Variantca94558cb6dddc7b0f82dc9cfae3f81c28709f833306bddb9627a8b131d90e90

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e7b4bb3d71008fd6604b161fb3a14b49167a398a",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantca94558cb6dddc7b0f82dc9cfae3f81c28709f833306bddb9627a8b131d90e90.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantca94558cb6dddc7b0f82dc9cfae3f81c28709f833306bddb9627a8b131d90e90.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantca94558cb6dddc7b0f82dc9cfae3f81c28709f833306bddb9627a8b131d90e90.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e7b4bb3d71008fd6604b161fb3a14b49167a398a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantca94558cb6dddc7b0f82dc9cfae3f81c28709f833306bddb9627a8b131d90e90.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantca94558cb6dddc7b0f82dc9cfae3f81c28709f833306bddb9627a8b131d90e90.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Tactic.NoMatch` — import line 6; external provider; requires a separately pinned dependency.
- `Std.Tactic.HaveI` — import line 7; external provider; requires a separately pinned dependency.
- `Std.Classes.LawfulMonad` — import line 8; external provider; requires a separately pinned dependency.
- `Std.Data.Nat.Init.Lemmas` — import line 9; external provider; requires a separately pinned dependency.
- `Std.Data.List.Init.Lemmas` — import line 10; external provider; requires a separately pinned dependency.
- `Std.Data.Array.Init.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mkEmpty_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantca94558cb6dddc7b0f82dc9cfae3f81c28709f833306bddb9627a8b131d90e90.lean/declarations/mkempty-eq--84896f54b39005a200873288.md) | 23 | `result-track:84896f54b39005a20087328836fb6e97b3d049760c76d9ae52086cd90fe24a8a` |
| 2 | `theorem` | [size_toArray](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantca94558cb6dddc7b0f82dc9cfae3f81c28709f833306bddb9627a8b131d90e90.lean/declarations/size-toarray--62b37a64ca67442d604ac7a9.md) | 25 | `result-track:62b37a64ca67442d604ac7a9d9dd58c8cd429217d575f8be11094a0785131466` |
| 3 | `theorem` | [size_mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantca94558cb6dddc7b0f82dc9cfae3f81c28709f833306bddb9627a8b131d90e90.lean/declarations/size-mk--fb12bc12448d7487be8da9bf.md) | 27 | `result-track:fb12bc12448d7487be8da9bff95977397cea479962fe156a860ad9773946ebe2` |
| 4 | `theorem` | [getElem_eq_data_get](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantca94558cb6dddc7b0f82dc9cfae3f81c28709f833306bddb9627a8b131d90e90.lean/declarations/getelem-eq-data-get--9aa457c809833903d6293cb7.md) | 29 | `result-track:9aa457c809833903d6293cb7bf90acdce4a9450166c7d15de5dfd40e9289d02c` |
| 5 | `theorem` | [foldlM_eq_foldlM_data.aux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantca94558cb6dddc7b0f82dc9cfae3f81c28709f833306bddb9627a8b131d90e90.lean/declarations/foldlm-eq-foldlm-data-aux--714cf3ff0880e34c6166f959.md) | 32 | `result-track:714cf3ff0880e34c6166f9599fd586027d6c964fbe7acf23f22fa06fff78fb15` |
| 6 | `theorem` | [foldlM_eq_foldlM_data](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantca94558cb6dddc7b0f82dc9cfae3f81c28709f833306bddb9627a8b131d90e90.lean/declarations/foldlm-eq-foldlm-data--818b1fce16cfd98b9cafe5c2.md) | 43 | `result-track:818b1fce16cfd98b9cafe5c23f710acedfee0bce0887e3feb8b6aa3aa4ce4e49` |
| 7 | `theorem` | [foldl_eq_foldl_data](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantca94558cb6dddc7b0f82dc9cfae3f81c28709f833306bddb9627a8b131d90e90.lean/declarations/foldl-eq-foldl-data--b0acb396caf80385f3cbb410.md) | 48 | `result-track:b0acb396caf80385f3cbb410d6a1699baf010af3677679ecd5399fd87e3cbe67` |
| 8 | `theorem` | [foldrM_eq_reverse_foldlM_data.aux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantca94558cb6dddc7b0f82dc9cfae3f81c28709f833306bddb9627a8b131d90e90.lean/declarations/foldrm-eq-reverse-foldlm-data-aux--dcb364e5c482e9bc9ad560c2.md) | 52 | `result-track:dcb364e5c482e9bc9ad560c2a108bf864bff15ea40e73d4f0ee13fa3b5b04164` |
| 9 | `theorem` | [foldrM_eq_reverse_foldlM_data](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantca94558cb6dddc7b0f82dc9cfae3f81c28709f833306bddb9627a8b131d90e90.lean/declarations/foldrm-eq-reverse-foldlm-data--519586c147b1603b2101b4b1.md) | 60 | `result-track:519586c147b1603b2101b4b157ebfba4cf7e1373d13eac9ebecca7a903aa8ca1` |
| 10 | `theorem` | [foldrM_eq_foldrM_data](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantca94558cb6dddc7b0f82dc9cfae3f81c28709f833306bddb9627a8b131d90e90.lean/declarations/foldrm-eq-foldrm-data--56856869a9fa70aa5e8d1d84.md) | 67 | `result-track:56856869a9fa70aa5e8d1d848deb74d264837b5d291d4d7fa1ec3b9e446155ce` |
| 11 | `theorem` | [foldr_eq_foldr_data](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantca94558cb6dddc7b0f82dc9cfae3f81c28709f833306bddb9627a8b131d90e90.lean/declarations/foldr-eq-foldr-data--d8dc7ed453d00d3bd646d2c4.md) | 72 | `result-track:d8dc7ed453d00d3bd646d2c4efb673d21805a395b5627dbb1be6983eb3c72acd` |
| 12 | `theorem` | [push_data](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantca94558cb6dddc7b0f82dc9cfae3f81c28709f833306bddb9627a8b131d90e90.lean/declarations/push-data--fddedc8b201634b5a7095a56.md) | 76 | `result-track:fddedc8b201634b5a7095a56503497470f59eb8842460501b5069dad0d70aff5` |
| 13 | `theorem` | [foldrM_push](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantca94558cb6dddc7b0f82dc9cfae3f81c28709f833306bddb9627a8b131d90e90.lean/declarations/foldrm-push--bed97038eacb4a3b3d3ba600.md) | 79 | `result-track:bed97038eacb4a3b3d3ba6004d76094374aeaf5cbfffb03500f47d7ad1b4fa9f` |
| 14 | `theorem` | [foldrM_push'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantca94558cb6dddc7b0f82dc9cfae3f81c28709f833306bddb9627a8b131d90e90.lean/declarations/foldrm-push--99b12d75e52ef8c10d59d327.md) | 83 | `result-track:99b12d75e52ef8c10d59d327d8e47c74872f554d0e86ed41dca15ca080589ac0` |
| 15 | `theorem` | [foldr_push](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantca94558cb6dddc7b0f82dc9cfae3f81c28709f833306bddb9627a8b131d90e90.lean/declarations/foldr-push--d7552cd6152f4a86a58e335e.md) | 87 | `result-track:d7552cd6152f4a86a58e335ebb0a1bbe2db0b8703c6401c2babb03e260757787` |
| 16 | `theorem` | [foldr_push'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantca94558cb6dddc7b0f82dc9cfae3f81c28709f833306bddb9627a8b131d90e90.lean/declarations/foldr-push--25cc975f46a0449098b8021e.md) | 90 | `result-track:25cc975f46a0449098b8021e63cbb27f12f0a145aa5017359876f44e5dcdf68d` |
| 17 | `theorem` | [toListAppend_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantca94558cb6dddc7b0f82dc9cfae3f81c28709f833306bddb9627a8b131d90e90.lean/declarations/tolistappend-eq--b6257b5ab1a641121fed512f.md) | 93 | `result-track:b6257b5ab1a641121fed512f03a1a21a5f114060f6539e68f9e77016e3bd3fdb` |
| 18 | `theorem` | [toList_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantca94558cb6dddc7b0f82dc9cfae3f81c28709f833306bddb9627a8b131d90e90.lean/declarations/tolist-eq--8381a60fdb73d802542b5cb6.md) | 96 | `result-track:8381a60fdb73d802542b5cb608b37bd06195db04fd679f523985b49257e6ad4d` |
| 19 | `def` | [toListRev](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantca94558cb6dddc7b0f82dc9cfae3f81c28709f833306bddb9627a8b131d90e90.lean/declarations/tolistrev--7042243d6972e290addc3cdc.md) | 100 | `declaration-track:7042243d6972e290addc3cdcac99082019dc8ea6a229a547a0ba14922f25ad48` |
| 20 | `theorem` | [toListRev_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantca94558cb6dddc7b0f82dc9cfae3f81c28709f833306bddb9627a8b131d90e90.lean/declarations/tolistrev-eq--6452230360e552429178a82b.md) | 102 | `result-track:6452230360e552429178a82bd632af9624f859c0d72ae6d13f53b71243afafdc` |
| 21 | `theorem` | [SatisfiesM_foldlM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantca94558cb6dddc7b0f82dc9cfae3f81c28709f833306bddb9627a8b131d90e90.lean/declarations/satisfiesm-foldlm--a126bd3e06777b2d58748e89.md) | 105 | `result-track:a126bd3e06777b2d58748e893da6c4e9054d5d1508e56092e7493f003843a3c3` |
| 22 | `theorem` | [foldl_induction](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantca94558cb6dddc7b0f82dc9cfae3f81c28709f833306bddb9627a8b131d90e90.lean/declarations/foldl-induction--1bd07a1ac1921f18fc1dbdfa.md) | 119 | `result-track:1bd07a1ac1921f18fc1dbdfa6c5fd18fd05da0be0fe5cef399d0969a4527416d` |
| 23 | `theorem` | [get_push_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantca94558cb6dddc7b0f82dc9cfae3f81c28709f833306bddb9627a8b131d90e90.lean/declarations/get-push-lt--ba7347ed82acea4208024760.md) | 127 | `result-track:ba7347ed82acea4208024760f2acbd66ea42d374adb80ba34063b37b5454616f` |
| 24 | `theorem` | [get_push_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantca94558cb6dddc7b0f82dc9cfae3f81c28709f833306bddb9627a8b131d90e90.lean/declarations/get-push-eq--eff641948500bc99bda36114.md) | 132 | `result-track:eff641948500bc99bda361149b3920c56aa2427863c0d39f9d60f9e2601974be` |
| 25 | `theorem` | [get_push](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantca94558cb6dddc7b0f82dc9cfae3f81c28709f833306bddb9627a8b131d90e90.lean/declarations/get-push--5a418349da940a52db523f8d.md) | 136 | `result-track:5a418349da940a52db523f8dcfbad6b91630e3fce2f429622f29506b94649d02` |
| 26 | `theorem` | [mapM_eq_foldlM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantca94558cb6dddc7b0f82dc9cfae3f81c28709f833306bddb9627a8b131d90e90.lean/declarations/mapm-eq-foldlm--66128e56cfa72d428b2128c2.md) | 144 | `result-track:66128e56cfa72d428b2128c2bbadb29c5023bc3e3c8ec8875393c0544a051ef3` |
| 27 | `theorem` | [SatisfiesM_mapM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantca94558cb6dddc7b0f82dc9cfae3f81c28709f833306bddb9627a8b131d90e90.lean/declarations/satisfiesm-mapm--337413634257753ff3751ad0.md) | 156 | `result-track:337413634257753ff3751ad085caaf79388e147bcf8aa801cabe2cb836676e3b` |
| 28 | `theorem` | [SatisfiesM_mapM'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantca94558cb6dddc7b0f82dc9cfae3f81c28709f833306bddb9627a8b131d90e90.lean/declarations/satisfiesm-mapm--3feb257e00b7b7c173122970.md) | 174 | `result-track:3feb257e00b7b7c173122970cfcec6d304df42cc4d9e6e1412131e2b2cd926e8` |
| 29 | `theorem` | [size_mapM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantca94558cb6dddc7b0f82dc9cfae3f81c28709f833306bddb9627a8b131d90e90.lean/declarations/size-mapm--317587d9373ffbd57d53a4b2.md) | 182 | `result-track:317587d9373ffbd57d53a4b2b7995969778464e5985dbaea1ef23c47465fa8cb` |
| 30 | `theorem` | [map_data](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantca94558cb6dddc7b0f82dc9cfae3f81c28709f833306bddb9627a8b131d90e90.lean/declarations/map-data--32b64c115ddb50f5a9f4b14e.md) | 186 | `result-track:32b64c115ddb50f5a9f4b14ee6a42c1ec982c90e9b0ef378a417dfc880956bf4` |
| 31 | `theorem` | [size_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantca94558cb6dddc7b0f82dc9cfae3f81c28709f833306bddb9627a8b131d90e90.lean/declarations/size-map--1fc60315420244e36648fe95.md) | 193 | `result-track:1fc60315420244e36648fe95ecb81318efe4e7296da869c93fd25f2f5871ee09` |
| 32 | `theorem` | [getElem_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantca94558cb6dddc7b0f82dc9cfae3f81c28709f833306bddb9627a8b131d90e90.lean/declarations/getelem-map--3bd96830c380475091570b1e.md) | 196 | `result-track:3bd96830c380475091570b1e0455aea9e6652d9200339bc91f0cb626e5c1f6fd` |
| 33 | `theorem` | [pop_data](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantca94558cb6dddc7b0f82dc9cfae3f81c28709f833306bddb9627a8b131d90e90.lean/declarations/pop-data--fc5677037a91eebf78d749ca.md) | 202 | `result-track:fc5677037a91eebf78d749cade430db0740c00354d0f9877479ff742d2a56b1f` |
| 34 | `theorem` | [append_eq_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantca94558cb6dddc7b0f82dc9cfae3f81c28709f833306bddb9627a8b131d90e90.lean/declarations/append-eq-append--3756ce1c23d79b3c8148707c.md) | 204 | `result-track:3756ce1c23d79b3c8148707c6ed04bbbe0e5d40852d52187debd409c498bcfa7` |
| 35 | `theorem` | [append_data](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantca94558cb6dddc7b0f82dc9cfae3f81c28709f833306bddb9627a8b131d90e90.lean/declarations/append-data--1ccbef7f135ed20e1bd01a84.md) | 206 | `result-track:1ccbef7f135ed20e1bd01a8418a9e8bfede13a8bdce029bcc81cb877a08c7695` |
| 36 | `theorem` | [appendList_eq_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantca94558cb6dddc7b0f82dc9cfae3f81c28709f833306bddb9627a8b131d90e90.lean/declarations/appendlist-eq-append--a98e3fe6b4b47f168a7039f4.md) | 212 | `result-track:a98e3fe6b4b47f168a7039f4aa428c38f67f89e254b57e8458f96ea6a6d4ec85` |
| 37 | `theorem` | [appendList_data](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantca94558cb6dddc7b0f82dc9cfae3f81c28709f833306bddb9627a8b131d90e90.lean/declarations/appendlist-data--54b9e7be12ac8119a15ddc48.md) | 215 | `result-track:54b9e7be12ac8119a15ddc48d685a7b5d25ea8b583c6f806c35aa9523ac5661e` |
| 38 | `theorem` | [appendList_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantca94558cb6dddc7b0f82dc9cfae3f81c28709f833306bddb9627a8b131d90e90.lean/declarations/appendlist-nil--14f868906a4d9fadea820ba2.md) | 220 | `result-track:14f868906a4d9fadea820ba266d9cc3c9d2d98bb1b50dde4c327f5784bc6a6cc` |
| 39 | `theorem` | [appendList_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantca94558cb6dddc7b0f82dc9cfae3f81c28709f833306bddb9627a8b131d90e90.lean/declarations/appendlist-cons--2016119b360a2171631c3268.md) | 222 | `result-track:2016119b360a2171631c3268ec4b875ad46ae22ed0eac2821d6f0e8b40c5d3f4` |
| 40 | `theorem` | [foldl_data_eq_bind](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantca94558cb6dddc7b0f82dc9cfae3f81c28709f833306bddb9627a8b131d90e90.lean/declarations/foldl-data-eq-bind--877d074097b1fc4c734fcfe8.md) | 225 | `result-track:877d074097b1fc4c734fcfe853adee5697d03cca3a24f0fb76acdbbb0645adb4` |
| 41 | `theorem` | [foldl_data_eq_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantca94558cb6dddc7b0f82dc9cfae3f81c28709f833306bddb9627a8b131d90e90.lean/declarations/foldl-data-eq-map--f84ec1e640cf1bcc238fdd7e.md) | 231 | `result-track:f84ec1e640cf1bcc238fdd7e72f7e85e33723e27c0eaa3f7678131adbad16575` |
| 42 | `theorem` | [size_uset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantca94558cb6dddc7b0f82dc9cfae3f81c28709f833306bddb9627a8b131d90e90.lean/declarations/size-uset--62d5c23387935eddc04e5c30.md) | 235 | `result-track:62d5c23387935eddc04e5c30029561d1da111efa62b2b257afd8b957802fffa6` |
| 43 | `theorem` | [anyM_eq_anyM_loop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantca94558cb6dddc7b0f82dc9cfae3f81c28709f833306bddb9627a8b131d90e90.lean/declarations/anym-eq-anym-loop--b54035ea0f7efd11ad476fda.md) | 237 | `result-track:b54035ea0f7efd11ad476fdad88bf562002355725a9622eb85ff2043aacff11d` |
| 44 | `theorem` | [anyM_stop_le_start](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantca94558cb6dddc7b0f82dc9cfae3f81c28709f833306bddb9627a8b131d90e90.lean/declarations/anym-stop-le-start--806de797677bc5f3279a976a.md) | 241 | `result-track:806de797677bc5f3279a976a4bdc6d37d9741d1cc1388a433d3e7d2cad0c82cc` |
| 45 | `theorem` | [SatisfiesM_anyM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantca94558cb6dddc7b0f82dc9cfae3f81c28709f833306bddb9627a8b131d90e90.lean/declarations/satisfiesm-anym--69255729ebc88a0c0566cf4b.md) | 245 | `result-track:69255729ebc88a0c0566cf4bfebbea2ff54be6e1e109f49836e35497964b4789` |
| 46 | `theorem` | [SatisfiesM_anyM_iff_exists](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantca94558cb6dddc7b0f82dc9cfae3f81c28709f833306bddb9627a8b131d90e90.lean/declarations/satisfiesm-anym-iff-exists--8ecbba2040dc6ade1c2f1511.md) | 268 | `result-track:8ecbba2040dc6ade1c2f1511bc7e57f5f65162aa8b6b3458705105919fa9c8c0` |
| 47 | `theorem` | [any_iff_exists](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantca94558cb6dddc7b0f82dc9cfae3f81c28709f833306bddb9627a8b131d90e90.lean/declarations/any-iff-exists--e9b4e09f6d7b87da8d25627d.md) | 295 | `result-track:e9b4e09f6d7b87da8d25627de079de3fce9e4b24338be50aef15cd00633a860f` |
| 48 | `theorem` | [any_eq_true](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantca94558cb6dddc7b0f82dc9cfae3f81c28709f833306bddb9627a8b131d90e90.lean/declarations/any-eq-true--4079f168136727e1fd05fb08.md) | 300 | `result-track:4079f168136727e1fd05fb0865de7e8cca88af7b4849dcc7cabac3eeed00de3b` |
| 49 | `theorem` | [mem_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantca94558cb6dddc7b0f82dc9cfae3f81c28709f833306bddb9627a8b131d90e90.lean/declarations/mem-def--d5c7020652e267baef7a6761.md) | 303 | `result-track:d5c7020652e267baef7a67619dcedc3bc0f690fa3dfd6a25f87aafa953c30791` |
| 50 | `theorem` | [any_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantca94558cb6dddc7b0f82dc9cfae3f81c28709f833306bddb9627a8b131d90e90.lean/declarations/any-def--364c5879878c6f18ad8a54a1.md) | 306 | `result-track:364c5879878c6f18ad8a54a1722488d26705f4c1e87773c3e95340c3c2e19570` |
| 51 | `theorem` | [contains_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantca94558cb6dddc7b0f82dc9cfae3f81c28709f833306bddb9627a8b131d90e90.lean/declarations/contains-def--153bd2c5493945403223f01b.md) | 310 | `result-track:153bd2c5493945403223f01b387826272ae1de9f43b8f92cf92ae27d6f4e15c5` |
| 52 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantca94558cb6dddc7b0f82dc9cfae3f81c28709f833306bddb9627a8b131d90e90.lean/declarations/instance--20d79c3fa4d257aab4c51f9a.md) | 313 | `declaration-track:20d79c3fa4d257aab4c51f9a49dd1b5e15bd2282efbc1ae10e36b5e12badf4b5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
