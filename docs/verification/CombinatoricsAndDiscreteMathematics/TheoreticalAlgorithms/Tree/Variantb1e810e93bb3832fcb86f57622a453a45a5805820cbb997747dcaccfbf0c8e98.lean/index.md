# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Tree.Variantb1e810e93bb3832fcb86f57622a453a45a5805820cbb997747dcaccfbf0c8e98

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "65063516fd79493f2dbeb5d9bc151f89bd39a581",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variantb1e810e93bb3832fcb86f57622a453a45a5805820cbb997747dcaccfbf0c8e98.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variantb1e810e93bb3832fcb86f57622a453a45a5805820cbb997747dcaccfbf0c8e98.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variantb1e810e93bb3832fcb86f57622a453a45a5805820cbb997747dcaccfbf0c8e98.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `65063516fd79493f2dbeb5d9bc151f89bd39a581`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variantb1e810e93bb3832fcb86f57622a453a45a5805820cbb997747dcaccfbf0c8e98.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variantb1e810e93bb3832fcb86f57622a453a45a5805820cbb997747dcaccfbf0c8e98.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.BinaryFrontier.Completion.Bitfield` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RefinementEdge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variantb1e810e93bb3832fcb86f57622a453a45a5805820cbb997747dcaccfbf0c8e98.lean/declarations/refinementedge--0a13a8c45c7848690f0f21c7.md) | 21 | `declaration-track:0a13a8c45c7848690f0f21c79d8dcf03577607e1b9e59abe8913b8a4d0ee5856` |
| 2 | `structure` | [CompleteBooleanSplit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variantb1e810e93bb3832fcb86f57622a453a45a5805820cbb997747dcaccfbf0c8e98.lean/declarations/completebooleansplit--17fbf353ce1807237253828a.md) | 30 | `declaration-track:17fbf353ce1807237253828a6576aa49e27f4cd7666343a802c8c21ff725588b` |
| 3 | `def` | [CompleteBooleanSplit.zeroResolution](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variantb1e810e93bb3832fcb86f57622a453a45a5805820cbb997747dcaccfbf0c8e98.lean/declarations/completebooleansplit-zeroresolution--1091c9e950394735920d80fd.md) | 45 | `declaration-track:1091c9e950394735920d80fdccf8577faaeae7497333932afa002214be489dd9` |
| 4 | `def` | [CompleteBooleanSplit.oneResolution](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variantb1e810e93bb3832fcb86f57622a453a45a5805820cbb997747dcaccfbf0c8e98.lean/declarations/completebooleansplit-oneresolution--86c4f29ed57cc46ba8f102c8.md) | 54 | `declaration-track:86c4f29ed57cc46ba8f102c87eff651004a737bc3cbaf9543ebbb66c36649d92` |
| 5 | `theorem` | [completeBooleanSplit_children_extend](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variantb1e810e93bb3832fcb86f57622a453a45a5805820cbb997747dcaccfbf0c8e98.lean/declarations/completebooleansplit-children-extend--ead3641f7daf3e42bd2ea707.md) | 63 | `result-track:ead3641f7daf3e42bd2ea7077f9020b0309e52e30a452cd14c81bab781cf16a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
