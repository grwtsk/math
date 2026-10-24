# Verification target: GRWTSK.Algebra.LinearAlgebra.Feedback.Variant9fca828c082f6d51c9658b26a2bcd576026c53560b438907a2bb9babe7f9e780

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dfe9153b15fdfd9a277d5ed7a6eaee81b8470f93",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Feedback/Variant9fca828c082f6d51c9658b26a2bcd576026c53560b438907a2bb9babe7f9e780.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Feedback/Variant9fca828c082f6d51c9658b26a2bcd576026c53560b438907a2bb9babe7f9e780.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Feedback/Variant9fca828c082f6d51c9658b26a2bcd576026c53560b438907a2bb9babe7f9e780.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dfe9153b15fdfd9a277d5ed7a6eaee81b8470f93`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Feedback/Variant9fca828c082f6d51c9658b26a2bcd576026c53560b438907a2bb9babe7f9e780.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Feedback/Variant9fca828c082f6d51c9658b26a2bcd576026c53560b438907a2bb9babe7f9e780.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Cube.BooleanNetwork` — import line 1; external provider; requires a separately pinned dependency.
- `Boolean.Matrix.Cycle` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [DependencyEdge](../../../../../mathematics/Algebra/LinearAlgebra/Feedback/Variant9fca828c082f6d51c9658b26a2bcd576026c53560b438907a2bb9babe7f9e780.lean/declarations/dependencyedge--3af3771a98de0471f5cebe7a.md) | 9 | `declaration-track:3af3771a98de0471f5cebe7aa0cc71687a1409b526c7143423ef37b574381c33` |
| 2 | `def` | [DependencyFeedbackAt](../../../../../mathematics/Algebra/LinearAlgebra/Feedback/Variant9fca828c082f6d51c9658b26a2bcd576026c53560b438907a2bb9babe7f9e780.lean/declarations/dependencyfeedbackat--86b25c8c3b2675cdee5bc7d4.md) | 16 | `declaration-track:86b25c8c3b2675cdee5bc7d49d77db418c4fc8d4f706ce647e7fc3533dbea87e` |
| 3 | `def` | [HasDependencyFeedback](../../../../../mathematics/Algebra/LinearAlgebra/Feedback/Variant9fca828c082f6d51c9658b26a2bcd576026c53560b438907a2bb9babe7f9e780.lean/declarations/hasdependencyfeedback--12b552e9a338b592d5096e8d.md) | 23 | `declaration-track:12b552e9a338b592d5096e8d5c8def9516f74a969c7cef6c9d132dc0febcb903` |
| 4 | `theorem` | [dependencyMatrix_entry](../../../../../mathematics/Algebra/LinearAlgebra/Feedback/Variant9fca828c082f6d51c9658b26a2bcd576026c53560b438907a2bb9babe7f9e780.lean/declarations/dependencymatrix-entry--b3ba5ce7af3837e1bd7b4a48.md) | 28 | `result-track:b3ba5ce7af3837e1bd7b4a48c7624b17b608529ebb2c8ac3eb33fa0c939b8805` |
| 5 | `theorem` | [dependencyEdge_iff_matrixEdge](../../../../../mathematics/Algebra/LinearAlgebra/Feedback/Variant9fca828c082f6d51c9658b26a2bcd576026c53560b438907a2bb9babe7f9e780.lean/declarations/dependencyedge-iff-matrixedge--e4923b05494417aec7a7f656.md) | 34 | `result-track:e4923b05494417aec7a7f656d52f1b8f17604c28d167700e2b0bfcd96e53b1f7` |
| 6 | `theorem` | [dependencyFeedbackAt_of_self_dependency](../../../../../mathematics/Algebra/LinearAlgebra/Feedback/Variant9fca828c082f6d51c9658b26a2bcd576026c53560b438907a2bb9babe7f9e780.lean/declarations/dependencyfeedbackat-of-self-dependency--dcd10c4cfa62fd5a5f364a44.md) | 41 | `result-track:dcd10c4cfa62fd5a5f364a44fca715a4cbe0d67489be4710e45abc058887691c` |
| 7 | `theorem` | [dependencyFeedbackAt_of_mutual_dependency](../../../../../mathematics/Algebra/LinearAlgebra/Feedback/Variant9fca828c082f6d51c9658b26a2bcd576026c53560b438907a2bb9babe7f9e780.lean/declarations/dependencyfeedbackat-of-mutual-dependency--485173ba4c44a7623bf71c83.md) | 48 | `result-track:485173ba4c44a7623bf71c83d7763c8cfc42add10b9350f359c0ff92aab8f084` |
| 8 | `theorem` | [dependencyFeedbackAt_of_closed_walk](../../../../../mathematics/Algebra/LinearAlgebra/Feedback/Variant9fca828c082f6d51c9658b26a2bcd576026c53560b438907a2bb9babe7f9e780.lean/declarations/dependencyfeedbackat-of-closed-walk--38f5ba08284b82b865a07203.md) | 56 | `result-track:38f5ba08284b82b865a072037605f1ec494915986972dca5c65ee278ae6c923d` |
| 9 | `theorem` | [hasDependencyFeedback_of_feedbackAt](../../../../../mathematics/Algebra/LinearAlgebra/Feedback/Variant9fca828c082f6d51c9658b26a2bcd576026c53560b438907a2bb9babe7f9e780.lean/declarations/hasdependencyfeedback-of-feedbackat--5bc7d0e60d02dd9f9b14e475.md) | 68 | `result-track:5bc7d0e60d02dd9f9b14e4751f0299dbe9c72dba16aef5c88265d04023166d63` |
| 10 | `theorem` | [hasDependencyFeedback_of_self_dependency](../../../../../mathematics/Algebra/LinearAlgebra/Feedback/Variant9fca828c082f6d51c9658b26a2bcd576026c53560b438907a2bb9babe7f9e780.lean/declarations/hasdependencyfeedback-of-self-dependency--c2e7054879c0e763e2f3568e.md) | 75 | `result-track:c2e7054879c0e763e2f3568e063fc27e55a6a0bf802590cee39e6a7cc9fa165b` |
| 11 | `theorem` | [hasDependencyFeedback_of_mutual_dependency](../../../../../mathematics/Algebra/LinearAlgebra/Feedback/Variant9fca828c082f6d51c9658b26a2bcd576026c53560b438907a2bb9babe7f9e780.lean/declarations/hasdependencyfeedback-of-mutual-dependency--83b41df1112e3009dbdcd38d.md) | 84 | `result-track:83b41df1112e3009dbdcd38df4202226481ccdde8facebef9e9b45240be529c4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
