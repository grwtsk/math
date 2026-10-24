# Verification target: GRWTSK.Topology.GeneralTopology.LocallyPathConnected.Variantdd55e708bf89e40f8eb6999505e40fd7aeee3df1ca05de5a4f12e6c125015dee

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "529d2b347e5e986184d9f08eb1ee17f4994a220e",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LocallyPathConnected/Variantdd55e708bf89e40f8eb6999505e40fd7aeee3df1ca05de5a4f12e6c125015dee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantdd55e708bf89e40f8eb6999505e40fd7aeee3df1ca05de5a4f12e6c125015dee.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantdd55e708bf89e40f8eb6999505e40fd7aeee3df1ca05de5a4f12e6c125015dee.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `529d2b347e5e986184d9f08eb1ee17f4994a220e`.

Source path: `GRWTSK/Topology/GeneralTopology/LocallyPathConnected/Variantdd55e708bf89e40f8eb6999505e40fd7aeee3df1ca05de5a4f12e6c125015dee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LocallyPathConnected/Variantdd55e708bf89e40f8eb6999505e40fd7aeee3df1ca05de5a4f12e6c125015dee.lean.json)

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
| 1 | `class` | [LocallyPathConnectedSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantdd55e708bf89e40f8eb6999505e40fd7aeee3df1ca05de5a4f12e6c125015dee.lean/declarations/locallypathconnectedspace--ba89ee5e2ac6ebf1ef9cb633.md) | 61 | `declaration-track:ba89ee5e2ac6ebf1ef9cb6333e0e0708df4fe6bd251e68693d4cca6924388b22` |
| 2 | `theorem` | [LocallyPathConnectedSpace.of_bases](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantdd55e708bf89e40f8eb6999505e40fd7aeee3df1ca05de5a4f12e6c125015dee.lean/declarations/locallypathconnectedspace-of-bases--feb4f9a0572db5b99b735176.md) | 72 | `result-track:feb4f9a0572db5b99b73517658ad943b00b6c02bf89aa8c1034d86023710d9f1` |
| 3 | `theorem` | [IsOpen.pathComponentIn](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantdd55e708bf89e40f8eb6999505e40fd7aeee3df1ca05de5a4f12e6c125015dee.lean/declarations/isopen-pathcomponentin--4ded390f9862ccf68df4d0b2.md) | 86 | `result-track:4ded390f9862ccf68df4d0b24cc3178460380b799e81a76303408508c00a50d6` |
| 4 | `theorem` | [IsOpen.pathComponent](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantdd55e708bf89e40f8eb6999505e40fd7aeee3df1ca05de5a4f12e6c125015dee.lean/declarations/isopen-pathcomponent--cb4858c7f4a09b1a16b525f0.md) | 95 | `result-track:cb4858c7f4a09b1a16b525f00dc87e49af5d78a6778a633d2ecdf0d23654c202` |
| 5 | `theorem` | [IsClosed.pathComponent](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantdd55e708bf89e40f8eb6999505e40fd7aeee3df1ca05de5a4f12e6c125015dee.lean/declarations/isclosed-pathcomponent--8bb8278145eafe890cb6503e.md) | 100 | `result-track:8bb8278145eafe890cb6503e48a2fed93701eced69686d5fde25097924c58c0d` |
| 6 | `theorem` | [IsClopen.pathComponent](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantdd55e708bf89e40f8eb6999505e40fd7aeee3df1ca05de5a4f12e6c125015dee.lean/declarations/isclopen-pathcomponent--84769c92d730809f0df17bba.md) | 108 | `result-track:84769c92d730809f0df17bbaa6553677af2a0103215c3f050af09d650e545776` |
| 7 | `lemma` | [pathComponentIn_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantdd55e708bf89e40f8eb6999505e40fd7aeee3df1ca05de5a4f12e6c125015dee.lean/declarations/pathcomponentin-mem-nhds--513a04029d5ac3c0c42de7c4.md) | 111 | `result-track:513a04029d5ac3c0c42de7c40d5ce8072b81d67caeecdc4ae8d52b6b91f5a08b` |
| 8 | `theorem` | [PathConnectedSpace.of_locallyPathConnectedSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantdd55e708bf89e40f8eb6999505e40fd7aeee3df1ca05de5a4f12e6c125015dee.lean/declarations/pathconnectedspace-of-locallypathconnectedspace--721d7d8091ff2582774bf044.md) | 116 | `result-track:721d7d8091ff2582774bf04440264b9ae930e7a135ecf72e251cc2d3940c1cf4` |
| 9 | `theorem` | [pathConnectedSpace_iff_connectedSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantdd55e708bf89e40f8eb6999505e40fd7aeee3df1ca05de5a4f12e6c125015dee.lean/declarations/pathconnectedspace-iff-connectedspace--669e9998ea75dbb991ca7155.md) | 122 | `result-track:669e9998ea75dbb991ca71554ea13d37b052cd3b9f6413e6154797a046d3fb98` |
| 10 | `theorem` | [pathComponent_eq_connectedComponent](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantdd55e708bf89e40f8eb6999505e40fd7aeee3df1ca05de5a4f12e6c125015dee.lean/declarations/pathcomponent-eq-connectedcomponent--7051e130baca1041c8cf93bf.md) | 125 | `result-track:7051e130baca1041c8cf93bfd9997c7d47108e7e444c81cc550099ce8072143a` |
| 11 | `theorem` | [connectedComponent_eq_iff_joined](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantdd55e708bf89e40f8eb6999505e40fd7aeee3df1ca05de5a4f12e6c125015dee.lean/declarations/connectedcomponent-eq-iff-joined--11aa9ba94485251a59060e67.md) | 129 | `result-track:11aa9ba94485251a59060e673daa4bcfb9fec928335016c8460afcf68f751419` |
| 12 | `theorem` | [connectedComponentSetoid_eq_pathSetoid](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantdd55e708bf89e40f8eb6999505e40fd7aeee3df1ca05de5a4f12e6c125015dee.lean/declarations/connectedcomponentsetoid-eq-pathsetoid--2ee928a0603388f6d3927d51.md) | 134 | `result-track:2ee928a0603388f6d3927d5195221ee1f671baeb9818adf02b555611f541d21f` |
| 13 | `def` | [connectedComponentsEquivZerothHomotopy](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantdd55e708bf89e40f8eb6999505e40fd7aeee3df1ca05de5a4f12e6c125015dee.lean/declarations/connectedcomponentsequivzerothhomotopy--fd1edd724d9c64ca97f76a8c.md) | 138 | `declaration-track:fd1edd724d9c64ca97f76a8c9e5ecad596bd9cc6ab0a260963bbb8313656d56d` |
| 14 | `lemma` | [connectedComponentsEquivZerothHomotopy_apply](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantdd55e708bf89e40f8eb6999505e40fd7aeee3df1ca05de5a4f12e6c125015dee.lean/declarations/connectedcomponentsequivzerothhomotopy-apply--c625226ebb598500f54636ac.md) | 145 | `result-track:c625226ebb598500f54636ac5946bad50391b2c3a4ae295060cebb37a0321a5b` |
| 15 | `lemma` | [coe_connectedComponentsEquivZerothHomotopy_symm](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantdd55e708bf89e40f8eb6999505e40fd7aeee3df1ca05de5a4f12e6c125015dee.lean/declarations/coe-connectedcomponentsequivzerothhomotopy-symm--218e29d211b8868845f02ff8.md) | 150 | `result-track:218e29d211b8868845f02ff8ff701285914770a11d6dbf7dec4c9b5466958a03` |
| 16 | `lemma` | [connectedComponentsEquivZerothHomotopy_symm_apply](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantdd55e708bf89e40f8eb6999505e40fd7aeee3df1ca05de5a4f12e6c125015dee.lean/declarations/connectedcomponentsequivzerothhomotopy-symm-apply--ed32fd17dc92da2dcac7ed53.md) | 154 | `result-track:ed32fd17dc92da2dcac7ed5379947b57cb6fdfbcd662a28d726e51cbb1c0414b` |
| 17 | `theorem` | [pathConnected_subset_basis](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantdd55e708bf89e40f8eb6999505e40fd7aeee3df1ca05de5a4f12e6c125015dee.lean/declarations/pathconnected-subset-basis--39ba4c75c7facd5ab3e6455b.md) | 158 | `result-track:39ba4c75c7facd5ab3e6455bd04427b65543bde1862b67cfe9050f3092e6dd57` |
| 18 | `theorem` | [isOpen_isPathConnected_basis](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantdd55e708bf89e40f8eb6999505e40fd7aeee3df1ca05de5a4f12e6c125015dee.lean/declarations/isopen-ispathconnected-basis--d9a4f46710cfd6b708dbbb9d.md) | 162 | `result-track:d9a4f46710cfd6b708dbbb9d37c9d1120b8184ac988704ef6153b54fc8807b04` |
| 19 | `theorem` | [Topology.IsOpenEmbedding.locallyPathConnectedSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantdd55e708bf89e40f8eb6999505e40fd7aeee3df1ca05de5a4f12e6c125015dee.lean/declarations/topology-isopenembedding-locallypathconnectedspace--77cf8b0cfe085a63f7e159ab.md) | 169 | `result-track:77cf8b0cfe085a63f7e159ab724fa525660d590c887b634be5166c45c7dd2e7e` |
| 20 | `theorem` | [Homeomorph.locallyPathConnectedSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantdd55e708bf89e40f8eb6999505e40fd7aeee3df1ca05de5a4f12e6c125015dee.lean/declarations/homeomorph-locallypathconnectedspace--880c33f5b5cbeef085efbaa1.md) | 181 | `result-track:880c33f5b5cbeef085efbaa13fc5facca52700a478835d9185a76e41fa83efd6` |
| 21 | `theorem` | [IsOpen.locallyPathConnectedSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantdd55e708bf89e40f8eb6999505e40fd7aeee3df1ca05de5a4f12e6c125015dee.lean/declarations/isopen-locallypathconnectedspace--fd1687c4318ee704af253c55.md) | 184 | `result-track:fd1687c4318ee704af253c550d96092cbff85d5973fdb0d6585947e61acf0b16` |
| 22 | `theorem` | [IsOpen.isConnected_iff_isPathConnected](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantdd55e708bf89e40f8eb6999505e40fd7aeee3df1ca05de5a4f12e6c125015dee.lean/declarations/isopen-isconnected-iff-ispathconnected--2e163853c846844a7edd2ae2.md) | 190 | `result-track:2e163853c846844a7edd2ae2384834025bd3031fe1596b5dc4408e24a0446cd9` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantdd55e708bf89e40f8eb6999505e40fd7aeee3df1ca05de5a4f12e6c125015dee.lean/declarations/instance--19288dfb7e71cc67a9f966ff.md) | 197 | `declaration-track:19288dfb7e71cc67a9f966ffff32c1109618debaf8079a4684b4e2441914b0f7` |
| 24 | `lemma` | [locallyPathConnectedSpace_iff_isOpen_pathComponentIn](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantdd55e708bf89e40f8eb6999505e40fd7aeee3df1ca05de5a4f12e6c125015dee.lean/declarations/locallypathconnectedspace-iff-isopen-pathcomponentin--6536adf25be1e057d5082387.md) | 204 | `result-track:6536adf25be1e057d508238710930b1c9a69e18b7e6c2d859e73895a5b458808` |
| 25 | `lemma` | [locallyPathConnectedSpace_iff_pathComponentIn_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantdd55e708bf89e40f8eb6999505e40fd7aeee3df1ca05de5a4f12e6c125015dee.lean/declarations/locallypathconnectedspace-iff-pathcomponentin-mem-nhds--97be3a0e6256b44520b0cbcb.md) | 217 | `result-track:97be3a0e6256b44520b0cbcbf3bf80accd223fc8ca68f5e3fb7e493f217bb3eb` |
| 26 | `lemma` | [LocallyPathConnectedSpace.coinduced](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantdd55e708bf89e40f8eb6999505e40fd7aeee3df1ca05de5a4f12e6c125015dee.lean/declarations/locallypathconnectedspace-coinduced--e5f54e971f3254fe73df966f.md) | 232 | `result-track:e5f54e971f3254fe73df966f0999a82f466c131c56169a20617675a3efa1a54e` |
| 27 | `lemma` | [Topology.IsQuotientMap.locallyPathConnectedSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantdd55e708bf89e40f8eb6999505e40fd7aeee3df1ca05de5a4f12e6c125015dee.lean/declarations/topology-isquotientmap-locallypathconnectedspace--38b53bc330e51b1f2794146a.md) | 249 | `result-track:38b53bc330e51b1f2794146aa4d0314d1bd4dd54e80c6b3a37f89c9c9e59271a` |
| 28 | `instance` | [Quot.locallyPathConnectedSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantdd55e708bf89e40f8eb6999505e40fd7aeee3df1ca05de5a4f12e6c125015dee.lean/declarations/quot-locallypathconnectedspace--49b4e07122920491b8157650.md) | 258 | `declaration-track:49b4e07122920491b81576501b452956da0bf4c9b997a0ff2c7ecc47f692c3a4` |
| 29 | `instance` | [Quotient.locallyPathConnectedSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantdd55e708bf89e40f8eb6999505e40fd7aeee3df1ca05de5a4f12e6c125015dee.lean/declarations/quotient-locallypathconnectedspace--cd1ee7552c9a3d014a0490da.md) | 265 | `declaration-track:cd1ee7552c9a3d014a0490da4c2e453eff6cd4283c833621d1e65dce1cfb3b9b` |
| 30 | `instance` | [Sum.locallyPathConnectedSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantdd55e708bf89e40f8eb6999505e40fd7aeee3df1ca05de5a4f12e6c125015dee.lean/declarations/sum-locallypathconnectedspace--9fe82d3a5ac5569bc616c97a.md) | 273 | `declaration-track:9fe82d3a5ac5569bc616c97ac33762f554a5bf3965fc3412492c81da34b30a90` |
| 31 | `instance` | [Sigma.locallyPathConnectedSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantdd55e708bf89e40f8eb6999505e40fd7aeee3df1ca05de5a4f12e6c125015dee.lean/declarations/sigma-locallypathconnectedspace--4d91d8c009d05afb23dbf47e.md) | 296 | `declaration-track:4d91d8c009d05afb23dbf47eea8245f7423402be1ced24d2c51b69424e5cc1b1` |
| 32 | `instance` | [Prod.locallyPathConnectedSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantdd55e708bf89e40f8eb6999505e40fd7aeee3df1ca05de5a4f12e6c125015dee.lean/declarations/prod-locallypathconnectedspace--3e15c503958f79da8a9afb2f.md) | 312 | `declaration-track:3e15c503958f79da8a9afb2f8f5e8a52fb3cdb491a2618cd28cce51cfdb55980` |
| 33 | `theorem` | [Pi.locallyPathConnectedSpace_of_finite_not_pathConnectedSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantdd55e708bf89e40f8eb6999505e40fd7aeee3df1ca05de5a4f12e6c125015dee.lean/declarations/pi-locallypathconnectedspace-of-finite-not-pathconnectedspace--d3391dd5722b0bc7b31a5775.md) | 324 | `result-track:d3391dd5722b0bc7b31a57754d9439e5154190c76193aca76e43d68337564757` |
| 34 | `instance` | [Pi.locallyPathConnectedSpace_of_finite](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantdd55e708bf89e40f8eb6999505e40fd7aeee3df1ca05de5a4f12e6c125015dee.lean/declarations/pi-locallypathconnectedspace-of-finite--c9dfec233bdffbe7e6baacfa.md) | 346 | `declaration-track:c9dfec233bdffbe7e6baacfa0595a5dc42ea3fc4a457304c190eaba9b0ea16c5` |
| 35 | `instance` | [Pi.locallyPathConnectedSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantdd55e708bf89e40f8eb6999505e40fd7aeee3df1ca05de5a4f12e6c125015dee.lean/declarations/pi-locallypathconnectedspace--6e1a37a48b95e24049a1298c.md) | 355 | `declaration-track:6e1a37a48b95e24049a1298c5fb761f5753ea48dd0277c38443f6ccb9e887af0` |
| 36 | `theorem` | [Pi.locallyPathConnectedSpace_iff](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantdd55e708bf89e40f8eb6999505e40fd7aeee3df1ca05de5a4f12e6c125015dee.lean/declarations/pi-locallypathconnectedspace-iff--ce466b43ab215062debd70a5.md) | 363 | `result-track:ce466b43ab215062debd70a504c61f5281f5bb76d91dfad3f7d8397c8b477181` |
| 37 | `instance` | [AlexandrovDiscrete.locallyPathConnectedSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantdd55e708bf89e40f8eb6999505e40fd7aeee3df1ca05de5a4f12e6c125015dee.lean/declarations/alexandrovdiscrete-locallypathconnectedspace--e99d7586c71571a04c3b5b75.md) | 389 | `declaration-track:e99d7586c71571a04c3b5b75e4838a218945820fcd5aa537dfa8d60566f2fc03` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantdd55e708bf89e40f8eb6999505e40fd7aeee3df1ca05de5a4f12e6c125015dee.lean/declarations/instance--e3599afd39ed7e15d5c4cdd8.md) | 403 | `declaration-track:e3599afd39ed7e15d5c4cdd85d439bc00a2dbb01b860cafb3b07d83e17ec8acb` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/LocallyPathConnected/Variantdd55e708bf89e40f8eb6999505e40fd7aeee3df1ca05de5a4f12e6c125015dee.lean/declarations/instance--01f2d45eef0f767157979470.md) | 410 | `declaration-track:01f2d45eef0f76715797947089eb0dc27d8008c047a765b9208fd26dc80077c6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
