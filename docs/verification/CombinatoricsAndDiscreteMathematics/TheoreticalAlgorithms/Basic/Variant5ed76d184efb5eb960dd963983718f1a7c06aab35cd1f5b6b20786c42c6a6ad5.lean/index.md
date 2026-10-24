# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Basic.Variant5ed76d184efb5eb960dd963983718f1a7c06aab35cd1f5b6b20786c42c6a6ad5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "05d21c7c74b2326a61e32c5a82106673299b5609",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant5ed76d184efb5eb960dd963983718f1a7c06aab35cd1f5b6b20786c42c6a6ad5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant5ed76d184efb5eb960dd963983718f1a7c06aab35cd1f5b6b20786c42c6a6ad5.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant5ed76d184efb5eb960dd963983718f1a7c06aab35cd1f5b6b20786c42c6a6ad5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `05d21c7c74b2326a61e32c5a82106673299b5609`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant5ed76d184efb5eb960dd963983718f1a7c06aab35cd1f5b6b20786c42c6a6ad5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant5ed76d184efb5eb960dd963983718f1a7c06aab35cd1f5b6b20786c42c6a6ad5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Tactic.Alias` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [BinaryTree.](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant5ed76d184efb5eb960dd963983718f1a7c06aab35cd1f5b6b20786c42c6a6ad5.lean/declarations/binarytree--77df1b058793246ab78fe653.md) | 32 | `declaration-track:77df1b058793246ab78fe6537fa9d3f7c575d9ebe65fd64c42fe4b9c69230720` |
| 2 | `abbrev` | [Tree.nil.](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant5ed76d184efb5eb960dd963983718f1a7c06aab35cd1f5b6b20786c42c6a6ad5.lean/declarations/tree-nil--9b98d2c6f8d291f67675579d.md) | 43 | `declaration-track:9b98d2c6f8d291f67675579d3996a094b2bcdba827019893dc747d78ade6dc7b` |
| 3 | `abbrev` | [Tree.node.](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant5ed76d184efb5eb960dd963983718f1a7c06aab35cd1f5b6b20786c42c6a6ad5.lean/declarations/tree-node--eb2b600da02644ad16da2ede.md) | 47 | `declaration-track:eb2b600da02644ad16da2edeb1c4c21c088d50ba436fe7ec5de5f69247645968` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant5ed76d184efb5eb960dd963983718f1a7c06aab35cd1f5b6b20786c42c6a6ad5.lean/declarations/instance--881df261cc70ff4a402c99ee.md) | 57 | `declaration-track:881df261cc70ff4a402c99ee7aafaac50db2164e84dfac670524948e91fbdacf` |
| 5 | `def` | [traverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant5ed76d184efb5eb960dd963983718f1a7c06aab35cd1f5b6b20786c42c6a6ad5.lean/declarations/traverse--69092ed0459348db2693fbd3.md) | 65 | `declaration-track:69092ed0459348db2693fbd340427e66708747e2da96db34017463cda0691541` |
| 6 | `abbrev` | [_root_.Tree.traverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant5ed76d184efb5eb960dd963983718f1a7c06aab35cd1f5b6b20786c42c6a6ad5.lean/declarations/root-tree-traverse--5b487064ef09b9e4bd30ba32.md) | 73 | `declaration-track:5b487064ef09b9e4bd30ba32196ddf7591a97bdef2d50a9e12c1cd5ae4b95d52` |
| 7 | `def` | [map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant5ed76d184efb5eb960dd963983718f1a7c06aab35cd1f5b6b20786c42c6a6ad5.lean/declarations/map--46dd632d6f7dfbd3bfccfcef.md) | 80 | `declaration-track:46dd632d6f7dfbd3bfccfceff8f15e07008f84c2357797f31d061b999115c1c3` |
| 8 | `abbrev` | [_root_.Tree.map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant5ed76d184efb5eb960dd963983718f1a7c06aab35cd1f5b6b20786c42c6a6ad5.lean/declarations/root-tree-map--17059b0bb0ebff01827b6462.md) | 86 | `declaration-track:17059b0bb0ebff01827b6462e75f96a23b504f0168c95344f9a58e0585c45ae9` |
| 9 | `theorem` | [id_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant5ed76d184efb5eb960dd963983718f1a7c06aab35cd1f5b6b20786c42c6a6ad5.lean/declarations/id-map--783a213445c67e441d86a1c1.md) | 88 | `result-track:783a213445c67e441d86a1c1f1fd4780e49beb3d696d794cdbfc646f55952e0b` |
| 10 | `theorem` | [comp_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant5ed76d184efb5eb960dd963983718f1a7c06aab35cd1f5b6b20786c42c6a6ad5.lean/declarations/comp-map--c86af3683b165b4c0ec6ced8.md) | 93 | `result-track:c86af3683b165b4c0ec6ced83cb97134f4fbe3dfced5a3568d549c053852ba3c` |
| 11 | `theorem` | [traverse_pure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant5ed76d184efb5eb960dd963983718f1a7c06aab35cd1f5b6b20786c42c6a6ad5.lean/declarations/traverse-pure--f4a1ce6a3b2d9adf0be485d5.md) | 99 | `result-track:f4a1ce6a3b2d9adf0be485d522e53428e7c71bb3ba06b2400fb6d7b890e8da3a` |
| 12 | `def` | [numNodes](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant5ed76d184efb5eb960dd963983718f1a7c06aab35cd1f5b6b20786c42c6a6ad5.lean/declarations/numnodes--adcd651bd23dfb5b8a2d523d.md) | 109 | `declaration-track:adcd651bd23dfb5b8a2d523df6c1f63211e8f820e76cfb05a221ebc60d81a244` |
| 13 | `abbrev` | [_root_.Tree.numNodes](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant5ed76d184efb5eb960dd963983718f1a7c06aab35cd1f5b6b20786c42c6a6ad5.lean/declarations/root-tree-numnodes--73faf061dc82f38529187a73.md) | 115 | `declaration-track:73faf061dc82f38529187a73c0342ebcf0f13c1bf216e7347f06965f32f87ca5` |
| 14 | `def` | [numLeaves](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant5ed76d184efb5eb960dd963983718f1a7c06aab35cd1f5b6b20786c42c6a6ad5.lean/declarations/numleaves--1c04c4de97d24e7420737d29.md) | 119 | `declaration-track:1c04c4de97d24e7420737d29d8c2c17397e7ed1887b73e569558b85d88281a6a` |
| 15 | `abbrev` | [_root_.Tree.numLeaves](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant5ed76d184efb5eb960dd963983718f1a7c06aab35cd1f5b6b20786c42c6a6ad5.lean/declarations/root-tree-numleaves--b12708638771a307e38f66ce.md) | 125 | `declaration-track:b12708638771a307e38f66ce89e718136d5ac627eef2d0921e22fa4ccea53a12` |
| 16 | `def` | [height](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant5ed76d184efb5eb960dd963983718f1a7c06aab35cd1f5b6b20786c42c6a6ad5.lean/declarations/height--2554b4a36273e29882c1f9dd.md) | 129 | `declaration-track:2554b4a36273e29882c1f9dd6c32e00d1f5f0e43c89246aaf06148c2ab27dd37` |
| 17 | `abbrev` | [_root_.Tree.height](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant5ed76d184efb5eb960dd963983718f1a7c06aab35cd1f5b6b20786c42c6a6ad5.lean/declarations/root-tree-height--15ba34a0f01566c7c783637b.md) | 135 | `declaration-track:15ba34a0f01566c7c783637ba41fa25758a862c50bcc97af1961d39bb94945e1` |
| 18 | `theorem` | [numLeaves_eq_numNodes_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant5ed76d184efb5eb960dd963983718f1a7c06aab35cd1f5b6b20786c42c6a6ad5.lean/declarations/numleaves-eq-numnodes-succ--70e7c0dd614cda9b5b857c7b.md) | 137 | `result-track:70e7c0dd614cda9b5b857c7b5bda2d7c884ff0e0fc12992b77c2c21fbae88302` |
| 19 | `theorem` | [numLeaves_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant5ed76d184efb5eb960dd963983718f1a7c06aab35cd1f5b6b20786c42c6a6ad5.lean/declarations/numleaves-pos--c9e532b448e5c61208fce650.md) | 140 | `result-track:c9e532b448e5c61208fce650e29731aa199a68315b4676e5e4e2a9b570442187` |
| 20 | `theorem` | [height_le_numNodes](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant5ed76d184efb5eb960dd963983718f1a7c06aab35cd1f5b6b20786c42c6a6ad5.lean/declarations/height-le-numnodes--bec3f95e1d3a1c4ee7bdc339.md) | 144 | `result-track:bec3f95e1d3a1c4ee7bdc339bd86ee7a6aae51e99f45b7ea8c0585d26f95f493` |
| 21 | `def` | [left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant5ed76d184efb5eb960dd963983718f1a7c06aab35cd1f5b6b20786c42c6a6ad5.lean/declarations/left--228486a19b4769f5678e85a8.md) | 152 | `declaration-track:228486a19b4769f5678e85a89db3ae697600ff0a41f90adc62c593c5876e741f` |
| 22 | `abbrev` | [_root_.Tree.left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant5ed76d184efb5eb960dd963983718f1a7c06aab35cd1f5b6b20786c42c6a6ad5.lean/declarations/root-tree-left--3218749af313ba95ae684ed2.md) | 158 | `declaration-track:3218749af313ba95ae684ed23c6827e938444378ad004bb4516c8eeb5d53ec97` |
| 23 | `def` | [right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant5ed76d184efb5eb960dd963983718f1a7c06aab35cd1f5b6b20786c42c6a6ad5.lean/declarations/right--fdc7ed7abbafd8c5a75069d3.md) | 162 | `declaration-track:fdc7ed7abbafd8c5a75069d33e35f2ebfbfa7b33a014d22928c64bfc85d69010` |
| 24 | `abbrev` | [_root_.Tree.right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant5ed76d184efb5eb960dd963983718f1a7c06aab35cd1f5b6b20786c42c6a6ad5.lean/declarations/root-tree-right--cce2a6e5464af1b8d31a3ba9.md) | 168 | `declaration-track:cce2a6e5464af1b8d31a3ba961275422d556116d848f79769aab9fd64a3950b8` |
| 25 | `def` | [unitRecOn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant5ed76d184efb5eb960dd963983718f1a7c06aab35cd1f5b6b20786c42c6a6ad5.lean/declarations/unitrecon--911b117321d3b9072751af44.md) | 175 | `declaration-track:911b117321d3b9072751af446e8d4c18145ec313881556efce8a7fe99c523132` |
| 26 | `abbrev` | [_root_.Tree.unitRecOn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant5ed76d184efb5eb960dd963983718f1a7c06aab35cd1f5b6b20786c42c6a6ad5.lean/declarations/root-tree-unitrecon--d90f457e62e847b7ad542b39.md) | 181 | `declaration-track:d90f457e62e847b7ad542b3989c484b3f10a4db0185a5a0a98659684fa9d0bca` |
| 27 | `theorem` | [left_node_right_eq_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant5ed76d184efb5eb960dd963983718f1a7c06aab35cd1f5b6b20786c42c6a6ad5.lean/declarations/left-node-right-eq-self--c0b1237cf4a3b7b4df2f84e7.md) | 185 | `result-track:c0b1237cf4a3b7b4df2f84e768cb05d613eca1afeda1f64c48ab53ed1b4b7dc7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
