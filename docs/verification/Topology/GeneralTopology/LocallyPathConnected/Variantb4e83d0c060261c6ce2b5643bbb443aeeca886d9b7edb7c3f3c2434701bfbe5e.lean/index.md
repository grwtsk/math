# Verification target: GRWTSK.Topology.GeneralTopology.LocallyPathConnected.Variantb4e83d0c060261c6ce2b5643bbb443aeeca886d9b7edb7c3f3c2434701bfbe5e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da4d508c57a855d9235fb2c7df053c9f58394fb7",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LocallyPathConnected/Variantb4e83d0c060261c6ce2b5643bbb443aeeca886d9b7edb7c3f3c2434701bfbe5e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantb4e83d0c060261c6ce2b5643bbb443aeeca886d9b7edb7c3f3c2434701bfbe5e.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantb4e83d0c060261c6ce2b5643bbb443aeeca886d9b7edb7c3f3c2434701bfbe5e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da4d508c57a855d9235fb2c7df053c9f58394fb7`.

Source path: `GRWTSK/Topology/GeneralTopology/LocallyPathConnected/Variantb4e83d0c060261c6ce2b5643bbb443aeeca886d9b7edb7c3f3c2434701bfbe5e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LocallyPathConnected/Variantb4e83d0c060261c6ce2b5643bbb443aeeca886d9b7edb7c3f3c2434701bfbe5e.lean.json)

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
| 1 | `class` | [LocallyPathConnectedSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantb4e83d0c060261c6ce2b5643bbb443aeeca886d9b7edb7c3f3c2434701bfbe5e.lean/declarations/locallypathconnectedspace--701cebbb3a5242b22baf5707.md) | 69 | `declaration-track:701cebbb3a5242b22baf5707dd5e2c9bf865598e46d3e02a1a0fe0d2eeec59bd` |
| 2 | `theorem` | [LocallyPathConnectedSpace.of_bases](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantb4e83d0c060261c6ce2b5643bbb443aeeca886d9b7edb7c3f3c2434701bfbe5e.lean/declarations/locallypathconnectedspace-of-bases--56bed187e57f1e638cef76ca.md) | 80 | `result-track:56bed187e57f1e638cef76ca5893b4b68df9b5aadab7d769a5fdcced2391340a` |
| 3 | `theorem` | [IsOpen.pathComponentIn](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantb4e83d0c060261c6ce2b5643bbb443aeeca886d9b7edb7c3f3c2434701bfbe5e.lean/declarations/isopen-pathcomponentin--65705fef027b6ac6a14358fa.md) | 94 | `result-track:65705fef027b6ac6a14358fae871ad31c2d8edebde0225529e72017fdd45af62` |
| 4 | `theorem` | [IsOpen.pathComponent](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantb4e83d0c060261c6ce2b5643bbb443aeeca886d9b7edb7c3f3c2434701bfbe5e.lean/declarations/isopen-pathcomponent--b845dcdb64ac0e9bb417e7fc.md) | 103 | `result-track:b845dcdb64ac0e9bb417e7fc2fcdd779f967f1825b8f9b06f908ef39dbee51c5` |
| 5 | `theorem` | [IsClosed.pathComponent](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantb4e83d0c060261c6ce2b5643bbb443aeeca886d9b7edb7c3f3c2434701bfbe5e.lean/declarations/isclosed-pathcomponent--7d7a9453f392119841c50dcc.md) | 108 | `result-track:7d7a9453f392119841c50dcc2ef20218140bada5b5a63d4312ca2a8ac08f57e5` |
| 6 | `theorem` | [IsClopen.pathComponent](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantb4e83d0c060261c6ce2b5643bbb443aeeca886d9b7edb7c3f3c2434701bfbe5e.lean/declarations/isclopen-pathcomponent--b794f5346d9c307258174971.md) | 116 | `result-track:b794f5346d9c307258174971726c47b45efff2cd42baa498468d4cac27e78f25` |
| 7 | `lemma` | [pathComponentIn_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantb4e83d0c060261c6ce2b5643bbb443aeeca886d9b7edb7c3f3c2434701bfbe5e.lean/declarations/pathcomponentin-mem-nhds--ffceb8b97b3c3c70c678b193.md) | 119 | `result-track:ffceb8b97b3c3c70c678b1930e44c41ce65d199ae8558f385e0b1c7343ea1ffd` |
| 8 | `theorem` | [PathConnectedSpace.of_locallyPathConnectedSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantb4e83d0c060261c6ce2b5643bbb443aeeca886d9b7edb7c3f3c2434701bfbe5e.lean/declarations/pathconnectedspace-of-locallypathconnectedspace--8d52ea22278c32151b5d59c3.md) | 124 | `result-track:8d52ea22278c32151b5d59c31a46beb05068185697b99a559f503b4395b8ac7d` |
| 9 | `theorem` | [pathConnectedSpace_iff_connectedSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantb4e83d0c060261c6ce2b5643bbb443aeeca886d9b7edb7c3f3c2434701bfbe5e.lean/declarations/pathconnectedspace-iff-connectedspace--0415596999719827a4b2ef64.md) | 130 | `result-track:0415596999719827a4b2ef649f41a8c7cc2090075d738e2abd7091e874a593e5` |
| 10 | `theorem` | [pathComponent_eq_connectedComponent](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantb4e83d0c060261c6ce2b5643bbb443aeeca886d9b7edb7c3f3c2434701bfbe5e.lean/declarations/pathcomponent-eq-connectedcomponent--4650947d467cf790d310c0ee.md) | 133 | `result-track:4650947d467cf790d310c0ee9fb9032b4da5b63ae29ad4ea3feee92a35d6fa6b` |
| 11 | `theorem` | [connectedComponent_eq_iff_joined](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantb4e83d0c060261c6ce2b5643bbb443aeeca886d9b7edb7c3f3c2434701bfbe5e.lean/declarations/connectedcomponent-eq-iff-joined--2b47e32314757dbc808f22d9.md) | 137 | `result-track:2b47e32314757dbc808f22d9b2ea252efab00994579b71b035238c6a323c2aff` |
| 12 | `theorem` | [connectedComponentSetoid_eq_pathSetoid](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantb4e83d0c060261c6ce2b5643bbb443aeeca886d9b7edb7c3f3c2434701bfbe5e.lean/declarations/connectedcomponentsetoid-eq-pathsetoid--b1f81e7f5a802e3da0437b5e.md) | 142 | `result-track:b1f81e7f5a802e3da0437b5ef555a428619f8fc1c5e4faaa68f06e8bd2cd58f1` |
| 13 | `def` | [connectedComponentsEquivZerothHomotopy](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantb4e83d0c060261c6ce2b5643bbb443aeeca886d9b7edb7c3f3c2434701bfbe5e.lean/declarations/connectedcomponentsequivzerothhomotopy--08c63c6ded286422481bac71.md) | 146 | `declaration-track:08c63c6ded286422481bac71f09b62a51d82ff782a063004a32f788aefc69722` |
| 14 | `lemma` | [connectedComponentsEquivZerothHomotopy_apply](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantb4e83d0c060261c6ce2b5643bbb443aeeca886d9b7edb7c3f3c2434701bfbe5e.lean/declarations/connectedcomponentsequivzerothhomotopy-apply--2f13ba5cf56e0defd8b7f83e.md) | 153 | `result-track:2f13ba5cf56e0defd8b7f83e85f6c1bd4838365b361ebc9390b3b117c3eaebef` |
| 15 | `lemma` | [coe_connectedComponentsEquivZerothHomotopy_symm](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantb4e83d0c060261c6ce2b5643bbb443aeeca886d9b7edb7c3f3c2434701bfbe5e.lean/declarations/coe-connectedcomponentsequivzerothhomotopy-symm--438d9a353a382ab4cc1bb255.md) | 158 | `result-track:438d9a353a382ab4cc1bb2556073eb282c4322f477ea9411bbefba08a4f5a20c` |
| 16 | `lemma` | [connectedComponentsEquivZerothHomotopy_symm_apply](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantb4e83d0c060261c6ce2b5643bbb443aeeca886d9b7edb7c3f3c2434701bfbe5e.lean/declarations/connectedcomponentsequivzerothhomotopy-symm-apply--6824e159de9d520e917f94ac.md) | 162 | `result-track:6824e159de9d520e917f94ac0ef10a0584b8ce21be78a26bb4e4e241a05476f4` |
| 17 | `theorem` | [pathConnected_subset_basis](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantb4e83d0c060261c6ce2b5643bbb443aeeca886d9b7edb7c3f3c2434701bfbe5e.lean/declarations/pathconnected-subset-basis--bcb762aa8046b25c6c6778a8.md) | 166 | `result-track:bcb762aa8046b25c6c6778a8e9cf90f73acb22d9eb1ea342b691d93be7133018` |
| 18 | `theorem` | [isOpen_isPathConnected_basis](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantb4e83d0c060261c6ce2b5643bbb443aeeca886d9b7edb7c3f3c2434701bfbe5e.lean/declarations/isopen-ispathconnected-basis--1b5cf6616674e7f9162ca05e.md) | 170 | `result-track:1b5cf6616674e7f9162ca05ef32554941bedb21baa784eb528b57a90998281cf` |
| 19 | `theorem` | [Topology.IsOpenEmbedding.locallyPathConnectedSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantb4e83d0c060261c6ce2b5643bbb443aeeca886d9b7edb7c3f3c2434701bfbe5e.lean/declarations/topology-isopenembedding-locallypathconnectedspace--38266245d531b502d97b9fec.md) | 177 | `result-track:38266245d531b502d97b9fec46ef5f28ff6fb4138a092bae380ab072c6e86f4c` |
| 20 | `theorem` | [Homeomorph.locallyPathConnectedSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantb4e83d0c060261c6ce2b5643bbb443aeeca886d9b7edb7c3f3c2434701bfbe5e.lean/declarations/homeomorph-locallypathconnectedspace--502155d3cd257db204e28da8.md) | 189 | `result-track:502155d3cd257db204e28da869c6e69915751c4ddd9089ac19c1cc89fdcc8d7f` |
| 21 | `theorem` | [IsOpen.locallyPathConnectedSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantb4e83d0c060261c6ce2b5643bbb443aeeca886d9b7edb7c3f3c2434701bfbe5e.lean/declarations/isopen-locallypathconnectedspace--b984d63a04b2872ad627bf25.md) | 192 | `result-track:b984d63a04b2872ad627bf2574bcc1f8f375123a98f6d66499c46ad3df02dcaf` |
| 22 | `theorem` | [IsOpen.isConnected_iff_isPathConnected](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantb4e83d0c060261c6ce2b5643bbb443aeeca886d9b7edb7c3f3c2434701bfbe5e.lean/declarations/isopen-isconnected-iff-ispathconnected--70c7b762ce9f9e2a7c5dd97a.md) | 198 | `result-track:70c7b762ce9f9e2a7c5dd97aaedacef495f1ac7fbebd9b243272ebc718e58d53` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantb4e83d0c060261c6ce2b5643bbb443aeeca886d9b7edb7c3f3c2434701bfbe5e.lean/declarations/instance--097a531b08084eb16121c054.md) | 205 | `declaration-track:097a531b08084eb16121c05404aacb5ef89b5ca84620a7bfae065536f22c926f` |
| 24 | `lemma` | [locallyPathConnectedSpace_iff_isOpen_pathComponentIn](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantb4e83d0c060261c6ce2b5643bbb443aeeca886d9b7edb7c3f3c2434701bfbe5e.lean/declarations/locallypathconnectedspace-iff-isopen-pathcomponentin--2122328b13f78473bfbbdaaf.md) | 212 | `result-track:2122328b13f78473bfbbdaaf032058516e885778891d31b5792cf4d08a4543ee` |
| 25 | `lemma` | [locallyPathConnectedSpace_iff_pathComponentIn_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantb4e83d0c060261c6ce2b5643bbb443aeeca886d9b7edb7c3f3c2434701bfbe5e.lean/declarations/locallypathconnectedspace-iff-pathcomponentin-mem-nhds--b88298d9f840a094729fc8d1.md) | 225 | `result-track:b88298d9f840a094729fc8d1ab666b21980f55e9f39ae699618cd0ac523a2699` |
| 26 | `lemma` | [LocallyPathConnectedSpace.coinduced](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantb4e83d0c060261c6ce2b5643bbb443aeeca886d9b7edb7c3f3c2434701bfbe5e.lean/declarations/locallypathconnectedspace-coinduced--94bf0226e1c3da79294bbdfa.md) | 240 | `result-track:94bf0226e1c3da79294bbdfaf718c59fd7d2718800c43da9abab1ff7d3e723aa` |
| 27 | `lemma` | [Topology.IsQuotientMap.locallyPathConnectedSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantb4e83d0c060261c6ce2b5643bbb443aeeca886d9b7edb7c3f3c2434701bfbe5e.lean/declarations/topology-isquotientmap-locallypathconnectedspace--e9276b4c12c76a481e06a06a.md) | 257 | `result-track:e9276b4c12c76a481e06a06a8921878598740ed691b5ef48c22cc9be2720a50d` |
| 28 | `instance` | [Quot.locallyPathConnectedSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantb4e83d0c060261c6ce2b5643bbb443aeeca886d9b7edb7c3f3c2434701bfbe5e.lean/declarations/quot-locallypathconnectedspace--4ebe9c0ee2525b5438a64c11.md) | 266 | `declaration-track:4ebe9c0ee2525b5438a64c1148dc6ee3556b3f9d55b72f202d7e695344155a5f` |
| 29 | `instance` | [Quotient.locallyPathConnectedSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantb4e83d0c060261c6ce2b5643bbb443aeeca886d9b7edb7c3f3c2434701bfbe5e.lean/declarations/quotient-locallypathconnectedspace--ffca3cdd14069cc81a8f2f9f.md) | 273 | `declaration-track:ffca3cdd14069cc81a8f2f9fe1f25af58658004b70375c5b3b4bdc70d95be6a5` |
| 30 | `instance` | [Sum.locallyPathConnectedSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantb4e83d0c060261c6ce2b5643bbb443aeeca886d9b7edb7c3f3c2434701bfbe5e.lean/declarations/sum-locallypathconnectedspace--d70ef69c092c42d5b06aca7d.md) | 281 | `declaration-track:d70ef69c092c42d5b06aca7d44341d2ef109dd225c6dbe8b1e79bd8760c26110` |
| 31 | `instance` | [Sigma.locallyPathConnectedSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantb4e83d0c060261c6ce2b5643bbb443aeeca886d9b7edb7c3f3c2434701bfbe5e.lean/declarations/sigma-locallypathconnectedspace--1124c821d8f08605cd30b293.md) | 304 | `declaration-track:1124c821d8f08605cd30b293773e9a2221accd4c9ef73fbd14aa4620ef02f393` |
| 32 | `instance` | [Prod.locallyPathConnectedSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantb4e83d0c060261c6ce2b5643bbb443aeeca886d9b7edb7c3f3c2434701bfbe5e.lean/declarations/prod-locallypathconnectedspace--7159bf753955ce6ac9e8a6ed.md) | 320 | `declaration-track:7159bf753955ce6ac9e8a6ed1d9eb39ba78be94b7f9ba8b1c576ae625ccf0daf` |
| 33 | `theorem` | [Pi.locallyPathConnectedSpace_of_finite_not_pathConnectedSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantb4e83d0c060261c6ce2b5643bbb443aeeca886d9b7edb7c3f3c2434701bfbe5e.lean/declarations/pi-locallypathconnectedspace-of-finite-not-pathconnectedspace--6ef8765aaf2de0e75190707e.md) | 332 | `result-track:6ef8765aaf2de0e75190707e43727173537f2be9e447df5401914b65a7a02220` |
| 34 | `instance` | [Pi.locallyPathConnectedSpace_of_finite](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantb4e83d0c060261c6ce2b5643bbb443aeeca886d9b7edb7c3f3c2434701bfbe5e.lean/declarations/pi-locallypathconnectedspace-of-finite--20328a45d1e6c02a4e973af9.md) | 354 | `declaration-track:20328a45d1e6c02a4e973af9bfdbf8671497ac6f4b1a21d7f03ffdff58d5dabc` |
| 35 | `instance` | [Pi.locallyPathConnectedSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantb4e83d0c060261c6ce2b5643bbb443aeeca886d9b7edb7c3f3c2434701bfbe5e.lean/declarations/pi-locallypathconnectedspace--f7b1047cea40e2e24ca48b49.md) | 363 | `declaration-track:f7b1047cea40e2e24ca48b49ae4832df97e7702c104bbbd4a8c92a43904a6d60` |
| 36 | `theorem` | [Pi.locallyPathConnectedSpace_iff](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantb4e83d0c060261c6ce2b5643bbb443aeeca886d9b7edb7c3f3c2434701bfbe5e.lean/declarations/pi-locallypathconnectedspace-iff--a8e26d5bb2ff0497bda693c3.md) | 371 | `result-track:a8e26d5bb2ff0497bda693c36c73d8e45987be8d2d06dd743c049716b71e101c` |
| 37 | `instance` | [AlexandrovDiscrete.locallyPathConnectedSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantb4e83d0c060261c6ce2b5643bbb443aeeca886d9b7edb7c3f3c2434701bfbe5e.lean/declarations/alexandrovdiscrete-locallypathconnectedspace--672a1b8c4f39fc389718c1be.md) | 397 | `declaration-track:672a1b8c4f39fc389718c1be43d8fd5cffe150c253f431502e781b9c0c0a349e` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantb4e83d0c060261c6ce2b5643bbb443aeeca886d9b7edb7c3f3c2434701bfbe5e.lean/declarations/instance--31aea34b31037de9f5a802c9.md) | 411 | `declaration-track:31aea34b31037de9f5a802c94793fabf9292ae265ffa9f72fba192a587dccdaf` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantb4e83d0c060261c6ce2b5643bbb443aeeca886d9b7edb7c3f3c2434701bfbe5e.lean/declarations/instance--21bebdbca1d8710b4c98954f.md) | 418 | `declaration-track:21bebdbca1d8710b4c98954f3537131642911cd7b652979caf967942d3073fee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
