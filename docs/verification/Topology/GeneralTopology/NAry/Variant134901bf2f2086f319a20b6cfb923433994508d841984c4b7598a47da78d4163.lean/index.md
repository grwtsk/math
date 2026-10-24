# Verification target: GRWTSK.Topology.GeneralTopology.NAry.Variant134901bf2f2086f319a20b6cfb923433994508d841984c4b7598a47da78d4163

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "933e6da7c6646321dd8de2185b8bc03b9574ada7",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/NAry/Variant134901bf2f2086f319a20b6cfb923433994508d841984c4b7598a47da78d4163.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant134901bf2f2086f319a20b6cfb923433994508d841984c4b7598a47da78d4163.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant134901bf2f2086f319a20b6cfb923433994508d841984c4b7598a47da78d4163.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `933e6da7c6646321dd8de2185b8bc03b9574ada7`.

Source path: `GRWTSK/Topology/GeneralTopology/NAry/Variant134901bf2f2086f319a20b6cfb923433994508d841984c4b7598a47da78d4163.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/NAry/Variant134901bf2f2086f319a20b6cfb923433994508d841984c4b7598a47da78d4163.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.Prod` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [map₂](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant134901bf2f2086f319a20b6cfb923433994508d841984c4b7598a47da78d4163.lean/declarations/map--a3b117b1bbd267ab2636205d.md) | 37 | `declaration-track:a3b117b1bbd267ab2636205de61fba2998733389aa2e05e6cc692f20295c3263` |
| 2 | `theorem` | [mem_map₂_iff](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant134901bf2f2086f319a20b6cfb923433994508d841984c4b7598a47da78d4163.lean/declarations/mem-map-iff--c8d791dc3e62cef69589e014.md) | 42 | `result-track:c8d791dc3e62cef69589e014ea8b22b6e8a7fe1049e8d8231cecb0a56c65a97e` |
| 3 | `theorem` | [image2_mem_map₂](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant134901bf2f2086f319a20b6cfb923433994508d841984c4b7598a47da78d4163.lean/declarations/image2-mem-map--4420b82f36f1ff8c1d95efc0.md) | 45 | `result-track:4420b82f36f1ff8c1d95efc0cdec86e17ec948dbd68b49cba55d63e6277f4439` |
| 4 | `theorem` | [map_prod_eq_map₂](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant134901bf2f2086f319a20b6cfb923433994508d841984c4b7598a47da78d4163.lean/declarations/map-prod-eq-map--631b7512f6e4c07fcdee6f69.md) | 48 | `result-track:631b7512f6e4c07fcdee6f69e49ed8e2a64f67a29f3e7bd65efd2fe401078f89` |
| 5 | `theorem` | [map_prod_eq_map₂'](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant134901bf2f2086f319a20b6cfb923433994508d841984c4b7598a47da78d4163.lean/declarations/map-prod-eq-map--6ea5befab702ea85f5931371.md) | 52 | `result-track:6ea5befab702ea85f593137112fd0da399ce1ee944fbfcd743a4f7fa378270bf` |
| 6 | `theorem` | [map₂_mk_eq_prod](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant134901bf2f2086f319a20b6cfb923433994508d841984c4b7598a47da78d4163.lean/declarations/map-mk-eq-prod--484c9d5563f7e3bd46c5263d.md) | 57 | `result-track:484c9d5563f7e3bd46c5263dd3a9c8fe59d7db8e6457aada98dd5e218e2bd10a` |
| 7 | `theorem` | [map₂_mono](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant134901bf2f2086f319a20b6cfb923433994508d841984c4b7598a47da78d4163.lean/declarations/map-mono--86ee98541eb94a41ead96490.md) | 64 | `result-track:86ee98541eb94a41ead964908b232e81903eb573cccda57a4b8deb51edbd2507` |
| 8 | `theorem` | [map₂_mono_left](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant134901bf2f2086f319a20b6cfb923433994508d841984c4b7598a47da78d4163.lean/declarations/map-mono-left--97fab5f81e7d5fd2b130e6dc.md) | 68 | `result-track:97fab5f81e7d5fd2b130e6dc9cef811731cd5ede47cf3849e346ac2b071a0bc9` |
| 9 | `theorem` | [map₂_mono_right](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant134901bf2f2086f319a20b6cfb923433994508d841984c4b7598a47da78d4163.lean/declarations/map-mono-right--3f9d3b71ba21d7f130e6d640.md) | 72 | `result-track:3f9d3b71ba21d7f130e6d64061e5a1a39b507a108625355888db84a9d19014b2` |
| 10 | `theorem` | [le_map₂_iff](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant134901bf2f2086f319a20b6cfb923433994508d841984c4b7598a47da78d4163.lean/declarations/le-map-iff--8ad41e0ec7196c454aeb8856.md) | 76 | `result-track:8ad41e0ec7196c454aeb88566f7d5f13aa37d91e15b68811e4c30ee6239f7a65` |
| 11 | `theorem` | [map₂_eq_bot_iff](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant134901bf2f2086f319a20b6cfb923433994508d841984c4b7598a47da78d4163.lean/declarations/map-eq-bot-iff--ff6839784e3fc7e31fa19bf7.md) | 82 | `result-track:ff6839784e3fc7e31fa19bf7c812eda84fa75b38b24733def583f4207a3c5af9` |
| 12 | `theorem` | [map₂_bot_left](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant134901bf2f2086f319a20b6cfb923433994508d841984c4b7598a47da78d4163.lean/declarations/map-bot-left--df080e4338466f1a486be053.md) | 85 | `result-track:df080e4338466f1a486be053d88187a72e18cd3a1670b26a72b228da9bf264d8` |
| 13 | `theorem` | [map₂_bot_right](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant134901bf2f2086f319a20b6cfb923433994508d841984c4b7598a47da78d4163.lean/declarations/map-bot-right--1fffcc42bd0db2df6056d361.md) | 88 | `result-track:1fffcc42bd0db2df6056d361469e44652156ffed82f6fa5c61135ea982ae9123` |
| 14 | `theorem` | [map₂_neBot_iff](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant134901bf2f2086f319a20b6cfb923433994508d841984c4b7598a47da78d4163.lean/declarations/map-nebot-iff--5699ba4ee1eeaf480d6a71e3.md) | 91 | `result-track:5699ba4ee1eeaf480d6a71e3c903c24f181e667040e752bd443a5a9132486fbd` |
| 15 | `theorem` | [NeBot.map₂](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant134901bf2f2086f319a20b6cfb923433994508d841984c4b7598a47da78d4163.lean/declarations/nebot-map--1206ef52eac88d082bf1dd2e.md) | 93 | `result-track:1206ef52eac88d082bf1dd2effb41ac56622d40a6f9e677a3979fc6be9621ce2` |
| 16 | `instance` | [map₂.neBot](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant134901bf2f2086f319a20b6cfb923433994508d841984c4b7598a47da78d4163.lean/declarations/map-nebot--3c0a7403f59545ceccbf415b.md) | 96 | `declaration-track:3c0a7403f59545ceccbf415b02e6d6011c47202a72c740519bdb6af7c2d15512` |
| 17 | `theorem` | [NeBot.of_map₂_left](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant134901bf2f2086f319a20b6cfb923433994508d841984c4b7598a47da78d4163.lean/declarations/nebot-of-map-left--0e093ea7bf482e71fb0f033d.md) | 98 | `result-track:0e093ea7bf482e71fb0f033dabb3899a30f02a68baaa088c0fb1939ddcb78b85` |
| 18 | `theorem` | [NeBot.of_map₂_right](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant134901bf2f2086f319a20b6cfb923433994508d841984c4b7598a47da78d4163.lean/declarations/nebot-of-map-right--1f7d88dbc6616b3971529ba1.md) | 101 | `result-track:1f7d88dbc6616b3971529ba15e50cf5000865e19197b545c5bff8a2ecf2160bb` |
| 19 | `theorem` | [map₂_sup_left](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant134901bf2f2086f319a20b6cfb923433994508d841984c4b7598a47da78d4163.lean/declarations/map-sup-left--03dfe7a8a0805fb2a13fd0d2.md) | 104 | `result-track:03dfe7a8a0805fb2a13fd0d230b3aba4f2d705d96e7bafb7cf98c4f02fe532f5` |
| 20 | `theorem` | [map₂_sup_right](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant134901bf2f2086f319a20b6cfb923433994508d841984c4b7598a47da78d4163.lean/declarations/map-sup-right--490dac1922703a621aca3760.md) | 107 | `result-track:490dac1922703a621aca376095fb42be51e6f584c671ff3e4aeaf760b472bbba` |
| 21 | `theorem` | [map₂_inf_subset_left](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant134901bf2f2086f319a20b6cfb923433994508d841984c4b7598a47da78d4163.lean/declarations/map-inf-subset-left--00e0c305c8f4c0ea4d613f98.md) | 110 | `result-track:00e0c305c8f4c0ea4d613f9856eb141e449469f567135131b9fd3d32a7f0eb17` |
| 22 | `theorem` | [map₂_inf_subset_right](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant134901bf2f2086f319a20b6cfb923433994508d841984c4b7598a47da78d4163.lean/declarations/map-inf-subset-right--29982d72ab77d2e7ed4bd585.md) | 113 | `result-track:29982d72ab77d2e7ed4bd585b150e069673ee901b569966eaaf3959d842274ef` |
| 23 | `theorem` | [map₂_pure_left](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant134901bf2f2086f319a20b6cfb923433994508d841984c4b7598a47da78d4163.lean/declarations/map-pure-left--a672d15707202cfd6d27052d.md) | 117 | `result-track:a672d15707202cfd6d27052d68c7a0e91d3a2f3a857c0e369fcb1ad4be37620c` |
| 24 | `theorem` | [map₂_pure_right](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant134901bf2f2086f319a20b6cfb923433994508d841984c4b7598a47da78d4163.lean/declarations/map-pure-right--bfafe03f92e74edbb64de226.md) | 121 | `result-track:bfafe03f92e74edbb64de226a50c110cc10bb8300dec6c16c674b7e2076233b5` |
| 25 | `theorem` | [map₂_pure](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant134901bf2f2086f319a20b6cfb923433994508d841984c4b7598a47da78d4163.lean/declarations/map-pure--1758dd0c16abdc78227b31b7.md) | 124 | `result-track:1758dd0c16abdc78227b31b77021e2604a2c46e1a481073f7491b7e9ca5358d4` |
| 26 | `theorem` | [map₂_swap](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant134901bf2f2086f319a20b6cfb923433994508d841984c4b7598a47da78d4163.lean/declarations/map-swap--f6f2d56c61fd6364edf0fff9.md) | 126 | `result-track:f6f2d56c61fd6364edf0fff9baaa305f20ea2fde8465b19e266ac681d0e7408c` |
| 27 | `theorem` | [map₂_left](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant134901bf2f2086f319a20b6cfb923433994508d841984c4b7598a47da78d4163.lean/declarations/map-left--dcda939d5272d4d56f154bb0.md) | 131 | `result-track:dcda939d5272d4d56f154bb08ee79e620b928251cf7ad9492de1509bfff51cda` |
| 28 | `theorem` | [map₂_right](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant134901bf2f2086f319a20b6cfb923433994508d841984c4b7598a47da78d4163.lean/declarations/map-right--b0f01fa6d92363e5e8576f81.md) | 135 | `result-track:b0f01fa6d92363e5e8576f81cc1ec61eb486f01594bd302f11eb88e9454c735a` |
| 29 | `theorem` | [map_map₂](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant134901bf2f2086f319a20b6cfb923433994508d841984c4b7598a47da78d4163.lean/declarations/map-map--5c1b26a640a9e91fefd9bc43.md) | 137 | `result-track:5c1b26a640a9e91fefd9bc43cd86b551bcc1df6f33e1b19c908c94fc46943be7` |
| 30 | `theorem` | [map₂_map_left](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant134901bf2f2086f319a20b6cfb923433994508d841984c4b7598a47da78d4163.lean/declarations/map-map-left--9ecbbd77cd0fc038b15cb22e.md) | 141 | `result-track:9ecbbd77cd0fc038b15cb22e23ab876a5b30290fac4a296afbb964a724b9a0b4` |
| 31 | `theorem` | [map₂_map_right](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant134901bf2f2086f319a20b6cfb923433994508d841984c4b7598a47da78d4163.lean/declarations/map-map-right--477dce589025c51c3db70763.md) | 145 | `result-track:477dce589025c51c3db70763333396f8d02a451e734bad5a19c31194e272e7c2` |
| 32 | `theorem` | [map₂_curry](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant134901bf2f2086f319a20b6cfb923433994508d841984c4b7598a47da78d4163.lean/declarations/map-curry--49b771934a4b252aad51b1e3.md) | 150 | `result-track:49b771934a4b252aad51b1e3e1b93048dd6332f0f1090c49c0c5b52c2ce47c0d` |
| 33 | `theorem` | [map_uncurry_prod](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant134901bf2f2086f319a20b6cfb923433994508d841984c4b7598a47da78d4163.lean/declarations/map-uncurry-prod--6a6e61cff182af3a48bb15c4.md) | 155 | `result-track:6a6e61cff182af3a48bb15c49162171f2eb0b22f4a343b10b82f6896db33268c` |
| 34 | `theorem` | [map₂_assoc](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant134901bf2f2086f319a20b6cfb923433994508d841984c4b7598a47da78d4163.lean/declarations/map-assoc--58a7bcbff651cc1391ea77a5.md) | 169 | `result-track:58a7bcbff651cc1391ea77a5c29631fdc7ae5292cd81a99b5c0ad0df20df2a14` |
| 35 | `theorem` | [map₂_comm](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant134901bf2f2086f319a20b6cfb923433994508d841984c4b7598a47da78d4163.lean/declarations/map-comm--87e036960f0be9d11d16be5d.md) | 176 | `result-track:87e036960f0be9d11d16be5d9d9e3f2c2f6f070dbdb3a16baf327e030f5c0251` |
| 36 | `theorem` | [map₂_left_comm](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant134901bf2f2086f319a20b6cfb923433994508d841984c4b7598a47da78d4163.lean/declarations/map-left-comm--c36250c4fa006d7b47df287b.md) | 179 | `result-track:c36250c4fa006d7b47df287be5614f5db9a135ce938408e4bcdb76b038bd6154` |
| 37 | `theorem` | [map₂_right_comm](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant134901bf2f2086f319a20b6cfb923433994508d841984c4b7598a47da78d4163.lean/declarations/map-right-comm--5cb75d6f7995610b6d98add1.md) | 185 | `result-track:5cb75d6f7995610b6d98add177a3092438daec49ff600b18f9be8a11ea234419` |
| 38 | `theorem` | [map_map₂_distrib](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant134901bf2f2086f319a20b6cfb923433994508d841984c4b7598a47da78d4163.lean/declarations/map-map-distrib--32556e791ef6388936b1e3cc.md) | 191 | `result-track:32556e791ef6388936b1e3cc3f187016a06fe25de58a3ba8659bbebf2d7c2a8d` |
| 39 | `theorem` | [map_map₂_distrib_left](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant134901bf2f2086f319a20b6cfb923433994508d841984c4b7598a47da78d4163.lean/declarations/map-map-distrib-left--ed24f5961d015f8866c8263e.md) | 197 | `result-track:ed24f5961d015f8866c8263eb02813e2b8a38b58c9b4ae51ca5ea931180b68b3` |
| 40 | `theorem` | [map_map₂_distrib_right](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant134901bf2f2086f319a20b6cfb923433994508d841984c4b7598a47da78d4163.lean/declarations/map-map-distrib-right--9e7f87d45f8a3526ee5a46aa.md) | 202 | `result-track:9e7f87d45f8a3526ee5a46aabd83000befe31b8fac02263ba3a8db46e4225bc5` |
| 41 | `theorem` | [map₂_map_left_comm](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant134901bf2f2086f319a20b6cfb923433994508d841984c4b7598a47da78d4163.lean/declarations/map-map-left-comm--db8b3329429962066b532126.md) | 207 | `result-track:db8b3329429962066b5321261c562b43cbb6205724824c0d81d8d2a395e05c6f` |
| 42 | `theorem` | [map_map₂_right_comm](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant134901bf2f2086f319a20b6cfb923433994508d841984c4b7598a47da78d4163.lean/declarations/map-map-right-comm--a5593f3b14f76a2b9e9718bb.md) | 212 | `result-track:a5593f3b14f76a2b9e9718bbd8afd41450ba9377af680548a3ba8cb62248103a` |
| 43 | `theorem` | [map₂_distrib_le_left](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant134901bf2f2086f319a20b6cfb923433994508d841984c4b7598a47da78d4163.lean/declarations/map-distrib-le-left--22f26a6965a0bd2bcaaf5709.md) | 217 | `result-track:22f26a6965a0bd2bcaaf570926fc0f396035efc572cf75ba7c4435b102b5785b` |
| 44 | `theorem` | [map₂_distrib_le_right](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant134901bf2f2086f319a20b6cfb923433994508d841984c4b7598a47da78d4163.lean/declarations/map-distrib-le-right--95bee35f3692418cc09f11a6.md) | 227 | `result-track:95bee35f3692418cc09f11a6a38e67ef710e260125b9bcf4837cf17e0f297740` |
| 45 | `theorem` | [map_map₂_antidistrib](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant134901bf2f2086f319a20b6cfb923433994508d841984c4b7598a47da78d4163.lean/declarations/map-map-antidistrib--96ef6ec6b7fb5e9d934a8f43.md) | 236 | `result-track:96ef6ec6b7fb5e9d934a8f432472e151bd0e36d1d503d71d0166faeec4a484fd` |
| 46 | `theorem` | [map_map₂_antidistrib_left](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant134901bf2f2086f319a20b6cfb923433994508d841984c4b7598a47da78d4163.lean/declarations/map-map-antidistrib-left--7dfd0bfca3d8aa58866d699c.md) | 243 | `result-track:7dfd0bfca3d8aa58866d699ca11bbbf8cad644a602c001426d43ce14fe8cc1da` |
| 47 | `theorem` | [map_map₂_antidistrib_right](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant134901bf2f2086f319a20b6cfb923433994508d841984c4b7598a47da78d4163.lean/declarations/map-map-antidistrib-right--ee6325464c3719a009f2a0de.md) | 248 | `result-track:ee6325464c3719a009f2a0deb50f28e80b1ca6fdcd3633333e8fefae175d60c3` |
| 48 | `theorem` | [map₂_map_left_anticomm](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant134901bf2f2086f319a20b6cfb923433994508d841984c4b7598a47da78d4163.lean/declarations/map-map-left-anticomm--5da739dee6e1bf9d42cd845e.md) | 253 | `result-track:5da739dee6e1bf9d42cd845ef58450627dc8871dd4e9051c5ade4548f8d5ec60` |
| 49 | `theorem` | [map_map₂_right_anticomm](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant134901bf2f2086f319a20b6cfb923433994508d841984c4b7598a47da78d4163.lean/declarations/map-map-right-anticomm--60d4bd2457aa1e5dec0164a0.md) | 259 | `result-track:60d4bd2457aa1e5dec0164a0e11ff9c58b669cbc3abefbb8726d187ff662f4ef` |
| 50 | `theorem` | [map₂_left_identity](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant134901bf2f2086f319a20b6cfb923433994508d841984c4b7598a47da78d4163.lean/declarations/map-left-identity--5a328e0f275f75130a044eda.md) | 266 | `result-track:5a328e0f275f75130a044eda9c1f0eca6abf7d6f2c3028e714fee28b79ac30be` |
| 51 | `theorem` | [map₂_right_identity](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant134901bf2f2086f319a20b6cfb923433994508d841984c4b7598a47da78d4163.lean/declarations/map-right-identity--dc683b09899ce506f5b0b9cb.md) | 271 | `result-track:dc683b09899ce506f5b0b9cb1857a9826e5efbe37d3ecec8799aa5fdae6dc107` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
