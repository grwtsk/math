# Verification target: GRWTSK.Topology.GeneralTopology.LeftRightLim.Variant28da2d5ad8763fc29eff12a163f0b8175a610923bef3cc7e50bc2c11ce548df8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "631b854bb866fde1fcaf35837ad32d26c2a36d57",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LeftRightLim/Variant28da2d5ad8763fc29eff12a163f0b8175a610923bef3cc7e50bc2c11ce548df8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant28da2d5ad8763fc29eff12a163f0b8175a610923bef3cc7e50bc2c11ce548df8.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant28da2d5ad8763fc29eff12a163f0b8175a610923bef3cc7e50bc2c11ce548df8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `631b854bb866fde1fcaf35837ad32d26c2a36d57`.

Source path: `GRWTSK/Topology/GeneralTopology/LeftRightLim/Variant28da2d5ad8763fc29eff12a163f0b8175a610923bef3cc7e50bc2c11ce548df8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LeftRightLim/Variant28da2d5ad8763fc29eff12a163f0b8175a610923bef3cc7e50bc2c11ce548df8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Order.LeftRight` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.Monotone` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Function.leftLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant28da2d5ad8763fc29eff12a163f0b8175a610923bef3cc7e50bc2c11ce548df8.lean/declarations/function-leftlim--ed58b6bc743334185dccb5cf.md) | 54 | `declaration-track:ed58b6bc743334185dccb5cfd357b596b89181c73d092dc84307d843f7f4c6d5` |
| 2 | `def` | [Function.rightLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant28da2d5ad8763fc29eff12a163f0b8175a610923bef3cc7e50bc2c11ce548df8.lean/declarations/function-rightlim--6b2aded83475420f1fd69109.md) | 64 | `declaration-track:6b2aded83475420f1fd691094e88faf1c261d5a39ee10d948dcad582234306c7` |
| 3 | `theorem` | [leftLim_eq_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant28da2d5ad8763fc29eff12a163f0b8175a610923bef3cc7e50bc2c11ce548df8.lean/declarations/leftlim-eq-of-tendsto--3b8755f72cd747ca2342c314.md) | 69 | `result-track:3b8755f72cd747ca2342c3148b227cb76bb649b93e84682681798bfd9c9aef2f` |
| 4 | `theorem` | [leftLim_eq_of_eq_bot](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant28da2d5ad8763fc29eff12a163f0b8175a610923bef3cc7e50bc2c11ce548df8.lean/declarations/leftlim-eq-of-eq-bot--8991060b3aa8d614326ce144.md) | 78 | `result-track:8991060b3aa8d614326ce144e38e02f2f1ff8ec21acaf53afbf93f486f712df3` |
| 5 | `theorem` | [rightLim_eq_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant28da2d5ad8763fc29eff12a163f0b8175a610923bef3cc7e50bc2c11ce548df8.lean/declarations/rightlim-eq-of-tendsto--b573b984b2fe5fadb2ce9c3b.md) | 83 | `result-track:b573b984b2fe5fadb2ce9c3b5e243faa44a59ebb4af8187dbaa32a48ca35b020` |
| 6 | `theorem` | [rightLim_eq_of_eq_bot](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant28da2d5ad8763fc29eff12a163f0b8175a610923bef3cc7e50bc2c11ce548df8.lean/declarations/rightlim-eq-of-eq-bot--15204a7f656353e1c00f8935.md) | 88 | `result-track:15204a7f656353e1c00f8935a3bdf06e4d00e61fe2e81e35ff397cb74c6fbd92` |
| 7 | `theorem` | [leftLim_eq_sSup](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant28da2d5ad8763fc29eff12a163f0b8175a610923bef3cc7e50bc2c11ce548df8.lean/declarations/leftlim-eq-ssup--f923f05fec64ae7cb96c5514.md) | 102 | `result-track:f923f05fec64ae7cb96c5514f7d6c55e186d118918a94747b8ac84f2aa54bc46` |
| 8 | `theorem` | [rightLim_eq_sInf](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant28da2d5ad8763fc29eff12a163f0b8175a610923bef3cc7e50bc2c11ce548df8.lean/declarations/rightlim-eq-sinf--18dbf81985bddbbaac094479.md) | 106 | `result-track:18dbf81985bddbbaac0944798a75b8c616815101c132706fbc29dc58d04ce471` |
| 9 | `theorem` | [leftLim_le](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant28da2d5ad8763fc29eff12a163f0b8175a610923bef3cc7e50bc2c11ce548df8.lean/declarations/leftlim-le--bcad1e5788dcbc55291bbcf5.md) | 110 | `result-track:bcad1e5788dcbc55291bbcf5ca9c47fd76e2d49cbdb1d3fe46a177de88e502fb` |
| 10 | `theorem` | [le_leftLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant28da2d5ad8763fc29eff12a163f0b8175a610923bef3cc7e50bc2c11ce548df8.lean/declarations/le-leftlim--b4b9bed29064892147f05da3.md) | 124 | `result-track:b4b9bed29064892147f05da3846e130c9948cde7f63eeebccecb8cf5d42b45d0` |
| 11 | `theorem` | [leftLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant28da2d5ad8763fc29eff12a163f0b8175a610923bef3cc7e50bc2c11ce548df8.lean/declarations/leftlim--8efc11b6abdbd5c14dd85c7f.md) | 138 | `result-track:8efc11b6abdbd5c14dd85c7fc044c07addac9bd553222635179da268b840d025` |
| 12 | `theorem` | [le_rightLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant28da2d5ad8763fc29eff12a163f0b8175a610923bef3cc7e50bc2c11ce548df8.lean/declarations/le-rightlim--418e5bca5b8b8406ed749778.md) | 144 | `result-track:418e5bca5b8b8406ed749778f4e66f102f8ba2ce67d797ee1a061b76b5da935d` |
| 13 | `theorem` | [rightLim_le](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant28da2d5ad8763fc29eff12a163f0b8175a610923bef3cc7e50bc2c11ce548df8.lean/declarations/rightlim-le--307bd53b32dc72e2113db2a5.md) | 147 | `result-track:307bd53b32dc72e2113db2a5d439561222b30b997cf2257d978dd464dfaec945` |
| 14 | `theorem` | [rightLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant28da2d5ad8763fc29eff12a163f0b8175a610923bef3cc7e50bc2c11ce548df8.lean/declarations/rightlim--e674012caa7d4b49edfc0e95.md) | 151 | `result-track:e674012caa7d4b49edfc0e95fa5282401b786daf6e0c51d9d8c36073c31089c4` |
| 15 | `theorem` | [leftLim_le_rightLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant28da2d5ad8763fc29eff12a163f0b8175a610923bef3cc7e50bc2c11ce548df8.lean/declarations/leftlim-le-rightlim--d4563d5fbb29951c86d6a3aa.md) | 153 | `result-track:d4563d5fbb29951c86d6a3aae7a630117c4a6e9cf02376f80e541c6b98834f77` |
| 16 | `theorem` | [rightLim_le_leftLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant28da2d5ad8763fc29eff12a163f0b8175a610923bef3cc7e50bc2c11ce548df8.lean/declarations/rightlim-le-leftlim--746e7ff26c55fdc3ae4dc866.md) | 156 | `result-track:746e7ff26c55fdc3ae4dc866854b4ae22f4b92bad4d1dd00ceaf8ab98ae7f523` |
| 17 | `theorem` | [tendsto_leftLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant28da2d5ad8763fc29eff12a163f0b8175a610923bef3cc7e50bc2c11ce548df8.lean/declarations/tendsto-leftlim--358978094bec08bb77e91ed3.md) | 168 | `result-track:358978094bec08bb77e91ed3747669b3b263a7763c6461aadb7c337b8bd3a8e0` |
| 18 | `theorem` | [tendsto_leftLim_within](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant28da2d5ad8763fc29eff12a163f0b8175a610923bef3cc7e50bc2c11ce548df8.lean/declarations/tendsto-leftlim-within--00951cd6d27439226e0d83b1.md) | 174 | `result-track:00951cd6d27439226e0d83b18b7b3fb2b90e69e990083818bb96486efb2cca88` |
| 19 | `theorem` | [tendsto_rightLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant28da2d5ad8763fc29eff12a163f0b8175a610923bef3cc7e50bc2c11ce548df8.lean/declarations/tendsto-rightlim--689d812cdf5347445a1cbce5.md) | 178 | `result-track:689d812cdf5347445a1cbce5714b746ef7472035e6f532cf6f2971a3bc35be58` |
| 20 | `theorem` | [tendsto_rightLim_within](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant28da2d5ad8763fc29eff12a163f0b8175a610923bef3cc7e50bc2c11ce548df8.lean/declarations/tendsto-rightlim-within--9aa1397e80cf84a0b20f11de.md) | 181 | `result-track:9aa1397e80cf84a0b20f11de9fc5e80ace9d871c6bc3c965eecc6833f30f0b02` |
| 21 | `theorem` | [continuousWithinAt_Iio_iff_leftLim_eq](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant28da2d5ad8763fc29eff12a163f0b8175a610923bef3cc7e50bc2c11ce548df8.lean/declarations/continuouswithinat-iio-iff-leftlim-eq--c9ab2d3cb2aa57f50546bc70.md) | 186 | `result-track:c9ab2d3cb2aa57f50546bc70033afa2e517e97e48fdfad453fb3eefcac46b8fd` |
| 22 | `theorem` | [continuousWithinAt_Ioi_iff_rightLim_eq](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant28da2d5ad8763fc29eff12a163f0b8175a610923bef3cc7e50bc2c11ce548df8.lean/declarations/continuouswithinat-ioi-iff-rightlim-eq--1df149aabc5055d3eb5d12b7.md) | 197 | `result-track:1df149aabc5055d3eb5d12b786311c385e5d3d3b554ef3c17e422eca13000ca5` |
| 23 | `theorem` | [continuousAt_iff_leftLim_eq_rightLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant28da2d5ad8763fc29eff12a163f0b8175a610923bef3cc7e50bc2c11ce548df8.lean/declarations/continuousat-iff-leftlim-eq-rightlim--da65963928d383235513ae13.md) | 203 | `result-track:da65963928d383235513ae13d50e8ab6d329f742c04080d67e27977929682394` |
| 24 | `theorem` | [countable_not_continuousWithinAt_Ioi](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant28da2d5ad8763fc29eff12a163f0b8175a610923bef3cc7e50bc2c11ce548df8.lean/declarations/countable-not-continuouswithinat-ioi--bad6ab3a8cfa513381532b45.md) | 222 | `result-track:bad6ab3a8cfa513381532b452a01c83a97185caa18478b4540c850c352e97f4b` |
| 25 | `theorem` | [countable_not_continuousWithinAt_Iio](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant28da2d5ad8763fc29eff12a163f0b8175a610923bef3cc7e50bc2c11ce548df8.lean/declarations/countable-not-continuouswithinat-iio--48bc4806298d29ae9292d1c4.md) | 239 | `result-track:48bc4806298d29ae9292d1c41afba08bc38f8376db07a4e94ef75a1af3b14652` |
| 26 | `theorem` | [countable_not_continuousAt](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant28da2d5ad8763fc29eff12a163f0b8175a610923bef3cc7e50bc2c11ce548df8.lean/declarations/countable-not-continuousat--4d105cabc72080332f6d5e44.md) | 245 | `result-track:4d105cabc72080332f6d5e4467c2dba06a5804739731dac5ec98d5594e45a0e4` |
| 27 | `theorem` | [le_leftLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant28da2d5ad8763fc29eff12a163f0b8175a610923bef3cc7e50bc2c11ce548df8.lean/declarations/le-leftlim--cdbeeabc117532c29359e5cb.md) | 264 | `result-track:cdbeeabc117532c29359e5cb8d62ab4d50ff237b3ae6f3700aff02eebaeb75c0` |
| 28 | `theorem` | [leftLim_le](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant28da2d5ad8763fc29eff12a163f0b8175a610923bef3cc7e50bc2c11ce548df8.lean/declarations/leftlim-le--042de7b17adafd7e1e0c1147.md) | 267 | `result-track:042de7b17adafd7e1e0c11479eaf9beada833af6ec3d93d8519ccba6dc556a84` |
| 29 | `theorem` | [leftLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant28da2d5ad8763fc29eff12a163f0b8175a610923bef3cc7e50bc2c11ce548df8.lean/declarations/leftlim--8df35e3df273142a45883ea7.md) | 271 | `result-track:8df35e3df273142a45883ea707ece286e09a5336cea26ff48808151efa5310a1` |
| 30 | `theorem` | [rightLim_le](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant28da2d5ad8763fc29eff12a163f0b8175a610923bef3cc7e50bc2c11ce548df8.lean/declarations/rightlim-le--2799d2643a796a3243d0827e.md) | 274 | `result-track:2799d2643a796a3243d0827ed2c1884210124db618c05a9bbd2952446fa3ee68` |
| 31 | `theorem` | [le_rightLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant28da2d5ad8763fc29eff12a163f0b8175a610923bef3cc7e50bc2c11ce548df8.lean/declarations/le-rightlim--f5be72f421c9867fd171570b.md) | 277 | `result-track:f5be72f421c9867fd171570b94aad1f95a5d0d69a6ea5a5921af720dae13cd19` |
| 32 | `theorem` | [rightLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant28da2d5ad8763fc29eff12a163f0b8175a610923bef3cc7e50bc2c11ce548df8.lean/declarations/rightlim--b2302698bb8d7278503d21a8.md) | 281 | `result-track:b2302698bb8d7278503d21a8672c95817965378b177da4c2f5420ea84b1cef51` |
| 33 | `theorem` | [rightLim_le_leftLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant28da2d5ad8763fc29eff12a163f0b8175a610923bef3cc7e50bc2c11ce548df8.lean/declarations/rightlim-le-leftlim--3349442c865f1d75f8a4686f.md) | 284 | `result-track:3349442c865f1d75f8a4686fa5078e7f6b8b61da64b2fc0823473f1bb923dfd8` |
| 34 | `theorem` | [leftLim_le_rightLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant28da2d5ad8763fc29eff12a163f0b8175a610923bef3cc7e50bc2c11ce548df8.lean/declarations/leftlim-le-rightlim--1e3b101c8a26f589be2aa20d.md) | 287 | `result-track:1e3b101c8a26f589be2aa20d24b811dcc76bc0188509d5aa736b5e7722b10fd5` |
| 35 | `theorem` | [tendsto_leftLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant28da2d5ad8763fc29eff12a163f0b8175a610923bef3cc7e50bc2c11ce548df8.lean/declarations/tendsto-leftlim--90612b55f730535df4286271.md) | 292 | `result-track:90612b55f730535df4286271a3c32dde8106d8e4ee9e8b075a195a9994da008f` |
| 36 | `theorem` | [tendsto_leftLim_within](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant28da2d5ad8763fc29eff12a163f0b8175a610923bef3cc7e50bc2c11ce548df8.lean/declarations/tendsto-leftlim-within--41720aff9497f0c58a66246f.md) | 295 | `result-track:41720aff9497f0c58a66246f551729e933427391b3f0d077ba20ca3df4be64a0` |
| 37 | `theorem` | [tendsto_rightLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant28da2d5ad8763fc29eff12a163f0b8175a610923bef3cc7e50bc2c11ce548df8.lean/declarations/tendsto-rightlim--eb1380ba73b884b37259e8a4.md) | 298 | `result-track:eb1380ba73b884b37259e8a4e1795eab9dac2e7808ec510fd8e5a3bf8a866a8d` |
| 38 | `theorem` | [tendsto_rightLim_within](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant28da2d5ad8763fc29eff12a163f0b8175a610923bef3cc7e50bc2c11ce548df8.lean/declarations/tendsto-rightlim-within--1e33bf9884f5c67d7b84b08b.md) | 301 | `result-track:1e33bf9884f5c67d7b84b08b4a6bb00f725aca1284c4a14cfe48549182d0f28b` |
| 39 | `theorem` | [continuousWithinAt_Iio_iff_leftLim_eq](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant28da2d5ad8763fc29eff12a163f0b8175a610923bef3cc7e50bc2c11ce548df8.lean/declarations/continuouswithinat-iio-iff-leftlim-eq--08d1fac4ec2a92d787714f59.md) | 306 | `result-track:08d1fac4ec2a92d787714f59383a8f3e52bfd3a56595498f88f443cb161b862e` |
| 40 | `theorem` | [continuousWithinAt_Ioi_iff_rightLim_eq](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant28da2d5ad8763fc29eff12a163f0b8175a610923bef3cc7e50bc2c11ce548df8.lean/declarations/continuouswithinat-ioi-iff-rightlim-eq--b85ce7e001549687195d1dd6.md) | 312 | `result-track:b85ce7e001549687195d1dd63d14c3eb17f1d0d444be8bf9d37a868a18ae3101` |
| 41 | `theorem` | [continuousAt_iff_leftLim_eq_rightLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant28da2d5ad8763fc29eff12a163f0b8175a610923bef3cc7e50bc2c11ce548df8.lean/declarations/continuousat-iff-leftlim-eq-rightlim--02066d3ac9b4b312a5c7f2ec.md) | 318 | `result-track:02066d3ac9b4b312a5c7f2ecae1e859189e17a63a49f229b07eb75c33c3dadbc` |
| 42 | `theorem` | [countable_not_continuousAt](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant28da2d5ad8763fc29eff12a163f0b8175a610923bef3cc7e50bc2c11ce548df8.lean/declarations/countable-not-continuousat--207bf81beb39355112a12a84.md) | 323 | `result-track:207bf81beb39355112a12a846a1bace8f2462016b03625c3d29ad14a3baf6eaf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
