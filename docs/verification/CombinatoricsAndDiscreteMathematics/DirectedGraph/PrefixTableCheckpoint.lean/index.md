# Verification target: GRWTSK.Combinatorics.DirectedGraph.PrefixTableCheckpoint

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "16bb4ba0081bdb7210e291326a0f741d83ac30ce",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Combinatorics/DirectedGraph/PrefixTableCheckpoint.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableCheckpoint.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableCheckpoint.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `16bb4ba0081bdb7210e291326a0f741d83ac30ce`.

Source path: `GRWTSK/Combinatorics/DirectedGraph/PrefixTableCheckpoint.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Combinatorics/DirectedGraph/PrefixTableCheckpoint.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Combinatorics.DirectedGraph.PrefixTableBatch`](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableBatch.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [compactAt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableCheckpoint.lean/declarations/compactat--a9284f056e1ab71f53333c03.md) | 29 | `declaration-track:a9284f056e1ab71f53333c0360ff74520aeca37912e1b12432beb4fd9a017bde` |
| 2 | `theorem` | [compactAt_wellFormed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableCheckpoint.lean/declarations/compactat-wellformed--69f6546a854772e2554bc1c5.md) | 33 | `result-track:69f6546a854772e2554bc1c542778fbd5b546f543e5fdc3623918b225ee25da4` |
| 3 | `theorem` | [decode_compactAt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableCheckpoint.lean/declarations/decode-compactat--3128a1b2baf483dc9340a0c9.md) | 37 | `result-track:3128a1b2baf483dc9340a0c9ebc6aeed406cbcbc8c4fffb0f4a88dfc824e999e` |
| 4 | `theorem` | [split_runAt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableCheckpoint.lean/declarations/split-runat--0e93395ae21d116307147008.md) | 43 | `result-track:0e93395ae21d116307147008be83783084d238276b9699fc83c8996d95c07023` |
| 5 | `def` | [executeAt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableCheckpoint.lean/declarations/executeat--9bd3a5f03342ab3c636d77a2.md) | 49 | `declaration-track:9bd3a5f03342ab3c636d77a2cb77d5fd2c92c231e409630709f90fea1217bc1a` |
| 6 | `def` | [checkpoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableCheckpoint.lean/declarations/checkpoint--ec8ebdf831aff82f9ab53dfe.md) | 55 | `declaration-track:ec8ebdf831aff82f9ab53dfe306e743a9d6db918535770f894650d4b0911c339` |
| 7 | `theorem` | [checkpoint_root](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableCheckpoint.lean/declarations/checkpoint-root--163533c0b4a9f808c02d2fc6.md) | 59 | `result-track:163533c0b4a9f808c02d2fc620d12444542e3d869869216b7010f708d763499e` |
| 8 | `theorem` | [executeAt_wellFormed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableCheckpoint.lean/declarations/executeat-wellformed--e885908d3f8975534e400cc5.md) | 64 | `result-track:e885908d3f8975534e400cc56534f18922feaa643faa9ef0f671dc2a91f463da` |
| 9 | `theorem` | [checkpoint_wellFormed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableCheckpoint.lean/declarations/checkpoint-wellformed--b298538e0cdf048c11f8238c.md) | 70 | `result-track:b298538e0cdf048c11f8238c3e7dadc01bd4c20327c3cca653e5e53cd92134b8` |
| 10 | `theorem` | [decode_executeAt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableCheckpoint.lean/declarations/decode-executeat--40a6f4b78dd538259d2bd26b.md) | 76 | `result-track:40a6f4b78dd538259d2bd26b13cc933549de2658809301e0f6bd6fdf4bb686b1` |
| 11 | `theorem` | [decode_checkpoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableCheckpoint.lean/declarations/decode-checkpoint--91df9e8573768e43e2f90212.md) | 88 | `result-track:91df9e8573768e43e2f90212b670f7a96c65c02c1c361b3dcbac93588e2b6dd4` |
| 12 | `theorem` | [checkpoint_histories](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableCheckpoint.lean/declarations/checkpoint-histories--c309f6f3c980f9a5ef6d2a49.md) | 95 | `result-track:c309f6f3c980f9a5ef6d2a4986e99227065568725317617ec927d4e14a7da73a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
