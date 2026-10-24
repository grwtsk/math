# Verification target: GRWTSK.Topology.GeneralTopology.IsLocalHomeomorph.Variantec847becd8f2879e4da7a9f4cda4bb808937fc9db4f3deac393fd9312663ab2c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "28d457bb1e41b656145c5e31aeb3f5c793a6f792",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/IsLocalHomeomorph/Variantec847becd8f2879e4da7a9f4cda4bb808937fc9db4f3deac393fd9312663ab2c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/IsLocalHomeomorph/Variantec847becd8f2879e4da7a9f4cda4bb808937fc9db4f3deac393fd9312663ab2c.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/IsLocalHomeomorph/Variantec847becd8f2879e4da7a9f4cda4bb808937fc9db4f3deac393fd9312663ab2c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `28d457bb1e41b656145c5e31aeb3f5c793a6f792`.

Source path: `GRWTSK/Topology/GeneralTopology/IsLocalHomeomorph/Variantec847becd8f2879e4da7a9f4cda4bb808937fc9db4f3deac393fd9312663ab2c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/IsLocalHomeomorph/Variantec847becd8f2879e4da7a9f4cda4bb808937fc9db4f3deac393fd9312663ab2c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.PartialHomeomorph` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.SeparatedMap` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsLocalHomeomorphOn](../../../../../mathematics/Topology/GeneralTopology/IsLocalHomeomorph/Variantec847becd8f2879e4da7a9f4cda4bb808937fc9db4f3deac393fd9312663ab2c.lean/declarations/islocalhomeomorphon--61c16c8a32e820b118a887b2.md) | 39 | `declaration-track:61c16c8a32e820b118a887b2b8e52542fb23c055f69d9287fc02c4c669c6bd06` |
| 2 | `theorem` | [isLocalHomeomorphOn_iff_isOpenEmbedding_restrict](../../../../../mathematics/Topology/GeneralTopology/IsLocalHomeomorph/Variantec847becd8f2879e4da7a9f4cda4bb808937fc9db4f3deac393fd9312663ab2c.lean/declarations/islocalhomeomorphon-iff-isopenembedding-restrict--b6b095b464b5bbeea3d2e15d.md) | 42 | `result-track:b6b095b464b5bbeea3d2e15d9721d3d117dba1b979bd72ca08c23e011a14554b` |
| 3 | `theorem` | [discreteTopology_of_image](../../../../../mathematics/Topology/GeneralTopology/IsLocalHomeomorph/Variantec847becd8f2879e4da7a9f4cda4bb808937fc9db4f3deac393fd9312663ab2c.lean/declarations/discretetopology-of-image--da18748a18811ac88fa5dc14.md) | 62 | `result-track:da18748a18811ac88fa5dc143d8837d1df791d95cebb5ee6ebba2bceb7c05dec` |
| 4 | `theorem` | [discreteTopology_image_iff](../../../../../mathematics/Topology/GeneralTopology/IsLocalHomeomorph/Variantec847becd8f2879e4da7a9f4cda4bb808937fc9db4f3deac393fd9312663ab2c.lean/declarations/discretetopology-image-iff--13f560a7c3975d15d03cba4d.md) | 72 | `result-track:13f560a7c3975d15d03cba4d76a6f8277f553af989373d358617b10997d192ab` |
| 5 | `theorem` | [mk](../../../../../mathematics/Topology/GeneralTopology/IsLocalHomeomorph/Variantec847becd8f2879e4da7a9f4cda4bb808937fc9db4f3deac393fd9312663ab2c.lean/declarations/mk--7aa5311556671c611ba11afc.md) | 86 | `result-track:7aa5311556671c611ba11afc8970a0558cd7af2525a292ae6754d34dfda23ba3` |
| 6 | `lemma` | [PartialHomeomorph.isLocalHomeomorphOn](../../../../../mathematics/Topology/GeneralTopology/IsLocalHomeomorph/Variantec847becd8f2879e4da7a9f4cda4bb808937fc9db4f3deac393fd9312663ab2c.lean/declarations/partialhomeomorph-islocalhomeomorphon--59452bffad1dc52defdf9b17.md) | 100 | `result-track:59452bffad1dc52defdf9b175b2f3d82c1d18206c7ec19c41c41863949af30ef` |
| 7 | `theorem` | [mono](../../../../../mathematics/Topology/GeneralTopology/IsLocalHomeomorph/Variantec847becd8f2879e4da7a9f4cda4bb808937fc9db4f3deac393fd9312663ab2c.lean/declarations/mono--b8947c5c91535d2825428e32.md) | 106 | `result-track:b8947c5c91535d2825428e32e944b58bacbeb72f1766ee12614494c43a3b9d22` |
| 8 | `theorem` | [of_comp_left](../../../../../mathematics/Topology/GeneralTopology/IsLocalHomeomorph/Variantec847becd8f2879e4da7a9f4cda4bb808937fc9db4f3deac393fd9312663ab2c.lean/declarations/of-comp-left--69045f18c924f6a29dca9a2f.md) | 109 | `result-track:69045f18c924f6a29dca9a2fae06b6c0928da6fface9820d3a32f2bd6ce621ae` |
| 9 | `theorem` | [of_comp_right](../../../../../mathematics/Topology/GeneralTopology/IsLocalHomeomorph/Variantec847becd8f2879e4da7a9f4cda4bb808937fc9db4f3deac393fd9312663ab2c.lean/declarations/of-comp-right--cf4d449f84ef909462de4cc0.md) | 120 | `result-track:cf4d449f84ef909462de4cc0ac09c100a5e85aed1e161c6e71a1f459ea6d757a` |
| 10 | `theorem` | [map_nhds_eq](../../../../../mathematics/Topology/GeneralTopology/IsLocalHomeomorph/Variantec847becd8f2879e4da7a9f4cda4bb808937fc9db4f3deac393fd9312663ab2c.lean/declarations/map-nhds-eq--e57b6e194e445e69877fe1b4.md) | 130 | `result-track:e57b6e194e445e69877fe1b4f89bdd01a0988eb28d6a2b52e1cdce1d172f739a` |
| 11 | `theorem` | [continuousAt](../../../../../mathematics/Topology/GeneralTopology/IsLocalHomeomorph/Variantec847becd8f2879e4da7a9f4cda4bb808937fc9db4f3deac393fd9312663ab2c.lean/declarations/continuousat--2569b23615064694feb594f2.md) | 134 | `result-track:2569b23615064694feb594f2c76b4b4ce8ce4ce96061f64bb5d18636b34d2e98` |
| 12 | `theorem` | [continuousOn](../../../../../mathematics/Topology/GeneralTopology/IsLocalHomeomorph/Variantec847becd8f2879e4da7a9f4cda4bb808937fc9db4f3deac393fd9312663ab2c.lean/declarations/continuouson--d453f0d6eb0ed2f1e14936fb.md) | 138 | `result-track:d453f0d6eb0ed2f1e14936fb86b7c7775ecdc9795b549d67ee256c9844f1081b` |
| 13 | `theorem` | [comp](../../../../../mathematics/Topology/GeneralTopology/IsLocalHomeomorph/Variantec847becd8f2879e4da7a9f4cda4bb808937fc9db4f3deac393fd9312663ab2c.lean/declarations/comp--96781db0c92f3c054b13524b.md) | 141 | `result-track:96781db0c92f3c054b13524b4fe08929ab88505d1851a47a8f1db2adde2b47f9` |
| 14 | `def` | [IsLocalHomeomorph](../../../../../mathematics/Topology/GeneralTopology/IsLocalHomeomorph/Variantec847becd8f2879e4da7a9f4cda4bb808937fc9db4f3deac393fd9312663ab2c.lean/declarations/islocalhomeomorph--b4018434c21fcb783c6afa69.md) | 152 | `declaration-track:b4018434c21fcb783c6afa697e5e57d937913e72b2a41c37875b00d302911b85` |
| 15 | `theorem` | [Homeomorph.isLocalHomeomorph](../../../../../mathematics/Topology/GeneralTopology/IsLocalHomeomorph/Variantec847becd8f2879e4da7a9f4cda4bb808937fc9db4f3deac393fd9312663ab2c.lean/declarations/homeomorph-islocalhomeomorph--0547f8196c38e5879dcd4705.md) | 155 | `result-track:0547f8196c38e5879dcd47052489fa7f1529d407d78de622dcc127c72cd25d64` |
| 16 | `theorem` | [isLocalHomeomorph_iff_isLocalHomeomorphOn_univ](../../../../../mathematics/Topology/GeneralTopology/IsLocalHomeomorph/Variantec847becd8f2879e4da7a9f4cda4bb808937fc9db4f3deac393fd9312663ab2c.lean/declarations/islocalhomeomorph-iff-islocalhomeomorphon-univ--b6239e6ba218d8faf9f48107.md) | 160 | `result-track:b6239e6ba218d8faf9f48107b0547c03d5510454ec592fdeb660aa56b7b69bad` |
| 17 | `theorem` | [IsLocalHomeomorph.isLocalHomeomorphOn](../../../../../mathematics/Topology/GeneralTopology/IsLocalHomeomorph/Variantec847becd8f2879e4da7a9f4cda4bb808937fc9db4f3deac393fd9312663ab2c.lean/declarations/islocalhomeomorph-islocalhomeomorphon--610021c04a7411c41a189193.md) | 164 | `result-track:610021c04a7411c41a18919336643d8c82d579377395287b1b784f6729d69041` |
| 18 | `theorem` | [isLocalHomeomorph_iff_isOpenEmbedding_restrict](../../../../../mathematics/Topology/GeneralTopology/IsLocalHomeomorph/Variantec847becd8f2879e4da7a9f4cda4bb808937fc9db4f3deac393fd9312663ab2c.lean/declarations/islocalhomeomorph-iff-isopenembedding-restrict--50052aacee9a6eaefaa45ce0.md) | 167 | `result-track:50052aacee9a6eaefaa45ce069d7b92c98fc272d1c35b4e7f0171ef524fd63ed` |
| 19 | `theorem` | [Topology.IsOpenEmbedding.isLocalHomeomorph](../../../../../mathematics/Topology/GeneralTopology/IsLocalHomeomorph/Variantec847becd8f2879e4da7a9f4cda4bb808937fc9db4f3deac393fd9312663ab2c.lean/declarations/topology-isopenembedding-islocalhomeomorph--4c63345d6780da8b12254652.md) | 172 | `result-track:4c63345d6780da8b12254652a774ac945fe45a98b3aca65c81e404ebddaf433f` |
| 20 | `theorem` | [comap_discreteTopology](../../../../../mathematics/Topology/GeneralTopology/IsLocalHomeomorph/Variantec847becd8f2879e4da7a9f4cda4bb808937fc9db4f3deac393fd9312663ab2c.lean/declarations/comap-discretetopology--c346bbd25b32eab22963fedb.md) | 179 | `result-track:c346bbd25b32eab22963fedb95921dd9c15013d2c41a93e138c196926f403341` |
| 21 | `theorem` | [discreteTopology_range_iff](../../../../../mathematics/Topology/GeneralTopology/IsLocalHomeomorph/Variantec847becd8f2879e4da7a9f4cda4bb808937fc9db4f3deac393fd9312663ab2c.lean/declarations/discretetopology-range-iff--876f6cd72b7f212af717929a.md) | 183 | `result-track:876f6cd72b7f212af717929a7fee72f5c18bed2df1c3088a1add8208cd651e66` |
| 22 | `theorem` | [discreteTopology_iff_of_surjective](../../../../../mathematics/Topology/GeneralTopology/IsLocalHomeomorph/Variantec847becd8f2879e4da7a9f4cda4bb808937fc9db4f3deac393fd9312663ab2c.lean/declarations/discretetopology-iff-of-surjective--4a2912281ddd5f103963acfd.md) | 190 | `result-track:4a2912281ddd5f103963acfd7f5a3c0b53457f80726a2ec38a135a37779dcf98` |
| 23 | `theorem` | [mk](../../../../../mathematics/Topology/GeneralTopology/IsLocalHomeomorph/Variantec847becd8f2879e4da7a9f4cda4bb808937fc9db4f3deac393fd9312663ab2c.lean/declarations/mk--bab63e9df3388653992d5222.md) | 199 | `result-track:bab63e9df3388653992d52227b69fb4664a1ca276dc708677b23f22466ba12ba` |
| 24 | `lemma` | [Homeomorph.isLocalHomeomorph](../../../../../mathematics/Topology/GeneralTopology/IsLocalHomeomorph/Variantec847becd8f2879e4da7a9f4cda4bb808937fc9db4f3deac393fd9312663ab2c.lean/declarations/homeomorph-islocalhomeomorph--d77b782a525547792213725d.md) | 205 | `result-track:d77b782a525547792213725d86619f01c72ec4645921ea3b5dba3dd73efac78e` |
| 25 | `lemma` | [isLocallyInjective](../../../../../mathematics/Topology/GeneralTopology/IsLocalHomeomorph/Variantec847becd8f2879e4da7a9f4cda4bb808937fc9db4f3deac393fd9312663ab2c.lean/declarations/islocallyinjective--1de706b1481cfcd4facf2432.md) | 210 | `result-track:1de706b1481cfcd4facf2432eb42e0118625c056551dca49d9a3c72e91750c64` |
| 26 | `theorem` | [of_comp](../../../../../mathematics/Topology/GeneralTopology/IsLocalHomeomorph/Variantec847becd8f2879e4da7a9f4cda4bb808937fc9db4f3deac393fd9312663ab2c.lean/declarations/of-comp--e467822bb7f8ad1565a88bbc.md) | 213 | `result-track:e467822bb7f8ad1565a88bbce0bbf5406ee7ff87bed1b4886bbe8ef6be5523bf` |
| 27 | `theorem` | [map_nhds_eq](../../../../../mathematics/Topology/GeneralTopology/IsLocalHomeomorph/Variantec847becd8f2879e4da7a9f4cda4bb808937fc9db4f3deac393fd9312663ab2c.lean/declarations/map-nhds-eq--518cfd31b8ecd4ea97818825.md) | 218 | `result-track:518cfd31b8ecd4ea97818825978fe34875bf4dffacc916faf8a85c37f3c474d4` |
| 28 | `theorem` | [continuous](../../../../../mathematics/Topology/GeneralTopology/IsLocalHomeomorph/Variantec847becd8f2879e4da7a9f4cda4bb808937fc9db4f3deac393fd9312663ab2c.lean/declarations/continuous--87f6496c1057c86d28f5e17b.md) | 222 | `result-track:87f6496c1057c86d28f5e17bf38cd44aca63500716d4263101830f853c013aa4` |
| 29 | `theorem` | [isOpenMap](../../../../../mathematics/Topology/GeneralTopology/IsLocalHomeomorph/Variantec847becd8f2879e4da7a9f4cda4bb808937fc9db4f3deac393fd9312663ab2c.lean/declarations/isopenmap--d69708ca8c08325edcff3d82.md) | 226 | `result-track:d69708ca8c08325edcff3d821637f064c0e0c142cdbe570bb105aa737c059341` |
| 30 | `theorem` | [comp](../../../../../mathematics/Topology/GeneralTopology/IsLocalHomeomorph/Variantec847becd8f2879e4da7a9f4cda4bb808937fc9db4f3deac393fd9312663ab2c.lean/declarations/comp--245265cb2c70aac6627e4836.md) | 230 | `result-track:245265cb2c70aac6627e4836ab14d5518dea7a467ae359ca7116a8552c5f67f6` |
| 31 | `theorem` | [isOpenEmbedding_of_injective](../../../../../mathematics/Topology/GeneralTopology/IsLocalHomeomorph/Variantec847becd8f2879e4da7a9f4cda4bb808937fc9db4f3deac393fd9312663ab2c.lean/declarations/isopenembedding-of-injective--c79f9bf269adf0bbe38ce03b.md) | 236 | `result-track:c79f9bf269adf0bbe38ce03bf5145e70b67efe3ba509939a643d1e533fa89a2c` |
| 32 | `def` | [toHomeomorph_of_bijective](../../../../../mathematics/Topology/GeneralTopology/IsLocalHomeomorph/Variantec847becd8f2879e4da7a9f4cda4bb808937fc9db4f3deac393fd9312663ab2c.lean/declarations/tohomeomorph-of-bijective--533fe55e0f48d5f326814f16.md) | 241 | `declaration-track:533fe55e0f48d5f326814f166628ee8650cd4b390a62e65f4016f34031ee5bf1` |
| 33 | `theorem` | [isOpenEmbedding_of_comp](../../../../../mathematics/Topology/GeneralTopology/IsLocalHomeomorph/Variantec847becd8f2879e4da7a9f4cda4bb808937fc9db4f3deac393fd9312663ab2c.lean/declarations/isopenembedding-of-comp--9d330f71cb4b74d2331e288d.md) | 246 | `result-track:9d330f71cb4b74d2331e288d73bac05f2a9189cd45d6b271bdaeeb38ba856c9b` |
| 34 | `theorem` | [isTopologicalBasis](../../../../../mathematics/Topology/GeneralTopology/IsLocalHomeomorph/Variantec847becd8f2879e4da7a9f4cda4bb808937fc9db4f3deac393fd9312663ab2c.lean/declarations/istopologicalbasis--81097cef85739271c7bb8a02.md) | 253 | `result-track:81097cef85739271c7bb8a0231f5c4bdc48fbf125a38da564cfc2aea0a640e95` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
