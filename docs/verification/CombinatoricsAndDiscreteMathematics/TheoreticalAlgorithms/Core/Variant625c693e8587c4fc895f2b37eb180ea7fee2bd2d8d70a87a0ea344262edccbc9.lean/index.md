# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Core.Variant625c693e8587c4fc895f2b37eb180ea7fee2bd2d8d70a87a0ea344262edccbc9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5de9e434d30c7fc628345540e43d2ee25df11ff8",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant625c693e8587c4fc895f2b37eb180ea7fee2bd2d8d70a87a0ea344262edccbc9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant625c693e8587c4fc895f2b37eb180ea7fee2bd2d8d70a87a0ea344262edccbc9.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant625c693e8587c4fc895f2b37eb180ea7fee2bd2d8d70a87a0ea344262edccbc9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5de9e434d30c7fc628345540e43d2ee25df11ff8`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant625c693e8587c4fc895f2b37eb180ea7fee2bd2d8d70a87a0ea344262edccbc9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant625c693e8587c4fc895f2b37eb180ea7fee2bd2d8d70a87a0ea344262edccbc9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.BinaryLogicMatrix.Core` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SomeBinaryLogicMatrix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant625c693e8587c4fc895f2b37eb180ea7fee2bd2d8d70a87a0ea344262edccbc9.lean/declarations/somebinarylogicmatrix--9ca4b80f503fb64fb26f75c8.md) | 8 | `declaration-track:9ca4b80f503fb64fb26f75c80372e67ac0562b965c7e23ea5c3951081919fa3a` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant625c693e8587c4fc895f2b37eb180ea7fee2bd2d8d70a87a0ea344262edccbc9.lean/declarations/instance--c73fc3ad68dbc56dd73b31a2.md) | 13 | `declaration-track:c73fc3ad68dbc56dd73b31a2ad85dea13fa63c62c17587fe5e52c3ad93bdd213` |
| 3 | `inductive` | [BinaryLogicAtom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant625c693e8587c4fc895f2b37eb180ea7fee2bd2d8d70a87a0ea344262edccbc9.lean/declarations/binarylogicatom--a356850b93c3b69c695b5214.md) | 18 | `declaration-track:a356850b93c3b69c695b52147011b62d47f2badbe4126ac64ac9cb4b89ccf023` |
| 4 | `inductive` | [BinaryLogicTree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant625c693e8587c4fc895f2b37eb180ea7fee2bd2d8d70a87a0ea344262edccbc9.lean/declarations/binarylogictree--dfe635e9f3fff1c668db6751.md) | 25 | `declaration-track:dfe635e9f3fff1c668db67519b3942c4800c851a9e6c857747178b2ef671cd9c` |
| 5 | `def` | [size](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant625c693e8587c4fc895f2b37eb180ea7fee2bd2d8d70a87a0ea344262edccbc9.lean/declarations/size--d27d74a459af4d492b693755.md) | 32 | `declaration-track:d27d74a459af4d492b6937553496dae003446fe2adbb737311507dd09c4858c6` |
| 6 | `def` | [depth](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant625c693e8587c4fc895f2b37eb180ea7fee2bd2d8d70a87a0ea344262edccbc9.lean/declarations/depth--43a4508f8c600a98f35cb2f0.md) | 36 | `declaration-track:43a4508f8c600a98f35cb2f0633bbc42fa94723af2347927574e17042880caf6` |
| 7 | `def` | [compose](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant625c693e8587c4fc895f2b37eb180ea7fee2bd2d8d70a87a0ea344262edccbc9.lean/declarations/compose--1a64c4774b349ae0de82784c.md) | 40 | `declaration-track:1a64c4774b349ae0de82784c58f5aa65c335688115de34c720baab5501ceb303` |
| 8 | `theorem` | [size_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant625c693e8587c4fc895f2b37eb180ea7fee2bd2d8d70a87a0ea344262edccbc9.lean/declarations/size-pos--1614a6b35b17453a3ceb45b7.md) | 43 | `result-track:1614a6b35b17453a3ceb45b7368a7cbefb777aae7cdb09d435d37362fc8479c4` |
| 9 | `theorem` | [depth_le_size](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant625c693e8587c4fc895f2b37eb180ea7fee2bd2d8d70a87a0ea344262edccbc9.lean/declarations/depth-le-size--614d8a1f5c32084f8ca6dbe2.md) | 52 | `result-track:614d8a1f5c32084f8ca6dbe22f49af14fce1cc4e5dc88a871511199dba93082e` |
| 10 | `theorem` | [raw_node_left_right_visible](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant625c693e8587c4fc895f2b37eb180ea7fee2bd2d8d70a87a0ea344262edccbc9.lean/declarations/raw-node-left-right-visible--04ebbe28313e0fcfc2ab8087.md) | 63 | `result-track:04ebbe28313e0fcfc2ab808753a8f613ed508c10ec21870c0a0e2b87a237e407` |
| 11 | `theorem` | [raw_bracketing_visible](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant625c693e8587c4fc895f2b37eb180ea7fee2bd2d8d70a87a0ea344262edccbc9.lean/declarations/raw-bracketing-visible--2e9ffb7d070caa4966b8464b.md) | 70 | `result-track:2e9ffb7d070caa4966b8464b66a18536ac4923497d18092f9a63c18a5d12156e` |
| 12 | `def` | [raw_tree_order_not_quotiented](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant625c693e8587c4fc895f2b37eb180ea7fee2bd2d8d70a87a0ea344262edccbc9.lean/declarations/raw-tree-order-not-quotiented--0f1858911a18e874a85c33b9.md) | 80 | `declaration-track:0f1858911a18e874a85c33b933cc484c6096dd2258476bff9cfb27bad0641304` |
| 13 | `def` | [raw_tree_bracketing_not_quotiented](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant625c693e8587c4fc895f2b37eb180ea7fee2bd2d8d70a87a0ea344262edccbc9.lean/declarations/raw-tree-bracketing-not-quotiented--908adfb0926f045e6f182b5d.md) | 86 | `declaration-track:908adfb0926f045e6f182b5d4c9b0f47a4f8eb7414100958bc5d25d509ea3f50` |
| 14 | `theorem` | [binaryLogicTree_size_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant625c693e8587c4fc895f2b37eb180ea7fee2bd2d8d70a87a0ea344262edccbc9.lean/declarations/binarylogictree-size-pos--9b7d74976472d6dc0a940d74.md) | 93 | `result-track:9b7d74976472d6dc0a940d7422df4bb8e60394e2c711c84ab1487cac456a970a` |
| 15 | `theorem` | [binaryLogicTree_depth_le_size](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant625c693e8587c4fc895f2b37eb180ea7fee2bd2d8d70a87a0ea344262edccbc9.lean/declarations/binarylogictree-depth-le-size--24928672a57bf4409f0b567c.md) | 97 | `result-track:24928672a57bf4409f0b567c34b0957830634c0b415218c31d70cf302c8b1428` |
| 16 | `theorem` | [binaryLogicTree_raw_order_visible](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant625c693e8587c4fc895f2b37eb180ea7fee2bd2d8d70a87a0ea344262edccbc9.lean/declarations/binarylogictree-raw-order-visible--7e3af6c0bccf329e111b25c3.md) | 101 | `result-track:7e3af6c0bccf329e111b25c307df2bf49b64d9de998d46f1cbc44d25754c90ea` |
| 17 | `theorem` | [binaryLogicTree_raw_bracketing_visible](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant625c693e8587c4fc895f2b37eb180ea7fee2bd2d8d70a87a0ea344262edccbc9.lean/declarations/binarylogictree-raw-bracketing-visible--715f62b0a4a053c525efc48c.md) | 107 | `result-track:715f62b0a4a053c525efc48cc5e789003955b02effcdb80d72280d0de8c6a762` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
