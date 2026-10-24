# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Gluing.Variantd6e774eec04044efe3984afbebfb6d87cb2968bedef0ca186837691f430d9a18

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "516ec4697b72be3ad354c27f0dcb974ab82c1416",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Gluing/Variantd6e774eec04044efe3984afbebfb6d87cb2968bedef0ca186837691f430d9a18.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantd6e774eec04044efe3984afbebfb6d87cb2968bedef0ca186837691f430d9a18.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantd6e774eec04044efe3984afbebfb6d87cb2968bedef0ca186837691f430d9a18.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `516ec4697b72be3ad354c27f0dcb974ab82c1416`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Gluing/Variantd6e774eec04044efe3984afbebfb6d87cb2968bedef0ca186837691f430d9a18.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Gluing/Variantd6e774eec04044efe3984afbebfb6d87cb2968bedef0ca186837691f430d9a18.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.PresheafedSpace.Gluing` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.OpenImmersion.Scheme` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GlueData](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantd6e774eec04044efe3984afbebfb6d87cb2968bedef0ca186837691f430d9a18.lean/declarations/gluedata--e7f1aea3026a41724ee4ac1a.md) | 94 | `declaration-track:e7f1aea3026a41724ee4ac1a0c2a051d81491f6c19a4fab5fbdcb9077c25562f` |
| 2 | `abbrev` | [toLocallyRingedSpaceGlueData](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantd6e774eec04044efe3984afbebfb6d87cb2968bedef0ca186837691f430d9a18.lean/declarations/tolocallyringedspacegluedata--bdf1a5d34d44e39fcfa6667c.md) | 107 | `declaration-track:bdf1a5d34d44e39fcfa6667c61dfc7df48ef1ab2b0a57c467556d98713690037` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantd6e774eec04044efe3984afbebfb6d87cb2968bedef0ca186837691f430d9a18.lean/declarations/instance--2030a8008a7dd6be59a94e1d.md) | 112 | `declaration-track:2030a8008a7dd6be59a94e1d3b7008a3a29027533b75dd0959337e480ed1b117` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantd6e774eec04044efe3984afbebfb6d87cb2968bedef0ca186837691f430d9a18.lean/declarations/instance--e2209a9fe6ed0d0641cdc4b5.md) | 116 | `declaration-track:e2209a9fe6ed0d0641cdc4b57fd744d844e9c473086a4fa4dded2b41088fc5a2` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantd6e774eec04044efe3984afbebfb6d87cb2968bedef0ca186837691f430d9a18.lean/declarations/instance--95e305bfe5d988d6fc89f441.md) | 121 | `declaration-track:95e305bfe5d988d6fc89f441dce4a58ee350aa1c51af7cfdcf54ee284c53a8bc` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantd6e774eec04044efe3984afbebfb6d87cb2968bedef0ca186837691f430d9a18.lean/declarations/instance--8144bc3ce3b2e21c1bc0ef8e.md) | 128 | `declaration-track:8144bc3ce3b2e21c1bc0ef8eeebd0c5e53b553ebdb65543e7c10578283d8b2c8` |
| 7 | `def` | [gluedScheme](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantd6e774eec04044efe3984afbebfb6d87cb2968bedef0ca186837691f430d9a18.lean/declarations/gluedscheme--cf3b990b203edadb299b7e88.md) | 134 | `declaration-track:cf3b990b203edadb299b7e88125f29664c99bb8b464cdc11394fdcd7ab79f481` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantd6e774eec04044efe3984afbebfb6d87cb2968bedef0ca186837691f430d9a18.lean/declarations/instance--2a23a44be1197a04a905b178.md) | 149 | `declaration-track:2a23a44be1197a04a905b178082015c5cafec0cedb19d8984a4b4ee5c42027f2` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantd6e774eec04044efe3984afbebfb6d87cb2968bedef0ca186837691f430d9a18.lean/declarations/instance--35b7a78e7f290a14546c3264.md) | 154 | `declaration-track:35b7a78e7f290a14546c326402f84662c53e1b38adbac09f02a640b1b770e75c` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantd6e774eec04044efe3984afbebfb6d87cb2968bedef0ca186837691f430d9a18.lean/declarations/instance--33bee2c3e5452b98e282e146.md) | 158 | `declaration-track:33bee2c3e5452b98e282e146408e5958358ab57f2a90e0fe264421d7cafc82e2` |
| 11 | `abbrev` | [glued](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantd6e774eec04044efe3984afbebfb6d87cb2968bedef0ca186837691f430d9a18.lean/declarations/glued--60a3d2ca5b8f2f0a353b479e.md) | 162 | `declaration-track:60a3d2ca5b8f2f0a353b479eaac2504e12b078da2bcdacb20052a8cd5122051c` |
| 12 | `abbrev` | [ι](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantd6e774eec04044efe3984afbebfb6d87cb2968bedef0ca186837691f430d9a18.lean/declarations/anonymous--5d74071dbbc44edb105bc28f.md) | 167 | `declaration-track:5d74071dbbc44edb105bc28f7ca629e3c2a1e398798e3a4b1b2cc044cbb15e53` |
| 13 | `abbrev` | [isoLocallyRingedSpace](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantd6e774eec04044efe3984afbebfb6d87cb2968bedef0ca186837691f430d9a18.lean/declarations/isolocallyringedspace--c3ad88328f1b24e10972499a.md) | 172 | `declaration-track:c3ad88328f1b24e10972499ac4e61cd539ecdab6f750fd55ba008f08104dcecb` |
| 14 | `theorem` | [ι_isoLocallyRingedSpace_inv](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantd6e774eec04044efe3984afbebfb6d87cb2968bedef0ca186837691f430d9a18.lean/declarations/isolocallyringedspace-inv--cce9b6d389c047d41cef07ef.md) | 177 | `result-track:cce9b6d389c047d41cef07ef5d7c4e64f6e42225828bea7721bc74704c9c22d0` |
| 15 | `instance` | [ι_isOpenImmersion](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantd6e774eec04044efe3984afbebfb6d87cb2968bedef0ca186837691f430d9a18.lean/declarations/isopenimmersion--ba7896069cff2d9092794461.md) | 182 | `declaration-track:ba7896069cff2d90927944617394fa8bcd5b783bdd88ffe41dc4d58a0ab04467` |
| 16 | `theorem` | [ι_jointly_surjective](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantd6e774eec04044efe3984afbebfb6d87cb2968bedef0ca186837691f430d9a18.lean/declarations/jointly-surjective--6bf8016c0ba513169659ce82.md) | 186 | `result-track:6bf8016c0ba513169659ce8288869909ae659de6a73739777cc801abde6dde11` |
| 17 | `theorem` | [glue_condition](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantd6e774eec04044efe3984afbebfb6d87cb2968bedef0ca186837691f430d9a18.lean/declarations/glue-condition--d05603233d860854a821ff5f.md) | 193 | `result-track:d05603233d860854a821ff5febb5990631ddf5c3a8b95acd85e6fb652102b90c` |
| 18 | `def` | [vPullbackCone](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantd6e774eec04044efe3984afbebfb6d87cb2968bedef0ca186837691f430d9a18.lean/declarations/vpullbackcone--b5dacbe172cf5b3759d3bbeb.md) | 199 | `declaration-track:b5dacbe172cf5b3759d3bbebc49fbe2edf9218b9d7a026beac299b078b96a20c` |
| 19 | `def` | [vPullbackConeIsLimit](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantd6e774eec04044efe3984afbebfb6d87cb2968bedef0ca186837691f430d9a18.lean/declarations/vpullbackconeislimit--4856cbbb14037be7e16b83a5.md) | 210 | `declaration-track:4856cbbb14037be7e16b83a50c32ba0d9816d805947571ae44de528e80ae1233` |
| 20 | `def` | [isoCarrier](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantd6e774eec04044efe3984afbebfb6d87cb2968bedef0ca186837691f430d9a18.lean/declarations/isocarrier--c8031dee5b13cd157968812c.md) | 221 | `declaration-track:c8031dee5b13cd157968812cd8c8f3a770913d743932c1ad2020d67a91085e30` |
| 21 | `theorem` | [ι_isoCarrier_inv](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantd6e774eec04044efe3984afbebfb6d87cb2968bedef0ca186837691f430d9a18.lean/declarations/isocarrier-inv--6f22ec27162d13b937c798fb.md) | 233 | `result-track:6f22ec27162d13b937c798fbc932f4a7a02e1c808f2646a615742983b75884ce` |
| 22 | `def` | [Rel](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantd6e774eec04044efe3984afbebfb6d87cb2968bedef0ca186837691f430d9a18.lean/declarations/rel--e54ee201385bc791101f6a6c.md) | 247 | `declaration-track:e54ee201385bc791101f6a6c454b7cd8bdbcc1553a6c4107ed91dc8f4fdbb766` |
| 23 | `theorem` | [ι_eq_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantd6e774eec04044efe3984afbebfb6d87cb2968bedef0ca186837691f430d9a18.lean/declarations/eq-iff--5302670ab18aaf1e6235df3b.md) | 252 | `result-track:5302670ab18aaf1e6235df3b013ad83f16c2551a7ca89bdcbeb11a75dece0235` |
| 24 | `theorem` | [isOpen_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantd6e774eec04044efe3984afbebfb6d87cb2968bedef0ca186837691f430d9a18.lean/declarations/isopen-iff--683e3e50f825a794fce96730.md) | 263 | `result-track:683e3e50f825a794fce967306dcce2c0ba4da6935a2f21793f77fed7a65da3ea` |
| 25 | `def` | [openCover](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantd6e774eec04044efe3984afbebfb6d87cb2968bedef0ca186837691f430d9a18.lean/declarations/opencover--5e3e7dcc9b034a882c793914.md) | 273 | `declaration-track:5e3e7dcc9b034a882c793914b800c290ce7d765b2f803ac3f40467e070323a7e` |
| 26 | `def` | [gluedCoverT'](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantd6e774eec04044efe3984afbebfb6d87cb2968bedef0ca186837691f430d9a18.lean/declarations/gluedcovert--ca251ac0ef38ea8db41f9f2c.md) | 288 | `declaration-track:ca251ac0ef38ea8db41f9f2c65601dd50fee75817b6fdcbfdd42d6e70cda91a7` |
| 27 | `theorem` | [gluedCoverT'_fst_fst](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantd6e774eec04044efe3984afbebfb6d87cb2968bedef0ca186837691f430d9a18.lean/declarations/gluedcovert-fst-fst--709733ae2c2a30a71e252186.md) | 302 | `result-track:709733ae2c2a30a71e2521864d93ae2a5ee4ba3a1c091a0b2e312250f1842d8b` |
| 28 | `theorem` | [gluedCoverT'_fst_snd](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantd6e774eec04044efe3984afbebfb6d87cb2968bedef0ca186837691f430d9a18.lean/declarations/gluedcovert-fst-snd--0947101e27b47ee339841a4d.md) | 308 | `result-track:0947101e27b47ee339841a4d1d6684e9330ea76df7a39bd46cba8dff0393ef1f` |
| 29 | `theorem` | [gluedCoverT'_snd_fst](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantd6e774eec04044efe3984afbebfb6d87cb2968bedef0ca186837691f430d9a18.lean/declarations/gluedcovert-snd-fst--73dfa4dbd24f28394ef7ae07.md) | 314 | `result-track:73dfa4dbd24f28394ef7ae07cafa3c0d4dcf03b59bec1f7fa833ed03e92bd5d6` |
| 30 | `theorem` | [gluedCoverT'_snd_snd](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantd6e774eec04044efe3984afbebfb6d87cb2968bedef0ca186837691f430d9a18.lean/declarations/gluedcovert-snd-snd--3e4b3e9c264b8b496afd44d0.md) | 320 | `result-track:3e4b3e9c264b8b496afd44d080bd33d8a4c1a421af755d38aee6f13fdcda6926` |
| 31 | `theorem` | [glued_cover_cocycle_fst](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantd6e774eec04044efe3984afbebfb6d87cb2968bedef0ca186837691f430d9a18.lean/declarations/glued-cover-cocycle-fst--c7ff9993b2abaf9e77490789.md) | 325 | `result-track:c7ff9993b2abaf9e77490789bad21e051b88d2211b8d1055c0e4fc04559466ba` |
| 32 | `theorem` | [glued_cover_cocycle_snd](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantd6e774eec04044efe3984afbebfb6d87cb2968bedef0ca186837691f430d9a18.lean/declarations/glued-cover-cocycle-snd--df6c0db54f8b9b630dfa73ec.md) | 331 | `result-track:df6c0db54f8b9b630dfa73eca9eb402ddf010bbd60a37dfc96cd6aa77054a21b` |
| 33 | `theorem` | [glued_cover_cocycle](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantd6e774eec04044efe3984afbebfb6d87cb2968bedef0ca186837691f430d9a18.lean/declarations/glued-cover-cocycle--ebe016883a6162fb7d28dd29.md) | 337 | `result-track:ebe016883a6162fb7d28dd29ac28886853898355d5aee43b93af52d647feb0f2` |
| 34 | `def` | [gluedCover](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantd6e774eec04044efe3984afbebfb6d87cb2968bedef0ca186837691f430d9a18.lean/declarations/gluedcover--5ce9c48431ac62a3ff90f726.md) | 347 | `declaration-track:5ce9c48431ac62a3ff90f7260401d216a74077225ebf421f365e9ca17472e34b` |
| 35 | `def` | [fromGlued](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantd6e774eec04044efe3984afbebfb6d87cb2968bedef0ca186837691f430d9a18.lean/declarations/fromglued--5184199407b14b9ac4be49b0.md) | 364 | `declaration-track:5184199407b14b9ac4be49b069ca2ab4b472074589d7b4c4748248cc59e541e2` |
| 36 | `theorem` | [ι_fromGlued](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantd6e774eec04044efe3984afbebfb6d87cb2968bedef0ca186837691f430d9a18.lean/declarations/fromglued--d0f7c2cabdb48588191e56de.md) | 373 | `result-track:d0f7c2cabdb48588191e56de2b68b300e2b38247122fa19cd0ab3c50b1bf1281` |
| 37 | `theorem` | [fromGlued_injective](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantd6e774eec04044efe3984afbebfb6d87cb2968bedef0ca186837691f430d9a18.lean/declarations/fromglued-injective--7ba015c2a1f40060cec144a7.md) | 377 | `result-track:7ba015c2a1f40060cec144a735ce2d4aa24068d062c6121447af390e49b0633b` |
| 38 | `instance` | [fromGlued_stalk_iso](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantd6e774eec04044efe3984afbebfb6d87cb2968bedef0ca186837691f430d9a18.lean/declarations/fromglued-stalk-iso--48e473ea5357496d16edf148.md) | 400 | `declaration-track:48e473ea5357496d16edf14852ac934b7ecce8aa2770df43fbaf392d2ec9b05e` |
| 39 | `theorem` | [fromGlued_open_map](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantd6e774eec04044efe3984afbebfb6d87cb2968bedef0ca186837691f430d9a18.lean/declarations/fromglued-open-map--c208c11c24bcb8bb7dbf1c80.md) | 412 | `result-track:c208c11c24bcb8bb7dbf1c80d91c6fbfd131076675b94c26957ba03f7eebffb6` |
| 40 | `theorem` | [fromGlued_openEmbedding](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantd6e774eec04044efe3984afbebfb6d87cb2968bedef0ca186837691f430d9a18.lean/declarations/fromglued-openembedding--af40c7648fe0c2c35544a41a.md) | 429 | `result-track:af40c7648fe0c2c35544a41ab4c2868a4f242b66eed02cfbd1552dcee21ab92d` |
| 41 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantd6e774eec04044efe3984afbebfb6d87cb2968bedef0ca186837691f430d9a18.lean/declarations/instance--d206a0d436f8cd839f05fc25.md) | 435 | `declaration-track:d206a0d436f8cd839f05fc25f70db1db5500e529adbb1002dbf33db3d6aced1b` |
| 42 | `instance` | [fromGlued_open_immersion](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantd6e774eec04044efe3984afbebfb6d87cb2968bedef0ca186837691f430d9a18.lean/declarations/fromglued-open-immersion--843047c2d97d773764f8b86d.md) | 444 | `declaration-track:843047c2d97d773764f8b86de01998990a706cdf326e43f3b1e5244fcc794a85` |
| 43 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantd6e774eec04044efe3984afbebfb6d87cb2968bedef0ca186837691f430d9a18.lean/declarations/instance--50e66b7eca56fdf52bfea163.md) | 448 | `declaration-track:50e66b7eca56fdf52bfea163c88c5960a10b54905e7f0c5dcef547724b42abc0` |
| 44 | `def` | [glueMorphisms](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantd6e774eec04044efe3984afbebfb6d87cb2968bedef0ca186837691f430d9a18.lean/declarations/gluemorphisms--fb00158a2f424b0280b25741.md) | 463 | `declaration-track:fb00158a2f424b0280b25741b8e06e9df36686b5d1ca78e6404ec408fafe8dfc` |
| 45 | `theorem` | [ι_glueMorphisms](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantd6e774eec04044efe3984afbebfb6d87cb2968bedef0ca186837691f430d9a18.lean/declarations/gluemorphisms--d21ba0d60a9e490c39b8186f.md) | 476 | `result-track:d21ba0d60a9e490c39b8186f342f4169498a3541c5e1bedeba3238b1ea4d5a9a` |
| 46 | `theorem` | [hom_ext](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantd6e774eec04044efe3984afbebfb6d87cb2968bedef0ca186837691f430d9a18.lean/declarations/hom-ext--6aaf22904d078d6ada8fe827.md) | 483 | `result-track:6aaf22904d078d6ada8fe8273da8c38e6c83f33119271df2d8765077ef42fad0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
