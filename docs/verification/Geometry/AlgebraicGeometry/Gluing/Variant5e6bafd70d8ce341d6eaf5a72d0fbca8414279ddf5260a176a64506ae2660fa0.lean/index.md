# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Gluing.Variant5e6bafd70d8ce341d6eaf5a72d0fbca8414279ddf5260a176a64506ae2660fa0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7111257d225ca68393d544fd7efd7619715b4793",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Gluing/Variant5e6bafd70d8ce341d6eaf5a72d0fbca8414279ddf5260a176a64506ae2660fa0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant5e6bafd70d8ce341d6eaf5a72d0fbca8414279ddf5260a176a64506ae2660fa0.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant5e6bafd70d8ce341d6eaf5a72d0fbca8414279ddf5260a176a64506ae2660fa0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7111257d225ca68393d544fd7efd7619715b4793`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Gluing/Variant5e6bafd70d8ce341d6eaf5a72d0fbca8414279ddf5260a176a64506ae2660fa0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Gluing/Variant5e6bafd70d8ce341d6eaf5a72d0fbca8414279ddf5260a176a64506ae2660fa0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.PresheafedSpace.Gluing` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.OpenImmersion.Scheme` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GlueData](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant5e6bafd70d8ce341d6eaf5a72d0fbca8414279ddf5260a176a64506ae2660fa0.lean/declarations/gluedata--8eac32673c18ecd11833c872.md) | 86 | `declaration-track:8eac32673c18ecd11833c872ebf4059d3d534d42cde50dbc1dfce3136a536e7c` |
| 2 | `abbrev` | [toLocallyRingedSpaceGlueData](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant5e6bafd70d8ce341d6eaf5a72d0fbca8414279ddf5260a176a64506ae2660fa0.lean/declarations/tolocallyringedspacegluedata--e100f68873e7e93eb4a3c658.md) | 99 | `declaration-track:e100f68873e7e93eb4a3c658ca90b2c4e531ed81e2e0dcd5e7fa3a424e846052` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant5e6bafd70d8ce341d6eaf5a72d0fbca8414279ddf5260a176a64506ae2660fa0.lean/declarations/instance--5092fd7970bac0258fc89ff9.md) | 104 | `declaration-track:5092fd7970bac0258fc89ff91acba8ca86f9493aac5955a485d0336f5f4ec854` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant5e6bafd70d8ce341d6eaf5a72d0fbca8414279ddf5260a176a64506ae2660fa0.lean/declarations/instance--b4c257010913658299f28a18.md) | 108 | `declaration-track:b4c257010913658299f28a1877018f4534d5d1eee738f71663a4f52de4c060e9` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant5e6bafd70d8ce341d6eaf5a72d0fbca8414279ddf5260a176a64506ae2660fa0.lean/declarations/instance--a8e481e0693305d75dd8d7e6.md) | 113 | `declaration-track:a8e481e0693305d75dd8d7e675e972d4b28ad326777764fb150436c9a93e00e8` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant5e6bafd70d8ce341d6eaf5a72d0fbca8414279ddf5260a176a64506ae2660fa0.lean/declarations/instance--d7d7c061b3baf9763947a4ed.md) | 120 | `declaration-track:d7d7c061b3baf9763947a4ed157df0cdf59596349b67008e25924830dae5376f` |
| 7 | `def` | [gluedScheme](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant5e6bafd70d8ce341d6eaf5a72d0fbca8414279ddf5260a176a64506ae2660fa0.lean/declarations/gluedscheme--d59f67032b21e8277df865bf.md) | 126 | `declaration-track:d59f67032b21e8277df865bf75c986f0ad663260e7fe06a2933379a622226dde` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant5e6bafd70d8ce341d6eaf5a72d0fbca8414279ddf5260a176a64506ae2660fa0.lean/declarations/instance--afc6b39cf76989a06357103c.md) | 141 | `declaration-track:afc6b39cf76989a06357103cfa9c1d37d0f1938e6678ba0bddb8fa064989550f` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant5e6bafd70d8ce341d6eaf5a72d0fbca8414279ddf5260a176a64506ae2660fa0.lean/declarations/instance--bbcaa0033ea0756357d61900.md) | 146 | `declaration-track:bbcaa0033ea0756357d619006f354e4883c6b87d9fc2aafc4216f4291f50eef5` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant5e6bafd70d8ce341d6eaf5a72d0fbca8414279ddf5260a176a64506ae2660fa0.lean/declarations/instance--ad73ee8297c228020924dfce.md) | 150 | `declaration-track:ad73ee8297c228020924dfcee87833f5575b1df6d89c732c8e2a02f8c3406e62` |
| 11 | `abbrev` | [glued](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant5e6bafd70d8ce341d6eaf5a72d0fbca8414279ddf5260a176a64506ae2660fa0.lean/declarations/glued--ed0647541af5bce4f4b4244f.md) | 154 | `declaration-track:ed0647541af5bce4f4b4244f414935096b693c8c85ff2766836b3b57c7430caa` |
| 12 | `abbrev` | [ι](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant5e6bafd70d8ce341d6eaf5a72d0fbca8414279ddf5260a176a64506ae2660fa0.lean/declarations/anonymous--15c505035bad9cba4d032cff.md) | 159 | `declaration-track:15c505035bad9cba4d032cff7c3c192863fd797e72961f5fb775fe591f328dd6` |
| 13 | `abbrev` | [isoLocallyRingedSpace](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant5e6bafd70d8ce341d6eaf5a72d0fbca8414279ddf5260a176a64506ae2660fa0.lean/declarations/isolocallyringedspace--2d1a7574b9f7f372f03f28d1.md) | 164 | `declaration-track:2d1a7574b9f7f372f03f28d1e73559c842b01df9287015043be88c61335b2ba6` |
| 14 | `theorem` | [ι_isoLocallyRingedSpace_inv](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant5e6bafd70d8ce341d6eaf5a72d0fbca8414279ddf5260a176a64506ae2660fa0.lean/declarations/isolocallyringedspace-inv--27791b4d8837888bb6b79cbf.md) | 169 | `result-track:27791b4d8837888bb6b79cbf18c8dc3da5671137b2dc2c23256e06e99051238c` |
| 15 | `instance` | [ι_isOpenImmersion](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant5e6bafd70d8ce341d6eaf5a72d0fbca8414279ddf5260a176a64506ae2660fa0.lean/declarations/isopenimmersion--8b6a5e4120eec05ca419b8aa.md) | 174 | `declaration-track:8b6a5e4120eec05ca419b8aa1b970d141371dffc7e50bf4957720ac0a3a556fb` |
| 16 | `theorem` | [ι_jointly_surjective](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant5e6bafd70d8ce341d6eaf5a72d0fbca8414279ddf5260a176a64506ae2660fa0.lean/declarations/jointly-surjective--66c4c161c39c02896d6a2eaa.md) | 178 | `result-track:66c4c161c39c02896d6a2eaa136896555131ef0555c3da80f7059249740f7298` |
| 17 | `theorem` | [glue_condition](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant5e6bafd70d8ce341d6eaf5a72d0fbca8414279ddf5260a176a64506ae2660fa0.lean/declarations/glue-condition--4d97bf25f2534047bc66764f.md) | 185 | `result-track:4d97bf25f2534047bc66764f46f6af4ef2f127c699775e1199c2957345681378` |
| 18 | `def` | [vPullbackCone](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant5e6bafd70d8ce341d6eaf5a72d0fbca8414279ddf5260a176a64506ae2660fa0.lean/declarations/vpullbackcone--e2557b20f00c6b75636415ae.md) | 191 | `declaration-track:e2557b20f00c6b75636415ae8fd6eac395df682d92a00ec0c1e88220b1c6fd74` |
| 19 | `def` | [vPullbackConeIsLimit](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant5e6bafd70d8ce341d6eaf5a72d0fbca8414279ddf5260a176a64506ae2660fa0.lean/declarations/vpullbackconeislimit--d4da0077a092488596574c43.md) | 202 | `declaration-track:d4da0077a092488596574c4356bd63e9c3f84f0d6a3c1d1d30c5c26c919d0882` |
| 20 | `def` | [isoCarrier](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant5e6bafd70d8ce341d6eaf5a72d0fbca8414279ddf5260a176a64506ae2660fa0.lean/declarations/isocarrier--7dc3ea09e3fa8e9cfe5f8f36.md) | 213 | `declaration-track:7dc3ea09e3fa8e9cfe5f8f36b1c855a8bbb90deed2359456254affbde86511f4` |
| 21 | `theorem` | [ι_isoCarrier_inv](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant5e6bafd70d8ce341d6eaf5a72d0fbca8414279ddf5260a176a64506ae2660fa0.lean/declarations/isocarrier-inv--b4c31b2cf8e46985a1f091c1.md) | 225 | `result-track:b4c31b2cf8e46985a1f091c15148e1727760dbc74a0ec5d944747cc0dd08b7fe` |
| 22 | `def` | [Rel](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant5e6bafd70d8ce341d6eaf5a72d0fbca8414279ddf5260a176a64506ae2660fa0.lean/declarations/rel--f4b51085b1c709a9f3cfd3d9.md) | 239 | `declaration-track:f4b51085b1c709a9f3cfd3d9590ed41442e35666bb839b8642b7576273a0b272` |
| 23 | `theorem` | [ι_eq_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant5e6bafd70d8ce341d6eaf5a72d0fbca8414279ddf5260a176a64506ae2660fa0.lean/declarations/eq-iff--2b4b93109f5d2087360af6e4.md) | 244 | `result-track:2b4b93109f5d2087360af6e4edc3bc0caf855a670bc19258cd3d176a0b46341a` |
| 24 | `theorem` | [isOpen_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant5e6bafd70d8ce341d6eaf5a72d0fbca8414279ddf5260a176a64506ae2660fa0.lean/declarations/isopen-iff--cbac607c3d540abc3a30371e.md) | 255 | `result-track:cbac607c3d540abc3a30371e0f6413d935a378ed2ea73b09d2de2a03787af7fd` |
| 25 | `def` | [openCover](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant5e6bafd70d8ce341d6eaf5a72d0fbca8414279ddf5260a176a64506ae2660fa0.lean/declarations/opencover--cc0efded1c7cfbef74e06d1d.md) | 265 | `declaration-track:cc0efded1c7cfbef74e06d1d13e534537971f257b66c88859d6aea57568a1a78` |
| 26 | `def` | [gluedCoverT'](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant5e6bafd70d8ce341d6eaf5a72d0fbca8414279ddf5260a176a64506ae2660fa0.lean/declarations/gluedcovert--8628c4764818e3f902b01633.md) | 280 | `declaration-track:8628c4764818e3f902b01633563bc6a43636b52e0ca2fc5e5efdb3c2953f7972` |
| 27 | `theorem` | [gluedCoverT'_fst_fst](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant5e6bafd70d8ce341d6eaf5a72d0fbca8414279ddf5260a176a64506ae2660fa0.lean/declarations/gluedcovert-fst-fst--f31db28124c924a2504c26ef.md) | 294 | `result-track:f31db28124c924a2504c26eff1538ece0197bececb9fb4a1b1bf9988ddd1ed94` |
| 28 | `theorem` | [gluedCoverT'_fst_snd](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant5e6bafd70d8ce341d6eaf5a72d0fbca8414279ddf5260a176a64506ae2660fa0.lean/declarations/gluedcovert-fst-snd--80b476b4d5bfd0f9f08227d4.md) | 300 | `result-track:80b476b4d5bfd0f9f08227d44832961587ba1a8a52821977c4e1e3725afa1224` |
| 29 | `theorem` | [gluedCoverT'_snd_fst](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant5e6bafd70d8ce341d6eaf5a72d0fbca8414279ddf5260a176a64506ae2660fa0.lean/declarations/gluedcovert-snd-fst--860d60020e69e3f746dea8d6.md) | 306 | `result-track:860d60020e69e3f746dea8d6229464e57cee3508190e770f0b29146470beeb45` |
| 30 | `theorem` | [gluedCoverT'_snd_snd](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant5e6bafd70d8ce341d6eaf5a72d0fbca8414279ddf5260a176a64506ae2660fa0.lean/declarations/gluedcovert-snd-snd--949889e296fb5db191cd2552.md) | 312 | `result-track:949889e296fb5db191cd2552f5ee88f20d6dea2f5b956f4be678cc284895474e` |
| 31 | `theorem` | [glued_cover_cocycle_fst](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant5e6bafd70d8ce341d6eaf5a72d0fbca8414279ddf5260a176a64506ae2660fa0.lean/declarations/glued-cover-cocycle-fst--d00b6f88de6689773a23b2e0.md) | 317 | `result-track:d00b6f88de6689773a23b2e042ef1bbaf87e9f964059b3f7bd3661d8a6a02ddd` |
| 32 | `theorem` | [glued_cover_cocycle_snd](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant5e6bafd70d8ce341d6eaf5a72d0fbca8414279ddf5260a176a64506ae2660fa0.lean/declarations/glued-cover-cocycle-snd--28c482fcfa3b90b10e6c7d69.md) | 323 | `result-track:28c482fcfa3b90b10e6c7d69c0368a5d6a56c5f7cce5abc8d9b4207fd6576ce6` |
| 33 | `theorem` | [glued_cover_cocycle](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant5e6bafd70d8ce341d6eaf5a72d0fbca8414279ddf5260a176a64506ae2660fa0.lean/declarations/glued-cover-cocycle--48b9d34b2be9949495a7f441.md) | 329 | `result-track:48b9d34b2be9949495a7f44144fd800b63a7932076a11683c11d7941a78c44ce` |
| 34 | `def` | [gluedCover](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant5e6bafd70d8ce341d6eaf5a72d0fbca8414279ddf5260a176a64506ae2660fa0.lean/declarations/gluedcover--78df8c8f072c7078628b2252.md) | 339 | `declaration-track:78df8c8f072c7078628b2252f39051009f4062f79fd65c5a497eb1341622f395` |
| 35 | `def` | [fromGlued](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant5e6bafd70d8ce341d6eaf5a72d0fbca8414279ddf5260a176a64506ae2660fa0.lean/declarations/fromglued--a186719eb58438b7fc88ef63.md) | 356 | `declaration-track:a186719eb58438b7fc88ef63c2d6eb4d7e979f83396d5236e9b3b627c8d311b8` |
| 36 | `theorem` | [ι_fromGlued](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant5e6bafd70d8ce341d6eaf5a72d0fbca8414279ddf5260a176a64506ae2660fa0.lean/declarations/fromglued--d1dc1788084bf44e558f9bcc.md) | 365 | `result-track:d1dc1788084bf44e558f9bcc8e89700390388f46b1e7aea28ceb52ff7c31f965` |
| 37 | `theorem` | [fromGlued_injective](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant5e6bafd70d8ce341d6eaf5a72d0fbca8414279ddf5260a176a64506ae2660fa0.lean/declarations/fromglued-injective--1be8d40202fe28b77bb51d5c.md) | 369 | `result-track:1be8d40202fe28b77bb51d5c643b2402acdb7a132d90d1c5e196c6a6e822b281` |
| 38 | `instance` | [fromGlued_stalk_iso](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant5e6bafd70d8ce341d6eaf5a72d0fbca8414279ddf5260a176a64506ae2660fa0.lean/declarations/fromglued-stalk-iso--5fb3206d1ab57c5acf110a62.md) | 392 | `declaration-track:5fb3206d1ab57c5acf110a623f677f556b3c177b820f6a4cf47a5555e6c1da9c` |
| 39 | `theorem` | [fromGlued_open_map](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant5e6bafd70d8ce341d6eaf5a72d0fbca8414279ddf5260a176a64506ae2660fa0.lean/declarations/fromglued-open-map--71fb8fe9a50c81776f170a27.md) | 404 | `result-track:71fb8fe9a50c81776f170a27b804cf256aa62c9ea8630c5c08e887b044e9fb3f` |
| 40 | `theorem` | [fromGlued_openEmbedding](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant5e6bafd70d8ce341d6eaf5a72d0fbca8414279ddf5260a176a64506ae2660fa0.lean/declarations/fromglued-openembedding--f18171b07418c118c344f8cf.md) | 421 | `result-track:f18171b07418c118c344f8cf12c79651a0bfd9cfd01445c9d4f81060422888e7` |
| 41 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant5e6bafd70d8ce341d6eaf5a72d0fbca8414279ddf5260a176a64506ae2660fa0.lean/declarations/instance--99208ff900f7a979dde648b2.md) | 427 | `declaration-track:99208ff900f7a979dde648b2be9be48c2bf89cccbb37d93f91a88526d6df0a0e` |
| 42 | `instance` | [fromGlued_open_immersion](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant5e6bafd70d8ce341d6eaf5a72d0fbca8414279ddf5260a176a64506ae2660fa0.lean/declarations/fromglued-open-immersion--1900bc06de46bd76318092f4.md) | 436 | `declaration-track:1900bc06de46bd76318092f48ff75eab39d7a49acc30633950f9b39b11b3f850` |
| 43 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant5e6bafd70d8ce341d6eaf5a72d0fbca8414279ddf5260a176a64506ae2660fa0.lean/declarations/instance--ea8745bcbbaf6380fcf87031.md) | 440 | `declaration-track:ea8745bcbbaf6380fcf87031dfd8c04f6527aedd6dd5abcde9419e7fe66a19ee` |
| 44 | `def` | [glueMorphisms](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant5e6bafd70d8ce341d6eaf5a72d0fbca8414279ddf5260a176a64506ae2660fa0.lean/declarations/gluemorphisms--29bc7d582fad33a6deda17ed.md) | 455 | `declaration-track:29bc7d582fad33a6deda17edeb458ae3d9f021c9a79b3e0c37fa94366df5d9b1` |
| 45 | `theorem` | [ι_glueMorphisms](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant5e6bafd70d8ce341d6eaf5a72d0fbca8414279ddf5260a176a64506ae2660fa0.lean/declarations/gluemorphisms--fd86fa9ef2a784c457b75acb.md) | 468 | `result-track:fd86fa9ef2a784c457b75acbd1331e25bda052260aea918d9efde2a19ad9fbbe` |
| 46 | `theorem` | [hom_ext](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant5e6bafd70d8ce341d6eaf5a72d0fbca8414279ddf5260a176a64506ae2660fa0.lean/declarations/hom-ext--414bc9995edc4d7664b00342.md) | 475 | `result-track:414bc9995edc4d7664b00342ae1749dd6d7adb4376c4006c6e5fb3ee85bca55c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
