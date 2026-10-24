# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Nucleus.Variant8a763928654e19941f7b13dc62e0749edadce05f3b09020dbd9a8ec67dfc7507

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3d0aeb831696f94b71f67ffb313ff418da6546b4",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nucleus/Variant8a763928654e19941f7b13dc62e0749edadce05f3b09020dbd9a8ec67dfc7507.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nucleus/Variant8a763928654e19941f7b13dc62e0749edadce05f3b09020dbd9a8ec67dfc7507.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nucleus/Variant8a763928654e19941f7b13dc62e0749edadce05f3b09020dbd9a8ec67dfc7507.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3d0aeb831696f94b71f67ffb313ff418da6546b4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nucleus/Variant8a763928654e19941f7b13dc62e0749edadce05f3b09020dbd9a8ec67dfc7507.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nucleus/Variant8a763928654e19941f7b13dc62e0749edadce05f3b09020dbd9a8ec67dfc7507.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Closure` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.CompleteLattice` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Nucleus](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nucleus/Variant8a763928654e19941f7b13dc62e0749edadce05f3b09020dbd9a8ec67dfc7507.lean/declarations/nucleus--1bc9238c703e555f97a1332e.md) | 37 | `declaration-track:1bc9238c703e555f97a1332e87f3d3e5616f3ce0aa89afd3e1158cc43d84e481` |
| 2 | `class` | [NucleusClass](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nucleus/Variant8a763928654e19941f7b13dc62e0749edadce05f3b09020dbd9a8ec67dfc7507.lean/declarations/nucleusclass--f08ca80899d7e9e09ce974a5.md) | 48 | `declaration-track:f08ca80899d7e9e09ce974a583c7353539a956dbe69e4df3a133a591668226ce` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nucleus/Variant8a763928654e19941f7b13dc62e0749edadce05f3b09020dbd9a8ec67dfc7507.lean/declarations/instance--cd159796c47fdfa96c3cba1e.md) | 61 | `declaration-track:cd159796c47fdfa96c3cba1e2238a674783323b7f231c9d31164f803f93532cb` |
| 4 | `lemma` | [toFun_eq_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nucleus/Variant8a763928654e19941f7b13dc62e0749edadce05f3b09020dbd9a8ec67dfc7507.lean/declarations/tofun-eq-coe--49a76941485e78fa8043419a.md) | 65 | `result-track:49a76941485e78fa8043419a45b9cf093991218ca3c08469c731d184e7fe2b1f` |
| 5 | `lemma` | [coe_toInfHom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nucleus/Variant8a763928654e19941f7b13dc62e0749edadce05f3b09020dbd9a8ec67dfc7507.lean/declarations/coe-toinfhom--3d5fe207aabd9651a61a11f9.md) | 66 | `result-track:3d5fe207aabd9651a61a11f9beb4d9feb48b1c82b34f3986045830acc13cdee7` |
| 6 | `lemma` | [coe_mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nucleus/Variant8a763928654e19941f7b13dc62e0749edadce05f3b09020dbd9a8ec67dfc7507.lean/declarations/coe-mk--eeae3d95dad5c5b02f21dd04.md) | 67 | `result-track:eeae3d95dad5c5b02f21dd0447a69786af7ac97c3cceba806896368bf4d45041` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nucleus/Variant8a763928654e19941f7b13dc62e0749edadce05f3b09020dbd9a8ec67dfc7507.lean/declarations/instance--90b3155bd7da9396d18e79c0.md) | 69 | `declaration-track:90b3155bd7da9396d18e79c0663a5276689f83b73c31fae70a9fbd049ed072da` |
| 8 | `def` | [toClosureOperator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nucleus/Variant8a763928654e19941f7b13dc62e0749edadce05f3b09020dbd9a8ec67dfc7507.lean/declarations/toclosureoperator--a2330975be263d6758c41129.md) | 75 | `declaration-track:a2330975be263d6758c4112955a2ec1d1484223d337ece7e71db85d0f3582877` |
| 9 | `lemma` | [idempotent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nucleus/Variant8a763928654e19941f7b13dc62e0749edadce05f3b09020dbd9a8ec67dfc7507.lean/declarations/idempotent--83b96e563708b41c5a1e0b38.md) | 78 | `result-track:83b96e563708b41c5a1e0b386c9785c6f31bc2340b978907df65c739ab4fb3ce` |
| 10 | `lemma` | [le_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nucleus/Variant8a763928654e19941f7b13dc62e0749edadce05f3b09020dbd9a8ec67dfc7507.lean/declarations/le-apply--3a67be20e37593df08a2d571.md) | 81 | `result-track:3a67be20e37593df08a2d571be1092db1d17630a13d148c7f3fc893c34468cba` |
| 11 | `lemma` | [monotone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nucleus/Variant8a763928654e19941f7b13dc62e0749edadce05f3b09020dbd9a8ec67dfc7507.lean/declarations/monotone--466d8ef1ed5f933f2892f0e1.md) | 84 | `result-track:466d8ef1ed5f933f2892f0e1b0e64e5937acb6ebba24572f4c9a4ed2ce3aa65f` |
| 12 | `lemma` | [map_inf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nucleus/Variant8a763928654e19941f7b13dc62e0749edadce05f3b09020dbd9a8ec67dfc7507.lean/declarations/map-inf--84e3559e4549f437c83b1fea.md) | 86 | `result-track:84e3559e4549f437c83b1fea83c5132a4c2462f715d4e4908e0174167008688d` |
| 13 | `lemma` | [ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nucleus/Variant8a763928654e19941f7b13dc62e0749edadce05f3b09020dbd9a8ec67dfc7507.lean/declarations/ext--bd37e729e9732da8b1286949.md) | 89 | `result-track:bd37e729e9732da8b12869491996b3e94a8d8a8b56594e7f74e7fb8a0c96f302` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nucleus/Variant8a763928654e19941f7b13dc62e0749edadce05f3b09020dbd9a8ec67dfc7507.lean/declarations/instance--d48ea9dc19fad45f44fa0a56.md) | 93 | `declaration-track:d48ea9dc19fad45f44fa0a562362fd91d8c0ec87686e5c2702d59a28170b7dee` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nucleus/Variant8a763928654e19941f7b13dc62e0749edadce05f3b09020dbd9a8ec67dfc7507.lean/declarations/instance--d59573d745eb6b47b72988dd.md) | 96 | `declaration-track:d59573d745eb6b47b72988dd0a5584e8325288fe39cdca5412810e269df3e00e` |
| 16 | `lemma` | [coe_le_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nucleus/Variant8a763928654e19941f7b13dc62e0749edadce05f3b09020dbd9a8ec67dfc7507.lean/declarations/coe-le-coe--ada15acf66285b76b6dd4097.md) | 98 | `result-track:ada15acf66285b76b6dd409748706b7faddd75396d4dc0f7679e4f431df6a956` |
| 17 | `lemma` | [coe_lt_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nucleus/Variant8a763928654e19941f7b13dc62e0749edadce05f3b09020dbd9a8ec67dfc7507.lean/declarations/coe-lt-coe--d2a9a0753559eea8db869f3f.md) | 99 | `result-track:d2a9a0753559eea8db869f3ffbb9a803ef6dcd37e91f1301a765e053db86fa34` |
| 18 | `instance` | [instBot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nucleus/Variant8a763928654e19941f7b13dc62e0749edadce05f3b09020dbd9a8ec67dfc7507.lean/declarations/instbot--466cd815c60a967feb4d3f6f.md) | 102 | `declaration-track:466cd815c60a967feb4d3f6f14d28be1d41a84ab0f168a6bdaaff5b531724ef8` |
| 19 | `instance` | [instTop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nucleus/Variant8a763928654e19941f7b13dc62e0749edadce05f3b09020dbd9a8ec67dfc7507.lean/declarations/insttop--e55b015bd3ea5a3b4ca7d164.md) | 109 | `declaration-track:e55b015bd3ea5a3b4ca7d164babd62dcf48be66bf7e79afcc2c4367cb644b63a` |
| 20 | `lemma` | [coe_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nucleus/Variant8a763928654e19941f7b13dc62e0749edadce05f3b09020dbd9a8ec67dfc7507.lean/declarations/coe-bot--1519a2a8661f45611807b7fa.md) | 115 | `result-track:1519a2a8661f45611807b7fa361d01543a3baffe6681e2cf2874b3c98a3c7ca0` |
| 21 | `lemma` | [coe_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nucleus/Variant8a763928654e19941f7b13dc62e0749edadce05f3b09020dbd9a8ec67dfc7507.lean/declarations/coe-top--3b43f450a65b06872b8921ce.md) | 116 | `result-track:3b43f450a65b06872b8921ce35151386739877ad144f36dd54333d54c05fa40e` |
| 22 | `lemma` | [bot_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nucleus/Variant8a763928654e19941f7b13dc62e0749edadce05f3b09020dbd9a8ec67dfc7507.lean/declarations/bot-apply--c30477692eb98b7a921eced4.md) | 118 | `result-track:c30477692eb98b7a921eced41fc1fe6170a86e0310cc0358eafbe75e79565d28` |
| 23 | `lemma` | [top_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nucleus/Variant8a763928654e19941f7b13dc62e0749edadce05f3b09020dbd9a8ec67dfc7507.lean/declarations/top-apply--46d2b17027c46e0fc35aa880.md) | 119 | `result-track:46d2b17027c46e0fc35aa880a4190ae8c88e5fa881c1dc2876ecbf2f81efa1a5` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nucleus/Variant8a763928654e19941f7b13dc62e0749edadce05f3b09020dbd9a8ec67dfc7507.lean/declarations/instance--12f349ad158519a4b21696a0.md) | 121 | `declaration-track:12f349ad158519a4b21696a0f0e94399d0be1a7dea0de3ec771c2a6aa46a5e27` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nucleus/Variant8a763928654e19941f7b13dc62e0749edadce05f3b09020dbd9a8ec67dfc7507.lean/declarations/instance--26271833d16c0da38d5c851b.md) | 125 | `declaration-track:26271833d16c0da38d5c851b553ec88ec081eb1f6c37cacfa4eafb099595dc5f` |
| 26 | `theorem` | [sInf_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nucleus/Variant8a763928654e19941f7b13dc62e0749edadce05f3b09020dbd9a8ec67dfc7507.lean/declarations/sinf-apply--469c9a92039adba06dcd030c.md) | 137 | `result-track:469c9a92039adba06dcd030cef13814e8b0306533ee40da84062ab2870d8bcf4` |
| 27 | `theorem` | [iInf_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nucleus/Variant8a763928654e19941f7b13dc62e0749edadce05f3b09020dbd9a8ec67dfc7507.lean/declarations/iinf-apply--6b1e62e1e7debb77eb0fcd0b.md) | 139 | `result-track:6b1e62e1e7debb77eb0fcd0b4fdc1cc6050f9498a9fecbf4f867efeaed93044f` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nucleus/Variant8a763928654e19941f7b13dc62e0749edadce05f3b09020dbd9a8ec67dfc7507.lean/declarations/instance--57e7c3c29981ee2fd212d2d5.md) | 142 | `declaration-track:57e7c3c29981ee2fd212d2d509c245f1d8538b167676ad275c8b43eb36971d62` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nucleus/Variant8a763928654e19941f7b13dc62e0749edadce05f3b09020dbd9a8ec67dfc7507.lean/declarations/instance--ae3670b0dbfe28f3aa36d318.md) | 146 | `declaration-track:ae3670b0dbfe28f3aa36d318c156bb1ce53a2d9b6c5e31ddb9b5741e713241a9` |
| 30 | `theorem` | [inf_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nucleus/Variant8a763928654e19941f7b13dc62e0749edadce05f3b09020dbd9a8ec67dfc7507.lean/declarations/inf-apply--122d45e433a719d61a7946c5.md) | 148 | `result-track:122d45e433a719d61a7946c54d784a19bb63a607efa3444be17edab161812b0a` |
| 31 | `lemma` | [map_himp_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nucleus/Variant8a763928654e19941f7b13dc62e0749edadce05f3b09020dbd9a8ec67dfc7507.lean/declarations/map-himp-le--8efaca4775530f68d0847cea.md) | 155 | `result-track:8efaca4775530f68d0847cead74f34db1f3b98106894d3d16b9ae0005bcdc7d0` |
| 32 | `lemma` | [map_himp_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nucleus/Variant8a763928654e19941f7b13dc62e0749edadce05f3b09020dbd9a8ec67dfc7507.lean/declarations/map-himp-apply--19f7295a649f8f79b42c8098.md) | 163 | `result-track:19f7295a649f8f79b42c8098dc31e3b2f02b0b270a664965aca7dc81629bde28` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nucleus/Variant8a763928654e19941f7b13dc62e0749edadce05f3b09020dbd9a8ec67dfc7507.lean/declarations/instance--28cd4e06f76504deeeba5ded.md) | 166 | `declaration-track:28cd4e06f76504deeeba5ded37ef689f1d6c29da75edea2693b39585e5f37dc0` |
| 34 | `theorem` | [himp_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nucleus/Variant8a763928654e19941f7b13dc62e0749edadce05f3b09020dbd9a8ec67dfc7507.lean/declarations/himp-apply--daefb0008b0ec8830beba8d8.md) | 193 | `result-track:daefb0008b0ec8830beba8d8c2d947525a5812adf4bf681be0e3c17b82aae8fe` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nucleus/Variant8a763928654e19941f7b13dc62e0749edadce05f3b09020dbd9a8ec67dfc7507.lean/declarations/instance--69e57d405820cc9a7321d98a.md) | 195 | `declaration-track:69e57d405820cc9a7321d98a977e1f4d40b320f96dc863ace5d306ca78bbcfbe` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nucleus/Variant8a763928654e19941f7b13dc62e0749edadce05f3b09020dbd9a8ec67dfc7507.lean/declarations/instance--3ce376219b8b99b03dfdb013.md) | 202 | `declaration-track:3ce376219b8b99b03dfdb013048b1800cf84743b6974bb38c905cbcdc714a261` |
| 37 | `lemma` | [mem_range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nucleus/Variant8a763928654e19941f7b13dc62e0749edadce05f3b09020dbd9a8ec67dfc7507.lean/declarations/mem-range--6698a2b55f3a373443d149ee.md) | 206 | `result-track:6698a2b55f3a373443d149eee8722f775d44325ce777a5ac3badce58b5f5c0ae` |
| 38 | `def` | [giAux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nucleus/Variant8a763928654e19941f7b13dc62e0749edadce05f3b09020dbd9a8ec67dfc7507.lean/declarations/giaux--4c8f6b6e851d99816cc03c93.md) | 211 | `declaration-track:4c8f6b6e851d99816cc03c9388978d01fcc2ef742f94af2ca8dd8954c9025c1e` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nucleus/Variant8a763928654e19941f7b13dc62e0749edadce05f3b09020dbd9a8ec67dfc7507.lean/declarations/instance--20b4e494ee02e165fb0102c5.md) | 217 | `declaration-track:20b4e494ee02e165fb0102c5f86640980f5ee9c3a6cf9e34e42a1176798e4c34` |
| 40 | `instance` | [range.instFrameMinimalAxioms](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nucleus/Variant8a763928654e19941f7b13dc62e0749edadce05f3b09020dbd9a8ec67dfc7507.lean/declarations/range-instframeminimalaxioms--2bdea1f5952f8be5729cfbe8.md) | 219 | `declaration-track:2bdea1f5952f8be5729cfbe886ae5ab3c7f4cf8e4b91600349c87b0863d05871` |
| 41 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nucleus/Variant8a763928654e19941f7b13dc62e0749edadce05f3b09020dbd9a8ec67dfc7507.lean/declarations/instance--d15a347db42a3577d4a106b3.md) | 227 | `declaration-track:d15a347db42a3577d4a106b35a5d6015527e9f5d6cf81987a62aba6edce2d779` |
| 42 | `def` | [restrict](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nucleus/Variant8a763928654e19941f7b13dc62e0749edadce05f3b09020dbd9a8ec67dfc7507.lean/declarations/restrict--b035bdca3258ef3b6be9668d.md) | 230 | `declaration-track:b035bdca3258ef3b6be9668d4e8fc0d02595fd0f964660669ab2a7333822b437` |
| 43 | `def` | [giRestrict](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nucleus/Variant8a763928654e19941f7b13dc62e0749edadce05f3b09020dbd9a8ec67dfc7507.lean/declarations/girestrict--93db317dba15da48d8ef0a2b.md) | 238 | `declaration-track:93db317dba15da48d8ef0a2b8b483fd987b250a4075fd4feb50319613a9415ed` |
| 44 | `lemma` | [comp_eq_right_iff_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nucleus/Variant8a763928654e19941f7b13dc62e0749edadce05f3b09020dbd9a8ec67dfc7507.lean/declarations/comp-eq-right-iff-le--f5d8883555dbfac29a29c11f.md) | 240 | `result-track:f5d8883555dbfac29a29c11f10c7eba3013f38e1acbe5b4348bb3e500407a448` |
| 45 | `lemma` | [range_subset_range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nucleus/Variant8a763928654e19941f7b13dc62e0749edadce05f3b09020dbd9a8ec67dfc7507.lean/declarations/range-subset-range--6edaab54237bf92c8fdb5c1c.md) | 246 | `result-track:6edaab54237bf92c8fdb5c1c5902db6ab41e74e6ee07bbddb7c5fffc4504da47` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
