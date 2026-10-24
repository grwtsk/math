# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TreePlan.Variant3796440d528d629e1013fbf23330d16dd11c350a1e7b440a132e2c3ed933c57e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "39b6a434abdcb18606dd8bd749d94b9105f127dc",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TreePlan/Variant3796440d528d629e1013fbf23330d16dd11c350a1e7b440a132e2c3ed933c57e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TreePlan/Variant3796440d528d629e1013fbf23330d16dd11c350a1e7b440a132e2c3ed933c57e.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TreePlan/Variant3796440d528d629e1013fbf23330d16dd11c350a1e7b440a132e2c3ed933c57e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `39b6a434abdcb18606dd8bd749d94b9105f127dc`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TreePlan/Variant3796440d528d629e1013fbf23330d16dd11c350a1e7b440a132e2c3ed933c57e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TreePlan/Variant3796440d528d629e1013fbf23330d16dd11c350a1e7b440a132e2c3ed933c57e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Atomize.Formal.RawDerivation` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [TreePlan](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TreePlan/Variant3796440d528d629e1013fbf23330d16dd11c350a1e7b440a132e2c3ed933c57e.lean/declarations/treeplan--509fbd60e6a085c4fdaec784.md) | 75 | `declaration-track:509fbd60e6a085c4fdaec7844d15d511c0a297a9994c1a047d9726b6bd95c5f8` |
| 2 | `def` | [root](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TreePlan/Variant3796440d528d629e1013fbf23330d16dd11c350a1e7b440a132e2c3ed933c57e.lean/declarations/root--f5941e12ed6845a491354d0b.md) | 95 | `declaration-track:f5941e12ed6845a491354d0b73d8f5a5862c592c3b5107596cbc6b9de41ca4aa` |
| 3 | `def` | [size](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TreePlan/Variant3796440d528d629e1013fbf23330d16dd11c350a1e7b440a132e2c3ed933c57e.lean/declarations/size--372f4a0e2138221e079b5511.md) | 111 | `declaration-track:372f4a0e2138221e079b55119d57afc60a274c56badba841491d6935fb18fce9` |
| 4 | `def` | [sizeAll](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TreePlan/Variant3796440d528d629e1013fbf23330d16dd11c350a1e7b440a132e2c3ed933c57e.lean/declarations/sizeall--c80d1eb0fb384bdc7052d0ba.md) | 127 | `declaration-track:c80d1eb0fb384bdc7052d0ba328f8619b8504e6ac8f6f2f560498d919ea6558e` |
| 5 | `def` | [height](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TreePlan/Variant3796440d528d629e1013fbf23330d16dd11c350a1e7b440a132e2c3ed933c57e.lean/declarations/height--a05883b2beefdfbc821723d6.md) | 146 | `declaration-track:a05883b2beefdfbc821723d6875ee0380ec296635ff51efe0bb56e4443857503` |
| 6 | `def` | [heightAll](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TreePlan/Variant3796440d528d629e1013fbf23330d16dd11c350a1e7b440a132e2c3ed933c57e.lean/declarations/heightall--52639daee2b5ff0cab747d95.md) | 162 | `declaration-track:52639daee2b5ff0cab747d9532b7028a838018244f7e0c713f740a919cacdec4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
