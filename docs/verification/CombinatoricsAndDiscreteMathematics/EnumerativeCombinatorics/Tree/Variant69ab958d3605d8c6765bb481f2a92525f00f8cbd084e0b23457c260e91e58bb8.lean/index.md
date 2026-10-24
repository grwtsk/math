# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.Tree.Variant69ab958d3605d8c6765bb481f2a92525f00f8cbd084e0b23457c260e91e58bb8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9fc756614aceea330e582d83b809b3bcb6ae24e7",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Tree/Variant69ab958d3605d8c6765bb481f2a92525f00f8cbd084e0b23457c260e91e58bb8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Tree/Variant69ab958d3605d8c6765bb481f2a92525f00f8cbd084e0b23457c260e91e58bb8.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Tree/Variant69ab958d3605d8c6765bb481f2a92525f00f8cbd084e0b23457c260e91e58bb8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9fc756614aceea330e582d83b809b3bcb6ae24e7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Tree/Variant69ab958d3605d8c6765bb481f2a92525f00f8cbd084e0b23457c260e91e58bb8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Tree/Variant69ab958d3605d8c6765bb481f2a92525f00f8cbd084e0b23457c260e91e58bb8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [pairwiseNode](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Tree/Variant69ab958d3605d8c6765bb481f2a92525f00f8cbd084e0b23457c260e91e58bb8.lean/declarations/pairwisenode--f0d9d341208b3be19026cfc1.md) | 33 | `declaration-track:f0d9d341208b3be19026cfc14a3cd1a2720f5471a205b6ee7510f8e8a99fd186` |
| 2 | `def` | [treesOfNumNodesEq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Tree/Variant69ab958d3605d8c6765bb481f2a92525f00f8cbd084e0b23457c260e91e58bb8.lean/declarations/treesofnumnodeseq--debf694584c0e97eacb031b7.md) | 37 | `declaration-track:debf694584c0e97eacb031b707276491ea1a92f849a2f258b911c1e6671b3f43` |
| 3 | `abbrev` | [_root_.Tree.treesOfNumNodesEq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Tree/Variant69ab958d3605d8c6765bb481f2a92525f00f8cbd084e0b23457c260e91e58bb8.lean/declarations/root-tree-treesofnumnodeseq--d15cb75a39e3b27413597d22.md) | 48 | `declaration-track:d15cb75a39e3b27413597d226b4a3bf26d715a20d2cf07a9196c6af83990beff` |
| 4 | `theorem` | [treesOfNumNodesEq_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Tree/Variant69ab958d3605d8c6765bb481f2a92525f00f8cbd084e0b23457c260e91e58bb8.lean/declarations/treesofnumnodeseq-zero--f30f17bbaf98356e41633366.md) | 52 | `result-track:f30f17bbaf98356e41633366a44c370a7ba1c28b86e7554e77ca0824dc5b4ca3` |
| 5 | `theorem` | [treesOfNumNodesEq_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Tree/Variant69ab958d3605d8c6765bb481f2a92525f00f8cbd084e0b23457c260e91e58bb8.lean/declarations/treesofnumnodeseq-succ--c476d00722bbd2aa279197bc.md) | 54 | `result-track:c476d00722bbd2aa279197bc697a5bd4b7595733e5051879002e56400c9566a5` |
| 6 | `theorem` | [mem_treesOfNumNodesEq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Tree/Variant69ab958d3605d8c6765bb481f2a92525f00f8cbd084e0b23457c260e91e58bb8.lean/declarations/mem-treesofnumnodeseq--41c115cdb31b976ceb690271.md) | 64 | `result-track:41c115cdb31b976ceb6902716520177c99a8ae5c3148db57a00239ead382245f` |
| 7 | `theorem` | [mem_treesOfNumNodesEq_numNodes](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Tree/Variant69ab958d3605d8c6765bb481f2a92525f00f8cbd084e0b23457c260e91e58bb8.lean/declarations/mem-treesofnumnodeseq-numnodes--2394cb3cef64fc6412978d74.md) | 69 | `result-track:2394cb3cef64fc6412978d744198a30271408cde0d500a7e89beeb63e79f65b5` |
| 8 | `theorem` | [coe_treesOfNumNodesEq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Tree/Variant69ab958d3605d8c6765bb481f2a92525f00f8cbd084e0b23457c260e91e58bb8.lean/declarations/coe-treesofnumnodeseq--8084019d37d33f1a8971db3a.md) | 73 | `result-track:8084019d37d33f1a8971db3ae2121ad4d6189d68feed10d7674e4c5839ce2bfe` |
| 9 | `theorem` | [treesOfNumNodesEq_card_eq_catalan](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Tree/Variant69ab958d3605d8c6765bb481f2a92525f00f8cbd084e0b23457c260e91e58bb8.lean/declarations/treesofnumnodeseq-card-eq-catalan--f5045ec0c4166f585da15d90.md) | 77 | `result-track:f5045ec0c4166f585da15d904c93761cb09dfd9e13b996a6a630fdfd11ccbaf3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
