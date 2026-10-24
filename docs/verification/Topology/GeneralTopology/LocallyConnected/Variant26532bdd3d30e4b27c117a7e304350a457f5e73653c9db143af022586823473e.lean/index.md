# Verification target: GRWTSK.Topology.GeneralTopology.LocallyConnected.Variant26532bdd3d30e4b27c117a7e304350a457f5e73653c9db143af022586823473e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a3aa777c0ad45710068f358fd6b6906337d28efc",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LocallyConnected/Variant26532bdd3d30e4b27c117a7e304350a457f5e73653c9db143af022586823473e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Variant26532bdd3d30e4b27c117a7e304350a457f5e73653c9db143af022586823473e.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Variant26532bdd3d30e4b27c117a7e304350a457f5e73653c9db143af022586823473e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a3aa777c0ad45710068f358fd6b6906337d28efc`.

Source path: `GRWTSK/Topology/GeneralTopology/LocallyConnected/Variant26532bdd3d30e4b27c117a7e304350a457f5e73653c9db143af022586823473e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LocallyConnected/Variant26532bdd3d30e4b27c117a7e304350a457f5e73653c9db143af022586823473e.lean.json)

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
| 1 | `class` | [LocallyConnectedSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Variant26532bdd3d30e4b27c117a7e304350a457f5e73653c9db143af022586823473e.lean/declarations/locallyconnectedspace--3746d54da28bc913e6845a8d.md) | 43 | `declaration-track:3746d54da28bc913e6845a8dc1187feeca22da676e77ef430146459680cc5b72` |
| 2 | `theorem` | [locallyConnectedSpace_iff_hasBasis_isOpen_isConnected](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Variant26532bdd3d30e4b27c117a7e304350a457f5e73653c9db143af022586823473e.lean/declarations/locallyconnectedspace-iff-hasbasis-isopen-isconnected--e8794191e06a8bd46a2e915b.md) | 47 | `result-track:e8794191e06a8bd46a2e915bb32d3b2c3547eb156d271a34c0dc59ac1250cf61` |
| 3 | `theorem` | [locallyConnectedSpace_iff_subsets_isOpen_isConnected](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Variant26532bdd3d30e4b27c117a7e304350a457f5e73653c9db143af022586823473e.lean/declarations/locallyconnectedspace-iff-subsets-isopen-isconnected--4c46b77b7c39150432b92428.md) | 52 | `result-track:4c46b77b7c39150432b924289c90bcc05b28a3aaf02b59f8b71a3c8415387a27` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Variant26532bdd3d30e4b27c117a7e304350a457f5e73653c9db143af022586823473e.lean/declarations/instance--e6c3dd93481a0b4c45f9ade2.md) | 66 | `declaration-track:e6c3dd93481a0b4c45f9ade2ba60b89b01cc3da8acab19ab981066c529a20243` |
| 5 | `theorem` | [connectedComponentIn_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Variant26532bdd3d30e4b27c117a7e304350a457f5e73653c9db143af022586823473e.lean/declarations/connectedcomponentin-mem-nhds--32eb848508affae710070171.md) | 72 | `result-track:32eb848508affae710070171cdfe7e851d321ea3d5bc7fdbc18bc1ed7c41d825` |
| 6 | `theorem` | [IsOpen.connectedComponentIn](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Variant26532bdd3d30e4b27c117a7e304350a457f5e73653c9db143af022586823473e.lean/declarations/isopen-connectedcomponentin--f1ac6673bd7be13af23c6c8e.md) | 78 | `result-track:f1ac6673bd7be13af23c6c8efda2e9e9b3df4acc3caaa71819a9963786da57bf` |
| 7 | `theorem` | [isOpen_connectedComponent](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Variant26532bdd3d30e4b27c117a7e304350a457f5e73653c9db143af022586823473e.lean/declarations/isopen-connectedcomponent--291b81772ca5484beb75d420.md) | 85 | `result-track:291b81772ca5484beb75d420dcb9965faff65b18d78fbead87dd543319b48fab` |
| 8 | `theorem` | [isClopen_connectedComponent](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Variant26532bdd3d30e4b27c117a7e304350a457f5e73653c9db143af022586823473e.lean/declarations/isclopen-connectedcomponent--d86caf9744b6af54352d8d82.md) | 90 | `result-track:d86caf9744b6af54352d8d823f7a29fdcc0dfca4474dff357bb643a27a1ebea0` |
| 9 | `theorem` | [locallyConnectedSpace_iff_connectedComponentIn_open](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Variant26532bdd3d30e4b27c117a7e304350a457f5e73653c9db143af022586823473e.lean/declarations/locallyconnectedspace-iff-connectedcomponentin-open--5822672bbdba54e1c47ea750.md) | 94 | `result-track:5822672bbdba54e1c47ea750fe4b647ebfbb1df42d798f7b77bd29bcf627717e` |
| 10 | `theorem` | [locallyConnectedSpace_iff_connected_subsets](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Variant26532bdd3d30e4b27c117a7e304350a457f5e73653c9db143af022586823473e.lean/declarations/locallyconnectedspace-iff-connected-subsets--3ac0950abcf3d58ebf6a1d0b.md) | 108 | `result-track:3ac0950abcf3d58ebf6a1d0be691cd3861f9b0d614af7f59a8e09c33917e48c0` |
| 11 | `theorem` | [locallyConnectedSpace_iff_connected_basis](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Variant26532bdd3d30e4b27c117a7e304350a457f5e73653c9db143af022586823473e.lean/declarations/locallyconnectedspace-iff-connected-basis--15e929eb6a7c13733e7bbd46.md) | 121 | `result-track:15e929eb6a7c13733e7bbd46d44926e6ab5c768b0828be561f7ea8a0973cd9f9` |
| 12 | `theorem` | [locallyConnectedSpace_of_connected_bases](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Variant26532bdd3d30e4b27c117a7e304350a457f5e73653c9db143af022586823473e.lean/declarations/locallyconnectedspace-of-connected-bases--b4f115015297194cdd87b39b.md) | 127 | `result-track:b4f115015297194cdd87b39b06d9f00263a5caacd574971b4a856a6b9c8386ce` |
| 13 | `theorem` | [TopologicalSpace.IsTopologicalBasis.isOpen_isPreconnected](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Variant26532bdd3d30e4b27c117a7e304350a457f5e73653c9db143af022586823473e.lean/declarations/topologicalspace-istopologicalbasis-isopen-ispreconnected--7163a8b7bb5250df7f558856.md) | 136 | `result-track:7163a8b7bb5250df7f558856daee426093b67237a3c809eb291a707ca2e2d4ca` |
| 14 | `theorem` | [locallyConnectedSpace_iff_isTopologicalBasis_isOpen_isPreconnected](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Variant26532bdd3d30e4b27c117a7e304350a457f5e73653c9db143af022586823473e.lean/declarations/locallyconnectedspace-iff-istopologicalbasis-isopen-ispreconnected--723862c5bbd03589267df872.md) | 143 | `result-track:723862c5bbd03589267df872365017c27eeee7e49d3cb92a008175684e7295dc` |
| 15 | `lemma` | [Topology.IsOpenEmbedding.locallyConnectedSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Variant26532bdd3d30e4b27c117a7e304350a457f5e73653c9db143af022586823473e.lean/declarations/topology-isopenembedding-locallyconnectedspace--d59f4f86bfad7f6c756f33e6.md) | 149 | `result-track:d59f4f86bfad7f6c756f33e66e66b2a3ed4f139144700181c8cd7254b535796d` |
| 16 | `theorem` | [IsOpen.locallyConnectedSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Variant26532bdd3d30e4b27c117a7e304350a457f5e73653c9db143af022586823473e.lean/declarations/isopen-locallyconnectedspace--472e81184bb4ad660eeb1129.md) | 158 | `result-track:472e81184bb4ad660eeb112985362046bc92f6c952e1777cbd517a540f529e66` |
| 17 | `theorem` | [Topology.IsCoinducing.locallyConnectedSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Variant26532bdd3d30e4b27c117a7e304350a457f5e73653c9db143af022586823473e.lean/declarations/topology-iscoinducing-locallyconnectedspace--845ebd025524526f8850fb9b.md) | 163 | `result-track:845ebd025524526f8850fb9bc42cb9fac05dd9d3d0e592f8de29d514040a2664` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Variant26532bdd3d30e4b27c117a7e304350a457f5e73653c9db143af022586823473e.lean/declarations/instance--2797c0235f08f573a7c4e7cc.md) | 170 | `declaration-track:2797c0235f08f573a7c4e7cc07ad1ef10df2a7a36fcbb15fbe1a59a5272b9e93` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Variant26532bdd3d30e4b27c117a7e304350a457f5e73653c9db143af022586823473e.lean/declarations/instance--8243abc7d8ba70340c160770.md) | 177 | `declaration-track:8243abc7d8ba70340c160770c67c5cb69d0a45aea08fad0c4c7a3593b4f2fcce` |
| 20 | `instance` | [Prod.locallyConnectedSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Variant26532bdd3d30e4b27c117a7e304350a457f5e73653c9db143af022586823473e.lean/declarations/prod-locallyconnectedspace--84881d7c59eab49bc48e57ba.md) | 181 | `declaration-track:84881d7c59eab49bc48e57baf177bd95c6039cd2a4c15b12af705bb45d0e9aa6` |
| 21 | `theorem` | [Pi.locallyConnectedSpace_of_finite_not_preconnectedSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Variant26532bdd3d30e4b27c117a7e304350a457f5e73653c9db143af022586823473e.lean/declarations/pi-locallyconnectedspace-of-finite-not-preconnectedspace--488d17136ce4a2d385e5f617.md) | 193 | `result-track:488d17136ce4a2d385e5f6173740d3f89294414af2f17dc46d64528efc84df74` |
| 22 | `instance` | [Pi.locallyConnectedSpace_of_finite](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Variant26532bdd3d30e4b27c117a7e304350a457f5e73653c9db143af022586823473e.lean/declarations/pi-locallyconnectedspace-of-finite--7f6347fd3ae2d1a0fccc7c57.md) | 214 | `declaration-track:7f6347fd3ae2d1a0fccc7c57d0ae2c2f45765bad88ebb1b34b58504ba0643e12` |
| 23 | `instance` | [Pi.locallyConnectedSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Variant26532bdd3d30e4b27c117a7e304350a457f5e73653c9db143af022586823473e.lean/declarations/pi-locallyconnectedspace--2bde9f8ad6252a4add14c6ee.md) | 222 | `declaration-track:2bde9f8ad6252a4add14c6eef12a412cfdb24ea15fcf568b9d2756d434196d36` |
| 24 | `theorem` | [Pi.locallyConnectedSpace_iff](../../../../../mathematics/Topology/GeneralTopology/LocallyConnected/Variant26532bdd3d30e4b27c117a7e304350a457f5e73653c9db143af022586823473e.lean/declarations/pi-locallyconnectedspace-iff--9956306e3201ad05891b84e0.md) | 230 | `result-track:9956306e3201ad05891b84e0b533dd5885312ef1ca6dfb25c7d5b6a0ac397148` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
