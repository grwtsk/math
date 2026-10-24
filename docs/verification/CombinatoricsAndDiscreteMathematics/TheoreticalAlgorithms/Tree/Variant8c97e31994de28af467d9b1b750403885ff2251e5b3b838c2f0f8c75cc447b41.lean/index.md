# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Tree.Variant8c97e31994de28af467d9b1b750403885ff2251e5b3b838c2f0f8c75cc447b41

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5e8f450db356672f7d6b89d3974c758924bf1dcc",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variant8c97e31994de28af467d9b1b750403885ff2251e5b3b838c2f0f8c75cc447b41.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variant8c97e31994de28af467d9b1b750403885ff2251e5b3b838c2f0f8c75cc447b41.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variant8c97e31994de28af467d9b1b750403885ff2251e5b3b838c2f0f8c75cc447b41.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5e8f450db356672f7d6b89d3974c758924bf1dcc`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variant8c97e31994de28af467d9b1b750403885ff2251e5b3b838c2f0f8c75cc447b41.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variant8c97e31994de28af467d9b1b750403885ff2251e5b3b838c2f0f8c75cc447b41.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Cube.EdgeRelaxation` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ContainsVariable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variant8c97e31994de28af467d9b1b750403885ff2251e5b3b838c2f0f8c75cc447b41.lean/declarations/containsvariable--1b52135cad5a94a1b8fcece4.md) | 12 | `declaration-track:1b52135cad5a94a1b8fcece4482a8bcf97b4edeecfaecd7bb640da007db72240` |
| 2 | `def` | [ContainsSoftVariable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variant8c97e31994de28af467d9b1b750403885ff2251e5b3b838c2f0f8c75cc447b41.lean/declarations/containssoftvariable--bc7e2f2be7343d87aee5be66.md) | 24 | `declaration-track:bc7e2f2be7343d87aee5be667a1c67c73f367ba3d5ffcf0c20f78d0cc47aa51e` |
| 3 | `theorem` | [containsSoftVariable_of_containsVariable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variant8c97e31994de28af467d9b1b750403885ff2251e5b3b838c2f0f8c75cc447b41.lean/declarations/containssoftvariable-of-containsvariable--7613b24e5a9e77800aee7b79.md) | 37 | `result-track:7613b24e5a9e77800aee7b79fc84a6d34b402d8e18d8a80daccb651ca652e65b` |
| 4 | `theorem` | [eval_not_crisp_of_containsSoftVariable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variant8c97e31994de28af467d9b1b750403885ff2251e5b3b838c2f0f8c75cc447b41.lean/declarations/eval-not-crisp-of-containssoftvariable--344cdb6d43c82bd59cb37b74.md) | 80 | `result-track:344cdb6d43c82bd59cb37b74ce588790840f736c7539aeb5aa9227d55d6b1f15` |
| 5 | `theorem` | [eval_not_crisp_of_containsVariable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variant8c97e31994de28af467d9b1b750403885ff2251e5b3b838c2f0f8c75cc447b41.lean/declarations/eval-not-crisp-of-containsvariable--586e5d1d6fe9e62e73dddf66.md) | 110 | `result-track:586e5d1d6fe9e62e73dddf66336f6af99b0dc7a3807d07a6968d0c38a3f6c49c` |
| 6 | `theorem` | [relaxedValuation_not_crisp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variant8c97e31994de28af467d9b1b750403885ff2251e5b3b838c2f0f8c75cc447b41.lean/declarations/relaxedvaluation-not-crisp--863df94dde031abfd248007c.md) | 124 | `result-track:863df94dde031abfd248007c9ee4a8962eefc33f2a72a8694da1c357a3a1199f` |
| 7 | `theorem` | [epsilon_relaxation_softens_finite_tree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variant8c97e31994de28af467d9b1b750403885ff2251e5b3b838c2f0f8c75cc447b41.lean/declarations/epsilon-relaxation-softens-finite-tree--50032869b97185801e4fa7b8.md) | 134 | `result-track:50032869b97185801e4fa7b81597ef5e85ef2990be44e1eaf1a6ec33677bb998` |
| 8 | `theorem` | [activeRootTree_containsVariable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variant8c97e31994de28af467d9b1b750403885ff2251e5b3b838c2f0f8c75cc447b41.lean/declarations/activeroottree-containsvariable--0a37aa6314876aa58d855bc0.md) | 144 | `result-track:0a37aa6314876aa58d855bc09f4d99551cb02abcc20b08bbaeb41639cb9ce144` |
| 9 | `theorem` | [boundedUnaryTree_containsVariable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variant8c97e31994de28af467d9b1b750403885ff2251e5b3b838c2f0f8c75cc447b41.lean/declarations/boundedunarytree-containsvariable--e1bb530d1f983b924e065090.md) | 151 | `result-track:e1bb530d1f983b924e0650903c3f3ce947176c23c245d419f0f1c57eb427ed28` |
| 10 | `theorem` | [activeRootTree_relaxed_not_crisp_from_finite_tree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variant8c97e31994de28af467d9b1b750403885ff2251e5b3b838c2f0f8c75cc447b41.lean/declarations/activeroottree-relaxed-not-crisp-from-finite-tree--965d191e29f6793fddd58585.md) | 157 | `result-track:965d191e29f6793fddd58585e6d1463fa0a2dc771687e01d0fbc160d6d548ee4` |
| 11 | `theorem` | [boundedUnaryTree_relaxed_not_crisp_from_finite_tree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variant8c97e31994de28af467d9b1b750403885ff2251e5b3b838c2f0f8c75cc447b41.lean/declarations/boundedunarytree-relaxed-not-crisp-from-finite-tree--6c8ae7feaf2ec4d0ebfb8121.md) | 166 | `result-track:6c8ae7feaf2ec4d0ebfb8121ef99ae342e3d44b71110927d46b1d6bba9cd1dc9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
