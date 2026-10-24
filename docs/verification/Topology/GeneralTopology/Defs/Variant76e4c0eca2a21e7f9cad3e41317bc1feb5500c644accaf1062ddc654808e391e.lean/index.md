# Verification target: GRWTSK.Topology.GeneralTopology.Defs.Variant76e4c0eca2a21e7f9cad3e41317bc1feb5500c644accaf1062ddc654808e391e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "41088304a01c153a6b2f5d068d2c01d06921887b",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Defs/Variant76e4c0eca2a21e7f9cad3e41317bc1feb5500c644accaf1062ddc654808e391e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant76e4c0eca2a21e7f9cad3e41317bc1feb5500c644accaf1062ddc654808e391e.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant76e4c0eca2a21e7f9cad3e41317bc1feb5500c644accaf1062ddc654808e391e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `41088304a01c153a6b2f5d068d2c01d06921887b`.

Source path: `GRWTSK/Topology/GeneralTopology/Defs/Variant76e4c0eca2a21e7f9cad3e41317bc1feb5500c644accaf1062ddc654808e391e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Defs/Variant76e4c0eca2a21e7f9cad3e41317bc1feb5500c644accaf1062ddc654808e391e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.UniformSpace.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Group.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsUniformGroup](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant76e4c0eca2a21e7f9cad3e41317bc1feb5500c644accaf1062ddc654808e391e.lean/declarations/isuniformgroup--7de0bc272530dbc3e10610f9.md) | 41 | `declaration-track:7de0bc272530dbc3e10610f9367268733f50f63776a7ce4aeadca33dd5453285` |
| 2 | `class` | [IsUniformAddGroup](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant76e4c0eca2a21e7f9cad3e41317bc1feb5500c644accaf1062ddc654808e391e.lean/declarations/isuniformaddgroup--3af32d44806740d6fa2f6fba.md) | 48 | `declaration-track:3af32d44806740d6fa2f6fba1d5da239e76b9086e6427c5c7d03620d41ce5a82` |
| 3 | `theorem` | [IsUniformGroup.mk'](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant76e4c0eca2a21e7f9cad3e41317bc1feb5500c644accaf1062ddc654808e391e.lean/declarations/isuniformgroup-mk--23dc7b9c7aee13c506c66db8.md) | 56 | `result-track:23dc7b9c7aee13c506c66db8417746cbb35d7f450de9f99d651c2ddfd4935881` |
| 4 | `theorem` | [uniformContinuous_div](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant76e4c0eca2a21e7f9cad3e41317bc1feb5500c644accaf1062ddc654808e391e.lean/declarations/uniformcontinuous-div--a1f75ff016bea02ee9ffd1a9.md) | 65 | `result-track:a1f75ff016bea02ee9ffd1a97f6275344d7d11557c3667db22d18e7c61d785da` |
| 5 | `theorem` | [UniformContinuous.div](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant76e4c0eca2a21e7f9cad3e41317bc1feb5500c644accaf1062ddc654808e391e.lean/declarations/uniformcontinuous-div--03ea17bb41555a9e86195784.md) | 69 | `result-track:03ea17bb41555a9e86195784f95b6c0b35d6c6374f02357645609a1cae5ce99e` |
| 6 | `theorem` | [UniformContinuous.inv](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant76e4c0eca2a21e7f9cad3e41317bc1feb5500c644accaf1062ddc654808e391e.lean/declarations/uniformcontinuous-inv--429d5d509471581ff58a8e86.md) | 74 | `result-track:429d5d509471581ff58a8e86973640fde5cd00d236c9a6f3963be40b7d10b6c3` |
| 7 | `theorem` | [uniformContinuous_inv](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant76e4c0eca2a21e7f9cad3e41317bc1feb5500c644accaf1062ddc654808e391e.lean/declarations/uniformcontinuous-inv--68edcc141e2ceaa99e958d3d.md) | 80 | `result-track:68edcc141e2ceaa99e958d3dedfd190645452af917733cc2f7cf747a51ea573a` |
| 8 | `theorem` | [UniformContinuous.mul](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant76e4c0eca2a21e7f9cad3e41317bc1feb5500c644accaf1062ddc654808e391e.lean/declarations/uniformcontinuous-mul--4de41d42cae086da6e802c1f.md) | 84 | `result-track:4de41d42cae086da6e802c1ff539217d9b32266342df4e2ff018e2d53f72159f` |
| 9 | `theorem` | [uniformContinuous_mul](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant76e4c0eca2a21e7f9cad3e41317bc1feb5500c644accaf1062ddc654808e391e.lean/declarations/uniformcontinuous-mul--53cf751501e9852141f18c98.md) | 90 | `result-track:53cf751501e9852141f18c98e9616c70fb22b8799da67d1a2154a91a19634877` |
| 10 | `theorem` | [UniformContinuous.mul_const](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant76e4c0eca2a21e7f9cad3e41317bc1feb5500c644accaf1062ddc654808e391e.lean/declarations/uniformcontinuous-mul-const--b1de7b13cb46f6b2f3eec2ee.md) | 94 | `result-track:b1de7b13cb46f6b2f3eec2ee92befd613beeb9181dc05dcf0784a09703d48c16` |
| 11 | `theorem` | [UniformContinuous.const_mul](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant76e4c0eca2a21e7f9cad3e41317bc1feb5500c644accaf1062ddc654808e391e.lean/declarations/uniformcontinuous-const-mul--5facc134a0d4e033c8e7ef17.md) | 99 | `result-track:5facc134a0d4e033c8e7ef1799c9b2c10087ad33d5023a5bf02b8b1c17e44c46` |
| 12 | `theorem` | [uniformContinuous_mul_left](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant76e4c0eca2a21e7f9cad3e41317bc1feb5500c644accaf1062ddc654808e391e.lean/declarations/uniformcontinuous-mul-left--ca278855ab1dfda5b79f3fc8.md) | 104 | `result-track:ca278855ab1dfda5b79f3fc88d5273306c67766c329385e86d6e9b452330302d` |
| 13 | `theorem` | [uniformContinuous_mul_right](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant76e4c0eca2a21e7f9cad3e41317bc1feb5500c644accaf1062ddc654808e391e.lean/declarations/uniformcontinuous-mul-right--5d664963e3bd4c949e4f279f.md) | 108 | `result-track:5d664963e3bd4c949e4f279f4293602214416bedf9b6348c969c3c86d38bdbf3` |
| 14 | `theorem` | [UniformContinuous.div_const](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant76e4c0eca2a21e7f9cad3e41317bc1feb5500c644accaf1062ddc654808e391e.lean/declarations/uniformcontinuous-div-const--9922f56a66e4776e5d61fab3.md) | 112 | `result-track:9922f56a66e4776e5d61fab35858d288494786eb9540144724a44cc5a293aa3a` |
| 15 | `theorem` | [uniformContinuous_div_const](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant76e4c0eca2a21e7f9cad3e41317bc1feb5500c644accaf1062ddc654808e391e.lean/declarations/uniformcontinuous-div-const--aecb517fc8b74302cc9d2bdc.md) | 117 | `result-track:aecb517fc8b74302cc9d2bdc88baef9e7d97a79ce1242091f7a25dc592f071dc` |
| 16 | `theorem` | [UniformContinuous.pow_const](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant76e4c0eca2a21e7f9cad3e41317bc1feb5500c644accaf1062ddc654808e391e.lean/declarations/uniformcontinuous-pow-const--863f445fbc20c09b94f56e9a.md) | 121 | `result-track:863f445fbc20c09b94f56e9abd314f1b4c02d64dfae4b9b8e81ffda5c4cde9bd` |
| 17 | `theorem` | [uniformContinuous_pow_const](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant76e4c0eca2a21e7f9cad3e41317bc1feb5500c644accaf1062ddc654808e391e.lean/declarations/uniformcontinuous-pow-const--abc81a54267e9102f3248059.md) | 131 | `result-track:abc81a54267e9102f3248059cbc1f5123127f5a89678bddf78283a2c5da68b44` |
| 18 | `theorem` | [UniformContinuous.zpow_const](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant76e4c0eca2a21e7f9cad3e41317bc1feb5500c644accaf1062ddc654808e391e.lean/declarations/uniformcontinuous-zpow-const--9077553c410ea94e26990e42.md) | 135 | `result-track:9077553c410ea94e26990e42a3d43d257286bee58f060c816516159ec1d67342` |
| 19 | `theorem` | [uniformContinuous_zpow_const](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant76e4c0eca2a21e7f9cad3e41317bc1feb5500c644accaf1062ddc654808e391e.lean/declarations/uniformcontinuous-zpow-const--d5096a0f0076d2c4a0fce198.md) | 145 | `result-track:d5096a0f0076d2c4a0fce198981c484280486c842f3d169df36bb1637e4ac2a7` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant76e4c0eca2a21e7f9cad3e41317bc1feb5500c644accaf1062ddc654808e391e.lean/declarations/instance--24da240fb7119fc2a3df25c2.md) | 149 | `declaration-track:24da240fb7119fc2a3df25c224c8b9ef9ff51a3bb960cc1f4b2be56d81379fea` |
| 21 | `instance` | [Prod.instIsUniformGroup](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant76e4c0eca2a21e7f9cad3e41317bc1feb5500c644accaf1062ddc654808e391e.lean/declarations/prod-instisuniformgroup--699970627d6340234fdff88a.md) | 160 | `declaration-track:699970627d6340234fdff88aa1016915b1ab28c53e00777c2293c20d4852d5d5` |
| 22 | `theorem` | [uniformity_translate_mul](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant76e4c0eca2a21e7f9cad3e41317bc1feb5500c644accaf1062ddc654808e391e.lean/declarations/uniformity-translate-mul--10f23862f4b5a17f0eb7201f.md) | 173 | `result-track:10f23862f4b5a17f0eb7201f0321a325e1e574d991cf51d4712d81da591f0e1d` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant76e4c0eca2a21e7f9cad3e41317bc1feb5500c644accaf1062ddc654808e391e.lean/declarations/instance--b5087c8db6f8f6ee999b67da.md) | 186 | `declaration-track:b5087c8db6f8f6ee999b67da4b64f631421ee88fc2c40d733c441f792ce96996` |
| 24 | `theorem` | [isUniformGroup_sInf](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant76e4c0eca2a21e7f9cad3e41317bc1feb5500c644accaf1062ddc654808e391e.lean/declarations/isuniformgroup-sinf--ea9a848574e54af3d43adde4.md) | 198 | `result-track:ea9a848574e54af3d43adde4df611c50fb49d33e432182cce299f2ee69467bd5` |
| 25 | `theorem` | [isUniformGroup_iInf](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant76e4c0eca2a21e7f9cad3e41317bc1feb5500c644accaf1062ddc654808e391e.lean/declarations/isuniformgroup-iinf--9112461ceb50b5cc5ad95045.md) | 209 | `result-track:9112461ceb50b5cc5ad950457c139cc5ea47a704010191ecd9f23a4df6ae6244` |
| 26 | `theorem` | [isUniformGroup_inf](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant76e4c0eca2a21e7f9cad3e41317bc1feb5500c644accaf1062ddc654808e391e.lean/declarations/isuniformgroup-inf--e2e94a82f28e540b79d6844c.md) | 219 | `result-track:e2e94a82f28e540b79d6844c2a3f55138eea05dbf4fb0518e100867d2d29d47e` |
| 27 | `theorem` | [uniformity_eq_comap_nhds_one](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant76e4c0eca2a21e7f9cad3e41317bc1feb5500c644accaf1062ddc654808e391e.lean/declarations/uniformity-eq-comap-nhds-one--674278b6c3bc4434209b0d76.md) | 236 | `result-track:674278b6c3bc4434209b0d763514cc3a37f6977ac2a4b342b71529b72bc10fea` |
| 28 | `theorem` | [uniformity_eq_comap_nhds_one_swapped](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant76e4c0eca2a21e7f9cad3e41317bc1feb5500c644accaf1062ddc654808e391e.lean/declarations/uniformity-eq-comap-nhds-one-swapped--a1b48b56b3786387697d6e9b.md) | 251 | `result-track:a1b48b56b3786387697d6e9b39d18fcc13069b79a1069bb910768bc6e0d3ee17` |
| 29 | `theorem` | [IsUniformGroup.ext](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant76e4c0eca2a21e7f9cad3e41317bc1feb5500c644accaf1062ddc654808e391e.lean/declarations/isuniformgroup-ext--d34cf67ec558aa39eb7fcd0a.md) | 257 | `result-track:d34cf67ec558aa39eb7fcd0aed001a0c478843e55909adb541357abd22573b87` |
| 30 | `theorem` | [IsUniformGroup.ext_iff](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant76e4c0eca2a21e7f9cad3e41317bc1feb5500c644accaf1062ddc654808e391e.lean/declarations/isuniformgroup-ext-iff--831256d9a67f957bcdc0e44f.md) | 268 | `result-track:831256d9a67f957bcdc0e44f1d1d82c7daec861f2217b6480d042bca53f354a0` |
| 31 | `theorem` | [IsUniformGroup.uniformity_countably_generated](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant76e4c0eca2a21e7f9cad3e41317bc1feb5500c644accaf1062ddc654808e391e.lean/declarations/isuniformgroup-uniformity-countably-generated--d739715a8fabd15c48020ed1.md) | 281 | `result-track:d739715a8fabd15c48020ed16837dfdc42171ea179751631cc919990a2b3689a` |
| 32 | `theorem` | [uniformity_eq_comap_inv_mul_nhds_one](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant76e4c0eca2a21e7f9cad3e41317bc1feb5500c644accaf1062ddc654808e391e.lean/declarations/uniformity-eq-comap-inv-mul-nhds-one--6e707886160b01a7d16e6e6d.md) | 295 | `result-track:6e707886160b01a7d16e6e6de0a77abe8d108c5adb52254e42a441a5d45e5089` |
| 33 | `theorem` | [uniformity_eq_comap_inv_mul_nhds_one_swapped](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant76e4c0eca2a21e7f9cad3e41317bc1feb5500c644accaf1062ddc654808e391e.lean/declarations/uniformity-eq-comap-inv-mul-nhds-one-swapped--c6359cee31f4101b0a5adb14.md) | 302 | `result-track:c6359cee31f4101b0a5adb14d846261c00b95b27f233e6432fb9af61a9475b4d` |
| 34 | `theorem` | [Filter.HasBasis.uniformity_of_nhds_one](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant76e4c0eca2a21e7f9cad3e41317bc1feb5500c644accaf1062ddc654808e391e.lean/declarations/filter-hasbasis-uniformity-of-nhds-one--3d5586e98ba11b26d0249ba0.md) | 310 | `result-track:3d5586e98ba11b26d0249ba052bf225e0c71cfdabac9bd57c4fc7d6527e4493b` |
| 35 | `theorem` | [Filter.HasBasis.uniformity_of_nhds_one_inv_mul](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant76e4c0eca2a21e7f9cad3e41317bc1feb5500c644accaf1062ddc654808e391e.lean/declarations/filter-hasbasis-uniformity-of-nhds-one-inv-mul--a3b08ce3fb4ed00e3c41f40f.md) | 317 | `result-track:a3b08ce3fb4ed00e3c41f40f827173738fa737f4c1245e506e054948aa069a6a` |
| 36 | `theorem` | [Filter.HasBasis.uniformity_of_nhds_one_swapped](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant76e4c0eca2a21e7f9cad3e41317bc1feb5500c644accaf1062ddc654808e391e.lean/declarations/filter-hasbasis-uniformity-of-nhds-one-swapped--17aa79833d668eda15e06bf1.md) | 324 | `result-track:17aa79833d668eda15e06bf1386e00e418b0ee12c40e9dc6f38928bd5ac98251` |
| 37 | `theorem` | [Filter.HasBasis.uniformity_of_nhds_one_inv_mul_swapped](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant76e4c0eca2a21e7f9cad3e41317bc1feb5500c644accaf1062ddc654808e391e.lean/declarations/filter-hasbasis-uniformity-of-nhds-one-inv-mul-swapped--7fa991035516ecf55a3484fd.md) | 331 | `result-track:7fa991035516ecf55a3484fd6d170214132e0f414aa20658381ab0a8def52eef` |
| 38 | `theorem` | [uniformContinuous_of_tendsto_one](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant76e4c0eca2a21e7f9cad3e41317bc1feb5500c644accaf1062ddc654808e391e.lean/declarations/uniformcontinuous-of-tendsto-one--4eaf3a4842e5f1465b173bc3.md) | 338 | `result-track:4eaf3a4842e5f1465b173bc305ab463fff3d403a238db3d2e0e2849889dba75f` |
| 39 | `theorem` | [uniformContinuous_of_continuousAt_one](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant76e4c0eca2a21e7f9cad3e41317bc1feb5500c644accaf1062ddc654808e391e.lean/declarations/uniformcontinuous-of-continuousat-one--cc0263b89afe5637fccae981.md) | 354 | `result-track:cc0263b89afe5637fccae9814f81b01f971f868fe4b7cc2e52a3771ab14297cc` |
| 40 | `theorem` | [MonoidHom.uniformContinuous_of_continuousAt_one](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant76e4c0eca2a21e7f9cad3e41317bc1feb5500c644accaf1062ddc654808e391e.lean/declarations/monoidhom-uniformcontinuous-of-continuousat-one--35dbf58eafd8e2ff858987a3.md) | 361 | `result-track:35dbf58eafd8e2ff858987a3d464e1d64fcf3180550187abdf564936129884a6` |
| 41 | `theorem` | [IsUniformGroup.uniformContinuous_iff_isOpen_ker](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant76e4c0eca2a21e7f9cad3e41317bc1feb5500c644accaf1062ddc654808e391e.lean/declarations/isuniformgroup-uniformcontinuous-iff-isopen-ker--cc9c8ee774a7f1c60ad2ec9a.md) | 369 | `result-track:cc9c8ee774a7f1c60ad2ec9aa6c9a7c3443ec58d3a3b14c1c87191ebe8e5787f` |
| 42 | `theorem` | [uniformContinuous_monoidHom_of_continuous](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant76e4c0eca2a21e7f9cad3e41317bc1feb5500c644accaf1062ddc654808e391e.lean/declarations/uniformcontinuous-monoidhom-of-continuous--90d865a3c95b37bc7e670c0b.md) | 392 | `result-track:90d865a3c95b37bc7e670c0bb489baf49a696ecd084336f742d86843eb1dd116` |
| 43 | `def` | [IsTopologicalGroup.toUniformSpace](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant76e4c0eca2a21e7f9cad3e41317bc1feb5500c644accaf1062ddc654808e391e.lean/declarations/istopologicalgroup-touniformspace--cb36255cb350fbebf6166cf4.md) | 420 | `declaration-track:cb36255cb350fbebf6166cf4302250fb75c714cfbfa199eb26e8ba13f9e0e539` |
| 44 | `theorem` | [uniformity_eq_comap_nhds_one'](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant76e4c0eca2a21e7f9cad3e41317bc1feb5500c644accaf1062ddc654808e391e.lean/declarations/uniformity-eq-comap-nhds-one--b5a78edaf2ada20e546a7ceb.md) | 436 | `result-track:b5a78edaf2ada20e546a7cebcd22fd1834840b6c760b7c23c8cccb2eee480cd4` |
| 45 | `theorem` | [isUniformGroup_of_commGroup](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant76e4c0eca2a21e7f9cad3e41317bc1feb5500c644accaf1062ddc654808e391e.lean/declarations/isuniformgroup-of-commgroup--d1ffa60425da33a859ad6862.md) | 456 | `result-track:d1ffa60425da33a859ad68621094e891d9a163c2cbe247c98880d09b3233f95c` |
| 46 | `theorem` | [IsUniformGroup.toUniformSpace_eq](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant76e4c0eca2a21e7f9cad3e41317bc1feb5500c644accaf1062ddc654808e391e.lean/declarations/isuniformgroup-touniformspace-eq--e2dcef179812b88fca35bb6f.md) | 477 | `result-track:e2dcef179812b88fca35bb6f2fabc7c1fe36d614c02d9bf4b528f1f0f1611810` |
| 47 | `theorem` | [tendsto_div_comap_self](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant76e4c0eca2a21e7f9cad3e41317bc1feb5500c644accaf1062ddc654808e391e.lean/declarations/tendsto-div-comap-self--9f39375f6d5b3f2a49c96f09.md) | 496 | `result-track:9f39375f6d5b3f2a49c96f0918cbd03a5862bbda10199e896b297f8bd5054faf` |
| 48 | `theorem` | [extend_Z_bilin_aux](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant76e4c0eca2a21e7f9cad3e41317bc1feb5500c644accaf1062ddc654808e391e.lean/declarations/extend-z-bilin-aux--63113e83cd63f6ad3e18a30b.md) | 529 | `result-track:63113e83cd63f6ad3e18a30b45d38f95c84d7def292a53cbe5beba129addaaf1` |
| 49 | `theorem` | [extend_Z_bilin_key](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant76e4c0eca2a21e7f9cad3e41317bc1feb5500c644accaf1062ddc654808e391e.lean/declarations/extend-z-bilin-key--3b815833a94bafff9c9f4e27.md) | 549 | `result-track:3b815833a94bafff9c9f4e277c2ee830413a350d3c09da684ac447ae074d5d33` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
