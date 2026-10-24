# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variant0c595c7f41ff36922dbb38967816db4e4714fce6378ecc36c6c03713327a90da

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "263a94b86ae16d63a773e3c342e8edf5520ce5f8",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant0c595c7f41ff36922dbb38967816db4e4714fce6378ecc36c6c03713327a90da.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0c595c7f41ff36922dbb38967816db4e4714fce6378ecc36c6c03713327a90da.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0c595c7f41ff36922dbb38967816db4e4714fce6378ecc36c6c03713327a90da.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `263a94b86ae16d63a773e3c342e8edf5520ce5f8`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant0c595c7f41ff36922dbb38967816db4e4714fce6378ecc36c6c03713327a90da.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant0c595c7f41ff36922dbb38967816db4e4714fce6378ecc36c6c03713327a90da.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ProfiniteGrp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0c595c7f41ff36922dbb38967816db4e4714fce6378ecc36c6c03713327a90da.lean/declarations/profinitegrp--db218244bc70bb9c61d9091a.md) | 44 | `declaration-track:db218244bc70bb9c61d9091a94f2fd4399f31a7eb94a7eaf983bc314c2f99c9a` |
| 2 | `structure` | [ProfiniteAddGrp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0c595c7f41ff36922dbb38967816db4e4714fce6378ecc36c6c03713327a90da.lean/declarations/profiniteaddgrp--c95f30b13ba1391e6780c9b8.md) | 57 | `declaration-track:c95f30b13ba1391e6780c9b807d10ad41ff3d76f2839a11cbd9111f1c1779002` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0c595c7f41ff36922dbb38967816db4e4714fce6378ecc36c6c03713327a90da.lean/declarations/instance--a3d16c5f4f7b8db2b8a2f245.md) | 68 | `declaration-track:a3d16c5f4f7b8db2b8a2f245a2ab7e150a8be5bda98ebea9d23abe01480f5f74` |
| 4 | `abbrev` | [ProfiniteGrp.of](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0c595c7f41ff36922dbb38967816db4e4714fce6378ecc36c6c03713327a90da.lean/declarations/profinitegrp-of--19e0c7b55343eac8e048f878.md) | 82 | `declaration-track:19e0c7b55343eac8e048f8783e6812926a0831836fa51bc0e8998f9f081a08f7` |
| 5 | `lemma` | [ProfiniteGrp.coe_of](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0c595c7f41ff36922dbb38967816db4e4714fce6378ecc36c6c03713327a90da.lean/declarations/profinitegrp-coe-of--a7d47977384c0dcb5a3b84dc.md) | 89 | `result-track:a7d47977384c0dcb5a3b84dcea878b29f4d0d81c47f1d29d4c9d7f44abea0354` |
| 6 | `structure` | [ProfiniteAddGrp.Hom](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0c595c7f41ff36922dbb38967816db4e4714fce6378ecc36c6c03713327a90da.lean/declarations/profiniteaddgrp-hom--58d3b6932e3136e25e3be15f.md) | 95 | `declaration-track:58d3b6932e3136e25e3be15f6410740e8d423b51d76d152d0a63e47d94888bd9` |
| 7 | `structure` | [ProfiniteGrp.Hom](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0c595c7f41ff36922dbb38967816db4e4714fce6378ecc36c6c03713327a90da.lean/declarations/profinitegrp-hom--bc45952867e946579a81084e.md) | 102 | `declaration-track:bc45952867e946579a81084edff24d722203d8559303805fa14e8a7650f490d8` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0c595c7f41ff36922dbb38967816db4e4714fce6378ecc36c6c03713327a90da.lean/declarations/instance--f966cf06d901a15bde211943.md) | 108 | `declaration-track:f966cf06d901a15bde2119436430881c0427048ddf604be7dbdfdabe052701c1` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0c595c7f41ff36922dbb38967816db4e4714fce6378ecc36c6c03713327a90da.lean/declarations/instance--eb3be8f67b282e6d2cc133f8.md) | 114 | `declaration-track:eb3be8f67b282e6d2cc133f84ba7e30b9deb71118a3ef318f34f8bd7f29fa6df` |
| 10 | `abbrev` | [ProfiniteGrp.Hom.hom](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0c595c7f41ff36922dbb38967816db4e4714fce6378ecc36c6c03713327a90da.lean/declarations/profinitegrp-hom-hom--334ad6f3cb56a9c8495017dc.md) | 120 | `declaration-track:334ad6f3cb56a9c8495017dc466f85b0b4117b49c2b86caa5d8621fd8b11f67f` |
| 11 | `abbrev` | [ProfiniteGrp.ofHom](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0c595c7f41ff36922dbb38967816db4e4714fce6378ecc36c6c03713327a90da.lean/declarations/profinitegrp-ofhom--7ed81fcaa8ccc71a83c036b4.md) | 126 | `declaration-track:7ed81fcaa8ccc71a83c036b476b853cb11dd90e757f0ce17b9672eda83aa9604` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0c595c7f41ff36922dbb38967816db4e4714fce6378ecc36c6c03713327a90da.lean/declarations/instance--a92dc3433394c93c5e266f4b.md) | 135 | `declaration-track:a92dc3433394c93c5e266f4ba05a1b807faa6473cd4a2a96454afbcc149988e5` |
| 13 | `lemma` | [hom_id](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0c595c7f41ff36922dbb38967816db4e4714fce6378ecc36c6c03713327a90da.lean/declarations/hom-id--95aaf8c2ae20e3242c65a0e0.md) | 139 | `result-track:95aaf8c2ae20e3242c65a0e0a5d0afa8b1ae203c46fe49ab8abb98461c0754cc` |
| 14 | `lemma` | [id_apply](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0c595c7f41ff36922dbb38967816db4e4714fce6378ecc36c6c03713327a90da.lean/declarations/id-apply--ede817db82329e6839ac4efd.md) | 143 | `result-track:ede817db82329e6839ac4efd9900e7b944def0704e0ea5b606e68b7ecdd9c8e9` |
| 15 | `lemma` | [hom_comp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0c595c7f41ff36922dbb38967816db4e4714fce6378ecc36c6c03713327a90da.lean/declarations/hom-comp--841b39e24ab0b68aceeb72f2.md) | 147 | `result-track:841b39e24ab0b68aceeb72f2922278bc20ebb22b54bf1ca84e129a5161269d33` |
| 16 | `lemma` | [comp_apply](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0c595c7f41ff36922dbb38967816db4e4714fce6378ecc36c6c03713327a90da.lean/declarations/comp-apply--7ed1aa7538bde4624e88d519.md) | 152 | `result-track:7ed1aa7538bde4624e88d5198941980862ddcffdf15d07b49060dee1da434f1e` |
| 17 | `lemma` | [hom_ext](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0c595c7f41ff36922dbb38967816db4e4714fce6378ecc36c6c03713327a90da.lean/declarations/hom-ext--ec55f30a54e254dec074e53b.md) | 157 | `result-track:ec55f30a54e254dec074e53b154aa5d5fb79ca3f3b19a155aaecaa6f43e4659f` |
| 18 | `lemma` | [hom_ofHom](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0c595c7f41ff36922dbb38967816db4e4714fce6378ecc36c6c03713327a90da.lean/declarations/hom-ofhom--6c7d014af0f422f30c102d12.md) | 166 | `result-track:6c7d014af0f422f30c102d12f612e1a7d59a4ffce217455beb0a01e62e723d94` |
| 19 | `lemma` | [ofHom_hom](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0c595c7f41ff36922dbb38967816db4e4714fce6378ecc36c6c03713327a90da.lean/declarations/ofhom-hom--0ca0e1c0e8972261c5986b92.md) | 169 | `result-track:0ca0e1c0e8972261c5986b92133663fe948c598077aff58822b1a308b53ab734` |
| 20 | `lemma` | [ofHom_id](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0c595c7f41ff36922dbb38967816db4e4714fce6378ecc36c6c03713327a90da.lean/declarations/ofhom-id--6e0794953f12a05721b16431.md) | 173 | `result-track:6e0794953f12a05721b164312d0c773cc43c36e0d61ab13c8b4f834ca83d58b7` |
| 21 | `lemma` | [ofHom_comp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0c595c7f41ff36922dbb38967816db4e4714fce6378ecc36c6c03713327a90da.lean/declarations/ofhom-comp--607709415b4293e482bba779.md) | 176 | `result-track:607709415b4293e482bba77920324a8ea1d0c95f3f63c6ddc6023f030fa0e41e` |
| 22 | `lemma` | [ofHom_apply](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0c595c7f41ff36922dbb38967816db4e4714fce6378ecc36c6c03713327a90da.lean/declarations/ofhom-apply--1bb07280ec37c1c6de605129.md) | 181 | `result-track:1bb07280ec37c1c6de60512911e836966788dfbb64127a20da8ae3032d3e2dd7` |
| 23 | `lemma` | [inv_hom_apply](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0c595c7f41ff36922dbb38967816db4e4714fce6378ecc36c6c03713327a90da.lean/declarations/inv-hom-apply--fc136398c4a33f40859c06c9.md) | 184 | `result-track:fc136398c4a33f40859c06c9bf8f2812f7e49f4b516f968af6d3cc2378df9ba1` |
| 24 | `lemma` | [hom_inv_apply](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0c595c7f41ff36922dbb38967816db4e4714fce6378ecc36c6c03713327a90da.lean/declarations/hom-inv-apply--4a52050467cd0ba63533066c.md) | 188 | `result-track:4a52050467cd0ba63533066c0567b367a3ae25d0dbbea5957396598353718b07` |
| 25 | `theorem` | [coe_id](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0c595c7f41ff36922dbb38967816db4e4714fce6378ecc36c6c03713327a90da.lean/declarations/coe-id--3782d5d885a040632b24b471.md) | 192 | `result-track:3782d5d885a040632b24b471022686cc8d9f9136d4071330a61317d4434c44a6` |
| 26 | `theorem` | [coe_comp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0c595c7f41ff36922dbb38967816db4e4714fce6378ecc36c6c03713327a90da.lean/declarations/coe-comp--1c12facdf9be4ec8dffb31ab.md) | 196 | `result-track:1c12facdf9be4ec8dffb31aba970f257a506784a341ec3ce4d1caf13b27205b1` |
| 27 | `abbrev` | [ofProfinite](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0c595c7f41ff36922dbb38967816db4e4714fce6378ecc36c6c03713327a90da.lean/declarations/ofprofinite--42feaf8e204fc6ac10bac6a1.md) | 204 | `declaration-track:42feaf8e204fc6ac10bac6a17b329369c92941557c2c77c1e238c3cce5c5efe5` |
| 28 | `def` | [pi](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0c595c7f41ff36922dbb38967816db4e4714fce6378ecc36c6c03713327a90da.lean/declarations/pi--d2dabc1b3a1d3607ccdcc6da.md) | 210 | `declaration-track:d2dabc1b3a1d3607ccdcc6daabbd58af956f77c3dc4548a91e9994161f3cf26b` |
| 29 | `def` | [ofFiniteGrp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0c595c7f41ff36922dbb38967816db4e4714fce6378ecc36c6c03713327a90da.lean/declarations/offinitegrp--d6899e507a551ef8955f5118.md) | 220 | `declaration-track:d6899e507a551ef8955f5118551eff67eebf2ce1fa3dea54520f31c64de6a900` |
| 30 | `def` | [ofFiniteGrpHom](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0c595c7f41ff36922dbb38967816db4e4714fce6378ecc36c6c03713327a90da.lean/declarations/offinitegrphom--705cfeca5b35150aa3cd7fca.md) | 229 | `declaration-track:705cfeca5b35150aa3cd7fca2baf95d4e7fb2e179290644efbe8018504f9dc16` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0c595c7f41ff36922dbb38967816db4e4714fce6378ecc36c6c03713327a90da.lean/declarations/instance--05d54bf38c084d973bdb3784.md) | 233 | `declaration-track:05d54bf38c084d973bdb37846fed892880ed66bec81e2317e016da1c15bc5403` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0c595c7f41ff36922dbb38967816db4e4714fce6378ecc36c6c03713327a90da.lean/declarations/instance--71b26f164e3904c23ae0869d.md) | 239 | `declaration-track:71b26f164e3904c23ae0869d62e7de0558b8b445d5c8b3eb24e81d6b2074cae6` |
| 33 | `def` | [ofClosedSubgroup](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0c595c7f41ff36922dbb38967816db4e4714fce6378ecc36c6c03713327a90da.lean/declarations/ofclosedsubgroup--c95c7ee2c991d48611d1bc5b.md) | 245 | `declaration-track:c95c7ee2c991d48611d1bc5b387381fc8889a15300c5e0ff601336e2d95c592e` |
| 34 | `def` | [ofContinuousMulEquiv](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0c595c7f41ff36922dbb38967816db4e4714fce6378ecc36c6c03713327a90da.lean/declarations/ofcontinuousmulequiv--892be422ab3b3024878cc9ba.md) | 252 | `declaration-track:892be422ab3b3024878cc9bad656ab399591eb3441673aadee5b05917408c5d1` |
| 35 | `def` | [ContinuousMulEquiv.toProfiniteGrpIso](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0c595c7f41ff36922dbb38967816db4e4714fce6378ecc36c6c03713327a90da.lean/declarations/continuousmulequiv-toprofinitegrpiso--135041c31a5c6db45914f0dc.md) | 262 | `declaration-track:135041c31a5c6db45914f0dc99014550ddcdfe0d3d518d0125eb5f2526596168` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0c595c7f41ff36922dbb38967816db4e4714fce6378ecc36c6c03713327a90da.lean/declarations/instance--78f1bcebb6da715445b97a2c.md) | 269 | `declaration-track:78f1bcebb6da715445b97a2c2447f0f6d86d266fcd4264a6b9600b07446a7082` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0c595c7f41ff36922dbb38967816db4e4714fce6378ecc36c6c03713327a90da.lean/declarations/instance--578247c8b4b40984217ef8d5.md) | 275 | `declaration-track:578247c8b4b40984217ef8d571f7c9a7ce33a479315e3d1041ea022f5d839eeb` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0c595c7f41ff36922dbb38967816db4e4714fce6378ecc36c6c03713327a90da.lean/declarations/instance--3cefbcddcd6f5caebf5fefb8.md) | 280 | `declaration-track:3cefbcddcd6f5caebf5fefb8847f8c1569c6704a63bc1f2fa959b2f738ad71d6` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0c595c7f41ff36922dbb38967816db4e4714fce6378ecc36c6c03713327a90da.lean/declarations/instance--fab4bcfb7ac0c27734ddc61e.md) | 289 | `declaration-track:fab4bcfb7ac0c27734ddc61e4614e74038ef880e4dddb11487dcb3565138bd49` |
| 40 | `def` | [limitConePtAux](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0c595c7f41ff36922dbb38967816db4e4714fce6378ecc36c6c03713327a90da.lean/declarations/limitconeptaux--b8c5f7d0a91a3625ad05edbf.md) | 314 | `declaration-track:b8c5f7d0a91a3625ad05edbf0cc87495f611131291b46932800668e2ef5f8022` |
| 41 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0c595c7f41ff36922dbb38967816db4e4714fce6378ecc36c6c03713327a90da.lean/declarations/instance--e108dff55d7df2a4c9e7b667.md) | 321 | `declaration-track:e108dff55d7df2a4c9e7b66754b85d06a783c6baed56c082509126621f009174` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0c595c7f41ff36922dbb38967816db4e4714fce6378ecc36c6c03713327a90da.lean/declarations/instance--eb6fd4a7a32458d86b40336b.md) | 325 | `declaration-track:eb6fd4a7a32458d86b40336b12fd49c81a006060b48778ff383a947478c55321` |
| 43 | `abbrev` | [limitCone](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0c595c7f41ff36922dbb38967816db4e4714fce6378ecc36c6c03713327a90da.lean/declarations/limitcone--cf1353884757f8ebdd32498b.md) | 331 | `declaration-track:cf1353884757f8ebdd32498b925add0c4346608baa67b2bc47451a17ddb573c4` |
| 44 | `def` | [limitConeIsLimit](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0c595c7f41ff36922dbb38967816db4e4714fce6378ecc36c6c03713327a90da.lean/declarations/limitconeislimit--cc4ec85fa6f5d705b72037b1.md) | 348 | `declaration-track:cc4ec85fa6f5d705b72037b1189cfef757b9fe661909d51c372168a29811336b` |
| 45 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0c595c7f41ff36922dbb38967816db4e4714fce6378ecc36c6c03713327a90da.lean/declarations/instance--5f54ffc3473db54930db0e02.md) | 363 | `declaration-track:5f54ffc3473db54930db0e02c1551de3db1679187b8ee9cb06a4fddff0a65240` |
| 46 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0c595c7f41ff36922dbb38967816db4e4714fce6378ecc36c6c03713327a90da.lean/declarations/instance--4ea1fdf55ec8b8e6730df133.md) | 369 | `declaration-track:4ea1fdf55ec8b8e6730df133b13caa1d44c93cd4176955dbe14d8674c2d4b4c4` |
| 47 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0c595c7f41ff36922dbb38967816db4e4714fce6378ecc36c6c03713327a90da.lean/declarations/instance--07d8fb7a8622a0f106ab19f8.md) | 375 | `declaration-track:07d8fb7a8622a0f106ab19f8b214d8da6b75a1e83b30dde00c81a8528b642385` |
| 48 | `abbrev` | [limit](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0c595c7f41ff36922dbb38967816db4e4714fce6378ecc36c6c03713327a90da.lean/declarations/limit--1804e17f973b090c71171473.md) | 380 | `declaration-track:1804e17f973b090c7117147397544baf2bd6a67391dc1f188387a16c0c99cab1` |
| 49 | `lemma` | [limit_ext](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0c595c7f41ff36922dbb38967816db4e4714fce6378ecc36c6c03713327a90da.lean/declarations/limit-ext--2b914bb6b3b520383ff8af67.md) | 383 | `result-track:2b914bb6b3b520383ff8af67fbf0f267788aae38e0ec3936829e0283e3b7c551` |
| 50 | `lemma` | [limit_one_val](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0c595c7f41ff36922dbb38967816db4e4714fce6378ecc36c6c03713327a90da.lean/declarations/limit-one-val--933482ad82e798901e06a981.md) | 387 | `result-track:933482ad82e798901e06a981e9f29016effb52b021cd35cfbc25976218e6d686` |
| 51 | `lemma` | [limit_mul_val](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0c595c7f41ff36922dbb38967816db4e4714fce6378ecc36c6c03713327a90da.lean/declarations/limit-mul-val--aad305bb195e9be1505bd71e.md) | 391 | `result-track:aad305bb195e9be1505bd71ef936e4968f8611637cb7f4c2d7ff37cd13b4ad8c` |
| 52 | `def` | [ProfiniteGrp.delabOf](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0c595c7f41ff36922dbb38967816db4e4714fce6378ecc36c6c03713327a90da.lean/declarations/profinitegrp-delabof--3f723124ef9444ee8ab50860.md) | 404 | `declaration-track:3f723124ef9444ee8ab5086059d0b8bcae1f441584e5be2c7888765ef28a9770` |
| 53 | `def` | [ProfiniteAddGrp.delabOf](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0c595c7f41ff36922dbb38967816db4e4714fce6378ecc36c6c03713327a90da.lean/declarations/profiniteaddgrp-delabof--1a5d535bcb910e99fdafda88.md) | 414 | `declaration-track:1a5d535bcb910e99fdafda885eb83b6285ee4b4bf496a85ec46396135108d1e4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
