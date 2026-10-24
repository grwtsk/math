# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Finset.Variant8ed90a9a49c7d58aec3ef256a3e4c8084aeb92bcfc80fd2783d452fc5f92c866

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "621944666a4b689301958380f6885eb3178ed201",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant8ed90a9a49c7d58aec3ef256a3e4c8084aeb92bcfc80fd2783d452fc5f92c866.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant8ed90a9a49c7d58aec3ef256a3e4c8084aeb92bcfc80fd2783d452fc5f92c866.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant8ed90a9a49c7d58aec3ef256a3e4c8084aeb92bcfc80fd2783d452fc5f92c866.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `621944666a4b689301958380f6885eb3178ed201`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant8ed90a9a49c7d58aec3ef256a3e4c8084aeb92bcfc80fd2783d452fc5f92c866.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finset/Variant8ed90a9a49c7d58aec3ef256a3e4c8084aeb92bcfc80fd2783d452fc5f92c866.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lcm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant8ed90a9a49c7d58aec3ef256a3e4c8084aeb92bcfc80fd2783d452fc5f92c866.lean/declarations/lcm--eb76c6cf541282be1d7386c7.md) | 56 | `declaration-track:eb76c6cf541282be1d7386c73d5edbf0c935950240ccd14c3fef5b41e0efc97b` |
| 2 | `theorem` | [lcm_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant8ed90a9a49c7d58aec3ef256a3e4c8084aeb92bcfc80fd2783d452fc5f92c866.lean/declarations/lcm-def--01bfbf7fa64fedbe2e6d247e.md) | 61 | `result-track:01bfbf7fa64fedbe2e6d247eb6c7290887c3aeb04f7fd2b9059978d869f5d916` |
| 3 | `theorem` | [lcm_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant8ed90a9a49c7d58aec3ef256a3e4c8084aeb92bcfc80fd2783d452fc5f92c866.lean/declarations/lcm-empty--24776bfbb92cf62d46a79c8f.md) | 65 | `result-track:24776bfbb92cf62d46a79c8fce7e365de534b4e7da399b6480448b758c9953e4` |
| 4 | `theorem` | [lcm_dvd_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant8ed90a9a49c7d58aec3ef256a3e4c8084aeb92bcfc80fd2783d452fc5f92c866.lean/declarations/lcm-dvd-iff--dd0c053e08316d41eaf3afd4.md) | 69 | `result-track:dd0c053e08316d41eaf3afd4db5444da9ddf94ee37f78c1539e413c17affb282` |
| 5 | `theorem` | [lcm_dvd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant8ed90a9a49c7d58aec3ef256a3e4c8084aeb92bcfc80fd2783d452fc5f92c866.lean/declarations/lcm-dvd--317fb2eea0050ec5f4094b0f.md) | 74 | `result-track:317fb2eea0050ec5f4094b0f298c6666444e46ac36f40115d77b4456962b7166` |
| 6 | `theorem` | [dvd_lcm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant8ed90a9a49c7d58aec3ef256a3e4c8084aeb92bcfc80fd2783d452fc5f92c866.lean/declarations/dvd-lcm--bbe699c7babac6ca0cbf1841.md) | 77 | `result-track:bbe699c7babac6ca0cbf1841d8f18bb04cb34ee5bed124c8cd4994ecaa59e079` |
| 7 | `theorem` | [lcm_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant8ed90a9a49c7d58aec3ef256a3e4c8084aeb92bcfc80fd2783d452fc5f92c866.lean/declarations/lcm-insert--ca4edb5cbe0a442d5edc6a14.md) | 81 | `result-track:ca4edb5cbe0a442d5edc6a145a2539bfb875f496b2cae910531e98073beadf66` |
| 8 | `theorem` | [lcm_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant8ed90a9a49c7d58aec3ef256a3e4c8084aeb92bcfc80fd2783d452fc5f92c866.lean/declarations/lcm-singleton--3062791a104e95d71b84ccc8.md) | 89 | `result-track:3062791a104e95d71b84ccc813ad44e4468dd2467e074078e6526cc4bea65494` |
| 9 | `theorem` | [normalize_lcm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant8ed90a9a49c7d58aec3ef256a3e4c8084aeb92bcfc80fd2783d452fc5f92c866.lean/declarations/normalize-lcm--838c2ed8bf76781ee3debc07.md) | 93 | `result-track:838c2ed8bf76781ee3debc07297d1bef2b3b90d51d2f9d471f2815a575cbeb46` |
| 10 | `theorem` | [lcm_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant8ed90a9a49c7d58aec3ef256a3e4c8084aeb92bcfc80fd2783d452fc5f92c866.lean/declarations/lcm-union--5ba3d4e08675f6a608120d5d.md) | 95 | `result-track:5ba3d4e08675f6a608120d5dce4580095e008b5824b7af8c72ddbf4fb5ae0bf8` |
| 11 | `theorem` | [lcm_congr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant8ed90a9a49c7d58aec3ef256a3e4c8084aeb92bcfc80fd2783d452fc5f92c866.lean/declarations/lcm-congr--a5c87cd3a40e82058d54df8d.md) | 99 | `result-track:a5c87cd3a40e82058d54df8dffdb448defdadc47f547099b15a962e2f833cf19` |
| 12 | `theorem` | [lcm_mono_fun](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant8ed90a9a49c7d58aec3ef256a3e4c8084aeb92bcfc80fd2783d452fc5f92c866.lean/declarations/lcm-mono-fun--f4ef9bdf254d9bab90c47f4e.md) | 104 | `result-track:f4ef9bdf254d9bab90c47f4e7979dfde7fc323cc612f4ea2ee5778b6e81eceed` |
| 13 | `theorem` | [lcm_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant8ed90a9a49c7d58aec3ef256a3e4c8084aeb92bcfc80fd2783d452fc5f92c866.lean/declarations/lcm-mono--f2d903ce91f84e017aaed6dc.md) | 107 | `result-track:f2d903ce91f84e017aaed6dc8efc1809320b427aebd644dc088eb943f9e2aaa1` |
| 14 | `theorem` | [lcm_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant8ed90a9a49c7d58aec3ef256a3e4c8084aeb92bcfc80fd2783d452fc5f92c866.lean/declarations/lcm-image--d6dd0c9564a01dcd91438394.md) | 110 | `result-track:d6dd0c9564a01dcd91438394b9845f84ed98e56206ad13604b0bba2c3b706ae7` |
| 15 | `theorem` | [lcm_eq_lcm_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant8ed90a9a49c7d58aec3ef256a3e4c8084aeb92bcfc80fd2783d452fc5f92c866.lean/declarations/lcm-eq-lcm-image--7f6a6fd42940951393222da3.md) | 114 | `result-track:7f6a6fd42940951393222da3e4cfb91f7bce61c289d51536eb3231b4bdab955d` |
| 16 | `theorem` | [lcm_eq_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant8ed90a9a49c7d58aec3ef256a3e4c8084aeb92bcfc80fd2783d452fc5f92c866.lean/declarations/lcm-eq-zero-iff--e0a26ac0a90e81fd270274bc.md) | 118 | `result-track:e0a26ac0a90e81fd270274bcab713018ebdc89611c0823eb40045c930cfcd98d` |
| 17 | `theorem` | [lcm_ne_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant8ed90a9a49c7d58aec3ef256a3e4c8084aeb92bcfc80fd2783d452fc5f92c866.lean/declarations/lcm-ne-zero-iff--ed27e0c0e02f15d51b8b6d58.md) | 121 | `result-track:ed27e0c0e02f15d51b8b6d5842764e34803f6fed92a5b76f61a8140e00792e64` |
| 18 | `def` | [gcd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant8ed90a9a49c7d58aec3ef256a3e4c8084aeb92bcfc80fd2783d452fc5f92c866.lean/declarations/gcd--6614b47e2b85b2675b015364.md) | 132 | `declaration-track:6614b47e2b85b2675b01536428028f3fd66bb9adf8f43b915d05d56204a02be9` |
| 19 | `theorem` | [gcd_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant8ed90a9a49c7d58aec3ef256a3e4c8084aeb92bcfc80fd2783d452fc5f92c866.lean/declarations/gcd-def--3065266ceba62782e7f68bd8.md) | 137 | `result-track:3065266ceba62782e7f68bd8d9fbc69bf3a16558c26980a4c78d43fcc8ee399d` |
| 20 | `theorem` | [gcd_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant8ed90a9a49c7d58aec3ef256a3e4c8084aeb92bcfc80fd2783d452fc5f92c866.lean/declarations/gcd-empty--b85ca37bb71585ee3b0f531c.md) | 141 | `result-track:b85ca37bb71585ee3b0f531c1834af3ba56fa90f903c3c99da78e9bbe520ece6` |
| 21 | `theorem` | [dvd_gcd_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant8ed90a9a49c7d58aec3ef256a3e4c8084aeb92bcfc80fd2783d452fc5f92c866.lean/declarations/dvd-gcd-iff--d516d78b0dc8b99b2b89d627.md) | 144 | `result-track:d516d78b0dc8b99b2b89d627b077942998985c58d4a829b44e61ea70de03998e` |
| 22 | `theorem` | [gcd_dvd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant8ed90a9a49c7d58aec3ef256a3e4c8084aeb92bcfc80fd2783d452fc5f92c866.lean/declarations/gcd-dvd--10566ea53f86d06c396936fa.md) | 149 | `result-track:10566ea53f86d06c396936fa551c5953e543a84725b4b74fdb3ca07e43c6cd41` |
| 23 | `theorem` | [dvd_gcd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant8ed90a9a49c7d58aec3ef256a3e4c8084aeb92bcfc80fd2783d452fc5f92c866.lean/declarations/dvd-gcd--dcd04ce7b8ab48395c863a83.md) | 152 | `result-track:dcd04ce7b8ab48395c863a83c8ce4d3e036738b2f2ac7fde4d745785542baa0b` |
| 24 | `theorem` | [gcd_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant8ed90a9a49c7d58aec3ef256a3e4c8084aeb92bcfc80fd2783d452fc5f92c866.lean/declarations/gcd-cons--99feda0ab3c08a275d4afa71.md) | 155 | `result-track:99feda0ab3c08a275d4afa713e4a0836039fcdf3aa20084fd6fee36f2b85e4d1` |
| 25 | `theorem` | [gcd_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant8ed90a9a49c7d58aec3ef256a3e4c8084aeb92bcfc80fd2783d452fc5f92c866.lean/declarations/gcd-insert--265292aa5e787271a7f482c4.md) | 160 | `result-track:265292aa5e787271a7f482c46205e78c61a2c2e6444dd05c1514d5409cabd6be` |
| 26 | `theorem` | [gcd_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant8ed90a9a49c7d58aec3ef256a3e4c8084aeb92bcfc80fd2783d452fc5f92c866.lean/declarations/gcd-singleton--7badd0952afdcc10424c8d6c.md) | 168 | `result-track:7badd0952afdcc10424c8d6c406e8af848a8b6535377674fd071bb9231fb4a22` |
| 27 | `theorem` | [normalize_gcd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant8ed90a9a49c7d58aec3ef256a3e4c8084aeb92bcfc80fd2783d452fc5f92c866.lean/declarations/normalize-gcd--265b0662b9703588f3ebaf60.md) | 172 | `result-track:265b0662b9703588f3ebaf60252c687c014ca0b99a60dfd0bc9869284dbb6ca6` |
| 28 | `theorem` | [gcd_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant8ed90a9a49c7d58aec3ef256a3e4c8084aeb92bcfc80fd2783d452fc5f92c866.lean/declarations/gcd-union--297d76538df293e7d2b84efe.md) | 174 | `result-track:297d76538df293e7d2b84efe03c1ca95c1debc04965c8d84d7de06a967288786` |
| 29 | `theorem` | [gcd_congr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant8ed90a9a49c7d58aec3ef256a3e4c8084aeb92bcfc80fd2783d452fc5f92c866.lean/declarations/gcd-congr--5cdcc0d131822203a63a772d.md) | 178 | `result-track:5cdcc0d131822203a63a772daf02cd4d9de79188b2ed95917f6c86478fd2d096` |
| 30 | `theorem` | [gcd_mono_fun](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant8ed90a9a49c7d58aec3ef256a3e4c8084aeb92bcfc80fd2783d452fc5f92c866.lean/declarations/gcd-mono-fun--b0899457bb1d04b9758d5c8e.md) | 183 | `result-track:b0899457bb1d04b9758d5c8e783b96b89ecdf2f74359ffc560095cfb9f2e0792` |
| 31 | `theorem` | [gcd_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant8ed90a9a49c7d58aec3ef256a3e4c8084aeb92bcfc80fd2783d452fc5f92c866.lean/declarations/gcd-mono--b4a8b5a07b31852851238c86.md) | 186 | `result-track:b4a8b5a07b31852851238c86e6122d013683206683f0af335dd97a8dbf926431` |
| 32 | `theorem` | [gcd_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant8ed90a9a49c7d58aec3ef256a3e4c8084aeb92bcfc80fd2783d452fc5f92c866.lean/declarations/gcd-image--68eb608c9d35c4696877fb82.md) | 189 | `result-track:68eb608c9d35c4696877fb827a07fb2d74b71de56f09366ca9e839a4ea38e8fd` |
| 33 | `theorem` | [gcd_eq_gcd_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant8ed90a9a49c7d58aec3ef256a3e4c8084aeb92bcfc80fd2783d452fc5f92c866.lean/declarations/gcd-eq-gcd-image--1113846dd84cd9def8a1601e.md) | 193 | `result-track:1113846dd84cd9def8a1601e45016b298643bf215ba5cab17d342d506814bb01` |
| 34 | `theorem` | [gcd_eq_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant8ed90a9a49c7d58aec3ef256a3e4c8084aeb92bcfc80fd2783d452fc5f92c866.lean/declarations/gcd-eq-zero-iff--08346cf3c93e53bce83247fa.md) | 196 | `result-track:08346cf3c93e53bce83247fa7a4419fd438cfad30950e6d2f381e47ad93f57ea` |
| 35 | `theorem` | [gcd_ne_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant8ed90a9a49c7d58aec3ef256a3e4c8084aeb92bcfc80fd2783d452fc5f92c866.lean/declarations/gcd-ne-zero-iff--800b158df1e0a2074e9a7ff5.md) | 201 | `result-track:800b158df1e0a2074e9a7ff5634985b45dc12ffc45360c23996b0360c2652f50` |
| 36 | `theorem` | [gcd_eq_gcd_filter_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant8ed90a9a49c7d58aec3ef256a3e4c8084aeb92bcfc80fd2783d452fc5f92c866.lean/declarations/gcd-eq-gcd-filter-ne-zero--0b40e168d68c331c775be5f6.md) | 204 | `result-track:0b40e168d68c331c775be5f6a1a3fca682b5437aa1e14f15f73d45badf0d80de` |
| 37 | `theorem` | [gcd_mul_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant8ed90a9a49c7d58aec3ef256a3e4c8084aeb92bcfc80fd2783d452fc5f92c866.lean/declarations/gcd-mul-left--c91298a48f935af9c48791da.md) | 219 | `result-track:c91298a48f935af9c48791da4ff028517c16ff2785ff2de10b449d6cd2c9e1d8` |
| 38 | `theorem` | [gcd_mul_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant8ed90a9a49c7d58aec3ef256a3e4c8084aeb92bcfc80fd2783d452fc5f92c866.lean/declarations/gcd-mul-right--c0240ad10ba317782051ea94.md) | 229 | `result-track:c0240ad10ba317782051ea94c7c37f63615f340b2b36ec999a1b08595f49699d` |
| 39 | `theorem` | [gcd_mul_left'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant8ed90a9a49c7d58aec3ef256a3e4c8084aeb92bcfc80fd2783d452fc5f92c866.lean/declarations/gcd-mul-left--57ca3694eb66802682230105.md) | 235 | `result-track:57ca3694eb668026822301051bde9f11e31b113e7f97d6adfba2cedd591ca689` |
| 40 | `theorem` | [gcd_mul_right'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant8ed90a9a49c7d58aec3ef256a3e4c8084aeb92bcfc80fd2783d452fc5f92c866.lean/declarations/gcd-mul-right--ab65733273a6b3835d44fc3e.md) | 240 | `result-track:ab65733273a6b3835d44fc3ec593142ed3195a43c45b8e15adcf1b9267bae9dd` |
| 41 | `theorem` | [extract_gcd'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant8ed90a9a49c7d58aec3ef256a3e4c8084aeb92bcfc80fd2783d452fc5f92c866.lean/declarations/extract-gcd--4d930e881c204cc2745b04fb.md) | 243 | `result-track:4d930e881c204cc2745b04fbcdebf90e57217a17de12a54e6a5f71c227ca2e0a` |
| 42 | `theorem` | [extract_gcd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant8ed90a9a49c7d58aec3ef256a3e4c8084aeb92bcfc80fd2783d452fc5f92c866.lean/declarations/extract-gcd--dfbd4a8d2623af39c03b073c.md) | 251 | `result-track:dfbd4a8d2623af39c03b073c9e579ef9c5f9795b94419544296efdfe5c3ad746` |
| 43 | `lemma` | [gcd_div_eq_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant8ed90a9a49c7d58aec3ef256a3e4c8084aeb92bcfc80fd2783d452fc5f92c866.lean/declarations/gcd-div-eq-one--6f5b85aed8a4cd1795e58b45.md) | 267 | `result-track:6f5b85aed8a4cd1795e58b457854a73cc8a17d6954b9a542e7a7f5467d2faa9a` |
| 44 | `lemma` | [gcd_div_id_eq_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant8ed90a9a49c7d58aec3ef256a3e4c8084aeb92bcfc80fd2783d452fc5f92c866.lean/declarations/gcd-div-id-eq-one--c514f3f1069b4f6cf02e8b38.md) | 273 | `result-track:c514f3f1069b4f6cf02e8b383dc19740fd9215567c42c7ead52a2a19c6a344e1` |
| 45 | `theorem` | [gcd_eq_of_dvd_sub](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant8ed90a9a49c7d58aec3ef256a3e4c8084aeb92bcfc80fd2783d452fc5f92c866.lean/declarations/gcd-eq-of-dvd-sub--acf60d6f0dcd5af24d187d8d.md) | 286 | `result-track:acf60d6f0dcd5af24d187d8d7ea7bc6949595222d489b36f28eccc227c10ddea` |
| 46 | `theorem` | [Int.finsetGcd_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant8ed90a9a49c7d58aec3ef256a3e4c8084aeb92bcfc80fd2783d452fc5f92c866.lean/declarations/int-finsetgcd-nonneg--bedb18433d7ca6897a9b8323.md) | 305 | `result-track:bedb18433d7ca6897a9b83238fa1a7d60d2c8caddfe810168a5880f0ea96242e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
