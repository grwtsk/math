# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Acyclic.Variante5a27908e7ff0f1a5898b150c4af449fab52eacefbb4ab42ccb81b79b397c706

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d4bff1f15d8b88a6833d400266fe92b22dd23f50",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Acyclic/Variante5a27908e7ff0f1a5898b150c4af449fab52eacefbb4ab42ccb81b79b397c706.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Acyclic/Variante5a27908e7ff0f1a5898b150c4af449fab52eacefbb4ab42ccb81b79b397c706.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Acyclic/Variante5a27908e7ff0f1a5898b150c4af449fab52eacefbb4ab42ccb81b79b397c706.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d4bff1f15d8b88a6833d400266fe92b22dd23f50`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Acyclic/Variante5a27908e7ff0f1a5898b150c4af449fab52eacefbb4ab42ccb81b79b397c706.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Acyclic/Variante5a27908e7ff0f1a5898b150c4af449fab52eacefbb4ab42ccb81b79b397c706.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Connectivity` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsAcyclic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Acyclic/Variante5a27908e7ff0f1a5898b150c4af449fab52eacefbb4ab42ccb81b79b397c706.lean/declarations/isacyclic--aa353ced6501d078aad62c8d.md) | 60 | `declaration-track:aa353ced6501d078aad62c8d9617077aeb74ec2e63d8b2810a6e448cbf8408c2` |
| 2 | `structure` | [IsTree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Acyclic/Variante5a27908e7ff0f1a5898b150c4af449fab52eacefbb4ab42ccb81b79b397c706.lean/declarations/istree--70caa895de348d07598f0c29.md) | 65 | `declaration-track:70caa895de348d07598f0c29a0a56fc48e727cdecd85fb4978056bcc3e17efd0` |
| 3 | `theorem` | [isAcyclic_iff_forall_adj_isBridge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Acyclic/Variante5a27908e7ff0f1a5898b150c4af449fab52eacefbb4ab42ccb81b79b397c706.lean/declarations/isacyclic-iff-forall-adj-isbridge--d99020ad20eb8079358c474f.md) | 74 | `result-track:d99020ad20eb8079358c474ffcd5d8b24740614fecd261ad8e333e90553a6c0a` |
| 4 | `theorem` | [isAcyclic_iff_forall_edge_isBridge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Acyclic/Variante5a27908e7ff0f1a5898b150c4af449fab52eacefbb4ab42ccb81b79b397c706.lean/declarations/isacyclic-iff-forall-edge-isbridge--8c807274fc1c1079bb8fb9c4.md) | 89 | `result-track:8c807274fc1c1079bb8fb9c4cd04a603134a00f8f7e0c852f8193504f0aa2601` |
| 5 | `theorem` | [IsAcyclic.path_unique](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Acyclic/Variante5a27908e7ff0f1a5898b150c4af449fab52eacefbb4ab42ccb81b79b397c706.lean/declarations/isacyclic-path-unique--5d3e8505f42cca0f0c210557.md) | 94 | `result-track:5d3e8505f42cca0f0c210557d1b4f0672f59ec6bc4dbcdc0bc2b8162cff8af92` |
| 6 | `theorem` | [isAcyclic_of_path_unique](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Acyclic/Variante5a27908e7ff0f1a5898b150c4af449fab52eacefbb4ab42ccb81b79b397c706.lean/declarations/isacyclic-of-path-unique--bd5cd1cf8a8411fa83bf41f8.md) | 124 | `result-track:bd5cd1cf8a8411fa83bf41f8cb1983bb487a1b77503c981c73bbc2294a121eff` |
| 7 | `theorem` | [isAcyclic_iff_path_unique](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Acyclic/Variante5a27908e7ff0f1a5898b150c4af449fab52eacefbb4ab42ccb81b79b397c706.lean/declarations/isacyclic-iff-path-unique--013447fa9f87507fc4d6faeb.md) | 136 | `result-track:013447fa9f87507fc4d6faeb5157687f7bf9777d9de95d718b1337ae155d20a5` |
| 8 | `theorem` | [isTree_iff_existsUnique_path](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Acyclic/Variante5a27908e7ff0f1a5898b150c4af449fab52eacefbb4ab42ccb81b79b397c706.lean/declarations/istree-iff-existsunique-path--8df4e665db6c2f290219f81f.md) | 140 | `result-track:8df4e665db6c2f290219f81f82b62e578912586b0326b7ce17b997238b9674d6` |
| 9 | `lemma` | [IsTree.existsUnique_path](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Acyclic/Variante5a27908e7ff0f1a5898b150c4af449fab52eacefbb4ab42ccb81b79b397c706.lean/declarations/istree-existsunique-path--11c6b792d60b88215031ca94.md) | 163 | `result-track:11c6b792d60b88215031ca94a4f68287eb8c42bc29343038749f4616fd620e63` |
| 10 | `lemma` | [IsTree.card_edgeFinset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Acyclic/Variante5a27908e7ff0f1a5898b150c4af449fab52eacefbb4ab42ccb81b79b397c706.lean/declarations/istree-card-edgefinset--1beaebdf669931a7db1d04a0.md) | 166 | `result-track:1beaebdf669931a7db1d04a07c871af12f996abbf8d916870d68f91454cd183f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
