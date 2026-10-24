# GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Basic.Variant5ed76d184efb5eb960dd963983718f1a7c06aab35cd1f5b6b20786c42c6a6ad5

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**27 observed declarations and anonymous commands**, 7 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant5ed76d184efb5eb960dd963983718f1a7c06aab35cd1f5b6b20786c42c6a6ad5.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `05d21c7c74b2326a61e32c5a82106673299b5609`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant5ed76d184efb5eb960dd963983718f1a7c06aab35cd1f5b6b20786c42c6a6ad5.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [BinaryTree.](declarations/binarytree--77df1b058793246ab78fe653.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [Tree.nil.](declarations/tree-nil--9b98d2c6f8d291f67675579d.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [Tree.node.](declarations/tree-node--eb2b600da02644ad16da2ede.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance--881df261cc70ff4a402c99ee.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [traverse](declarations/traverse--69092ed0459348db2693fbd3.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `abbrev` | [_root_.Tree.traverse](declarations/root-tree-traverse--5b487064ef09b9e4bd30ba32.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [map](declarations/map--46dd632d6f7dfbd3bfccfcef.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `abbrev` | [_root_.Tree.map](declarations/root-tree-map--17059b0bb0ebff01827b6462.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [id_map](declarations/id-map--783a213445c67e441d86a1c1.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [comp_map](declarations/comp-map--c86af3683b165b4c0ec6ced8.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [traverse_pure](declarations/traverse-pure--f4a1ce6a3b2d9adf0be485d5.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [numNodes](declarations/numnodes--adcd651bd23dfb5b8a2d523d.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `abbrev` | [_root_.Tree.numNodes](declarations/root-tree-numnodes--73faf061dc82f38529187a73.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [numLeaves](declarations/numleaves--1c04c4de97d24e7420737d29.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `abbrev` | [_root_.Tree.numLeaves](declarations/root-tree-numleaves--b12708638771a307e38f66ce.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [height](declarations/height--2554b4a36273e29882c1f9dd.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `abbrev` | [_root_.Tree.height](declarations/root-tree-height--15ba34a0f01566c7c783637b.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [numLeaves_eq_numNodes_succ](declarations/numleaves-eq-numnodes-succ--70e7c0dd614cda9b5b857c7b.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [numLeaves_pos](declarations/numleaves-pos--c9e532b448e5c61208fce650.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [height_le_numNodes](declarations/height-le-numnodes--bec3f95e1d3a1c4ee7bdc339.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [left](declarations/left--228486a19b4769f5678e85a8.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `abbrev` | [_root_.Tree.left](declarations/root-tree-left--3218749af313ba95ae684ed2.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [right](declarations/right--fdc7ed7abbafd8c5a75069d3.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `abbrev` | [_root_.Tree.right](declarations/root-tree-right--cce2a6e5464af1b8d31a3ba9.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [unitRecOn](declarations/unitrecon--911b117321d3b9072751af44.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `abbrev` | [_root_.Tree.unitRecOn](declarations/root-tree-unitrecon--d90f457e62e847b7ad542b39.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [left_node_right_eq_self](declarations/left-node-right-eq-self--c0b1237cf4a3b7b4df2f84e7.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
