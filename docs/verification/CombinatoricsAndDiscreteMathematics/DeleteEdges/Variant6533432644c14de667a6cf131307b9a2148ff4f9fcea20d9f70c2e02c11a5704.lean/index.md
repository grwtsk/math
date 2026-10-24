# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.DeleteEdges.Variant6533432644c14de667a6cf131307b9a2148ff4f9fcea20d9f70c2e02c11a5704

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6bd55eb40c7f1283bac1c17f9575203894140788",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variant6533432644c14de667a6cf131307b9a2148ff4f9fcea20d9f70c2e02c11a5704.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variant6533432644c14de667a6cf131307b9a2148ff4f9fcea20d9f70c2e02c11a5704.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variant6533432644c14de667a6cf131307b9a2148ff4f9fcea20d9f70c2e02c11a5704.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6bd55eb40c7f1283bac1c17f9575203894140788`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variant6533432644c14de667a6cf131307b9a2148ff4f9fcea20d9f70c2e02c11a5704.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variant6533432644c14de667a6cf131307b9a2148ff4f9fcea20d9f70c2e02c11a5704.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Finite` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Maps` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [deleteEdges](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variant6533432644c14de667a6cf131307b9a2148ff4f9fcea20d9f70c2e02c11a5704.lean/declarations/deleteedges--2cd99e3d428c5c45300ae74f.md) | 49 | `declaration-track:2cd99e3d428c5c45300ae74fcc0cd1ee36052b822c9c7d7b42745cd0d63f747c` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variant6533432644c14de667a6cf131307b9a2148ff4f9fcea20d9f70c2e02c11a5704.lean/declarations/instance--11e6983ef63ae9239723e5d1.md) | 53 | `declaration-track:11e6983ef63ae9239723e5d11f193bf7e9470b2c07cf29946d3001decc798ec4` |
| 3 | `lemma` | [deleteEdges_adj](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variant6533432644c14de667a6cf131307b9a2148ff4f9fcea20d9f70c2e02c11a5704.lean/declarations/deleteedges-adj--66fd128c399987d07b333d11.md) | 57 | `result-track:66fd128c399987d07b333d1105b0911ae7607cc17bf6922cbc7eb59e6e8c3dce` |
| 4 | `lemma` | [deleteEdges_edgeSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variant6533432644c14de667a6cf131307b9a2148ff4f9fcea20d9f70c2e02c11a5704.lean/declarations/deleteedges-edgeset--27768d2db9bbac652e850923.md) | 60 | `result-track:27768d2db9bbac652e850923ba52a43bcab8fd8dc69ae800552e6c307178867f` |
| 5 | `theorem` | [deleteEdges_deleteEdges](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variant6533432644c14de667a6cf131307b9a2148ff4f9fcea20d9f70c2e02c11a5704.lean/declarations/deleteedges-deleteedges--a525e2a71e1d1d56abc5843c.md) | 64 | `result-track:a525e2a71e1d1d56abc5843c8f081d05385a6ff8a605e7e1f6908a040fee7178` |
| 6 | `lemma` | [deleteEdges_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variant6533432644c14de667a6cf131307b9a2148ff4f9fcea20d9f70c2e02c11a5704.lean/declarations/deleteedges-empty--6954cc11f7f0d929ac37a93a.md) | 67 | `result-track:6954cc11f7f0d929ac37a93a299ddb11931ce2737abb6320f254dae78951490e` |
| 7 | `lemma` | [deleteEdges_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variant6533432644c14de667a6cf131307b9a2148ff4f9fcea20d9f70c2e02c11a5704.lean/declarations/deleteedges-univ--7d5787c6c654b65d5562ec73.md) | 68 | `result-track:7d5787c6c654b65d5562ec73af6c35a9da48f477595649d7e07e9c9e6b567e9e` |
| 8 | `lemma` | [deleteEdges_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variant6533432644c14de667a6cf131307b9a2148ff4f9fcea20d9f70c2e02c11a5704.lean/declarations/deleteedges-le--639c700e653edc82d5898ae5.md) | 70 | `result-track:639c700e653edc82d5898ae5239eae32546e057948b65642dc40f30d3f62db63` |
| 9 | `lemma` | [deleteEdges_anti](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variant6533432644c14de667a6cf131307b9a2148ff4f9fcea20d9f70c2e02c11a5704.lean/declarations/deleteedges-anti--aa654cf79aa76e61cb0c1c2a.md) | 72 | `result-track:aa654cf79aa76e61cb0c1c2aa0db50c64d60e8429e34dff4b429a322a0e8a6e1` |
| 10 | `lemma` | [deleteEdges_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variant6533432644c14de667a6cf131307b9a2148ff4f9fcea20d9f70c2e02c11a5704.lean/declarations/deleteedges-mono--5acdaa8e2afeee52633a8f22.md) | 75 | `result-track:5acdaa8e2afeee52633a8f2255d18eb17f47ca5c0ebc7df3f79ba39f50229d07` |
| 11 | `lemma` | [deleteEdges_eq_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variant6533432644c14de667a6cf131307b9a2148ff4f9fcea20d9f70c2e02c11a5704.lean/declarations/deleteedges-eq-self--e91da68f80f8ab0f4f063e95.md) | 77 | `result-track:e91da68f80f8ab0f4f063e95b24065fb0739ef8aba685991f600579e8101f97a` |
| 12 | `theorem` | [deleteEdges_eq_inter_edgeSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variant6533432644c14de667a6cf131307b9a2148ff4f9fcea20d9f70c2e02c11a5704.lean/declarations/deleteedges-eq-inter-edgeset--4b070562755f9430f9166d66.md) | 80 | `result-track:4b070562755f9430f9166d662a43bf89456d6780dd315cf81cd2f6ef425e82d0` |
| 13 | `theorem` | [deleteEdges_sdiff_eq_of_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variant6533432644c14de667a6cf131307b9a2148ff4f9fcea20d9f70c2e02c11a5704.lean/declarations/deleteedges-sdiff-eq-of-le--5c7d84c3d9edd81c8ddbda50.md) | 85 | `result-track:5c7d84c3d9edd81c8ddbda50330c9aad12a96260151936633349e6b32a09b0cd` |
| 14 | `theorem` | [edgeSet_deleteEdges](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variant6533432644c14de667a6cf131307b9a2148ff4f9fcea20d9f70c2e02c11a5704.lean/declarations/edgeset-deleteedges--5573ce50bc0737c08fa1ab87.md) | 89 | `result-track:5573ce50bc0737c08fa1ab874d370687cb0a51934f12e51a61ec74db9b7a45ce` |
| 15 | `theorem` | [edgeFinset_deleteEdges](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variant6533432644c14de667a6cf131307b9a2148ff4f9fcea20d9f70c2e02c11a5704.lean/declarations/edgefinset-deleteedges--dd63012e02590359b6bbf24e.md) | 92 | `result-track:dd63012e02590359b6bbf24e0091f104a8fdbfdab68f87ac0ea165c8960b9f0f` |
| 16 | `def` | [deleteIncidenceSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variant6533432644c14de667a6cf131307b9a2148ff4f9fcea20d9f70c2e02c11a5704.lean/declarations/deleteincidenceset--1c1e02f148a923390d71f532.md) | 103 | `declaration-track:1c1e02f148a923390d71f532601aaed3f4301b90bf42d364069a9ea48e9f6148` |
| 17 | `lemma` | [deleteIncidenceSet_adj](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variant6533432644c14de667a6cf131307b9a2148ff4f9fcea20d9f70c2e02c11a5704.lean/declarations/deleteincidenceset-adj--3ed1ee31990b76a34f031fb7.md) | 106 | `result-track:3ed1ee31990b76a34f031fb7c1a6830af6a37e1fa9e2e45c79ac9041904324a5` |
| 18 | `lemma` | [deleteIncidenceSet_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variant6533432644c14de667a6cf131307b9a2148ff4f9fcea20d9f70c2e02c11a5704.lean/declarations/deleteincidenceset-le--95bd64f7eec3045703001bf1.md) | 111 | `result-track:95bd64f7eec3045703001bf1acf0ac808efae388df4d8c4c8dbf8be5489d80e1` |
| 19 | `lemma` | [edgeSet_fromEdgeSet_incidenceSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variant6533432644c14de667a6cf131307b9a2148ff4f9fcea20d9f70c2e02c11a5704.lean/declarations/edgeset-fromedgeset-incidenceset--2b8c0e28e6c201535dfcea1b.md) | 114 | `result-track:2b8c0e28e6c201535dfcea1b5fbbe354c843e41fe8e060e6f59b293f69cc1f7b` |
| 20 | `theorem` | [edgeSet_deleteIncidenceSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variant6533432644c14de667a6cf131307b9a2148ff4f9fcea20d9f70c2e02c11a5704.lean/declarations/edgeset-deleteincidenceset--d7ba9c9d453e004400792fe5.md) | 121 | `result-track:d7ba9c9d453e004400792fe5cb2e2de2168e93cbede11e1773dc2e115bf24889` |
| 21 | `theorem` | [support_deleteIncidenceSet_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variant6533432644c14de667a6cf131307b9a2148ff4f9fcea20d9f70c2e02c11a5704.lean/declarations/support-deleteincidenceset-subset--af720191f578cf7c7c921946.md) | 127 | `result-track:af720191f578cf7c7c921946a10d0c461bd32fd4088cae68bbc4058a71a65f4f` |
| 22 | `theorem` | [induce_deleteIncidenceSet_of_notMem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variant6533432644c14de667a6cf131307b9a2148ff4f9fcea20d9f70c2e02c11a5704.lean/declarations/induce-deleteincidenceset-of-notmem--efa6d1ff78f448d04c4360e1.md) | 133 | `result-track:efa6d1ff78f448d04c4360e1416d31a828cd651d5c86e1a345e97550497d9fad` |
| 23 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variant6533432644c14de667a6cf131307b9a2148ff4f9fcea20d9f70c2e02c11a5704.lean/declarations/instance--16ad20d60a036d078d210f05.md) | 144 | `declaration-track:16ad20d60a036d078d210f0548f21ea43b31b0f8c0a859f96c07d8b73872e53d` |
| 24 | `theorem` | [card_edgeFinset_induce_compl_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variant6533432644c14de667a6cf131307b9a2148ff4f9fcea20d9f70c2e02c11a5704.lean/declarations/card-edgefinset-induce-compl-singleton--3da985d14c1fab1bec7bd2d0.md) | 150 | `result-track:3da985d14c1fab1bec7bd2d0fc2903583f46c7f331ab271892f46cf591ae1893` |
| 25 | `theorem` | [edgeFinset_deleteIncidenceSet_eq_sdiff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variant6533432644c14de667a6cf131307b9a2148ff4f9fcea20d9f70c2e02c11a5704.lean/declarations/edgefinset-deleteincidenceset-eq-sdiff--72842cbd193b81d7b3d67a3b.md) | 163 | `result-track:72842cbd193b81d7b3d67a3ba037f431f060521274c73f618ccd84108c2ee846` |
| 26 | `theorem` | [card_edgeFinset_deleteIncidenceSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variant6533432644c14de667a6cf131307b9a2148ff4f9fcea20d9f70c2e02c11a5704.lean/declarations/card-edgefinset-deleteincidenceset--2f2c8ce6ac9361e098601d33.md) | 170 | `result-track:2f2c8ce6ac9361e098601d33ab03e70b7d17a67bf834095b97ad31a1a99f6141` |
| 27 | `theorem` | [edgeFinset_deleteIncidenceSet_eq_filter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variant6533432644c14de667a6cf131307b9a2148ff4f9fcea20d9f70c2e02c11a5704.lean/declarations/edgefinset-deleteincidenceset-eq-filter--0811a01f3ea3115615a7526c.md) | 177 | `result-track:0811a01f3ea3115615a7526c7810053fd75ca2a85990baa75380d2f595586db7` |
| 28 | `theorem` | [card_support_deleteIncidenceSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variant6533432644c14de667a6cf131307b9a2148ff4f9fcea20d9f70c2e02c11a5704.lean/declarations/card-support-deleteincidenceset--26f7ce99cac7d3b88320b168.md) | 189 | `result-track:26f7ce99cac7d3b88320b1684c18d9371f83d6c1c18620a126198e31a98507b0` |
| 29 | `def` | [DeleteFar](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variant6533432644c14de667a6cf131307b9a2148ff4f9fcea20d9f70c2e02c11a5704.lean/declarations/deletefar--ea9a8fed5712afc9566b762d.md) | 207 | `declaration-track:ea9a8fed5712afc9566b762d512e3bf6ad6e3925c1043a2d0ed32621330ae56e` |
| 30 | `theorem` | [deleteFar_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variant6533432644c14de667a6cf131307b9a2148ff4f9fcea20d9f70c2e02c11a5704.lean/declarations/deletefar-iff--10b5ebcc6dabcc56480610c0.md) | 212 | `result-track:10b5ebcc6dabcc56480610c028d5ad67813bd42127b3fb7d0719d9d7173b0a01` |
| 31 | `theorem` | [DeleteFar.mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variant6533432644c14de667a6cf131307b9a2148ff4f9fcea20d9f70c2e02c11a5704.lean/declarations/deletefar-mono--15750dc5c79d443ca08a8520.md) | 227 | `result-track:15750dc5c79d443ca08a8520d7000006011015703e8260f022e98ad0b5d04332` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
