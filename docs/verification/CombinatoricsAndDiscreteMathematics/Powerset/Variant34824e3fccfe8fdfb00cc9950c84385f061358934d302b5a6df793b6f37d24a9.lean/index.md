# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Powerset.Variant34824e3fccfe8fdfb00cc9950c84385f061358934d302b5a6df793b6f37d24a9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5ff0f8942de785862a19912944f97094477c822e",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Powerset/Variant34824e3fccfe8fdfb00cc9950c84385f061358934d302b5a6df793b6f37d24a9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant34824e3fccfe8fdfb00cc9950c84385f061358934d302b5a6df793b6f37d24a9.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant34824e3fccfe8fdfb00cc9950c84385f061358934d302b5a6df793b6f37d24a9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5ff0f8942de785862a19912944f97094477c822e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Powerset/Variant34824e3fccfe8fdfb00cc9950c84385f061358934d302b5a6df793b6f37d24a9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Powerset/Variant34824e3fccfe8fdfb00cc9950c84385f061358934d302b5a6df793b6f37d24a9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Sublists` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Nodup` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [powersetAux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant34824e3fccfe8fdfb00cc9950c84385f061358934d302b5a6df793b6f37d24a9.lean/declarations/powersetaux--780cbc5339e27c840fcf4a74.md) | 37 | `declaration-track:780cbc5339e27c840fcf4a74cd1481e368038b5f4209818b1b7b9d7c0f09377a` |
| 2 | `theorem` | [powersetAux_eq_map_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant34824e3fccfe8fdfb00cc9950c84385f061358934d302b5a6df793b6f37d24a9.lean/declarations/powersetaux-eq-map-coe--abcaf49287bb39ae6c5ae69f.md) | 41 | `result-track:abcaf49287bb39ae6c5ae69f32dabeab580ca067b8ff8bd264cea52bcea49804` |
| 3 | `theorem` | [mem_powersetAux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant34824e3fccfe8fdfb00cc9950c84385f061358934d302b5a6df793b6f37d24a9.lean/declarations/mem-powersetaux--59ffce764c0c3df357b3d919.md) | 46 | `result-track:59ffce764c0c3df357b3d919ea4f709b1f3e584e6ae15fbec6acce185ed34602` |
| 4 | `def` | [powersetAux'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant34824e3fccfe8fdfb00cc9950c84385f061358934d302b5a6df793b6f37d24a9.lean/declarations/powersetaux--afd98e6f3eaff907d209dae9.md) | 52 | `declaration-track:afd98e6f3eaff907d209dae9fc8dc468ec4ceeb9018074455a12f7f810d34d6a` |
| 5 | `theorem` | [powersetAux_perm_powersetAux'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant34824e3fccfe8fdfb00cc9950c84385f061358934d302b5a6df793b6f37d24a9.lean/declarations/powersetaux-perm-powersetaux--eb8df3eeccdec301bfea0f58.md) | 56 | `result-track:eb8df3eeccdec301bfea0f58154fd57c3ed54ce25727328576f48345049e883c` |
| 6 | `theorem` | [powersetAux'_nil](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant34824e3fccfe8fdfb00cc9950c84385f061358934d302b5a6df793b6f37d24a9.lean/declarations/powersetaux-nil--d950f699d8d1b6b8b0371c1f.md) | 61 | `result-track:d950f699d8d1b6b8b0371c1f4d6369fa205676b091a42fd63e09bfc143604bac` |
| 7 | `theorem` | [powersetAux'_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant34824e3fccfe8fdfb00cc9950c84385f061358934d302b5a6df793b6f37d24a9.lean/declarations/powersetaux-cons--7190a6f308fbd0109c063057.md) | 66 | `result-track:7190a6f308fbd0109c063057621c6fda7d1dd66e56cc50be85007d1a18e78ef5` |
| 8 | `theorem` | [powerset_aux'_perm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant34824e3fccfe8fdfb00cc9950c84385f061358934d302b5a6df793b6f37d24a9.lean/declarations/powerset-aux-perm--a08bd91a3bd14e14864d49fe.md) | 71 | `result-track:a08bd91a3bd14e14864d49fe076de96ab12c1a4c9656bf71e428e4e573ccf4cf` |
| 9 | `theorem` | [powersetAux_perm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant34824e3fccfe8fdfb00cc9950c84385f061358934d302b5a6df793b6f37d24a9.lean/declarations/powersetaux-perm--1fdc397656dd747f6e233b41.md) | 84 | `result-track:1fdc397656dd747f6e233b41165b2cd27d1ba2c38304f8cb5d08f1865051b77f` |
| 10 | `def` | [powerset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant34824e3fccfe8fdfb00cc9950c84385f061358934d302b5a6df793b6f37d24a9.lean/declarations/powerset--5ac2776f54e07fb077403921.md) | 91 | `declaration-track:5ac2776f54e07fb07740392189f8616b660eba933914338b52d0e44452497cc4` |
| 11 | `theorem` | [powerset_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant34824e3fccfe8fdfb00cc9950c84385f061358934d302b5a6df793b6f37d24a9.lean/declarations/powerset-coe--b9c510dcac30535eccab4752.md) | 97 | `result-track:b9c510dcac30535eccab4752e620f67f99f6e2b3c4b37d2045aedf4cd9c29770` |
| 12 | `theorem` | [powerset_coe'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant34824e3fccfe8fdfb00cc9950c84385f061358934d302b5a6df793b6f37d24a9.lean/declarations/powerset-coe--d18436a9a16bd9c32850c277.md) | 102 | `result-track:d18436a9a16bd9c32850c277f7c40ffdd75ca3f22e6abb94341bc3f96da633f3` |
| 13 | `theorem` | [powerset_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant34824e3fccfe8fdfb00cc9950c84385f061358934d302b5a6df793b6f37d24a9.lean/declarations/powerset-zero--ac2a43850e90a3dc7e78d143.md) | 107 | `result-track:ac2a43850e90a3dc7e78d1437f33dd1a9ed6c0fff21a95692e58d49965832dc7` |
| 14 | `theorem` | [powerset_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant34824e3fccfe8fdfb00cc9950c84385f061358934d302b5a6df793b6f37d24a9.lean/declarations/powerset-cons--318b92cfadeb8bb274c2568d.md) | 112 | `result-track:318b92cfadeb8bb274c2568dbd48818a06e4c10bd04c4afef259f6cbe8cabb14` |
| 15 | `theorem` | [mem_powerset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant34824e3fccfe8fdfb00cc9950c84385f061358934d302b5a6df793b6f37d24a9.lean/declarations/mem-powerset--c3b24bf9c745595f1ca62cfb.md) | 117 | `result-track:c3b24bf9c745595f1ca62cfbf045a5de3a3d9361ad84ca6ca472cad66686f773` |
| 16 | `theorem` | [map_single_le_powerset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant34824e3fccfe8fdfb00cc9950c84385f061358934d302b5a6df793b6f37d24a9.lean/declarations/map-single-le-powerset--16c413f4ddfb7fc316b70c4b.md) | 121 | `result-track:16c413f4ddfb7fc316b70c4ba1d3b622217209f39cb99f51830ea863a801ffd7` |
| 17 | `theorem` | [card_powerset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant34824e3fccfe8fdfb00cc9950c84385f061358934d302b5a6df793b6f37d24a9.lean/declarations/card-powerset--1ce142fce80fefa4971fb529.md) | 130 | `result-track:1ce142fce80fefa4971fb52937c453448c42b17078d4da7fe9e3dd3248847d74` |
| 18 | `theorem` | [revzip_powersetAux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant34824e3fccfe8fdfb00cc9950c84385f061358934d302b5a6df793b6f37d24a9.lean/declarations/revzip-powersetaux--fb37243c9c97985e93bbe862.md) | 134 | `result-track:fb37243c9c97985e93bbe862dfc7fb0d7cacfa3bf4abe9ac9c24f26542926fcb` |
| 19 | `theorem` | [revzip_powersetAux'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant34824e3fccfe8fdfb00cc9950c84385f061358934d302b5a6df793b6f37d24a9.lean/declarations/revzip-powersetaux--218b822d828379106f0d44f1.md) | 141 | `result-track:218b822d828379106f0d44f1f8678b5a6624817e128951ee90899ae8210c6101` |
| 20 | `theorem` | [revzip_powersetAux_lemma](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant34824e3fccfe8fdfb00cc9950c84385f061358934d302b5a6df793b6f37d24a9.lean/declarations/revzip-powersetaux-lemma--fd6200b5587c5c85f296ab80.md) | 150 | `result-track:fd6200b5587c5c85f296ab80a487ce633e856b8a980dad60cfa569522e85ae4f` |
| 21 | `theorem` | [revzip_powersetAux_perm_aux'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant34824e3fccfe8fdfb00cc9950c84385f061358934d302b5a6df793b6f37d24a9.lean/declarations/revzip-powersetaux-perm-aux--00868de217d509437e016ea2.md) | 164 | `result-track:00868de217d509437e016ea277656ca4b6099ffd3b8387506e88fb45c2cc223f` |
| 22 | `theorem` | [revzip_powersetAux_perm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant34824e3fccfe8fdfb00cc9950c84385f061358934d302b5a6df793b6f37d24a9.lean/declarations/revzip-powersetaux-perm--ca597e01b8cb01a7bb5f4a16.md) | 171 | `result-track:ca597e01b8cb01a7bb5f4a160296f83ee4c941e53824bc35f4fcec2b12096ecf` |
| 23 | `def` | [powersetLenAux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant34824e3fccfe8fdfb00cc9950c84385f061358934d302b5a6df793b6f37d24a9.lean/declarations/powersetlenaux--27b22ced515fb77e1a00c4df.md) | 183 | `declaration-track:27b22ced515fb77e1a00c4df78621e7879c58ef0d41fd625ab964ab31815247b` |
| 24 | `theorem` | [powersetLenAux_eq_map_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant34824e3fccfe8fdfb00cc9950c84385f061358934d302b5a6df793b6f37d24a9.lean/declarations/powersetlenaux-eq-map-coe--87e6600cd0fb7f281be54d46.md) | 187 | `result-track:87e6600cd0fb7f281be54d462be504914a9268f07bcf0a249bed70c679fb3f08` |
| 25 | `theorem` | [mem_powersetLenAux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant34824e3fccfe8fdfb00cc9950c84385f061358934d302b5a6df793b6f37d24a9.lean/declarations/mem-powersetlenaux--8eaa54c4c41052d6c8a14f31.md) | 193 | `result-track:8eaa54c4c41052d6c8a14f31efe58e3bde782fc778c1b5821098c28e67ec777f` |
| 26 | `theorem` | [powersetLenAux_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant34824e3fccfe8fdfb00cc9950c84385f061358934d302b5a6df793b6f37d24a9.lean/declarations/powersetlenaux-zero--01944901b28a0876f58d7cef.md) | 202 | `result-track:01944901b28a0876f58d7cefb61a9616512bb6db5f60dc25d0c4e9f3cd08e436` |
| 27 | `theorem` | [powersetLenAux_nil](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant34824e3fccfe8fdfb00cc9950c84385f061358934d302b5a6df793b6f37d24a9.lean/declarations/powersetlenaux-nil--27aace4ea230aab155581e1e.md) | 207 | `result-track:27aace4ea230aab155581e1ea56e47ba643a60737d81f4f3a630701123a899ce` |
| 28 | `theorem` | [powersetLenAux_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant34824e3fccfe8fdfb00cc9950c84385f061358934d302b5a6df793b6f37d24a9.lean/declarations/powersetlenaux-cons--d29ae84db849f7c39e512a39.md) | 212 | `result-track:d29ae84db849f7c39e512a39712a335244453e9d61d0f28ae0334d30ec2262d9` |
| 29 | `theorem` | [powersetLenAux_perm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant34824e3fccfe8fdfb00cc9950c84385f061358934d302b5a6df793b6f37d24a9.lean/declarations/powersetlenaux-perm--c5e4dc93963c9cb13ac41db4.md) | 218 | `result-track:c5e4dc93963c9cb13ac41db423d9724ca7d2f748b755f368cac6e04ab8ac5646` |
| 30 | `def` | [powersetLen](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant34824e3fccfe8fdfb00cc9950c84385f061358934d302b5a6df793b6f37d24a9.lean/declarations/powersetlen--be67cdf848251660674cee32.md) | 238 | `declaration-track:be67cdf848251660674cee326ad69bfb1d96942cd829d2b510bbb878ae7f009e` |
| 31 | `theorem` | [powersetLen_coe'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant34824e3fccfe8fdfb00cc9950c84385f061358934d302b5a6df793b6f37d24a9.lean/declarations/powersetlen-coe--8570902d2d1aa9692cbe880c.md) | 243 | `result-track:8570902d2d1aa9692cbe880c67a28bf6d486fa9107dbc9624ca2a1abd87c46b6` |
| 32 | `theorem` | [powersetLen_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant34824e3fccfe8fdfb00cc9950c84385f061358934d302b5a6df793b6f37d24a9.lean/declarations/powersetlen-coe--68aa2fa72d7849bb2f8db551.md) | 247 | `result-track:68aa2fa72d7849bb2f8db5512a2e887e9185e30716349434f16706eead018b37` |
| 33 | `theorem` | [powersetLen_zero_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant34824e3fccfe8fdfb00cc9950c84385f061358934d302b5a6df793b6f37d24a9.lean/declarations/powersetlen-zero-left--40d83e93c7a2bcb0d4f0ff0a.md) | 253 | `result-track:40d83e93c7a2bcb0d4f0ff0a0e4d7721054d6b52bad8ce958d23171a34f86bfd` |
| 34 | `theorem` | [powersetLen_zero_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant34824e3fccfe8fdfb00cc9950c84385f061358934d302b5a6df793b6f37d24a9.lean/declarations/powersetlen-zero-right--c392b2dd8102ee93dc8d8b81.md) | 257 | `result-track:c392b2dd8102ee93dc8d8b815decf3a7e1fd8ca895c2c1b5cbfcc0c67d201459` |
| 35 | `theorem` | [powersetLen_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant34824e3fccfe8fdfb00cc9950c84385f061358934d302b5a6df793b6f37d24a9.lean/declarations/powersetlen-cons--e684c29ebcc3823996d8a6b4.md) | 262 | `result-track:e684c29ebcc3823996d8a6b478b295d992108f560dc7c6911b6fd63b1169a2d1` |
| 36 | `theorem` | [mem_powersetLen](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant34824e3fccfe8fdfb00cc9950c84385f061358934d302b5a6df793b6f37d24a9.lean/declarations/mem-powersetlen--2a7aaf4f0e2b4b1b9efdc7f8.md) | 268 | `result-track:2a7aaf4f0e2b4b1b9efdc7f89d210855d06a015023f0a5f4f24a3094df178bdf` |
| 37 | `theorem` | [card_powersetLen](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant34824e3fccfe8fdfb00cc9950c84385f061358934d302b5a6df793b6f37d24a9.lean/declarations/card-powersetlen--c8fd0368cef7e71991ea19e6.md) | 273 | `result-track:c8fd0368cef7e71991ea19e60e0a46495999add8e8057435034525d7951ab6a3` |
| 38 | `theorem` | [powersetLen_le_powerset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant34824e3fccfe8fdfb00cc9950c84385f061358934d302b5a6df793b6f37d24a9.lean/declarations/powersetlen-le-powerset--c78636de30a3fe2e316b7591.md) | 278 | `result-track:c78636de30a3fe2e316b7591c8f90128c27d03585465d9adcf14abb0ac7fcc02` |
| 39 | `theorem` | [powersetLen_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant34824e3fccfe8fdfb00cc9950c84385f061358934d302b5a6df793b6f37d24a9.lean/declarations/powersetlen-mono--35d0dcb81ce43b04c9095f03.md) | 284 | `result-track:35d0dcb81ce43b04c9095f0339e25e8fa5b5a972947c3a4f90aafe7a161bf54e` |
| 40 | `theorem` | [powersetLen_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant34824e3fccfe8fdfb00cc9950c84385f061358934d302b5a6df793b6f37d24a9.lean/declarations/powersetlen-empty--ef75b0c296cd19d6fee9d85f.md) | 292 | `result-track:ef75b0c296cd19d6fee9d85f9b862c9f0d070e1158d825d58f97b0e98d067104` |
| 41 | `theorem` | [powersetLen_card_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant34824e3fccfe8fdfb00cc9950c84385f061358934d302b5a6df793b6f37d24a9.lean/declarations/powersetlen-card-add--7d13cfa04987f67dfe2334f9.md) | 298 | `result-track:7d13cfa04987f67dfe2334f9019f735064c6e5d84408acd7c24353cefa88cb95` |
| 42 | `theorem` | [powersetLen_map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant34824e3fccfe8fdfb00cc9950c84385f061358934d302b5a6df793b6f37d24a9.lean/declarations/powersetlen-map--47d88d8558aaf53380b2e21c.md) | 303 | `result-track:47d88d8558aaf53380b2e21c15521a32f46eb617db3f253e650f668d451e1c0e` |
| 43 | `theorem` | [pairwise_disjoint_powersetLen](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant34824e3fccfe8fdfb00cc9950c84385f061358934d302b5a6df793b6f37d24a9.lean/declarations/pairwise-disjoint-powersetlen--5d85a3ebdd24655406760bac.md) | 310 | `result-track:5d85a3ebdd24655406760bac63c00b3ae265b53b5dfeb86d38a88d0d404f94aa` |
| 44 | `theorem` | [bind_powerset_len](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant34824e3fccfe8fdfb00cc9950c84385f061358934d302b5a6df793b6f37d24a9.lean/declarations/bind-powerset-len--a2f57f1136370d1512a585d0.md) | 316 | `result-track:a2f57f1136370d1512a585d00fa2b46886ab751e9ca8738b1942cfd665be47b7` |
| 45 | `theorem` | [nodup_powerset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant34824e3fccfe8fdfb00cc9950c84385f061358934d302b5a6df793b6f37d24a9.lean/declarations/nodup-powerset--71ba8c96f0ab55c6f3ba8c5c.md) | 325 | `result-track:71ba8c96f0ab55c6f3ba8c5ca3794544fe5941faa7238da1bd45d0348abcc74e` |
| 46 | `theorem` | [Nodup.powersetLen](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant34824e3fccfe8fdfb00cc9950c84385f061358934d302b5a6df793b6f37d24a9.lean/declarations/nodup-powersetlen--022aea9143beae46443395a8.md) | 338 | `result-track:022aea9143beae46443395a8ba24c4fc120fe59f6cd9e3fd1cbd407d6ea9cdaf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
