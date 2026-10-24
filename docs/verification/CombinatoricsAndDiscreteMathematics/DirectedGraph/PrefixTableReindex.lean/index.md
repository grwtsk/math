# Verification target: GRWTSK.Combinatorics.DirectedGraph.PrefixTableReindex

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e43cf48d7486b9484000da41e1ce545e21de69f3",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Combinatorics/DirectedGraph/PrefixTableReindex.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableReindex.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableReindex.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e43cf48d7486b9484000da41e1ce545e21de69f3`.

Source path: `GRWTSK/Combinatorics/DirectedGraph/PrefixTableReindex.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Combinatorics/DirectedGraph/PrefixTableReindex.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Combinatorics.DirectedGraph.RoleRelationReindex`](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationReindex.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mapEdge](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableReindex.lean/declarations/mapedge--fe761c1155f1b707c5734e5e.md) | 34 | `declaration-track:fe761c1155f1b707c5734e5e1b197c5b5ac17b97ff917244a99656fde2630c5b` |
| 2 | `def` | [mapTrace](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableReindex.lean/declarations/maptrace--f74773885a04ffa666bfda63.md) | 39 | `declaration-track:f74773885a04ffa666bfda6317af34df0417372c205c84867c150108ac619457` |
| 3 | `theorem` | [mapEdge_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableReindex.lean/declarations/mapedge-injective--2ff81170ce912ad9d462b3cb.md) | 42 | `result-track:2ff81170ce912ad9d462b3cb7fef1291452f482abae77a87211f1549a8ddca62` |
| 4 | `theorem` | [mapTrace_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableReindex.lean/declarations/maptrace-injective--519d0fffc7e0e1e6fc484358.md) | 49 | `result-track:519d0fffc7e0e1e6fc4843580fb5e4d53d65b2f1776d9d89a93f945f1c6287fe` |
| 5 | `theorem` | [mapTrace_valid](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableReindex.lean/declarations/maptrace-valid--2bc7719f74ef9866cf50a070.md) | 53 | `result-track:2bc7719f74ef9866cf50a0704bc61007f132eb59e639f050957286de1cfe698d` |
| 6 | `def` | [mapNode](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableReindex.lean/declarations/mapnode--ec0d56d668495768f3d21282.md) | 63 | `declaration-track:ec0d56d668495768f3d21282bd0e28224b010e89ba8e575dc57fcca5fb678544` |
| 7 | `theorem` | [mapNode_rank](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableReindex.lean/declarations/mapnode-rank--e73023e1f25d8ae99b814e50.md) | 66 | `result-track:e73023e1f25d8ae99b814e508c3f1ae58cd9f8a5e36d3efdebc7cfea2f121bfe` |
| 8 | `theorem` | [mapNode_parent](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableReindex.lean/declarations/mapnode-parent--ef2eadd58b049ada67deffc1.md) | 69 | `result-track:ef2eadd58b049ada67deffc1b16d2a580b0b262abe0b835c268dbb744aecd330` |
| 9 | `def` | [transport](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableReindex.lean/declarations/transport--6e88640dc7f059e7d210faba.md) | 74 | `declaration-track:6e88640dc7f059e7d210faba094fd8d26dc602e2e6ad174f394e2343278b747e` |
| 10 | `theorem` | [transport_root](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableReindex.lean/declarations/transport-root--4d8e98074798481240577196.md) | 78 | `result-track:4d8e98074798481240577196663f213ce0f442afb0fb97d5b5670bb76bbbd48c` |
| 11 | `theorem` | [transport_references](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableReindex.lean/declarations/transport-references--0e8837c9f30e0a6a0dd7a63f.md) | 81 | `result-track:0e8837c9f30e0a6a0dd7a63f890293ac522e52039914e36e603afc4d3ee22b1a` |
| 12 | `theorem` | [transport_node_lookup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableReindex.lean/declarations/transport-node-lookup--34165fcd7da01d94bc42f533.md) | 84 | `result-track:34165fcd7da01d94bc42f53317f77d558ee36fd4c23a1c26c357872bf6d94d1d` |
| 13 | `theorem` | [expand_map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableReindex.lean/declarations/expand-map--fd310c74607687ca2d01883d.md) | 89 | `result-track:fd310c74607687ca2d01883da570d7304de847a0a8680348b36c0189117e48a1` |
| 14 | `theorem` | [decodeSlot_map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableReindex.lean/declarations/decodeslot-map--2ead7ada5707a872535a6a25.md) | 121 | `result-track:2ead7ada5707a872535a6a250df53517b5087e983947e3ee308d3ca37ff174f6` |
| 15 | `def` | [mapRows](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableReindex.lean/declarations/maprows--fc5080e9153ae40d20637ccb.md) | 132 | `declaration-track:fc5080e9153ae40d20637ccb26361ed529eddb3a039e7d66b45fbdb04523c70e` |
| 16 | `theorem` | [unpack_transport](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableReindex.lean/declarations/unpack-transport--e3174ff9b676cda42240c3e4.md) | 137 | `result-track:e3174ff9b676cda42240c3e46ecac86f22dda7d69b7531af6f22464606bf7afd` |
| 17 | `theorem` | [mapTrace_idxOf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableReindex.lean/declarations/maptrace-idxof--5b4767efb42dba35b0167c30.md) | 157 | `result-track:5b4767efb42dba35b0167c3004f9b2e7b48fc5f6167c1ba459e260d775cfbe7e` |
| 18 | `theorem` | [map_cell](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableReindex.lean/declarations/map-cell--0a01038bf741425db8f32e13.md) | 175 | `result-track:0a01038bf741425db8f32e132d0d7e0561dd539edeb10671e57d41bd87f02336` |
| 19 | `theorem` | [transport_wellFormed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableReindex.lean/declarations/transport-wellformed--8a4d38ea363d0d38861f9663.md) | 197 | `result-track:8a4d38ea363d0d38861f9663624f04324fdc81c9c8d55d592110f73c5b2ad7ed` |
| 20 | `theorem` | [expandDictionary_transport](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableReindex.lean/declarations/expanddictionary-transport--c2195348945e258f486ce3ae.md) | 223 | `result-track:c2195348945e258f486ce3ae122f086e0f889070a84b29a60309a20b0cd31aba` |
| 21 | `theorem` | [decode_transport](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableReindex.lean/declarations/decode-transport--b49eb59d6fffa0f8cd867c3e.md) | 232 | `result-track:b49eb59d6fffa0f8cd867c3efced43d02ac9d8189d6829b9059d8e2b6657ea1d` |
| 22 | `theorem` | [compact_decode_commutes](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableReindex.lean/declarations/compact-decode-commutes--970f399f5be5a08fa8e86983.md) | 240 | `result-track:970f399f5be5a08fa8e869836f69058ecc0ad96701afd0a57092e64363bc67e5` |
| 23 | `theorem` | [inverse_mapEdge](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableReindex.lean/declarations/inverse-mapedge--c43485eab6104f91496f0b5f.md) | 254 | `result-track:c43485eab6104f91496f0b5f450f6c48ad453433ba2fdd850bbe7d8e4b286db0` |
| 24 | `theorem` | [inverse_mapRows](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableReindex.lean/declarations/inverse-maprows--667ece790b6712d078361c69.md) | 262 | `result-track:667ece790b6712d078361c69abececc9f80d966289f91fde046b284e314d39cb` |
| 25 | `def` | [rootedRows](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableReindex.lean/declarations/rootedrows--b865aa5607f2e56b11bd2e2e.md) | 274 | `declaration-track:b865aa5607f2e56b11bd2e2e0b589c8a3e846650ad6a00fcd734fab615540389` |
| 26 | `def` | [restoreState](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableReindex.lean/declarations/restorestate--12ec1a0912bbd0878667d73b.md) | 281 | `declaration-track:12ec1a0912bbd0878667d73b8f6ebe8555603a7bac49a309da7b863e003a5894` |
| 27 | `theorem` | [restore_transport](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableReindex.lean/declarations/restore-transport--e3cf0dd4611315bf21208c39.md) | 289 | `result-track:e3cf0dd4611315bf21208c398db4b47fed9ca73595aceb0d63d043c4c2f32f19` |
| 28 | `theorem` | [certified_transport](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableReindex.lean/declarations/certified-transport--647f439c48b1fa173665bdad.md) | 301 | `result-track:647f439c48b1fa173665bdad014c7d4072448931966e15b8b1eda0af86348ad8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
