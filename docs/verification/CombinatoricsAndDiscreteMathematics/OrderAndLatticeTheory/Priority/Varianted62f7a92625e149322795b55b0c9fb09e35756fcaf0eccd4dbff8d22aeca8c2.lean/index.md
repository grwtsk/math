# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Priority.Varianted62f7a92625e149322795b55b0c9fb09e35756fcaf0eccd4dbff8d22aeca8c2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce336f0e0ff88f11e7336c07a5ace7700b57c739",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Priority/Varianted62f7a92625e149322795b55b0c9fb09e35756fcaf0eccd4dbff8d22aeca8c2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Priority/Varianted62f7a92625e149322795b55b0c9fb09e35756fcaf0eccd4dbff8d22aeca8c2.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Priority/Varianted62f7a92625e149322795b55b0c9fb09e35756fcaf0eccd4dbff8d22aeca8c2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce336f0e0ff88f11e7336c07a5ace7700b57c739`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Priority/Varianted62f7a92625e149322795b55b0c9fb09e35756fcaf0eccd4dbff8d22aeca8c2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Priority/Varianted62f7a92625e149322795b55b0c9fb09e35756fcaf0eccd4dbff8d22aeca8c2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Operational.Coordinates` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PriorityKey](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Priority/Varianted62f7a92625e149322795b55b0c9fb09e35756fcaf0eccd4dbff8d22aeca8c2.lean/declarations/prioritykey--7f530b4074ca4a9487e362a2.md) | 24 | `declaration-track:7f530b4074ca4a9487e362a2f7f6b4b0deaeb1f3a218bb6c9612e7b5736434e7` |
| 2 | `def` | [BeaconFamily.priorityKey](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Priority/Varianted62f7a92625e149322795b55b0c9fb09e35756fcaf0eccd4dbff8d22aeca8c2.lean/declarations/beaconfamily-prioritykey--65a8b9b6079b490ffc4178f6.md) | 32 | `declaration-track:65a8b9b6079b490ffc4178f6b715c718dedc1e9ecaa653e3bdd6ff85ec312529` |
| 3 | `inductive` | [ComparatorOrderKind](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Priority/Varianted62f7a92625e149322795b55b0c9fb09e35756fcaf0eccd4dbff8d22aeca8c2.lean/declarations/comparatororderkind--c26492a0c807d4ad5b22b26b.md) | 63 | `declaration-track:c26492a0c807d4ad5b22b26b505e6af5c3d39aceccf1a6a3abb28aa0e32f5bf5` |
| 4 | `structure` | [ProofCarryingComparator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Priority/Varianted62f7a92625e149322795b55b0c9fb09e35756fcaf0eccd4dbff8d22aeca8c2.lean/declarations/proofcarryingcomparator--ab7b76da5ce4d97b685992a5.md) | 69 | `declaration-track:ab7b76da5ce4d97b685992a517d0a35989f600378d5f901161521d7271dca7bc` |
| 5 | `def` | [PriorityLess](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Priority/Varianted62f7a92625e149322795b55b0c9fb09e35756fcaf0eccd4dbff8d22aeca8c2.lean/declarations/priorityless--900a6eafb5c573fce3d102bc.md) | 84 | `declaration-track:900a6eafb5c573fce3d102bca1f9add5a3aa1ad4fceedd0def1ea5f268d78848` |
| 6 | `theorem` | [priorityLess_iff_compare](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Priority/Varianted62f7a92625e149322795b55b0c9fb09e35756fcaf0eccd4dbff8d22aeca8c2.lean/declarations/priorityless-iff-compare--959a016774046c9d72059653.md) | 91 | `result-track:959a016774046c9d72059653d5ad36893c32fcf1c34cb862072682bc75179056` |
| 7 | `theorem` | [priorityLess_irreflexive](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Priority/Varianted62f7a92625e149322795b55b0c9fb09e35756fcaf0eccd4dbff8d22aeca8c2.lean/declarations/priorityless-irreflexive--44f7f58e74ff6ca53432f2fd.md) | 100 | `result-track:44f7f58e74ff6ca53432f2fd44dd5e852957eb8f6bcf6c1ce2a5d7b90aa5d86f` |
| 8 | `theorem` | [priorityLess_transitive](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Priority/Varianted62f7a92625e149322795b55b0c9fb09e35756fcaf0eccd4dbff8d22aeca8c2.lean/declarations/priorityless-transitive--e7e5ad0ddd023f9ff1b2a9a6.md) | 108 | `result-track:e7e5ad0ddd023f9ff1b2a9a605eb4dcfec40441a7fb6f47af0dfee59125b5e78` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
