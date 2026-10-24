# Verification target: GRWTSK.Topology.GeneralTopology.Neighborhood.Variantcc1ba4322a72a89bc7e1d66207dc2a4a5ef53b6cf38729971e89fdd30f9d5a7f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c699590b3ab696baf28c44478bafdf2d8a450bad",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Neighborhood/Variantcc1ba4322a72a89bc7e1d66207dc2a4a5ef53b6cf38729971e89fdd30f9d5a7f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Neighborhood/Variantcc1ba4322a72a89bc7e1d66207dc2a4a5ef53b6cf38729971e89fdd30f9d5a7f.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Neighborhood/Variantcc1ba4322a72a89bc7e1d66207dc2a4a5ef53b6cf38729971e89fdd30f9d5a7f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c699590b3ab696baf28c44478bafdf2d8a450bad`.

Source path: `GRWTSK/Topology/GeneralTopology/Neighborhood/Variantcc1ba4322a72a89bc7e1d66207dc2a4a5ef53b6cf38729971e89fdd30f9d5a7f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Neighborhood/Variantcc1ba4322a72a89bc7e1d66207dc2a4a5ef53b6cf38729971e89fdd30f9d5a7f.lean.json)

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
| 1 | `theorem` | [exists_nhds_split_inv](../../../../../mathematics/Topology/GeneralTopology/Neighborhood/Variantcc1ba4322a72a89bc7e1d66207dc2a4a5ef53b6cf38729971e89fdd30f9d5a7f.lean/declarations/exists-nhds-split-inv--cde0f91bdc3d014fdb3a4fca.md) | 37 | `result-track:cde0f91bdc3d014fdb3a4fca3489c4bbcc33d990a4195b059c8e51443184c960` |
| 2 | `theorem` | [nhds_translation_mul_inv](../../../../../mathematics/Topology/GeneralTopology/Neighborhood/Variantcc1ba4322a72a89bc7e1d66207dc2a4a5ef53b6cf38729971e89fdd30f9d5a7f.lean/declarations/nhds-translation-mul-inv--69be0e54d6d76c23d4913f56.md) | 45 | `result-track:69be0e54d6d76c23d4913f56475d7008395115dacaefc1fbc19df891402ee457` |
| 3 | `theorem` | [nhds_translation_inv_mul](../../../../../mathematics/Topology/GeneralTopology/Neighborhood/Variantcc1ba4322a72a89bc7e1d66207dc2a4a5ef53b6cf38729971e89fdd30f9d5a7f.lean/declarations/nhds-translation-inv-mul--33a8f20915254706fad4a405.md) | 49 | `result-track:33a8f20915254706fad4a4057e3fb3ba4c62cea84c61b6621118aba12947c7f2` |
| 4 | `theorem` | [map_mul_left_nhds](../../../../../mathematics/Topology/GeneralTopology/Neighborhood/Variantcc1ba4322a72a89bc7e1d66207dc2a4a5ef53b6cf38729971e89fdd30f9d5a7f.lean/declarations/map-mul-left-nhds--abf93c982a80ec0156269283.md) | 53 | `result-track:abf93c982a80ec015626928310e2f962e9c009309b42475d69011f27cdc0cb80` |
| 5 | `theorem` | [map_mul_left_nhds_one](../../../../../mathematics/Topology/GeneralTopology/Neighborhood/Variantcc1ba4322a72a89bc7e1d66207dc2a4a5ef53b6cf38729971e89fdd30f9d5a7f.lean/declarations/map-mul-left-nhds-one--86dad8829a64fab6f805036a.md) | 57 | `result-track:86dad8829a64fab6f805036a4da9b3875c3a874879f90193db55ad0d946ed6f6` |
| 6 | `theorem` | [map_mul_right_nhds](../../../../../mathematics/Topology/GeneralTopology/Neighborhood/Variantcc1ba4322a72a89bc7e1d66207dc2a4a5ef53b6cf38729971e89fdd30f9d5a7f.lean/declarations/map-mul-right-nhds--113dcfc69fc18d8023f25ed6.md) | 60 | `result-track:113dcfc69fc18d8023f25ed60a9d15d8cc64d3b1bdc071839166ded24b280da5` |
| 7 | `theorem` | [map_mul_right_nhds_one](../../../../../mathematics/Topology/GeneralTopology/Neighborhood/Variantcc1ba4322a72a89bc7e1d66207dc2a4a5ef53b6cf38729971e89fdd30f9d5a7f.lean/declarations/map-mul-right-nhds-one--1f61bb5092808594f44b0718.md) | 64 | `result-track:1f61bb5092808594f44b0718ab1e29bd16ededef82b43da601a18d2cfe66f277` |
| 8 | `theorem` | [Filter.HasBasis.nhds_of_one](../../../../../mathematics/Topology/GeneralTopology/Neighborhood/Variantcc1ba4322a72a89bc7e1d66207dc2a4a5ef53b6cf38729971e89fdd30f9d5a7f.lean/declarations/filter-hasbasis-nhds-of-one--526ab779416f93004a32c0f9.md) | 67 | `result-track:526ab779416f93004a32c0f948fc20c6df4263ce12bf81c4cad84182bb2f704e` |
| 9 | `theorem` | [Filter.HasBasis.nhds_of_one'](../../../../../mathematics/Topology/GeneralTopology/Neighborhood/Variantcc1ba4322a72a89bc7e1d66207dc2a4a5ef53b6cf38729971e89fdd30f9d5a7f.lean/declarations/filter-hasbasis-nhds-of-one--92c8b50deba5beff9c0f144f.md) | 75 | `result-track:92c8b50deba5beff9c0f144f655708cfe067a086ae0255704d2d6f3ea6896468` |
| 10 | `theorem` | [Filter.HasBasis.nhds_one_inv](../../../../../mathematics/Topology/GeneralTopology/Neighborhood/Variantcc1ba4322a72a89bc7e1d66207dc2a4a5ef53b6cf38729971e89fdd30f9d5a7f.lean/declarations/filter-hasbasis-nhds-one-inv--799ff142724a82baefc70f03.md) | 82 | `result-track:799ff142724a82baefc70f03ed112025a7b12bcadd023d4bbca729059ac5ffe4` |
| 11 | `theorem` | [mem_closure_iff_nhds_one](../../../../../mathematics/Topology/GeneralTopology/Neighborhood/Variantcc1ba4322a72a89bc7e1d66207dc2a4a5ef53b6cf38729971e89fdd30f9d5a7f.lean/declarations/mem-closure-iff-nhds-one--31633572dc18aae8fbac90fd.md) | 87 | `result-track:31633572dc18aae8fbac90fd63c6612eb8a3b664682e1325927c56b97a54e387` |
| 12 | `theorem` | [continuous_of_tendsto_nhds_one](../../../../../mathematics/Topology/GeneralTopology/Neighborhood/Variantcc1ba4322a72a89bc7e1d66207dc2a4a5ef53b6cf38729971e89fdd30f9d5a7f.lean/declarations/continuous-of-tendsto-nhds-one--0486c35f4e899ad3de1b5ac7.md) | 107 | `result-track:0486c35f4e899ad3de1b5ac7eb221250bf223618f116f35d71a2aafb669d1555` |
| 13 | `theorem` | [continuous_of_continuousAt_one](../../../../../mathematics/Topology/GeneralTopology/Neighborhood/Variantcc1ba4322a72a89bc7e1d66207dc2a4a5ef53b6cf38729971e89fdd30f9d5a7f.lean/declarations/continuous-of-continuousat-one--59dd7887e89741a63e958e51.md) | 123 | `result-track:59dd7887e89741a63e958e516d833b7441ef555919a77f9e926dd5b8b3faef6b` |
| 14 | `theorem` | [continuous_of_continuousAt_one₂](../../../../../mathematics/Topology/GeneralTopology/Neighborhood/Variantcc1ba4322a72a89bc7e1d66207dc2a4a5ef53b6cf38729971e89fdd30f9d5a7f.lean/declarations/continuous-of-continuousat-one--9450fad9a480780106aa7f27.md) | 130 | `result-track:9450fad9a480780106aa7f27a32ae1424b66fc009cebe19023ea45d7aad14b72` |
| 15 | `lemma` | [IsTopologicalGroup.isInducing_iff_nhds_one](../../../../../mathematics/Topology/GeneralTopology/Neighborhood/Variantcc1ba4322a72a89bc7e1d66207dc2a4a5ef53b6cf38729971e89fdd30f9d5a7f.lean/declarations/istopologicalgroup-isinducing-iff-nhds-one--a6fa81479d30c2620e5a8843.md) | 142 | `result-track:a6fa81479d30c2620e5a884315c3edb96e2d842348fedc4459d985014c64aaab` |
| 16 | `lemma` | [IsTopologicalGroup.isOpenMap_iff_nhds_one](../../../../../mathematics/Topology/GeneralTopology/Neighborhood/Variantcc1ba4322a72a89bc7e1d66207dc2a4a5ef53b6cf38729971e89fdd30f9d5a7f.lean/declarations/istopologicalgroup-isopenmap-iff-nhds-one--0274f2672b3763f767432712.md) | 154 | `result-track:0274f2672b3763f76743271220b35b1513cd7d7b7ea3879bb5ce852d5e3e916d` |
| 17 | `lemma` | [MonoidHom.isOpenQuotientMap_of_isQuotientMap](../../../../../mathematics/Topology/GeneralTopology/Neighborhood/Variantcc1ba4322a72a89bc7e1d66207dc2a4a5ef53b6cf38729971e89fdd30f9d5a7f.lean/declarations/monoidhom-isopenquotientmap-of-isquotientmap--a1cedbc46bd775e628a4420a.md) | 174 | `result-track:a1cedbc46bd775e628a4420a00dbf1a3f286e80dff838223d8af11cf8436e466` |
| 18 | `lemma` | [MonoidHom.isOpenQuotientMap_iff_isQuotientMap](../../../../../mathematics/Topology/GeneralTopology/Neighborhood/Variantcc1ba4322a72a89bc7e1d66207dc2a4a5ef53b6cf38729971e89fdd30f9d5a7f.lean/declarations/monoidhom-isopenquotientmap-iff-isquotientmap--20f0571100976fa5ba6ad9cf.md) | 201 | `result-track:20f0571100976fa5ba6ad9cf28ddd3177d16d8bfe0e93b796a0f93a17cdad51a` |
| 19 | `theorem` | [IsTopologicalGroup.ext](../../../../../mathematics/Topology/GeneralTopology/Neighborhood/Variantcc1ba4322a72a89bc7e1d66207dc2a4a5ef53b6cf38729971e89fdd30f9d5a7f.lean/declarations/istopologicalgroup-ext--e497abb65d6bc7d5762c685f.md) | 208 | `result-track:e497abb65d6bc7d5762c685f4ee619c345566ddf76be255cd2772ca6d5123647` |
| 20 | `theorem` | [IsTopologicalGroup.ext_iff](../../../../../mathematics/Topology/GeneralTopology/Neighborhood/Variantcc1ba4322a72a89bc7e1d66207dc2a4a5ef53b6cf38729971e89fdd30f9d5a7f.lean/declarations/istopologicalgroup-ext-iff--ef91e5d8b3ab4d050d275e08.md) | 215 | `result-track:ef91e5d8b3ab4d050d275e08adf389db7c9bebad81182dd13bf862df73e1abd8` |
| 21 | `theorem` | [ContinuousInv.of_nhds_one](../../../../../mathematics/Topology/GeneralTopology/Neighborhood/Variantcc1ba4322a72a89bc7e1d66207dc2a4a5ef53b6cf38729971e89fdd30f9d5a7f.lean/declarations/continuousinv-of-nhds-one--2a6431fc625333843243ad38.md) | 221 | `result-track:2a6431fc625333843243ad38873d0d235c0985e45b9a642bb1c93a3657a9a505` |
| 22 | `theorem` | [IsTopologicalGroup.of_nhds_one'](../../../../../mathematics/Topology/GeneralTopology/Neighborhood/Variantcc1ba4322a72a89bc7e1d66207dc2a4a5ef53b6cf38729971e89fdd30f9d5a7f.lean/declarations/istopologicalgroup-of-nhds-one--3b2c6c63de3eabdff2f0ef96.md) | 232 | `result-track:3b2c6c63de3eabdff2f0ef965f27044369d2804bf37b9189c47f0670be52d3d0` |
| 23 | `theorem` | [IsTopologicalGroup.of_nhds_one](../../../../../mathematics/Topology/GeneralTopology/Neighborhood/Variantcc1ba4322a72a89bc7e1d66207dc2a4a5ef53b6cf38729971e89fdd30f9d5a7f.lean/declarations/istopologicalgroup-of-nhds-one--f0157b619e4818273def3922.md) | 247 | `result-track:f0157b619e4818273def39228d8c5ac78d7525f16e9c0f6ce3e33b00a0363292` |
| 24 | `theorem` | [IsTopologicalGroup.of_comm_of_nhds_one](../../../../../mathematics/Topology/GeneralTopology/Neighborhood/Variantcc1ba4322a72a89bc7e1d66207dc2a4a5ef53b6cf38729971e89fdd30f9d5a7f.lean/declarations/istopologicalgroup-of-comm-of-nhds-one--d129fa6b0231a83bb5c21a35.md) | 259 | `result-track:d129fa6b0231a83bb5c21a359f307ef4356cf5c46e1aff102b0f34b0fa0b7c94` |
| 25 | `theorem` | [IsTopologicalGroup.exists_antitone_basis_nhds_one](../../../../../mathematics/Topology/GeneralTopology/Neighborhood/Variantcc1ba4322a72a89bc7e1d66207dc2a4a5ef53b6cf38729971e89fdd30f9d5a7f.lean/declarations/istopologicalgroup-exists-antitone-basis-nhds-one--0e2ae09fcfed603eb2e606dc.md) | 274 | `result-track:0e2ae09fcfed603eb2e606dc5863af43589d117d3269714e0e8700b44496960a` |
| 26 | `theorem` | [nhds_mul](../../../../../mathematics/Topology/GeneralTopology/Neighborhood/Variantcc1ba4322a72a89bc7e1d66207dc2a4a5ef53b6cf38729971e89fdd30f9d5a7f.lean/declarations/nhds-mul--a7ae9d0a1bc93365f29abe2a.md) | 300 | `result-track:a7ae9d0a1bc93365f29abe2af3c3f2326542fdbb2025efe1ca21ef24c67e617f` |
| 27 | `def` | [nhdsMulHom](../../../../../mathematics/Topology/GeneralTopology/Neighborhood/Variantcc1ba4322a72a89bc7e1d66207dc2a4a5ef53b6cf38729971e89fdd30f9d5a7f.lean/declarations/nhdsmulhom--c533da5f377ccb4fc32f9884.md) | 312 | `declaration-track:c533da5f377ccb4fc32f9884718407cbb010d1167befedc91c8e181403b7b540` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
