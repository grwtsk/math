# Verification target: GRWTSK.Topology.GeneralTopology.IsLocalHomeomorph.Variant96dd774b606ffcf76e09d0a43b73dac1e140ad56892edaf86b94e060ba944e94

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "72d8c157ccde7944aa3c1f144f993529cf98ae22",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/IsLocalHomeomorph/Variant96dd774b606ffcf76e09d0a43b73dac1e140ad56892edaf86b94e060ba944e94.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/IsLocalHomeomorph/Variant96dd774b606ffcf76e09d0a43b73dac1e140ad56892edaf86b94e060ba944e94.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/IsLocalHomeomorph/Variant96dd774b606ffcf76e09d0a43b73dac1e140ad56892edaf86b94e060ba944e94.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `72d8c157ccde7944aa3c1f144f993529cf98ae22`.

Source path: `GRWTSK/Topology/GeneralTopology/IsLocalHomeomorph/Variant96dd774b606ffcf76e09d0a43b73dac1e140ad56892edaf86b94e060ba944e94.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/IsLocalHomeomorph/Variant96dd774b606ffcf76e09d0a43b73dac1e140ad56892edaf86b94e060ba944e94.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.PartialHomeomorph` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.SeparatedMap` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsLocalHomeomorphOn](../../../../../mathematics/Topology/GeneralTopology/IsLocalHomeomorph/Variant96dd774b606ffcf76e09d0a43b73dac1e140ad56892edaf86b94e060ba944e94.lean/declarations/islocalhomeomorphon--332f41ae15909fe40cf47411.md) | 47 | `declaration-track:332f41ae15909fe40cf47411674636f9fdf89ef498f9913bf4e81bdd898add2a` |
| 2 | `theorem` | [isLocalHomeomorphOn_iff_isOpenEmbedding_restrict](../../../../../mathematics/Topology/GeneralTopology/IsLocalHomeomorph/Variant96dd774b606ffcf76e09d0a43b73dac1e140ad56892edaf86b94e060ba944e94.lean/declarations/islocalhomeomorphon-iff-isopenembedding-restrict--b35d7be3b6ae94641131fe54.md) | 50 | `result-track:b35d7be3b6ae94641131fe544917382b00fcc17bd9fe30774c444e562c5c7251` |
| 3 | `theorem` | [discreteTopology_of_image](../../../../../mathematics/Topology/GeneralTopology/IsLocalHomeomorph/Variant96dd774b606ffcf76e09d0a43b73dac1e140ad56892edaf86b94e060ba944e94.lean/declarations/discretetopology-of-image--ef20b6cf1a91dc44b663f805.md) | 70 | `result-track:ef20b6cf1a91dc44b663f805b0ed651d054ebaa4acb70d03d99d3637fe0d078a` |
| 4 | `theorem` | [discreteTopology_image_iff](../../../../../mathematics/Topology/GeneralTopology/IsLocalHomeomorph/Variant96dd774b606ffcf76e09d0a43b73dac1e140ad56892edaf86b94e060ba944e94.lean/declarations/discretetopology-image-iff--8220b8c7fd60734d94437654.md) | 80 | `result-track:8220b8c7fd60734d944376540e2eb6cf3d7f49c460237fe6e27793325c8833fa` |
| 5 | `theorem` | [mk](../../../../../mathematics/Topology/GeneralTopology/IsLocalHomeomorph/Variant96dd774b606ffcf76e09d0a43b73dac1e140ad56892edaf86b94e060ba944e94.lean/declarations/mk--271a8a83210df480191be99d.md) | 94 | `result-track:271a8a83210df480191be99dcdbdb414035ff3ea333abf67db4149cf0a91f1ba` |
| 6 | `lemma` | [PartialHomeomorph.isLocalHomeomorphOn](../../../../../mathematics/Topology/GeneralTopology/IsLocalHomeomorph/Variant96dd774b606ffcf76e09d0a43b73dac1e140ad56892edaf86b94e060ba944e94.lean/declarations/partialhomeomorph-islocalhomeomorphon--462c6c42f9998aec78e37621.md) | 108 | `result-track:462c6c42f9998aec78e3762181595be215e9160c00472a30c770fe8a96ddbe50` |
| 7 | `theorem` | [mono](../../../../../mathematics/Topology/GeneralTopology/IsLocalHomeomorph/Variant96dd774b606ffcf76e09d0a43b73dac1e140ad56892edaf86b94e060ba944e94.lean/declarations/mono--e1c696a45960787dfadaf66d.md) | 114 | `result-track:e1c696a45960787dfadaf66d006ffb01c9429ebd5d55109c6af8c553cc803a2e` |
| 8 | `theorem` | [of_comp_left](../../../../../mathematics/Topology/GeneralTopology/IsLocalHomeomorph/Variant96dd774b606ffcf76e09d0a43b73dac1e140ad56892edaf86b94e060ba944e94.lean/declarations/of-comp-left--bcd1c225c5179eb4d5928da8.md) | 117 | `result-track:bcd1c225c5179eb4d5928da8bd13c95d8a3260aed214d8b71c7f3f2104404f2b` |
| 9 | `theorem` | [of_comp_right](../../../../../mathematics/Topology/GeneralTopology/IsLocalHomeomorph/Variant96dd774b606ffcf76e09d0a43b73dac1e140ad56892edaf86b94e060ba944e94.lean/declarations/of-comp-right--b35bffe5c2de8163d2386d7e.md) | 128 | `result-track:b35bffe5c2de8163d2386d7eaa383d7253bcaf50d5eb22d912bd0626465adb9e` |
| 10 | `theorem` | [map_nhds_eq](../../../../../mathematics/Topology/GeneralTopology/IsLocalHomeomorph/Variant96dd774b606ffcf76e09d0a43b73dac1e140ad56892edaf86b94e060ba944e94.lean/declarations/map-nhds-eq--50116c33439e001eab35ee0d.md) | 138 | `result-track:50116c33439e001eab35ee0dcba9bfdbbd1c20f8e9bf256552c7ca742eb6c92d` |
| 11 | `theorem` | [continuousAt](../../../../../mathematics/Topology/GeneralTopology/IsLocalHomeomorph/Variant96dd774b606ffcf76e09d0a43b73dac1e140ad56892edaf86b94e060ba944e94.lean/declarations/continuousat--1025d2119524cf3f38dd857a.md) | 142 | `result-track:1025d2119524cf3f38dd857aff53ac1b587902086e709fb9a5a471bcdb5a1bca` |
| 12 | `theorem` | [continuousOn](../../../../../mathematics/Topology/GeneralTopology/IsLocalHomeomorph/Variant96dd774b606ffcf76e09d0a43b73dac1e140ad56892edaf86b94e060ba944e94.lean/declarations/continuouson--b9fe8266d6195bce11f2ba23.md) | 146 | `result-track:b9fe8266d6195bce11f2ba2302ea2cd9703ddb42334a5f4299a9b8a09852f1be` |
| 13 | `theorem` | [comp](../../../../../mathematics/Topology/GeneralTopology/IsLocalHomeomorph/Variant96dd774b606ffcf76e09d0a43b73dac1e140ad56892edaf86b94e060ba944e94.lean/declarations/comp--d5ee60afe5ecba46301a7b96.md) | 149 | `result-track:d5ee60afe5ecba46301a7b96e6ef2c3e46f64a1a68f9020b37792235fc5fc663` |
| 14 | `def` | [IsLocalHomeomorph](../../../../../mathematics/Topology/GeneralTopology/IsLocalHomeomorph/Variant96dd774b606ffcf76e09d0a43b73dac1e140ad56892edaf86b94e060ba944e94.lean/declarations/islocalhomeomorph--a239badd0426b6f95323dfdc.md) | 160 | `declaration-track:a239badd0426b6f95323dfdc0aab9546f8e0589fc741cfd568dc5792ca812683` |
| 15 | `theorem` | [Homeomorph.isLocalHomeomorph](../../../../../mathematics/Topology/GeneralTopology/IsLocalHomeomorph/Variant96dd774b606ffcf76e09d0a43b73dac1e140ad56892edaf86b94e060ba944e94.lean/declarations/homeomorph-islocalhomeomorph--56c8ce7e8b4ed4bb7361565f.md) | 163 | `result-track:56c8ce7e8b4ed4bb7361565fbfe2c1ea5df02fdf9ad7745a910204440104fe37` |
| 16 | `theorem` | [isLocalHomeomorph_iff_isLocalHomeomorphOn_univ](../../../../../mathematics/Topology/GeneralTopology/IsLocalHomeomorph/Variant96dd774b606ffcf76e09d0a43b73dac1e140ad56892edaf86b94e060ba944e94.lean/declarations/islocalhomeomorph-iff-islocalhomeomorphon-univ--0db037d9e19218f34d4884fc.md) | 168 | `result-track:0db037d9e19218f34d4884fc1c5032478bad39d66e161f97c3ee92234d1392c5` |
| 17 | `theorem` | [IsLocalHomeomorph.isLocalHomeomorphOn](../../../../../mathematics/Topology/GeneralTopology/IsLocalHomeomorph/Variant96dd774b606ffcf76e09d0a43b73dac1e140ad56892edaf86b94e060ba944e94.lean/declarations/islocalhomeomorph-islocalhomeomorphon--0aa8eeb187e598d2555936c3.md) | 172 | `result-track:0aa8eeb187e598d2555936c3d48662f7e9051e4ae7ee902b0b28ced739fa676a` |
| 18 | `theorem` | [isLocalHomeomorph_iff_isOpenEmbedding_restrict](../../../../../mathematics/Topology/GeneralTopology/IsLocalHomeomorph/Variant96dd774b606ffcf76e09d0a43b73dac1e140ad56892edaf86b94e060ba944e94.lean/declarations/islocalhomeomorph-iff-isopenembedding-restrict--e26ffe13c040c16b1a432c90.md) | 175 | `result-track:e26ffe13c040c16b1a432c90056dd6b6b3f703a4e95deaacc584636667b81ae0` |
| 19 | `theorem` | [Topology.IsOpenEmbedding.isLocalHomeomorph](../../../../../mathematics/Topology/GeneralTopology/IsLocalHomeomorph/Variant96dd774b606ffcf76e09d0a43b73dac1e140ad56892edaf86b94e060ba944e94.lean/declarations/topology-isopenembedding-islocalhomeomorph--48e9c911d61f3d718560df64.md) | 180 | `result-track:48e9c911d61f3d718560df6481da9ac64522fb71011a9e19dfc295b9c8fe77bb` |
| 20 | `theorem` | [comap_discreteTopology](../../../../../mathematics/Topology/GeneralTopology/IsLocalHomeomorph/Variant96dd774b606ffcf76e09d0a43b73dac1e140ad56892edaf86b94e060ba944e94.lean/declarations/comap-discretetopology--d4971c08e5ac307a5fb020a3.md) | 187 | `result-track:d4971c08e5ac307a5fb020a3f255184bec4e8d91786c2bee570998fc289bb820` |
| 21 | `theorem` | [discreteTopology_range_iff](../../../../../mathematics/Topology/GeneralTopology/IsLocalHomeomorph/Variant96dd774b606ffcf76e09d0a43b73dac1e140ad56892edaf86b94e060ba944e94.lean/declarations/discretetopology-range-iff--cd07db318c634d217163ee91.md) | 191 | `result-track:cd07db318c634d217163ee91327274fad0a78da8d326b62a9d427e8b61d56690` |
| 22 | `theorem` | [discreteTopology_iff_of_surjective](../../../../../mathematics/Topology/GeneralTopology/IsLocalHomeomorph/Variant96dd774b606ffcf76e09d0a43b73dac1e140ad56892edaf86b94e060ba944e94.lean/declarations/discretetopology-iff-of-surjective--efdedfd123d7ba5e6e1007c5.md) | 198 | `result-track:efdedfd123d7ba5e6e1007c516cddb9f9d007701643f6265524983f802b2027b` |
| 23 | `theorem` | [mk](../../../../../mathematics/Topology/GeneralTopology/IsLocalHomeomorph/Variant96dd774b606ffcf76e09d0a43b73dac1e140ad56892edaf86b94e060ba944e94.lean/declarations/mk--b069cbacd8dbcbab6ef04ade.md) | 207 | `result-track:b069cbacd8dbcbab6ef04ade8d92d7c0a56c8e708616b4a46cf4550e0d81672b` |
| 24 | `lemma` | [Homeomorph.isLocalHomeomorph](../../../../../mathematics/Topology/GeneralTopology/IsLocalHomeomorph/Variant96dd774b606ffcf76e09d0a43b73dac1e140ad56892edaf86b94e060ba944e94.lean/declarations/homeomorph-islocalhomeomorph--7ab7d3859154bebd849dc52a.md) | 213 | `result-track:7ab7d3859154bebd849dc52ac301336d1027c792ff512ca8f4bfe86751c56ae5` |
| 25 | `lemma` | [isLocallyInjective](../../../../../mathematics/Topology/GeneralTopology/IsLocalHomeomorph/Variant96dd774b606ffcf76e09d0a43b73dac1e140ad56892edaf86b94e060ba944e94.lean/declarations/islocallyinjective--2220fb4b2a2aa8e55ed03b30.md) | 218 | `result-track:2220fb4b2a2aa8e55ed03b3014955b997fd6dbded87ecc67103fa9bac5801d97` |
| 26 | `theorem` | [of_comp](../../../../../mathematics/Topology/GeneralTopology/IsLocalHomeomorph/Variant96dd774b606ffcf76e09d0a43b73dac1e140ad56892edaf86b94e060ba944e94.lean/declarations/of-comp--2dfab35b4ede879d5e60a5db.md) | 221 | `result-track:2dfab35b4ede879d5e60a5dbe28cfc42cc94898809c352287263e2483415cf80` |
| 27 | `theorem` | [map_nhds_eq](../../../../../mathematics/Topology/GeneralTopology/IsLocalHomeomorph/Variant96dd774b606ffcf76e09d0a43b73dac1e140ad56892edaf86b94e060ba944e94.lean/declarations/map-nhds-eq--403729aa94faeee0cecad210.md) | 226 | `result-track:403729aa94faeee0cecad210cbbe13f1006955bad11e9ec8a95a6bd78c39e690` |
| 28 | `theorem` | [continuous](../../../../../mathematics/Topology/GeneralTopology/IsLocalHomeomorph/Variant96dd774b606ffcf76e09d0a43b73dac1e140ad56892edaf86b94e060ba944e94.lean/declarations/continuous--c1f87ebab1d69e472adb552f.md) | 230 | `result-track:c1f87ebab1d69e472adb552f20cd1ea00d30fa468dbe79f739b158c9a27fb23e` |
| 29 | `theorem` | [isOpenMap](../../../../../mathematics/Topology/GeneralTopology/IsLocalHomeomorph/Variant96dd774b606ffcf76e09d0a43b73dac1e140ad56892edaf86b94e060ba944e94.lean/declarations/isopenmap--3e65e9ce2887a21bf7a2ccf4.md) | 234 | `result-track:3e65e9ce2887a21bf7a2ccf48e5bc6fd3da3063e825fa0c5839ac7bbc4ca00fe` |
| 30 | `theorem` | [comp](../../../../../mathematics/Topology/GeneralTopology/IsLocalHomeomorph/Variant96dd774b606ffcf76e09d0a43b73dac1e140ad56892edaf86b94e060ba944e94.lean/declarations/comp--b3c91a72e6db3c0eee375e78.md) | 238 | `result-track:b3c91a72e6db3c0eee375e7809a190dec4fb42c7b9bc2b314f8f975cff778033` |
| 31 | `theorem` | [isOpenEmbedding_of_injective](../../../../../mathematics/Topology/GeneralTopology/IsLocalHomeomorph/Variant96dd774b606ffcf76e09d0a43b73dac1e140ad56892edaf86b94e060ba944e94.lean/declarations/isopenembedding-of-injective--95fd939ea8b9912e29624a8e.md) | 244 | `result-track:95fd939ea8b9912e29624a8e120cd858a4be7dc3423c6cb2a7ff4386c5bf6314` |
| 32 | `def` | [toHomeomorph_of_bijective](../../../../../mathematics/Topology/GeneralTopology/IsLocalHomeomorph/Variant96dd774b606ffcf76e09d0a43b73dac1e140ad56892edaf86b94e060ba944e94.lean/declarations/tohomeomorph-of-bijective--3dc58182961f23d555e12e94.md) | 249 | `declaration-track:3dc58182961f23d555e12e94d299ab116334edfea83a3c9d61824cd489966004` |
| 33 | `theorem` | [isOpenEmbedding_of_comp](../../../../../mathematics/Topology/GeneralTopology/IsLocalHomeomorph/Variant96dd774b606ffcf76e09d0a43b73dac1e140ad56892edaf86b94e060ba944e94.lean/declarations/isopenembedding-of-comp--8204b8d492ef7f8ae33f6fa3.md) | 254 | `result-track:8204b8d492ef7f8ae33f6fa3989077bb86e69fb041c76148b2f963899f38a047` |
| 34 | `theorem` | [isTopologicalBasis](../../../../../mathematics/Topology/GeneralTopology/IsLocalHomeomorph/Variant96dd774b606ffcf76e09d0a43b73dac1e140ad56892edaf86b94e060ba944e94.lean/declarations/istopologicalbasis--f4008ab06fe89639001ce979.md) | 261 | `result-track:f4008ab06fe89639001ce9790b4b80a96d92b6c91a8f97eaffc8fc6f4fde8d6e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
