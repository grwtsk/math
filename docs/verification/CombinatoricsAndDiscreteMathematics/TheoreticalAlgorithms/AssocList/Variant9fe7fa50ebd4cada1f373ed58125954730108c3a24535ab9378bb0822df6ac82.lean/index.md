# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AssocList.Variant9fe7fa50ebd4cada1f373ed58125954730108c3a24535ab9378bb0822df6ac82

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "29197bb8d502b89019480557c30d2d64a7132d7f",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssocList/Variant9fe7fa50ebd4cada1f373ed58125954730108c3a24535ab9378bb0822df6ac82.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssocList/Variant9fe7fa50ebd4cada1f373ed58125954730108c3a24535ab9378bb0822df6ac82.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssocList/Variant9fe7fa50ebd4cada1f373ed58125954730108c3a24535ab9378bb0822df6ac82.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `29197bb8d502b89019480557c30d2d64a7132d7f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssocList/Variant9fe7fa50ebd4cada1f373ed58125954730108c3a24535ab9378bb0822df6ac82.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssocList/Variant9fe7fa50ebd4cada1f373ed58125954730108c3a24535ab9378bb0822df6ac82.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Data.List.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [AssocList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssocList/Variant9fe7fa50ebd4cada1f373ed58125954730108c3a24535ab9378bb0822df6ac82.lean/declarations/assoclist--6574a5a0b5da7fdbfc3447eb.md) | 24 | `declaration-track:6574a5a0b5da7fdbfc3447eb4c85f9a61b074af28a5c5a7e001e78a41f79a9cf` |
| 2 | `def` | [toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssocList/Variant9fe7fa50ebd4cada1f373ed58125954730108c3a24535ab9378bb0822df6ac82.lean/declarations/tolist--126e58797567b8ffb5361644.md) | 38 | `declaration-track:126e58797567b8ffb536164441ac371ff8491e213b545847b7da4bd4a7166388` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssocList/Variant9fe7fa50ebd4cada1f373ed58125954730108c3a24535ab9378bb0822df6ac82.lean/declarations/instance--ba2fa9709095f8866440d981.md) | 42 | `declaration-track:ba2fa9709095f8866440d981e4999cbfc8ea20268868055170749798ca8d2b79` |
| 4 | `theorem` | [empty_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssocList/Variant9fe7fa50ebd4cada1f373ed58125954730108c3a24535ab9378bb0822df6ac82.lean/declarations/empty-eq--77a3fe47820321790a94857d.md) | 44 | `result-track:77a3fe47820321790a94857d84284f3a7af3c41d343e30ec0237c157db6f6dbb` |
| 5 | `def` | [isEmpty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssocList/Variant9fe7fa50ebd4cada1f373ed58125954730108c3a24535ab9378bb0822df6ac82.lean/declarations/isempty--9ac4c8a20ab41fcc5de94087.md) | 47 | `declaration-track:9ac4c8a20ab41fcc5de940879c811dbb454fc423a829e53e347983fe96bae48a` |
| 6 | `theorem` | [isEmpty_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssocList/Variant9fe7fa50ebd4cada1f373ed58125954730108c3a24535ab9378bb0822df6ac82.lean/declarations/isempty-eq--91b92f5bb2a39555e6632671.md) | 51 | `result-track:91b92f5bb2a39555e6632671667f26f78c91182879babf96decb1b5d69ff7672` |
| 7 | `def` | [foldlM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssocList/Variant9fe7fa50ebd4cada1f373ed58125954730108c3a24535ab9378bb0822df6ac82.lean/declarations/foldlm--c4dbf4a11422b180d6853041.md) | 55 | `declaration-track:c4dbf4a11422b180d6853041883bf82915c24c259646af3b6acb99426fb22503` |
| 8 | `theorem` | [foldlM_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssocList/Variant9fe7fa50ebd4cada1f373ed58125954730108c3a24535ab9378bb0822df6ac82.lean/declarations/foldlm-eq--e6e55800638828c675b571ad.md) | 59 | `result-track:e6e55800638828c675b571adbbdb5efb5bc4e41f5eceb2ac01078de4d8573c1a` |
| 9 | `def` | [foldl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssocList/Variant9fe7fa50ebd4cada1f373ed58125954730108c3a24535ab9378bb0822df6ac82.lean/declarations/foldl--3c81a6a2c242e6f3ce6a1395.md) | 64 | `declaration-track:3c81a6a2c242e6f3ce6a1395518e05a3db77f46ed775d879e285f4524b6530b6` |
| 10 | `theorem` | [foldl_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssocList/Variant9fe7fa50ebd4cada1f373ed58125954730108c3a24535ab9378bb0822df6ac82.lean/declarations/foldl-eq--a8d1e2759dbc2bcf5825e2d9.md) | 67 | `result-track:a8d1e2759dbc2bcf5825e2d9bff0c613cd099155782898f76e7c88e199d6ec1a` |
| 11 | `def` | [toListTR](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssocList/Variant9fe7fa50ebd4cada1f373ed58125954730108c3a24535ab9378bb0822df6ac82.lean/declarations/tolisttr--34799b39b1114c223e8c8f00.md) | 72 | `declaration-track:34799b39b1114c223e8c8f00f2d8a6af1a8618657988a7c9a7889587eac8aba4` |
| 12 | `theorem` | [toList_eq_toListTR](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssocList/Variant9fe7fa50ebd4cada1f373ed58125954730108c3a24535ab9378bb0822df6ac82.lean/declarations/tolist-eq-tolisttr--3f0c45c2fba09ae91e7393c3.md) | 75 | `result-track:3f0c45c2fba09ae91e7393c3ab85f01c5468fa8614fb4e3f14a1e96ccd923e56` |
| 13 | `def` | [forM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssocList/Variant9fe7fa50ebd4cada1f373ed58125954730108c3a24535ab9378bb0822df6ac82.lean/declarations/form--6b95a73a3ac359429138645f.md) | 80 | `declaration-track:6b95a73a3ac359429138645fdea80d1689fbda78efa4207fd4c83f82a1c87ff6` |
| 14 | `theorem` | [forM_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssocList/Variant9fe7fa50ebd4cada1f373ed58125954730108c3a24535ab9378bb0822df6ac82.lean/declarations/form-eq--a0912a73279625e51ecbb20b.md) | 84 | `result-track:a0912a73279625e51ecbb20ba3af6c87f15f8628b266f95e1e16e0e5d69ca11b` |
| 15 | `def` | [mapKey](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssocList/Variant9fe7fa50ebd4cada1f373ed58125954730108c3a24535ab9378bb0822df6ac82.lean/declarations/mapkey--6f55b18c42d5247bd7bbfa3c.md) | 89 | `declaration-track:6f55b18c42d5247bd7bbfa3c9064f604bd41aaa236d5c0fd2cafe91ab45d081f` |
| 16 | `theorem` | [mapKey_toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssocList/Variant9fe7fa50ebd4cada1f373ed58125954730108c3a24535ab9378bb0822df6ac82.lean/declarations/mapkey-tolist--af2151479ce38dfce467dcca.md) | 93 | `result-track:af2151479ce38dfce467dccae1e5dc79844972676066f305d8ddf4b9e5da29af` |
| 17 | `def` | [mapVal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssocList/Variant9fe7fa50ebd4cada1f373ed58125954730108c3a24535ab9378bb0822df6ac82.lean/declarations/mapval--25512dfaea9e33d09103ef4a.md) | 98 | `declaration-track:25512dfaea9e33d09103ef4ae590d5afc506e95a6f93866fa64b201210d90984` |
| 18 | `theorem` | [mapVal_toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssocList/Variant9fe7fa50ebd4cada1f373ed58125954730108c3a24535ab9378bb0822df6ac82.lean/declarations/mapval-tolist--bd0052537f56ed7d7dae73f2.md) | 102 | `result-track:bd0052537f56ed7d7dae73f2702bd484f47ebe7b066fa0e680c6a741bb06129c` |
| 19 | `def` | [findEntryP?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssocList/Variant9fe7fa50ebd4cada1f373ed58125954730108c3a24535ab9378bb0822df6ac82.lean/declarations/findentryp--f2415c9312801e4f5feeb156.md) | 107 | `declaration-track:f2415c9312801e4f5feeb1569d59816dbde2a1bbf2d8dbf19f17bf295fa04c6d` |
| 20 | `theorem` | [findEntryP?_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssocList/Variant9fe7fa50ebd4cada1f373ed58125954730108c3a24535ab9378bb0822df6ac82.lean/declarations/findentryp-eq--300104292f20f5a637b35335.md) | 111 | `result-track:300104292f20f5a637b353354afa1039358b5c9aa058e534c4b19c84df726b19` |
| 21 | `def` | [findEntry?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssocList/Variant9fe7fa50ebd4cada1f373ed58125954730108c3a24535ab9378bb0822df6ac82.lean/declarations/findentry--a3fbda8fa61afe6bde18accd.md) | 116 | `declaration-track:a3fbda8fa61afe6bde18accd0130f2b4c116f90d5a1b7a23794b4032985c8862` |
| 22 | `theorem` | [findEntry?_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssocList/Variant9fe7fa50ebd4cada1f373ed58125954730108c3a24535ab9378bb0822df6ac82.lean/declarations/findentry-eq--3a7207bcc0ebc2a9a329259a.md) | 119 | `result-track:3a7207bcc0ebc2a9a329259a290f34cce4f88886d38fbba476ee4e8a0aa2ed4e` |
| 23 | `def` | [find?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssocList/Variant9fe7fa50ebd4cada1f373ed58125954730108c3a24535ab9378bb0822df6ac82.lean/declarations/find--ae71996a4d51f29cbf0a159d.md) | 123 | `declaration-track:ae71996a4d51f29cbf0a159d8648a0db1c8ba3f29fe34b040d3c23beb56e9ebe` |
| 24 | `theorem` | [find?_eq_findEntry?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssocList/Variant9fe7fa50ebd4cada1f373ed58125954730108c3a24535ab9378bb0822df6ac82.lean/declarations/find-eq-findentry--683edc062af9fdeb98609e29.md) | 129 | `result-track:683edc062af9fdeb98609e29d2b258f68976bdbf0e4c45d605138cb036d3c5f4` |
| 25 | `theorem` | [find?_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssocList/Variant9fe7fa50ebd4cada1f373ed58125954730108c3a24535ab9378bb0822df6ac82.lean/declarations/find-eq--2c8ed470aa92d1ddeb343d01.md) | 133 | `result-track:2c8ed470aa92d1ddeb343d010e2cd9ad2199b313d0922bd7d6c7b7648c5f7cdb` |
| 26 | `def` | [any](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssocList/Variant9fe7fa50ebd4cada1f373ed58125954730108c3a24535ab9378bb0822df6ac82.lean/declarations/any--81672fa804efa84ae3dad6ae.md) | 137 | `declaration-track:81672fa804efa84ae3dad6aee85532ca95a9cfdb86399a29e4933c8837a491aa` |
| 27 | `theorem` | [any_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssocList/Variant9fe7fa50ebd4cada1f373ed58125954730108c3a24535ab9378bb0822df6ac82.lean/declarations/any-eq--63c1cd9ceed89da89dd8e37f.md) | 141 | `result-track:63c1cd9ceed89da89dd8e37f526690fb65876fb16986e11f673eeca21cb8f4df` |
| 28 | `def` | [all](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssocList/Variant9fe7fa50ebd4cada1f373ed58125954730108c3a24535ab9378bb0822df6ac82.lean/declarations/all--3f597f054573dafb69bcf27f.md) | 145 | `declaration-track:3f597f054573dafb69bcf27faa960c8ffe164a4174fb15b0e2020f570bf875c3` |
| 29 | `theorem` | [all_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssocList/Variant9fe7fa50ebd4cada1f373ed58125954730108c3a24535ab9378bb0822df6ac82.lean/declarations/all-eq--b499215793f61c88a14ce16a.md) | 149 | `result-track:b499215793f61c88a14ce16a9f16fdb57e180125f58b0fce7d6538cb5395895f` |
| 30 | `def` | [All](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssocList/Variant9fe7fa50ebd4cada1f373ed58125954730108c3a24535ab9378bb0822df6ac82.lean/declarations/all--04adc65869530bc7382416a2.md) | 153 | `declaration-track:04adc65869530bc7382416a21e2e1558c053100de063fe00f9def383d24b63b2` |
| 31 | `def` | [contains](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssocList/Variant9fe7fa50ebd4cada1f373ed58125954730108c3a24535ab9378bb0822df6ac82.lean/declarations/contains--bd4807e937975a4a1ea8886c.md) | 156 | `declaration-track:bd4807e937975a4a1ea8886ce7e251ff7c50ee9c877dcdc8987d71c5bf084648` |
| 32 | `theorem` | [contains_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssocList/Variant9fe7fa50ebd4cada1f373ed58125954730108c3a24535ab9378bb0822df6ac82.lean/declarations/contains-eq--8899d997f3751b99a9db3330.md) | 158 | `result-track:8899d997f3751b99a9db3330fcb8b210acc5553d100179a1e280749fd50c950e` |
| 33 | `def` | [replace](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssocList/Variant9fe7fa50ebd4cada1f373ed58125954730108c3a24535ab9378bb0822df6ac82.lean/declarations/replace--617a8da32f8ffc513be65e14.md) | 166 | `declaration-track:617a8da32f8ffc513be65e14676bfbfb0f0f7fc8e51d707305e0adb7e9cf2b7c` |
| 34 | `theorem` | [replace_toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssocList/Variant9fe7fa50ebd4cada1f373ed58125954730108c3a24535ab9378bb0822df6ac82.lean/declarations/replace-tolist--604716694cc8419e189587b4.md) | 172 | `result-track:604716694cc8419e189587b4ea7dc00029de5f27dd749b4b2282038f3541f06b` |
| 35 | `def` | [eraseP](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssocList/Variant9fe7fa50ebd4cada1f373ed58125954730108c3a24535ab9378bb0822df6ac82.lean/declarations/erasep--b171f5d4f8ebd01ae31712b1.md) | 178 | `declaration-track:b171f5d4f8ebd01ae31712b19211f1b998c26b274889d9a29b07488281c99f83` |
| 36 | `theorem` | [eraseP_toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssocList/Variant9fe7fa50ebd4cada1f373ed58125954730108c3a24535ab9378bb0822df6ac82.lean/declarations/erasep-tolist--7de1dd93a0acb1ea0f1de5bd.md) | 182 | `result-track:7de1dd93a0acb1ea0f1de5bdd16568d399cd71db203e0414ed1cbe320de324b6` |
| 37 | `def` | [erase](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssocList/Variant9fe7fa50ebd4cada1f373ed58125954730108c3a24535ab9378bb0822df6ac82.lean/declarations/erase--abbf775408a73093982230e3.md) | 187 | `declaration-track:abbf775408a73093982230e35858c5e409e5d882592593be371d678573a907c6` |
| 38 | `theorem` | [erase_toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssocList/Variant9fe7fa50ebd4cada1f373ed58125954730108c3a24535ab9378bb0822df6ac82.lean/declarations/erase-tolist--d0c28e29caba537334ac4471.md) | 190 | `result-track:d0c28e29caba537334ac4471d0603a379ba3e71a8cd24b5a7638979a3880ce41` |
| 39 | `def` | [modify](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssocList/Variant9fe7fa50ebd4cada1f373ed58125954730108c3a24535ab9378bb0822df6ac82.lean/declarations/modify--a8fa2d9675616041774d0e87.md) | 197 | `declaration-track:a8fa2d9675616041774d0e8794bc79a8d529dc0b1b5a9c064721643b0302b1c5` |
| 40 | `theorem` | [modify_toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssocList/Variant9fe7fa50ebd4cada1f373ed58125954730108c3a24535ab9378bb0822df6ac82.lean/declarations/modify-tolist--d4609c0631075da26d54d8b0.md) | 203 | `result-track:d4609c0631075da26d54d8b04e5a364df50c3ce14783d1f8479d60ba8701503c` |
| 41 | `def` | [forIn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssocList/Variant9fe7fa50ebd4cada1f373ed58125954730108c3a24535ab9378bb0822df6ac82.lean/declarations/forin--9344de6a77cf410e8b5c0086.md) | 211 | `declaration-track:9344de6a77cf410e8b5c0086bd5d6bec673ffe0af3131054bc946ea0c1a1674d` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssocList/Variant9fe7fa50ebd4cada1f373ed58125954730108c3a24535ab9378bb0822df6ac82.lean/declarations/instance--671d84775581d9a5bba89ef0.md) | 220 | `declaration-track:671d84775581d9a5bba89ef0c62c369ad961e93e32622d4ac75f466ae46e90a5` |
| 43 | `theorem` | [forIn_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssocList/Variant9fe7fa50ebd4cada1f373ed58125954730108c3a24535ab9378bb0822df6ac82.lean/declarations/forin-eq--ba382b21e8618269817a64b9.md) | 223 | `result-track:ba382b21e8618269817a64b9b8305206766d6c901ea2cf65f305312f99309101` |
| 44 | `def` | [pop?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssocList/Variant9fe7fa50ebd4cada1f373ed58125954730108c3a24535ab9378bb0822df6ac82.lean/declarations/pop--3d3f23d3508f8a2c803424e4.md) | 230 | `declaration-track:3d3f23d3508f8a2c803424e4540ccb5e70c779a1fe82cc479eeff98e4ac42dfe` |
| 45 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssocList/Variant9fe7fa50ebd4cada1f373ed58125954730108c3a24535ab9378bb0822df6ac82.lean/declarations/instance--a595eafa4cc9bf601156810e.md) | 234 | `declaration-track:a595eafa4cc9bf601156810e93852f719d2807487e545ce654373db7a9a06168` |
| 46 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssocList/Variant9fe7fa50ebd4cada1f373ed58125954730108c3a24535ab9378bb0822df6ac82.lean/declarations/instance--9f3ae48ca921fbfe6b13e4e5.md) | 235 | `declaration-track:9f3ae48ca921fbfe6b13e4e5c0ceea2c5e1aa7f1db9cb8a4785dac0603cb5751` |
| 47 | `def` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AssocList.Variant3c52fd9afc3c9b7a863af1c2faa19395b7795f90e46d7cd94df387f3fda354d2.List.toAssocList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssocList/Variant9fe7fa50ebd4cada1f373ed58125954730108c3a24535ab9378bb0822df6ac82.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-as--92e5583e44adfc57ce8a8a29.md) | 238 | `declaration-track:92e5583e44adfc57ce8a8a292945141a21558e7190e6f82719fb69d5a3d9df1f` |
| 48 | `theorem` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AssocList.Variant3c52fd9afc3c9b7a863af1c2faa19395b7795f90e46d7cd94df387f3fda354d2.List.toAssocList_toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssocList/Variant9fe7fa50ebd4cada1f373ed58125954730108c3a24535ab9378bb0822df6ac82.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-as--22ad7e13542b26f4eedb18e9.md) | 242 | `result-track:22ad7e13542b26f4eedb18e9d5949bb1c4322fd7044ac9900feb01d5ad9172f9` |
| 49 | `theorem` | [toList_toAssocList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssocList/Variant9fe7fa50ebd4cada1f373ed58125954730108c3a24535ab9378bb0822df6ac82.lean/declarations/tolist-toassoclist--77036059415f573f8785003e.md) | 245 | `result-track:77036059415f573f8785003e572b6cf31070b32e2337a53d752df67f40e60d02` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
