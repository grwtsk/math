# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.DirectedGraphs.FiniteAcyclicDependencyClosure.Variantc61c0758f4a8696c.FiniteAcyclicGraphReachabilityAndClosure

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5baba06df4f9891841c770d66aca52be74649ac0",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/DirectedGraphs/FiniteAcyclicDependencyClosure/Variantc61c0758f4a8696c/FiniteAcyclicGraphReachabilityAndClosure.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DirectedGraphs/FiniteAcyclicDependencyClosure/Variantc61c0758f4a8696c/FiniteAcyclicGraphReachabilityAndClosure.lean/index.md) · [Full source](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DirectedGraphs/FiniteAcyclicDependencyClosure/Variantc61c0758f4a8696c/FiniteAcyclicGraphReachabilityAndClosure.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5baba06df4f9891841c770d66aca52be74649ac0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/DirectedGraphs/FiniteAcyclicDependencyClosure/Variantc61c0758f4a8696c/FiniteAcyclicGraphReachabilityAndClosure.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/DirectedGraphs/FiniteAcyclicDependencyClosure/Variantc61c0758f4a8696c/FiniteAcyclicGraphReachabilityAndClosure.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Union` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Relation` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Order.WellFounded` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DependencyGraph](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DirectedGraphs/FiniteAcyclicDependencyClosure/Variantc61c0758f4a8696c/FiniteAcyclicGraphReachabilityAndClosure.lean/declarations/dependencygraph--5c14de25d56377ddc210d232.md) | 41 | `declaration-track:5c14de25d56377ddc210d232172cf07b9308583a52317d09357522cae51c78b0` |
| 2 | `def` | [DependencyGraph.ofRank](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DirectedGraphs/FiniteAcyclicDependencyClosure/Variantc61c0758f4a8696c/FiniteAcyclicGraphReachabilityAndClosure.lean/declarations/dependencygraph-ofrank--666e48e98fc6c9dba43d5873.md) | 55 | `declaration-track:666e48e98fc6c9dba43d5873a8f594be5f3ec9def602cd0680feaedd749ce805` |
| 3 | `def` | [DirectDep](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DirectedGraphs/FiniteAcyclicDependencyClosure/Variantc61c0758f4a8696c/FiniteAcyclicGraphReachabilityAndClosure.lean/declarations/directdep--c9de46dbef7ecc548c75e461.md) | 74 | `declaration-track:c9de46dbef7ecc548c75e4618ccd0f1396df144d18679988fe208415573b9a6d` |
| 4 | `instance` | [(anonymous)](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DirectedGraphs/FiniteAcyclicDependencyClosure/Variantc61c0758f4a8696c/FiniteAcyclicGraphReachabilityAndClosure.lean/declarations/instance--72679723c45a6e54357d96b4.md) | 77 | `declaration-track:72679723c45a6e54357d96b4829e323efab0ab7055fa72d85fa91a4b29e3c4cc` |
| 5 | `abbrev` | [DepReachable](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DirectedGraphs/FiniteAcyclicDependencyClosure/Variantc61c0758f4a8696c/FiniteAcyclicGraphReachabilityAndClosure.lean/declarations/depreachable--bba1b8d8b35613d90e1dd3c6.md) | 81 | `declaration-track:bba1b8d8b35613d90e1dd3c6b07c22ac740294833891a851285ceb2c7c53baa9` |
| 6 | `def` | [dependencyCone](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DirectedGraphs/FiniteAcyclicDependencyClosure/Variantc61c0758f4a8696c/FiniteAcyclicGraphReachabilityAndClosure.lean/declarations/dependencycone--104b534146557a07a043b944.md) | 88 | `declaration-track:104b534146557a07a043b944a771b3a0ed0ee2877e8c185d9954460f1b9a504d` |
| 7 | `theorem` | [dependencyCone_eq](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DirectedGraphs/FiniteAcyclicDependencyClosure/Variantc61c0758f4a8696c/FiniteAcyclicGraphReachabilityAndClosure.lean/declarations/dependencycone-eq--0bfdf17e922b5e571b225684.md) | 94 | `result-track:0bfdf17e922b5e571b225684df898aea4e9ccda95bc838e87efa741b3b2bbf27` |
| 8 | `theorem` | [mem_dependencyCone_iff](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DirectedGraphs/FiniteAcyclicDependencyClosure/Variantc61c0758f4a8696c/FiniteAcyclicGraphReachabilityAndClosure.lean/declarations/mem-dependencycone-iff--1d194d4ae48cf51232f102e7.md) | 101 | `result-track:1d194d4ae48cf51232f102e7c5c56a75ef05c79be9dee6322c3293570e3e62ae` |
| 9 | `instance` | [(anonymous)](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DirectedGraphs/FiniteAcyclicDependencyClosure/Variantc61c0758f4a8696c/FiniteAcyclicGraphReachabilityAndClosure.lean/declarations/instance--2b4e2697ac050c8209186a40.md) | 118 | `declaration-track:2b4e2697ac050c8209186a40d6d71d540d5711a187802884ae3b4d3754d3a730` |
| 10 | `def` | [depClosure](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DirectedGraphs/FiniteAcyclicDependencyClosure/Variantc61c0758f4a8696c/FiniteAcyclicGraphReachabilityAndClosure.lean/declarations/depclosure--968ed9bde609466edfc05683.md) | 123 | `declaration-track:968ed9bde609466edfc05683e5935385d992c4dcf935bd454d90f06de4f34096` |
| 11 | `theorem` | [mem_depClosure_iff](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DirectedGraphs/FiniteAcyclicDependencyClosure/Variantc61c0758f4a8696c/FiniteAcyclicGraphReachabilityAndClosure.lean/declarations/mem-depclosure-iff--52d7d217011ca790d250d023.md) | 127 | `result-track:52d7d217011ca790d250d023a473976b0c4a21a59286f1b3bda0af77bef40f80` |
| 12 | `theorem` | [root_mem_depClosure](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DirectedGraphs/FiniteAcyclicDependencyClosure/Variantc61c0758f4a8696c/FiniteAcyclicGraphReachabilityAndClosure.lean/declarations/root-mem-depclosure--3418c2a817c042d8c1f9f032.md) | 134 | `result-track:3418c2a817c042d8c1f9f032255f37abde4e3a11893d84dfb7d13d724b34b339` |
| 13 | `theorem` | [dependency_mem_depClosure](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DirectedGraphs/FiniteAcyclicDependencyClosure/Variantc61c0758f4a8696c/FiniteAcyclicGraphReachabilityAndClosure.lean/declarations/dependency-mem-depclosure--186efeca87bc64aa0efe23b1.md) | 141 | `result-track:186efeca87bc64aa0efe23b1307b271f2f05c5a5e237dab420ca0e5c972d5b40` |
| 14 | `theorem` | [depClosure_minimal](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DirectedGraphs/FiniteAcyclicDependencyClosure/Variantc61c0758f4a8696c/FiniteAcyclicGraphReachabilityAndClosure.lean/declarations/depclosure-minimal--e2b8c9918b351d2c1b76b403.md) | 153 | `result-track:e2b8c9918b351d2c1b76b403dbb4d96d6a56f989c16214d65f5606faa980ac69` |
| 15 | `theorem` | [depClosure_mono](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DirectedGraphs/FiniteAcyclicDependencyClosure/Variantc61c0758f4a8696c/FiniteAcyclicGraphReachabilityAndClosure.lean/declarations/depclosure-mono--507eb5a91df02d5cb9ad7bf3.md) | 170 | `result-track:507eb5a91df02d5cb9ad7bf31f10473a00450c1bd65e7e09dba8e71ef9f1c809` |
| 16 | `theorem` | [depClosure_idempotent](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DirectedGraphs/FiniteAcyclicDependencyClosure/Variantc61c0758f4a8696c/FiniteAcyclicGraphReachabilityAndClosure.lean/declarations/depclosure-idempotent--ea05ac658761fe6697b1ca53.md) | 180 | `result-track:ea05ac658761fe6697b1ca5339acbd670bd12c182ae280dbb95545e4d9feb464` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
