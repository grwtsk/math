# Verification target: GRWTSK.Topology.GeneralTopology.IsClosedRestrict.Variantafaa60afd619831e793f0b319ae079407410341c9f6621dc6e4bfaddc8a76531

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4a2f8db97317b60738697d767e025ac4aa411474",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/IsClosedRestrict/Variantafaa60afd619831e793f0b319ae079407410341c9f6621dc6e4bfaddc8a76531.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/IsClosedRestrict/Variantafaa60afd619831e793f0b319ae079407410341c9f6621dc6e4bfaddc8a76531.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/IsClosedRestrict/Variantafaa60afd619831e793f0b319ae079407410341c9f6621dc6e4bfaddc8a76531.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4a2f8db97317b60738697d767e025ac4aa411474`.

Source path: `GRWTSK/Topology/GeneralTopology/IsClosedRestrict/Variantafaa60afd619831e793f0b319ae079407410341c9f6621dc6e4bfaddc8a76531.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/IsClosedRestrict/Variantafaa60afd619831e793f0b319ae079407410341c9f6621dc6e4bfaddc8a76531.lean.json)

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
| 1 | `def` | [reorderRestrictProd](../../../../../mathematics/Topology/GeneralTopology/IsClosedRestrict/Variantafaa60afd619831e793f0b319ae079407410341c9f6621dc6e4bfaddc8a76531.lean/declarations/reorderrestrictprod--e1dd69287f0eb537b27a09d3.md) | 40 | `declaration-track:e1dd69287f0eb537b27a09d3e39b138f3c77a7b9417a42c150c89f5b1659a042` |
| 2 | `lemma` | [reorderRestrictProd_of_mem](../../../../../mathematics/Topology/GeneralTopology/IsClosedRestrict/Variantafaa60afd619831e793f0b319ae079407410341c9f6621dc6e4bfaddc8a76531.lean/declarations/reorderrestrictprod-of-mem--7f7b67ff4031643f4c645a8e.md) | 48 | `result-track:7f7b67ff4031643f4c645a8edd0f749340e6623b39dd97d604d5be46566eba1e` |
| 3 | `lemma` | [reorderRestrictProd_of_compl](../../../../../mathematics/Topology/GeneralTopology/IsClosedRestrict/Variantafaa60afd619831e793f0b319ae079407410341c9f6621dc6e4bfaddc8a76531.lean/declarations/reorderrestrictprod-of-compl--f4889fcfc25b2e2b047173e2.md) | 54 | `result-track:f4889fcfc25b2e2b047173e2bfc24c3bcd3a80994ae8da1f977567a9fc2b460d` |
| 4 | `lemma` | [restrict_compl_reorderRestrictProd](../../../../../mathematics/Topology/GeneralTopology/IsClosedRestrict/Variantafaa60afd619831e793f0b319ae079407410341c9f6621dc6e4bfaddc8a76531.lean/declarations/restrict-compl-reorderrestrictprod--277f1e2208d7bd3e90fc7c1b.md) | 60 | `result-track:277f1e2208d7bd3e90fc7c1b8e762cab267b893bbb0ede8917098bb60cbf9d7a` |
| 5 | `lemma` | [continuous_reorderRestrictProd](../../../../../mathematics/Topology/GeneralTopology/IsClosedRestrict/Variantafaa60afd619831e793f0b319ae079407410341c9f6621dc6e4bfaddc8a76531.lean/declarations/continuous-reorderrestrictprod--3a2b3e8f8c0cee37aa40c91b.md) | 63 | `result-track:3a2b3e8f8c0cee37aa40c91b9c2f246908d3f1c82fcc665ae1f4335da5971c57` |
| 6 | `lemma` | [reorderRestrictProd_mem_preimage_image_restrict](../../../../../mathematics/Topology/GeneralTopology/IsClosedRestrict/Variantafaa60afd619831e793f0b319ae079407410341c9f6621dc6e4bfaddc8a76531.lean/declarations/reorderrestrictprod-mem-preimage-image-restrict--96d4a63812b3d9ea6751dce5.md) | 71 | `result-track:96d4a63812b3d9ea6751dce5cbd1a9176aa733ae856e8619804c11d533a2a363` |
| 7 | `lemma` | [reorderRestrictProd_restrict_compl](../../../../../mathematics/Topology/GeneralTopology/IsClosedRestrict/Variantafaa60afd619831e793f0b319ae079407410341c9f6621dc6e4bfaddc8a76531.lean/declarations/reorderrestrictprod-restrict-compl--bc8e2823d48da5b55343be76.md) | 77 | `result-track:bc8e2823d48da5b55343be76590033a2d6e7a82f32f4216e2e2656930679b10c` |
| 8 | `def` | [_root_.Homeomorph.preimageImageRestrict](../../../../../mathematics/Topology/GeneralTopology/IsClosedRestrict/Variantafaa60afd619831e793f0b319ae079407410341c9f6621dc6e4bfaddc8a76531.lean/declarations/root-homeomorph-preimageimagerestrict--fd948177c250aaccaf9c5d92.md) | 85 | `declaration-track:fd948177c250aaccaf9c5d928000720391f0b41f8cc307a18bf28afa761d90ba` |
| 9 | `lemma` | [image_snd_preimageImageRestrict](../../../../../mathematics/Topology/GeneralTopology/IsClosedRestrict/Variantafaa60afd619831e793f0b319ae079407410341c9f6621dc6e4bfaddc8a76531.lean/declarations/image-snd-preimageimagerestrict--28ed60e9ac2dd1697ee537f3.md) | 105 | `result-track:28ed60e9ac2dd1697ee537f3c05f3783483f12c06a18b5dbdc732c8f970aecbd` |
| 10 | `theorem` | [IsCompact.isClosed_image_restrict](../../../../../mathematics/Topology/GeneralTopology/IsClosedRestrict/Variantafaa60afd619831e793f0b319ae079407410341c9f6621dc6e4bfaddc8a76531.lean/declarations/iscompact-isclosed-image-restrict--8ea2d8bb9fbc3ea66f11d833.md) | 127 | `result-track:8ea2d8bb9fbc3ea66f11d8335265db272183e4132cc219fc4c9f961d06bf4501` |
| 11 | `lemma` | [isClosedMap_restrict_of_compactSpace](../../../../../mathematics/Topology/GeneralTopology/IsClosedRestrict/Variantafaa60afd619831e793f0b319ae079407410341c9f6621dc6e4bfaddc8a76531.lean/declarations/isclosedmap-restrict-of-compactspace--ec285f3d8d63155f01c6900a.md) | 137 | `result-track:ec285f3d8d63155f01c6900a5ba39a869232beafc1ee40002c3e0cd25b91b01f` |
| 12 | `lemma` | [IsClosed.isClosed_image_eval](../../../../../mathematics/Topology/GeneralTopology/IsClosedRestrict/Variantafaa60afd619831e793f0b319ae079407410341c9f6621dc6e4bfaddc8a76531.lean/declarations/isclosed-isclosed-image-eval--4b08d03a4761ce013380bde1.md) | 144 | `result-track:4b08d03a4761ce013380bde19877d971db40b85538a42cb83a2fd6d640398276` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
