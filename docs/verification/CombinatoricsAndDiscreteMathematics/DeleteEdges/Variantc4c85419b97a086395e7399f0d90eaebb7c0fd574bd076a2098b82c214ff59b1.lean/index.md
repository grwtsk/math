# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.DeleteEdges.Variantc4c85419b97a086395e7399f0d90eaebb7c0fd574bd076a2098b82c214ff59b1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "abee08a6efd0f7fdbe9994ac79bee283005be81a",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variantc4c85419b97a086395e7399f0d90eaebb7c0fd574bd076a2098b82c214ff59b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variantc4c85419b97a086395e7399f0d90eaebb7c0fd574bd076a2098b82c214ff59b1.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variantc4c85419b97a086395e7399f0d90eaebb7c0fd574bd076a2098b82c214ff59b1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `abee08a6efd0f7fdbe9994ac79bee283005be81a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variantc4c85419b97a086395e7399f0d90eaebb7c0fd574bd076a2098b82c214ff59b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variantc4c85419b97a086395e7399f0d90eaebb7c0fd574bd076a2098b82c214ff59b1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Finite` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Maps` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [deleteEdges](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variantc4c85419b97a086395e7399f0d90eaebb7c0fd574bd076a2098b82c214ff59b1.lean/declarations/deleteedges--af1fae442315ad0c389a76b7.md) | 41 | `declaration-track:af1fae442315ad0c389a76b732d28c0cac4ac6b1effb0870eeb69ef7d268ade6` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variantc4c85419b97a086395e7399f0d90eaebb7c0fd574bd076a2098b82c214ff59b1.lean/declarations/instance--b3da400c27ce25f90588c8fe.md) | 45 | `declaration-track:b3da400c27ce25f90588c8fedaaff774a3e1ac939c1f13481e7980edc675dd13` |
| 3 | `lemma` | [deleteEdges_adj](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variantc4c85419b97a086395e7399f0d90eaebb7c0fd574bd076a2098b82c214ff59b1.lean/declarations/deleteedges-adj--28329e4e5a4413185e6e9b49.md) | 49 | `result-track:28329e4e5a4413185e6e9b49485582a1704c6f3da3dbf7d48d9611a9f189f850` |
| 4 | `lemma` | [deleteEdges_edgeSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variantc4c85419b97a086395e7399f0d90eaebb7c0fd574bd076a2098b82c214ff59b1.lean/declarations/deleteedges-edgeset--a00ff64ade618916b632c7c0.md) | 52 | `result-track:a00ff64ade618916b632c7c004e3bcf782b7a9ce0a3349b17f411628eb9cf49c` |
| 5 | `theorem` | [deleteEdges_deleteEdges](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variantc4c85419b97a086395e7399f0d90eaebb7c0fd574bd076a2098b82c214ff59b1.lean/declarations/deleteedges-deleteedges--5e85ef9e5eed3921584292f1.md) | 56 | `result-track:5e85ef9e5eed3921584292f1b806fa394459d9bcfa1127668a9128d9af5867be` |
| 6 | `lemma` | [deleteEdges_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variantc4c85419b97a086395e7399f0d90eaebb7c0fd574bd076a2098b82c214ff59b1.lean/declarations/deleteedges-empty--71f60a145bfb163de1023f45.md) | 59 | `result-track:71f60a145bfb163de1023f45f2d672dbde19c08e41fe1cdcc86783baaeb527c2` |
| 7 | `lemma` | [deleteEdges_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variantc4c85419b97a086395e7399f0d90eaebb7c0fd574bd076a2098b82c214ff59b1.lean/declarations/deleteedges-univ--628b8e53b407ff2a83670f47.md) | 60 | `result-track:628b8e53b407ff2a83670f47f92ce2ff868fcd33b7b319a7a95cb578970e7fa3` |
| 8 | `lemma` | [deleteEdges_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variantc4c85419b97a086395e7399f0d90eaebb7c0fd574bd076a2098b82c214ff59b1.lean/declarations/deleteedges-le--de8993b838d8b5642422297e.md) | 62 | `result-track:de8993b838d8b5642422297e16f372228ad9ab4e9465e341be1441eab2019b00` |
| 9 | `lemma` | [deleteEdges_anti](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variantc4c85419b97a086395e7399f0d90eaebb7c0fd574bd076a2098b82c214ff59b1.lean/declarations/deleteedges-anti--75fa02465ce1398063145f83.md) | 64 | `result-track:75fa02465ce1398063145f83eda446eeee1c0327f1b9f4600f5a631182eb0ead` |
| 10 | `lemma` | [deleteEdges_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variantc4c85419b97a086395e7399f0d90eaebb7c0fd574bd076a2098b82c214ff59b1.lean/declarations/deleteedges-mono--d6331a9c7f580151d7d9f885.md) | 67 | `result-track:d6331a9c7f580151d7d9f8859ab18525c6a690c8753ec887c510fbfd7f545c2a` |
| 11 | `lemma` | [deleteEdges_eq_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variantc4c85419b97a086395e7399f0d90eaebb7c0fd574bd076a2098b82c214ff59b1.lean/declarations/deleteedges-eq-self--eb794fe16c23e7db227db17e.md) | 69 | `result-track:eb794fe16c23e7db227db17edbaf2ffe47b61a95566e6184e2739e3b672f3474` |
| 12 | `theorem` | [deleteEdges_eq_inter_edgeSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variantc4c85419b97a086395e7399f0d90eaebb7c0fd574bd076a2098b82c214ff59b1.lean/declarations/deleteedges-eq-inter-edgeset--3bc0234b0350bd5150015908.md) | 72 | `result-track:3bc0234b0350bd515001590834a4cd8bec8a19375fc75cd90456d9c715748ee3` |
| 13 | `theorem` | [deleteEdges_sdiff_eq_of_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variantc4c85419b97a086395e7399f0d90eaebb7c0fd574bd076a2098b82c214ff59b1.lean/declarations/deleteedges-sdiff-eq-of-le--3ac9bfc8340d79426a66d379.md) | 77 | `result-track:3ac9bfc8340d79426a66d379d31847febd1cb0f39af9ddf12ddcb06ee9dd0284` |
| 14 | `theorem` | [edgeSet_deleteEdges](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variantc4c85419b97a086395e7399f0d90eaebb7c0fd574bd076a2098b82c214ff59b1.lean/declarations/edgeset-deleteedges--7ab84371673f1b7d27836e38.md) | 81 | `result-track:7ab84371673f1b7d27836e38faa927e25bab724dc6882bb24478c314a5bb1f10` |
| 15 | `theorem` | [edgeFinset_deleteEdges](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variantc4c85419b97a086395e7399f0d90eaebb7c0fd574bd076a2098b82c214ff59b1.lean/declarations/edgefinset-deleteedges--23916e704b53098b90a7bec4.md) | 84 | `result-track:23916e704b53098b90a7bec4496bc92935b28ae2cdbc97e22f5fff15c7503454` |
| 16 | `def` | [deleteIncidenceSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variantc4c85419b97a086395e7399f0d90eaebb7c0fd574bd076a2098b82c214ff59b1.lean/declarations/deleteincidenceset--3d0f3bc17d04b42e7aa2789c.md) | 95 | `declaration-track:3d0f3bc17d04b42e7aa2789c55d9073a8c03bce9b4722ad781a2b92384f77177` |
| 17 | `lemma` | [deleteIncidenceSet_adj](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variantc4c85419b97a086395e7399f0d90eaebb7c0fd574bd076a2098b82c214ff59b1.lean/declarations/deleteincidenceset-adj--e999a1ce09714805c31307db.md) | 98 | `result-track:e999a1ce09714805c31307db4c72401847bd248d151286d4f6ab81436ef3c079` |
| 18 | `lemma` | [deleteIncidenceSet_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variantc4c85419b97a086395e7399f0d90eaebb7c0fd574bd076a2098b82c214ff59b1.lean/declarations/deleteincidenceset-le--584e99a60138ca351a352f4a.md) | 103 | `result-track:584e99a60138ca351a352f4a652da1c2ddc733c0cd7fafb962432c61bc64a3eb` |
| 19 | `lemma` | [edgeSet_fromEdgeSet_incidenceSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variantc4c85419b97a086395e7399f0d90eaebb7c0fd574bd076a2098b82c214ff59b1.lean/declarations/edgeset-fromedgeset-incidenceset--33d53d34a3d10da70fb713a3.md) | 106 | `result-track:33d53d34a3d10da70fb713a360dce9212bf9e2753ff15cd1332071714a4db45c` |
| 20 | `theorem` | [edgeSet_deleteIncidenceSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variantc4c85419b97a086395e7399f0d90eaebb7c0fd574bd076a2098b82c214ff59b1.lean/declarations/edgeset-deleteincidenceset--a78693318d225359e66e5e83.md) | 113 | `result-track:a78693318d225359e66e5e8322a160b84df04d21add23f19edb8af6c92701e31` |
| 21 | `theorem` | [support_deleteIncidenceSet_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variantc4c85419b97a086395e7399f0d90eaebb7c0fd574bd076a2098b82c214ff59b1.lean/declarations/support-deleteincidenceset-subset--b9cce89c02b66f3a8ecdc565.md) | 119 | `result-track:b9cce89c02b66f3a8ecdc565d35d56e39e5cfd87afb2b5390a5e57ebb8b68524` |
| 22 | `theorem` | [induce_deleteIncidenceSet_of_notMem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variantc4c85419b97a086395e7399f0d90eaebb7c0fd574bd076a2098b82c214ff59b1.lean/declarations/induce-deleteincidenceset-of-notmem--27f8837bdfaa91d1e3002838.md) | 125 | `result-track:27f8837bdfaa91d1e3002838510d27140fb38fbba0a084a132f1b59bdf84859d` |
| 23 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variantc4c85419b97a086395e7399f0d90eaebb7c0fd574bd076a2098b82c214ff59b1.lean/declarations/instance--11db505d3ba24845111023cf.md) | 136 | `declaration-track:11db505d3ba24845111023cf8523cd7496fd7f632681c86f60dd51f3d70f532b` |
| 24 | `theorem` | [card_edgeFinset_induce_compl_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variantc4c85419b97a086395e7399f0d90eaebb7c0fd574bd076a2098b82c214ff59b1.lean/declarations/card-edgefinset-induce-compl-singleton--9886a5d968254b579cd6e2a3.md) | 142 | `result-track:9886a5d968254b579cd6e2a39bddbe0b2ef7a0c6f11cd09fb786cb09fcf717fd` |
| 25 | `theorem` | [edgeFinset_deleteIncidenceSet_eq_sdiff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variantc4c85419b97a086395e7399f0d90eaebb7c0fd574bd076a2098b82c214ff59b1.lean/declarations/edgefinset-deleteincidenceset-eq-sdiff--027e4f9aaa4ec0a5b54647d4.md) | 155 | `result-track:027e4f9aaa4ec0a5b54647d458c552c0d5e506383aa72c7b26ae09e04100e213` |
| 26 | `theorem` | [card_edgeFinset_deleteIncidenceSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variantc4c85419b97a086395e7399f0d90eaebb7c0fd574bd076a2098b82c214ff59b1.lean/declarations/card-edgefinset-deleteincidenceset--24f34a1abd8d9c8e5cc0d6de.md) | 162 | `result-track:24f34a1abd8d9c8e5cc0d6dee80d76200822a969f544d71d9fb19e8779dafeb0` |
| 27 | `theorem` | [edgeFinset_deleteIncidenceSet_eq_filter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variantc4c85419b97a086395e7399f0d90eaebb7c0fd574bd076a2098b82c214ff59b1.lean/declarations/edgefinset-deleteincidenceset-eq-filter--dcd7ff40ac89d3837122baa3.md) | 169 | `result-track:dcd7ff40ac89d3837122baa3310af17589b9b418a181112db055fe21cb9a42b5` |
| 28 | `theorem` | [card_support_deleteIncidenceSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variantc4c85419b97a086395e7399f0d90eaebb7c0fd574bd076a2098b82c214ff59b1.lean/declarations/card-support-deleteincidenceset--7b4f3b97d192c5cfccff7d57.md) | 181 | `result-track:7b4f3b97d192c5cfccff7d57df19bab4b548899564285163f32d1e43be251213` |
| 29 | `def` | [DeleteFar](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variantc4c85419b97a086395e7399f0d90eaebb7c0fd574bd076a2098b82c214ff59b1.lean/declarations/deletefar--59103d784a24a44a9f00cdfc.md) | 199 | `declaration-track:59103d784a24a44a9f00cdfc912574f57aa4849a4cbdf0041b14e735bafc46e8` |
| 30 | `theorem` | [deleteFar_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variantc4c85419b97a086395e7399f0d90eaebb7c0fd574bd076a2098b82c214ff59b1.lean/declarations/deletefar-iff--4a3a6f5376cef5f4c9a3ec77.md) | 204 | `result-track:4a3a6f5376cef5f4c9a3ec772d6f5f0efc77b659f5625ca8adaf8c69f18748f9` |
| 31 | `theorem` | [DeleteFar.mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variantc4c85419b97a086395e7399f0d90eaebb7c0fd574bd076a2098b82c214ff59b1.lean/declarations/deletefar-mono--b2a6477018da038167f376d5.md) | 219 | `result-track:b2a6477018da038167f376d5978b9f390c8cf3bba232b4531dca50f9d95e7afc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
