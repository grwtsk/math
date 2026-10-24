# Verification target: GRWTSK.Topology.GeneralTopology.LocallyConnected.Variant9f6cef2bf366f1301e340b0b0e20b4432b1a5432dce36eb6934999088d29b13d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "07b954b72a3d4803de34da77d27d87ac5a74eb76",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LocallyConnected/Variant9f6cef2bf366f1301e340b0b0e20b4432b1a5432dce36eb6934999088d29b13d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Variant9f6cef2bf366f1301e340b0b0e20b4432b1a5432dce36eb6934999088d29b13d.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Variant9f6cef2bf366f1301e340b0b0e20b4432b1a5432dce36eb6934999088d29b13d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `07b954b72a3d4803de34da77d27d87ac5a74eb76`.

Source path: `GRWTSK/Topology/GeneralTopology/LocallyConnected/Variant9f6cef2bf366f1301e340b0b0e20b4432b1a5432dce36eb6934999088d29b13d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LocallyConnected/Variant9f6cef2bf366f1301e340b0b0e20b4432b1a5432dce36eb6934999088d29b13d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Connected.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [LocallyConnectedSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Variant9f6cef2bf366f1301e340b0b0e20b4432b1a5432dce36eb6934999088d29b13d.lean/declarations/locallyconnectedspace--a492ac0cbfb974b26615f067.md) | 38 | `declaration-track:a492ac0cbfb974b26615f067c13e9c44a12ebbfef03701c3ae4c5cb2f55d358c` |
| 2 | `theorem` | [locallyConnectedSpace_iff_hasBasis_isOpen_isConnected](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Variant9f6cef2bf366f1301e340b0b0e20b4432b1a5432dce36eb6934999088d29b13d.lean/declarations/locallyconnectedspace-iff-hasbasis-isopen-isconnected--1522aa1e684c01fe7ca0bb85.md) | 42 | `result-track:1522aa1e684c01fe7ca0bb850ec0e734e369e6b400e899ab52ad220abecaf669` |
| 3 | `theorem` | [locallyConnectedSpace_iff_subsets_isOpen_isConnected](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Variant9f6cef2bf366f1301e340b0b0e20b4432b1a5432dce36eb6934999088d29b13d.lean/declarations/locallyconnectedspace-iff-subsets-isopen-isconnected--8bb728ea591f5ed9ba0a0892.md) | 50 | `result-track:8bb728ea591f5ed9ba0a0892f7c647542caa473e2a68cd5bc907ddc08dd12346` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Variant9f6cef2bf366f1301e340b0b0e20b4432b1a5432dce36eb6934999088d29b13d.lean/declarations/instance--efec307a9ba8ea2b6aa65005.md) | 67 | `declaration-track:efec307a9ba8ea2b6aa65005939642f54f2fe38cf8a67053fa2085666b84ffa6` |
| 5 | `theorem` | [connectedComponentIn_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Variant9f6cef2bf366f1301e340b0b0e20b4432b1a5432dce36eb6934999088d29b13d.lean/declarations/connectedcomponentin-mem-nhds--a9b22838d3bc4ed7a7c2868c.md) | 73 | `result-track:a9b22838d3bc4ed7a7c2868c5bc11b31ec0a342a827e0848ef2eb348b7cc62ef` |
| 6 | `theorem` | [IsOpen.connectedComponentIn](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Variant9f6cef2bf366f1301e340b0b0e20b4432b1a5432dce36eb6934999088d29b13d.lean/declarations/isopen-connectedcomponentin--cfbbe8f76c03b66e2b8f8e8b.md) | 79 | `result-track:cfbbe8f76c03b66e2b8f8e8b83d27a8f85281c7e3690d1ab3f71c4b7f24bf503` |
| 7 | `theorem` | [isOpen_connectedComponent](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Variant9f6cef2bf366f1301e340b0b0e20b4432b1a5432dce36eb6934999088d29b13d.lean/declarations/isopen-connectedcomponent--aea88eae54eef595d8dc8eb5.md) | 86 | `result-track:aea88eae54eef595d8dc8eb542917adb3df24d5c3cd95a4f53d5bfb31b36510f` |
| 8 | `theorem` | [isClopen_connectedComponent](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Variant9f6cef2bf366f1301e340b0b0e20b4432b1a5432dce36eb6934999088d29b13d.lean/declarations/isclopen-connectedcomponent--7f073d3352f9c068a3eb473d.md) | 91 | `result-track:7f073d3352f9c068a3eb473de022bdebfddc1b8118cb6dbfeae9a3558de92324` |
| 9 | `theorem` | [locallyConnectedSpace_iff_connectedComponentIn_open](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Variant9f6cef2bf366f1301e340b0b0e20b4432b1a5432dce36eb6934999088d29b13d.lean/declarations/locallyconnectedspace-iff-connectedcomponentin-open--cb682513659d2f06686ee195.md) | 95 | `result-track:cb682513659d2f06686ee1951540a6bb1dcc94635a12fc90bddd00aafa6a949c` |
| 10 | `theorem` | [locallyConnectedSpace_iff_connected_subsets](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Variant9f6cef2bf366f1301e340b0b0e20b4432b1a5432dce36eb6934999088d29b13d.lean/declarations/locallyconnectedspace-iff-connected-subsets--e403e1d364c51f1710f96558.md) | 109 | `result-track:e403e1d364c51f1710f9655864e7961f5c38414007ff5cfbbadbe196568e5a33` |
| 11 | `theorem` | [locallyConnectedSpace_iff_connected_basis](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Variant9f6cef2bf366f1301e340b0b0e20b4432b1a5432dce36eb6934999088d29b13d.lean/declarations/locallyconnectedspace-iff-connected-basis--b6c1de75c7706e734ced0e05.md) | 122 | `result-track:b6c1de75c7706e734ced0e05ac666d24e32c48db10159a2d5a5b5f6d90d4d447` |
| 12 | `theorem` | [locallyConnectedSpace_of_connected_bases](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Variant9f6cef2bf366f1301e340b0b0e20b4432b1a5432dce36eb6934999088d29b13d.lean/declarations/locallyconnectedspace-of-connected-bases--b146a8b55af9c50a17980e83.md) | 128 | `result-track:b146a8b55af9c50a17980e836d9f6978e67c574eead915bf1062d45b2d10d447` |
| 13 | `lemma` | [Topology.IsOpenEmbedding.locallyConnectedSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Variant9f6cef2bf366f1301e340b0b0e20b4432b1a5432dce36eb6934999088d29b13d.lean/declarations/topology-isopenembedding-locallyconnectedspace--98c9604cb1015259bcf6bc07.md) | 137 | `result-track:98c9604cb1015259bcf6bc07584ab8242d5e291ce7f7d00859043c847ed44b85` |
| 14 | `theorem` | [IsOpen.locallyConnectedSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Variant9f6cef2bf366f1301e340b0b0e20b4432b1a5432dce36eb6934999088d29b13d.lean/declarations/isopen-locallyconnectedspace--7124ef74c5eff263602f7786.md) | 146 | `result-track:7124ef74c5eff263602f77868c121ae4a99aa0a946ca00f2b3d4ae790e50ae48` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
