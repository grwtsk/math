# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Basic.Variantc83aad21fc131a5194aebf469e8cd0a3b290b65a30b7123fbc6b51303cc508ef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "398d24b9e82caa546e5947b3a4c4bfec8b187d1f",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc83aad21fc131a5194aebf469e8cd0a3b290b65a30b7123fbc6b51303cc508ef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc83aad21fc131a5194aebf469e8cd0a3b290b65a30b7123fbc6b51303cc508ef.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc83aad21fc131a5194aebf469e8cd0a3b290b65a30b7123fbc6b51303cc508ef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `398d24b9e82caa546e5947b3a4c4bfec8b187d1f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc83aad21fc131a5194aebf469e8cd0a3b290b65a30b7123fbc6b51303cc508ef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc83aad21fc131a5194aebf469e8cd0a3b290b65a30b7123fbc6b51303cc508ef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Tactic.Alias` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [BinaryTree.](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc83aad21fc131a5194aebf469e8cd0a3b290b65a30b7123fbc6b51303cc508ef.lean/declarations/binarytree--f7f698a2cfe4e2e9ca3a5818.md) | 40 | `declaration-track:f7f698a2cfe4e2e9ca3a5818ab072325f058017fe179e38ee85f5e5879c63133` |
| 2 | `abbrev` | [Tree.nil.](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc83aad21fc131a5194aebf469e8cd0a3b290b65a30b7123fbc6b51303cc508ef.lean/declarations/tree-nil--9867189e3c7dc11a05112c05.md) | 51 | `declaration-track:9867189e3c7dc11a05112c055d7f50089d6963bcdf7905055b4c8b7c9550afb4` |
| 3 | `abbrev` | [Tree.node.](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc83aad21fc131a5194aebf469e8cd0a3b290b65a30b7123fbc6b51303cc508ef.lean/declarations/tree-node--e5fb290a9ad5f3fbb4ed102e.md) | 55 | `declaration-track:e5fb290a9ad5f3fbb4ed102e67f962a2e4fcb61ad6ea10968c8213c405711717` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc83aad21fc131a5194aebf469e8cd0a3b290b65a30b7123fbc6b51303cc508ef.lean/declarations/instance--8351b49cdd183ad49ae72382.md) | 65 | `declaration-track:8351b49cdd183ad49ae7238274b9c141044f262670b764aa3452d95cb7d25dea` |
| 5 | `def` | [traverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc83aad21fc131a5194aebf469e8cd0a3b290b65a30b7123fbc6b51303cc508ef.lean/declarations/traverse--c4e2d24c4d608ab04e9727ce.md) | 73 | `declaration-track:c4e2d24c4d608ab04e9727cefff613d7e8165c53a249a90c7c9390bd886cc5b7` |
| 6 | `abbrev` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BinaryTree.Variant5ed76d184efb5eb960dd963983718f1a7c06aab35cd1f5b6b20786c42c6a6ad5.Tree.traverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc83aad21fc131a5194aebf469e8cd0a3b290b65a30b7123fbc6b51303cc508ef.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-bi--7349812e9fdeda6446f144d8.md) | 81 | `declaration-track:7349812e9fdeda6446f144d8b6639e8a10b5a9bfc93a770242be513666fe45ae` |
| 7 | `def` | [map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc83aad21fc131a5194aebf469e8cd0a3b290b65a30b7123fbc6b51303cc508ef.lean/declarations/map--03d0067994f358263ff66c55.md) | 88 | `declaration-track:03d0067994f358263ff66c55318098a05596921da9925416cb86609ffebf08ca` |
| 8 | `abbrev` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BinaryTree.Variant5ed76d184efb5eb960dd963983718f1a7c06aab35cd1f5b6b20786c42c6a6ad5.Tree.map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc83aad21fc131a5194aebf469e8cd0a3b290b65a30b7123fbc6b51303cc508ef.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-bi--9cd0197031da7e170df31e6c.md) | 94 | `declaration-track:9cd0197031da7e170df31e6ca45b3436bd50bf449b53dc89bf6a47499980684c` |
| 9 | `theorem` | [id_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc83aad21fc131a5194aebf469e8cd0a3b290b65a30b7123fbc6b51303cc508ef.lean/declarations/id-map--8e04d2fe45e093f6514bc631.md) | 96 | `result-track:8e04d2fe45e093f6514bc6311911c33ecf27cbe51df48adad825c900f5d42d16` |
| 10 | `theorem` | [comp_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc83aad21fc131a5194aebf469e8cd0a3b290b65a30b7123fbc6b51303cc508ef.lean/declarations/comp-map--33c2107f077064bca6864c29.md) | 101 | `result-track:33c2107f077064bca6864c29a80335b09c26899fdb516f3d5e146a6858d8afed` |
| 11 | `theorem` | [traverse_pure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc83aad21fc131a5194aebf469e8cd0a3b290b65a30b7123fbc6b51303cc508ef.lean/declarations/traverse-pure--feb09c02193e6cacd4b24a5d.md) | 107 | `result-track:feb09c02193e6cacd4b24a5d2ab76dc184cc59a1309e539bf376d5e44e340665` |
| 12 | `def` | [numNodes](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc83aad21fc131a5194aebf469e8cd0a3b290b65a30b7123fbc6b51303cc508ef.lean/declarations/numnodes--57a4125091fc60394e4ec6ab.md) | 117 | `declaration-track:57a4125091fc60394e4ec6ab0f353d337a3f8f702c97decd4a728d0e1fb72781` |
| 13 | `abbrev` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BinaryTree.Variant5ed76d184efb5eb960dd963983718f1a7c06aab35cd1f5b6b20786c42c6a6ad5.Tree.numNodes](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc83aad21fc131a5194aebf469e8cd0a3b290b65a30b7123fbc6b51303cc508ef.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-bi--b48c20c6fdc0847b13f03524.md) | 123 | `declaration-track:b48c20c6fdc0847b13f03524d1a894e8ce3b002722a832ff63afe83c5cf4ce57` |
| 14 | `def` | [numLeaves](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc83aad21fc131a5194aebf469e8cd0a3b290b65a30b7123fbc6b51303cc508ef.lean/declarations/numleaves--fd270b94190707868771677e.md) | 127 | `declaration-track:fd270b94190707868771677ea304ac904cd2ea44472ca027b10c9099a93e8629` |
| 15 | `abbrev` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BinaryTree.Variant5ed76d184efb5eb960dd963983718f1a7c06aab35cd1f5b6b20786c42c6a6ad5.Tree.numLeaves](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc83aad21fc131a5194aebf469e8cd0a3b290b65a30b7123fbc6b51303cc508ef.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-bi--7e03c906f3d47812c24bc338.md) | 133 | `declaration-track:7e03c906f3d47812c24bc33840422ad1d2e379211caa434700980d29e0690de9` |
| 16 | `def` | [height](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc83aad21fc131a5194aebf469e8cd0a3b290b65a30b7123fbc6b51303cc508ef.lean/declarations/height--063bfea80bc63423efd6185b.md) | 137 | `declaration-track:063bfea80bc63423efd6185bb8c1456acc4b6a4bd6137899679e65a985f78bea` |
| 17 | `abbrev` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BinaryTree.Variant5ed76d184efb5eb960dd963983718f1a7c06aab35cd1f5b6b20786c42c6a6ad5.Tree.height](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc83aad21fc131a5194aebf469e8cd0a3b290b65a30b7123fbc6b51303cc508ef.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-bi--e2d9fc8f367ffb6501d517e1.md) | 143 | `declaration-track:e2d9fc8f367ffb6501d517e1bd54fd14fe85f9ce9aa1bc73fce0160cca204e57` |
| 18 | `theorem` | [numLeaves_eq_numNodes_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc83aad21fc131a5194aebf469e8cd0a3b290b65a30b7123fbc6b51303cc508ef.lean/declarations/numleaves-eq-numnodes-succ--99f6aac8f85e5314588ab38f.md) | 145 | `result-track:99f6aac8f85e5314588ab38fb12099a425d6bd1fef21d2cb7de3848f1ba34039` |
| 19 | `theorem` | [numLeaves_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc83aad21fc131a5194aebf469e8cd0a3b290b65a30b7123fbc6b51303cc508ef.lean/declarations/numleaves-pos--67d34fa53f378215beb147e5.md) | 148 | `result-track:67d34fa53f378215beb147e5f4174aec22e75186baf3bbdefa28a0ed2aa02ecd` |
| 20 | `theorem` | [height_le_numNodes](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc83aad21fc131a5194aebf469e8cd0a3b290b65a30b7123fbc6b51303cc508ef.lean/declarations/height-le-numnodes--b51f33cf44c57618891be22d.md) | 152 | `result-track:b51f33cf44c57618891be22de38b608c4123ffa2bd199631ac0861d0df98de4d` |
| 21 | `def` | [left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc83aad21fc131a5194aebf469e8cd0a3b290b65a30b7123fbc6b51303cc508ef.lean/declarations/left--84f6a3e3b74adf35585a8dfd.md) | 160 | `declaration-track:84f6a3e3b74adf35585a8dfdc858ca83de319f970a637d61114256f84d06096d` |
| 22 | `abbrev` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BinaryTree.Variant5ed76d184efb5eb960dd963983718f1a7c06aab35cd1f5b6b20786c42c6a6ad5.Tree.left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc83aad21fc131a5194aebf469e8cd0a3b290b65a30b7123fbc6b51303cc508ef.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-bi--c361a54087197a22a99b1f44.md) | 166 | `declaration-track:c361a54087197a22a99b1f442947db40226384ac9ed2407346642049d6ee03eb` |
| 23 | `def` | [right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc83aad21fc131a5194aebf469e8cd0a3b290b65a30b7123fbc6b51303cc508ef.lean/declarations/right--9b2edc2896a1acd8406d0260.md) | 170 | `declaration-track:9b2edc2896a1acd8406d02604c26d39915d1c6c8bcc8bc551eb83feda05ccca6` |
| 24 | `abbrev` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BinaryTree.Variant5ed76d184efb5eb960dd963983718f1a7c06aab35cd1f5b6b20786c42c6a6ad5.Tree.right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc83aad21fc131a5194aebf469e8cd0a3b290b65a30b7123fbc6b51303cc508ef.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-bi--0074c7064f274c2324f4530d.md) | 176 | `declaration-track:0074c7064f274c2324f4530d06c606f0dced74857c133a67e761a852b7aaa0c7` |
| 25 | `def` | [unitRecOn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc83aad21fc131a5194aebf469e8cd0a3b290b65a30b7123fbc6b51303cc508ef.lean/declarations/unitrecon--33beaf5ab2e4d2020e5d2c7e.md) | 183 | `declaration-track:33beaf5ab2e4d2020e5d2c7eaf927e429c3c32f6400415623ae9355096a48abd` |
| 26 | `abbrev` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BinaryTree.Variant5ed76d184efb5eb960dd963983718f1a7c06aab35cd1f5b6b20786c42c6a6ad5.Tree.unitRecOn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc83aad21fc131a5194aebf469e8cd0a3b290b65a30b7123fbc6b51303cc508ef.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-bi--2c7e57e86ea17f615615c216.md) | 189 | `declaration-track:2c7e57e86ea17f615615c216a0b78d3b3f64ae66cc90bf12f815c882c6cc72bf` |
| 27 | `theorem` | [left_node_right_eq_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc83aad21fc131a5194aebf469e8cd0a3b290b65a30b7123fbc6b51303cc508ef.lean/declarations/left-node-right-eq-self--a39a4e86aef896e47602256d.md) | 193 | `result-track:a39a4e86aef896e47602256d94775609602e6407ab77f73f7ce88bf47418a38a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
