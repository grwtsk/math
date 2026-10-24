# Verification target: GRWTSK.Topology.GeneralTopology.LocallyConnected.Varianta3be6adacb6ae5147ef7fbc535e0a8e62ae31ab51d86f5c695b3e453099dec65

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "afd96aafe30a89a89cc000ac6322f2c07b6883c2",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LocallyConnected/Varianta3be6adacb6ae5147ef7fbc535e0a8e62ae31ab51d86f5c695b3e453099dec65.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Varianta3be6adacb6ae5147ef7fbc535e0a8e62ae31ab51d86f5c695b3e453099dec65.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Varianta3be6adacb6ae5147ef7fbc535e0a8e62ae31ab51d86f5c695b3e453099dec65.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `afd96aafe30a89a89cc000ac6322f2c07b6883c2`.

Source path: `GRWTSK/Topology/GeneralTopology/LocallyConnected/Varianta3be6adacb6ae5147ef7fbc535e0a8e62ae31ab51d86f5c695b3e453099dec65.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LocallyConnected/Varianta3be6adacb6ae5147ef7fbc535e0a8e62ae31ab51d86f5c695b3e453099dec65.lean.json)

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
| 1 | `class` | [LocallyConnectedSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Varianta3be6adacb6ae5147ef7fbc535e0a8e62ae31ab51d86f5c695b3e453099dec65.lean/declarations/locallyconnectedspace--2dc337662eca9efa4f6bc026.md) | 35 | `declaration-track:2dc337662eca9efa4f6bc0269a4e866aeea0465c286822c869d7f9e6f6a5229a` |
| 2 | `theorem` | [locallyConnectedSpace_iff_hasBasis_isOpen_isConnected](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Varianta3be6adacb6ae5147ef7fbc535e0a8e62ae31ab51d86f5c695b3e453099dec65.lean/declarations/locallyconnectedspace-iff-hasbasis-isopen-isconnected--36679fb365b0b686afcf77f0.md) | 39 | `result-track:36679fb365b0b686afcf77f0accfb5bc5521f7fb2b4af695ca4835bbd33140dd` |
| 3 | `theorem` | [locallyConnectedSpace_iff_subsets_isOpen_isConnected](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Varianta3be6adacb6ae5147ef7fbc535e0a8e62ae31ab51d86f5c695b3e453099dec65.lean/declarations/locallyconnectedspace-iff-subsets-isopen-isconnected--a87f3e8940f5c20819308e6b.md) | 44 | `result-track:a87f3e8940f5c20819308e6b4835cfbf8494f120f323279e372b58e810bcb8a7` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Varianta3be6adacb6ae5147ef7fbc535e0a8e62ae31ab51d86f5c695b3e453099dec65.lean/declarations/instance--748fa42da20608b957ba45a4.md) | 58 | `declaration-track:748fa42da20608b957ba45a4b1960d307ecf7a84147812b33c0dec19060633bb` |
| 5 | `theorem` | [connectedComponentIn_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Varianta3be6adacb6ae5147ef7fbc535e0a8e62ae31ab51d86f5c695b3e453099dec65.lean/declarations/connectedcomponentin-mem-nhds--cde30429b3833e2e4493bf01.md) | 64 | `result-track:cde30429b3833e2e4493bf01ae18c77e85835d60aa16f0e46cd9c948ec999746` |
| 6 | `theorem` | [IsOpen.connectedComponentIn](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Varianta3be6adacb6ae5147ef7fbc535e0a8e62ae31ab51d86f5c695b3e453099dec65.lean/declarations/isopen-connectedcomponentin--33c3da519c9c3c669977255f.md) | 70 | `result-track:33c3da519c9c3c669977255fced2a3a95f6d4996c43573a6c5425df6f1356186` |
| 7 | `theorem` | [isOpen_connectedComponent](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Varianta3be6adacb6ae5147ef7fbc535e0a8e62ae31ab51d86f5c695b3e453099dec65.lean/declarations/isopen-connectedcomponent--475321409fd4ffac4ceee7fb.md) | 77 | `result-track:475321409fd4ffac4ceee7fb43ae40d57f445be2d182ec3268aeaac9c01644c7` |
| 8 | `theorem` | [isClopen_connectedComponent](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Varianta3be6adacb6ae5147ef7fbc535e0a8e62ae31ab51d86f5c695b3e453099dec65.lean/declarations/isclopen-connectedcomponent--998abb1d6ff1cc1177dc101a.md) | 82 | `result-track:998abb1d6ff1cc1177dc101a3c653bf61433215b9755c9ae1d2a3e37ed8ff710` |
| 9 | `theorem` | [locallyConnectedSpace_iff_connectedComponentIn_open](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Varianta3be6adacb6ae5147ef7fbc535e0a8e62ae31ab51d86f5c695b3e453099dec65.lean/declarations/locallyconnectedspace-iff-connectedcomponentin-open--2a761c352122c7c5fd1e87c4.md) | 86 | `result-track:2a761c352122c7c5fd1e87c4a900346b89eb55d56b2a4650593b1560b9fb372c` |
| 10 | `theorem` | [locallyConnectedSpace_iff_connected_subsets](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Varianta3be6adacb6ae5147ef7fbc535e0a8e62ae31ab51d86f5c695b3e453099dec65.lean/declarations/locallyconnectedspace-iff-connected-subsets--0cb921691929e78f73e77746.md) | 100 | `result-track:0cb921691929e78f73e777464fb094a7355062138933c4a8de9a3d7ca811206f` |
| 11 | `theorem` | [locallyConnectedSpace_iff_connected_basis](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Varianta3be6adacb6ae5147ef7fbc535e0a8e62ae31ab51d86f5c695b3e453099dec65.lean/declarations/locallyconnectedspace-iff-connected-basis--2bb66a9dda17b3c652968625.md) | 113 | `result-track:2bb66a9dda17b3c6529686256c8cc3e149dd2ca4573b0a5ecca0e9569a9cfb27` |
| 12 | `theorem` | [locallyConnectedSpace_of_connected_bases](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Varianta3be6adacb6ae5147ef7fbc535e0a8e62ae31ab51d86f5c695b3e453099dec65.lean/declarations/locallyconnectedspace-of-connected-bases--d6e5953c134af65d3386cd31.md) | 119 | `result-track:d6e5953c134af65d3386cd311fedc593a04aafe58f46e7d2963a0fd67a2de78e` |
| 13 | `theorem` | [TopologicalSpace.IsTopologicalBasis.isOpen_isPreconnected](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Varianta3be6adacb6ae5147ef7fbc535e0a8e62ae31ab51d86f5c695b3e453099dec65.lean/declarations/topologicalspace-istopologicalbasis-isopen-ispreconnected--d778dfe28030e0f53d697674.md) | 128 | `result-track:d778dfe28030e0f53d6976744ea40b319196f70b1a82a0edd6c9a54d7d91f187` |
| 14 | `theorem` | [locallyConnectedSpace_iff_isTopologicalBasis_isOpen_isPreconnected](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Varianta3be6adacb6ae5147ef7fbc535e0a8e62ae31ab51d86f5c695b3e453099dec65.lean/declarations/locallyconnectedspace-iff-istopologicalbasis-isopen-ispreconnected--8d07bbd7a8566d624a5bbe1e.md) | 135 | `result-track:8d07bbd7a8566d624a5bbe1e039db922277deb82ef769f69ec87c1c72a175019` |
| 15 | `lemma` | [Topology.IsOpenEmbedding.locallyConnectedSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Varianta3be6adacb6ae5147ef7fbc535e0a8e62ae31ab51d86f5c695b3e453099dec65.lean/declarations/topology-isopenembedding-locallyconnectedspace--3a9b0680d1ebbde6e7ba5054.md) | 141 | `result-track:3a9b0680d1ebbde6e7ba50547930fdcbb1cee4993f17ab8a314ed52bfc3ee55d` |
| 16 | `theorem` | [IsOpen.locallyConnectedSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Varianta3be6adacb6ae5147ef7fbc535e0a8e62ae31ab51d86f5c695b3e453099dec65.lean/declarations/isopen-locallyconnectedspace--191e38ddfce195af7f79b3e2.md) | 150 | `result-track:191e38ddfce195af7f79b3e2ee6158fc34b50ea86d27aedbf0bb1e683c0b8762` |
| 17 | `theorem` | [Topology.IsCoinducing.locallyConnectedSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Varianta3be6adacb6ae5147ef7fbc535e0a8e62ae31ab51d86f5c695b3e453099dec65.lean/declarations/topology-iscoinducing-locallyconnectedspace--7cded6d32e2a2e2bbb3f1d30.md) | 155 | `result-track:7cded6d32e2a2e2bbb3f1d30dfb83b0a9425c06508c600f0eb798295fb3dc6f6` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Varianta3be6adacb6ae5147ef7fbc535e0a8e62ae31ab51d86f5c695b3e453099dec65.lean/declarations/instance--cf30b8da520bb740c025a010.md) | 162 | `declaration-track:cf30b8da520bb740c025a010b292f8eba330df87389f59f1127b45ee9da6a2e7` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Varianta3be6adacb6ae5147ef7fbc535e0a8e62ae31ab51d86f5c695b3e453099dec65.lean/declarations/instance--773c673f7031d787137166a7.md) | 169 | `declaration-track:773c673f7031d787137166a76035993353174dda8fd83ac932d3fc25704c38a9` |
| 20 | `instance` | [Prod.locallyConnectedSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Varianta3be6adacb6ae5147ef7fbc535e0a8e62ae31ab51d86f5c695b3e453099dec65.lean/declarations/prod-locallyconnectedspace--484c0ee65e94e3e32f1ce3dc.md) | 173 | `declaration-track:484c0ee65e94e3e32f1ce3dce3f8f055458721b08c2250a8f514c52162672631` |
| 21 | `theorem` | [Pi.locallyConnectedSpace_of_finite_not_preconnectedSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Varianta3be6adacb6ae5147ef7fbc535e0a8e62ae31ab51d86f5c695b3e453099dec65.lean/declarations/pi-locallyconnectedspace-of-finite-not-preconnectedspace--dafc9da6133909f6b87f72d6.md) | 185 | `result-track:dafc9da6133909f6b87f72d6016445383eb9c0c58e86acebf521cb2146a94d62` |
| 22 | `instance` | [Pi.locallyConnectedSpace_of_finite](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Varianta3be6adacb6ae5147ef7fbc535e0a8e62ae31ab51d86f5c695b3e453099dec65.lean/declarations/pi-locallyconnectedspace-of-finite--23d25fd6a53f8e9ae48364d9.md) | 206 | `declaration-track:23d25fd6a53f8e9ae48364d973588e00882ff4791aa0032283ae07e0bf41d658` |
| 23 | `instance` | [Pi.locallyConnectedSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Varianta3be6adacb6ae5147ef7fbc535e0a8e62ae31ab51d86f5c695b3e453099dec65.lean/declarations/pi-locallyconnectedspace--99da074521430469938b816f.md) | 214 | `declaration-track:99da074521430469938b816f97918ea1477042dbdbd3d6259da6b87a4a0fb459` |
| 24 | `theorem` | [Pi.locallyConnectedSpace_iff](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Varianta3be6adacb6ae5147ef7fbc535e0a8e62ae31ab51d86f5c695b3e453099dec65.lean/declarations/pi-locallyconnectedspace-iff--c3922a1369cc55ac8c74a3e0.md) | 222 | `result-track:c3922a1369cc55ac8c74a3e0d4fb573a29260305544fea799f99e1468761f88d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
