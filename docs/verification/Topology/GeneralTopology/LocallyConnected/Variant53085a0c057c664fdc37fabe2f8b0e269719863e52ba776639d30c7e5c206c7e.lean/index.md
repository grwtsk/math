# Verification target: GRWTSK.Topology.GeneralTopology.LocallyConnected.Variant53085a0c057c664fdc37fabe2f8b0e269719863e52ba776639d30c7e5c206c7e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2916c3b909f19c2504f4874ab700e182423a7b00",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LocallyConnected/Variant53085a0c057c664fdc37fabe2f8b0e269719863e52ba776639d30c7e5c206c7e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Variant53085a0c057c664fdc37fabe2f8b0e269719863e52ba776639d30c7e5c206c7e.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Variant53085a0c057c664fdc37fabe2f8b0e269719863e52ba776639d30c7e5c206c7e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2916c3b909f19c2504f4874ab700e182423a7b00`.

Source path: `GRWTSK/Topology/GeneralTopology/LocallyConnected/Variant53085a0c057c664fdc37fabe2f8b0e269719863e52ba776639d30c7e5c206c7e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LocallyConnected/Variant53085a0c057c664fdc37fabe2f8b0e269719863e52ba776639d30c7e5c206c7e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Connected.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [LocallyConnectedSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Variant53085a0c057c664fdc37fabe2f8b0e269719863e52ba776639d30c7e5c206c7e.lean/declarations/locallyconnectedspace--05d4d61417cc7c400e24d630.md) | 30 | `declaration-track:05d4d61417cc7c400e24d6301bea17939c1660c5c12bd4be81df38f1e9e26910` |
| 2 | `theorem` | [locallyConnectedSpace_iff_hasBasis_isOpen_isConnected](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Variant53085a0c057c664fdc37fabe2f8b0e269719863e52ba776639d30c7e5c206c7e.lean/declarations/locallyconnectedspace-iff-hasbasis-isopen-isconnected--f12b302f2136e4ce7c2f53de.md) | 34 | `result-track:f12b302f2136e4ce7c2f53de9e48ad1e5963f56bceb283502b869e12f5ea883b` |
| 3 | `theorem` | [locallyConnectedSpace_iff_subsets_isOpen_isConnected](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Variant53085a0c057c664fdc37fabe2f8b0e269719863e52ba776639d30c7e5c206c7e.lean/declarations/locallyconnectedspace-iff-subsets-isopen-isconnected--cca4adb904a6769d2b0e0008.md) | 42 | `result-track:cca4adb904a6769d2b0e0008a53bc9b15bd30ceed7b58d2704e3610e2861ac2d` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Variant53085a0c057c664fdc37fabe2f8b0e269719863e52ba776639d30c7e5c206c7e.lean/declarations/instance--18640ae5414dd9940c926bee.md) | 59 | `declaration-track:18640ae5414dd9940c926beebabdb5e3528c21b9cce8c8c103e5d960e7c8f964` |
| 5 | `theorem` | [connectedComponentIn_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Variant53085a0c057c664fdc37fabe2f8b0e269719863e52ba776639d30c7e5c206c7e.lean/declarations/connectedcomponentin-mem-nhds--f7bf884719214a25ff0e1160.md) | 65 | `result-track:f7bf884719214a25ff0e1160c71fc243f276acf2ca18d68f450e0551601e8283` |
| 6 | `theorem` | [IsOpen.connectedComponentIn](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Variant53085a0c057c664fdc37fabe2f8b0e269719863e52ba776639d30c7e5c206c7e.lean/declarations/isopen-connectedcomponentin--96594ec40f9861c9113016ba.md) | 71 | `result-track:96594ec40f9861c9113016ba299a2393eaa7c3381b726e799ff8f7ce1d6794cf` |
| 7 | `theorem` | [isOpen_connectedComponent](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Variant53085a0c057c664fdc37fabe2f8b0e269719863e52ba776639d30c7e5c206c7e.lean/declarations/isopen-connectedcomponent--0c058a53fdf8d9f342143e9d.md) | 78 | `result-track:0c058a53fdf8d9f342143e9d01a6e349d9bce9f1463e2d62228d924fb99a81f9` |
| 8 | `theorem` | [isClopen_connectedComponent](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Variant53085a0c057c664fdc37fabe2f8b0e269719863e52ba776639d30c7e5c206c7e.lean/declarations/isclopen-connectedcomponent--5e6cdda0de330819803598d9.md) | 83 | `result-track:5e6cdda0de330819803598d9ccaf751cc99a4de621a73cbc01df668547925e6c` |
| 9 | `theorem` | [locallyConnectedSpace_iff_connectedComponentIn_open](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Variant53085a0c057c664fdc37fabe2f8b0e269719863e52ba776639d30c7e5c206c7e.lean/declarations/locallyconnectedspace-iff-connectedcomponentin-open--6f0ab52240d14399b74fe6e9.md) | 87 | `result-track:6f0ab52240d14399b74fe6e935f184736e759acb413a4a0ca017c2d8d01a2fec` |
| 10 | `theorem` | [locallyConnectedSpace_iff_connected_subsets](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Variant53085a0c057c664fdc37fabe2f8b0e269719863e52ba776639d30c7e5c206c7e.lean/declarations/locallyconnectedspace-iff-connected-subsets--57b84ca8301c546b3aaaf901.md) | 101 | `result-track:57b84ca8301c546b3aaaf901f7973ba5975b86b61a44e1b55f4b8106b995714b` |
| 11 | `theorem` | [locallyConnectedSpace_iff_connected_basis](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Variant53085a0c057c664fdc37fabe2f8b0e269719863e52ba776639d30c7e5c206c7e.lean/declarations/locallyconnectedspace-iff-connected-basis--9797cf9076ae5040883c865c.md) | 114 | `result-track:9797cf9076ae5040883c865ca09697246af0528428811aab870e024a192fb257` |
| 12 | `theorem` | [locallyConnectedSpace_of_connected_bases](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Variant53085a0c057c664fdc37fabe2f8b0e269719863e52ba776639d30c7e5c206c7e.lean/declarations/locallyconnectedspace-of-connected-bases--8bf3dff355224a7504a60a5b.md) | 120 | `result-track:8bf3dff355224a7504a60a5be67e7d80ffb022ea606c31ec9388ee3bb7488076` |
| 13 | `lemma` | [Topology.IsOpenEmbedding.locallyConnectedSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Variant53085a0c057c664fdc37fabe2f8b0e269719863e52ba776639d30c7e5c206c7e.lean/declarations/topology-isopenembedding-locallyconnectedspace--6bd5e1b6371ea75d793ffbb9.md) | 129 | `result-track:6bd5e1b6371ea75d793ffbb968a30f1cf199be0b1ad716d264734e52beed4292` |
| 14 | `theorem` | [IsOpen.locallyConnectedSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Variant53085a0c057c664fdc37fabe2f8b0e269719863e52ba776639d30c7e5c206c7e.lean/declarations/isopen-locallyconnectedspace--ee7745cc5da7ae6ac7dbea40.md) | 138 | `result-track:ee7745cc5da7ae6ac7dbea409ed443cd712bf0a6ef3733be99f5f95eeabd1ab7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
