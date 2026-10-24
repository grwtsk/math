# Verification target: GRWTSK.Topology.GeneralTopology.LocPathConnected.Variant5a7d760e7344d520a5f272ead6ebd8fba00caef126c71fbc3aff62dd3efed12b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "20b35ae20c58c764294baa7a3d75478f9fe36f33",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LocPathConnected/Variant5a7d760e7344d520a5f272ead6ebd8fba00caef126c71fbc3aff62dd3efed12b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/LocPathConnected/Variant5a7d760e7344d520a5f272ead6ebd8fba00caef126c71fbc3aff62dd3efed12b.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/LocPathConnected/Variant5a7d760e7344d520a5f272ead6ebd8fba00caef126c71fbc3aff62dd3efed12b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `20b35ae20c58c764294baa7a3d75478f9fe36f33`.

Source path: `GRWTSK/Topology/GeneralTopology/LocPathConnected/Variant5a7d760e7344d520a5f272ead6ebd8fba00caef126c71fbc3aff62dd3efed12b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LocPathConnected/Variant5a7d760e7344d520a5f272ead6ebd8fba00caef126c71fbc3aff62dd3efed12b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Connected.PathConnected` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [LocPathConnectedSpace](../../../../../mathematics/Topology/GeneralTopology/LocPathConnected/Variant5a7d760e7344d520a5f272ead6ebd8fba00caef126c71fbc3aff62dd3efed12b.lean/declarations/locpathconnectedspace--4b2ef7ffa9a55ee2b104d5ff.md) | 50 | `declaration-track:4b2ef7ffa9a55ee2b104d5ffcd967a85622a78950f4d4cf48c05cba6c5f68c55` |
| 2 | `theorem` | [LocPathConnectedSpace.of_bases](../../../../../mathematics/Topology/GeneralTopology/LocPathConnected/Variant5a7d760e7344d520a5f272ead6ebd8fba00caef126c71fbc3aff62dd3efed12b.lean/declarations/locpathconnectedspace-of-bases--e41c229bddad922093e78500.md) | 56 | `result-track:e41c229bddad922093e78500a75e30d113663628a135d79564acac815a78e7e9` |
| 3 | `theorem` | [IsOpen.pathComponentIn](../../../../../mathematics/Topology/GeneralTopology/LocPathConnected/Variant5a7d760e7344d520a5f272ead6ebd8fba00caef126c71fbc3aff62dd3efed12b.lean/declarations/isopen-pathcomponentin--7435a68378369629d6d9a3e1.md) | 67 | `result-track:7435a68378369629d6d9a3e1531e8577e5befd6f96ac5cbe46d9f306bb8a0130` |
| 4 | `theorem` | [IsOpen.pathComponent](../../../../../mathematics/Topology/GeneralTopology/LocPathConnected/Variant5a7d760e7344d520a5f272ead6ebd8fba00caef126c71fbc3aff62dd3efed12b.lean/declarations/isopen-pathcomponent--686fc99d1709e7446f00688e.md) | 76 | `result-track:686fc99d1709e7446f00688e46248374c7ff24eec2adc4688ed9cd5a3a5f9196` |
| 5 | `theorem` | [IsClosed.pathComponent](../../../../../mathematics/Topology/GeneralTopology/LocPathConnected/Variant5a7d760e7344d520a5f272ead6ebd8fba00caef126c71fbc3aff62dd3efed12b.lean/declarations/isclosed-pathcomponent--a93f650c01ea7c5e63130f21.md) | 81 | `result-track:a93f650c01ea7c5e63130f21256595accf3bc7908ec4ea44ef2ec040f5a2b764` |
| 6 | `theorem` | [IsClopen.pathComponent](../../../../../mathematics/Topology/GeneralTopology/LocPathConnected/Variant5a7d760e7344d520a5f272ead6ebd8fba00caef126c71fbc3aff62dd3efed12b.lean/declarations/isclopen-pathcomponent--d05fd7f7bf593614b3215d9b.md) | 89 | `result-track:d05fd7f7bf593614b3215d9b96808a6877f1cabc7dee3f85fd65d879282b7ace` |
| 7 | `lemma` | [pathComponentIn_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/LocPathConnected/Variant5a7d760e7344d520a5f272ead6ebd8fba00caef126c71fbc3aff62dd3efed12b.lean/declarations/pathcomponentin-mem-nhds--69bb3ff7bdd12966ae5381ed.md) | 92 | `result-track:69bb3ff7bdd12966ae5381edfa7428c329529314de77b3998e6cac69da198051` |
| 8 | `theorem` | [pathConnectedSpace_iff_connectedSpace](../../../../../mathematics/Topology/GeneralTopology/LocPathConnected/Variant5a7d760e7344d520a5f272ead6ebd8fba00caef126c71fbc3aff62dd3efed12b.lean/declarations/pathconnectedspace-iff-connectedspace--07e7fc25bb9f9134f9699abf.md) | 97 | `result-track:07e7fc25bb9f9134f9699abff8af33b6b5512511f7de66b3b538abad76cb20aa` |
| 9 | `theorem` | [pathComponent_eq_connectedComponent](../../../../../mathematics/Topology/GeneralTopology/LocPathConnected/Variant5a7d760e7344d520a5f272ead6ebd8fba00caef126c71fbc3aff62dd3efed12b.lean/declarations/pathcomponent-eq-connectedcomponent--b1344eace6d7f1fd289d3984.md) | 101 | `result-track:b1344eace6d7f1fd289d3984fa29ebc63d8d462bc7c628b96f3cae088ad52928` |
| 10 | `theorem` | [pathConnected_subset_basis](../../../../../mathematics/Topology/GeneralTopology/LocPathConnected/Variant5a7d760e7344d520a5f272ead6ebd8fba00caef126c71fbc3aff62dd3efed12b.lean/declarations/pathconnected-subset-basis--063fc392ae6599b236fb5903.md) | 105 | `result-track:063fc392ae6599b236fb5903a276d27cfea86015176df708ca3c392838fd7f9a` |
| 11 | `theorem` | [isOpen_isPathConnected_basis](../../../../../mathematics/Topology/GeneralTopology/LocPathConnected/Variant5a7d760e7344d520a5f272ead6ebd8fba00caef126c71fbc3aff62dd3efed12b.lean/declarations/isopen-ispathconnected-basis--93cd812d3310290463163c30.md) | 109 | `result-track:93cd812d3310290463163c30f318a25cca534af87eba885fdc9765fcbb64d67a` |
| 12 | `theorem` | [Topology.IsOpenEmbedding.locPathConnectedSpace](../../../../../mathematics/Topology/GeneralTopology/LocPathConnected/Variant5a7d760e7344d520a5f272ead6ebd8fba00caef126c71fbc3aff62dd3efed12b.lean/declarations/topology-isopenembedding-locpathconnectedspace--cdcc5fbbf0e95353a5cbfb9a.md) | 116 | `result-track:cdcc5fbbf0e95353a5cbfb9aa5dd7630e4c1838f677cb6b700f9dabb79a625d1` |
| 13 | `theorem` | [IsOpen.locPathConnectedSpace](../../../../../mathematics/Topology/GeneralTopology/LocPathConnected/Variant5a7d760e7344d520a5f272ead6ebd8fba00caef126c71fbc3aff62dd3efed12b.lean/declarations/isopen-locpathconnectedspace--328fee114b0a38d598d922d0.md) | 124 | `result-track:328fee114b0a38d598d922d08be0952f700d84fd95ebd7281ae070a1aa4c0e31` |
| 14 | `theorem` | [IsOpen.isConnected_iff_isPathConnected](../../../../../mathematics/Topology/GeneralTopology/LocPathConnected/Variant5a7d760e7344d520a5f272ead6ebd8fba00caef126c71fbc3aff62dd3efed12b.lean/declarations/isopen-isconnected-iff-ispathconnected--3f59705d24da0d2ab0c53a68.md) | 127 | `result-track:3f59705d24da0d2ab0c53a6814fa16856a22f1439ab6c55a31a12d5b0782922c` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/LocPathConnected/Variant5a7d760e7344d520a5f272ead6ebd8fba00caef126c71fbc3aff62dd3efed12b.lean/declarations/instance--430da911fb741c9061720fc3.md) | 134 | `declaration-track:430da911fb741c9061720fc35f36d8631d24643da89229083285475af9a94b86` |
| 16 | `lemma` | [locPathConnectedSpace_iff_isOpen_pathComponentIn](../../../../../mathematics/Topology/GeneralTopology/LocPathConnected/Variant5a7d760e7344d520a5f272ead6ebd8fba00caef126c71fbc3aff62dd3efed12b.lean/declarations/locpathconnectedspace-iff-isopen-pathcomponentin--b0aa8783052fc0954a02fb51.md) | 141 | `result-track:b0aa8783052fc0954a02fb51f4111511bebcff66fcd244e3ada38bcc7a11e54d` |
| 17 | `lemma` | [locPathConnectedSpace_iff_pathComponentIn_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/LocPathConnected/Variant5a7d760e7344d520a5f272ead6ebd8fba00caef126c71fbc3aff62dd3efed12b.lean/declarations/locpathconnectedspace-iff-pathcomponentin-mem-nhds--d4a3597e0e9586b94e1b8a94.md) | 150 | `result-track:d4a3597e0e9586b94e1b8a9467242542d2ee90f461de6854b362520a8c02047e` |
| 18 | `lemma` | [LocPathConnectedSpace.coinduced](../../../../../mathematics/Topology/GeneralTopology/LocPathConnected/Variant5a7d760e7344d520a5f272ead6ebd8fba00caef126c71fbc3aff62dd3efed12b.lean/declarations/locpathconnectedspace-coinduced--9851f8b198823efa785547cf.md) | 161 | `result-track:9851f8b198823efa785547cf4810b0a74b8bb943ca85aeed92b4d47c9e30f023` |
| 19 | `lemma` | [Topology.IsQuotientMap.locPathConnectedSpace](../../../../../mathematics/Topology/GeneralTopology/LocPathConnected/Variant5a7d760e7344d520a5f272ead6ebd8fba00caef126c71fbc3aff62dd3efed12b.lean/declarations/topology-isquotientmap-locpathconnectedspace--36f02df2f341076096b1284d.md) | 175 | `result-track:36f02df2f341076096b1284d77ec5bc57167b148b5ad0b3ad85b12eb2ae69367` |
| 20 | `instance` | [Quot.locPathConnectedSpace](../../../../../mathematics/Topology/GeneralTopology/LocPathConnected/Variant5a7d760e7344d520a5f272ead6ebd8fba00caef126c71fbc3aff62dd3efed12b.lean/declarations/quot-locpathconnectedspace--e51e4d91c118e41c43b02806.md) | 180 | `declaration-track:e51e4d91c118e41c43b02806fbc9bf763f34351b2124ec7821b475a67acf3241` |
| 21 | `instance` | [Quotient.locPathConnectedSpace](../../../../../mathematics/Topology/GeneralTopology/LocPathConnected/Variant5a7d760e7344d520a5f272ead6ebd8fba00caef126c71fbc3aff62dd3efed12b.lean/declarations/quotient-locpathconnectedspace--b5240d767caa49415ce0dc72.md) | 184 | `declaration-track:b5240d767caa49415ce0dc727434372a16b87b138f7ef5b40e57d8035e484847` |
| 22 | `instance` | [Sum.locPathConnectedSpace.](../../../../../mathematics/Topology/GeneralTopology/LocPathConnected/Variant5a7d760e7344d520a5f272ead6ebd8fba00caef126c71fbc3aff62dd3efed12b.lean/declarations/sum-locpathconnectedspace--773aa369a013b6e80440c558.md) | 188 | `declaration-track:773aa369a013b6e80440c55890b5de9be2560d6c3e8da85c421b8dd6ff7cd6bf` |
| 23 | `instance` | [Sigma.locPathConnectedSpace](../../../../../mathematics/Topology/GeneralTopology/LocPathConnected/Variant5a7d760e7344d520a5f272ead6ebd8fba00caef126c71fbc3aff62dd3efed12b.lean/declarations/sigma-locpathconnectedspace--f96071d1ce97a31277858323.md) | 209 | `declaration-track:f96071d1ce97a31277858323ac98327ac691219477196fca6e38dd9aeacf131c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
