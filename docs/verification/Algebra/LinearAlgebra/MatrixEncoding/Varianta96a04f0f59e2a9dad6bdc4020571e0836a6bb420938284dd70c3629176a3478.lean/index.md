# Verification target: GRWTSK.Algebra.LinearAlgebra.MatrixEncoding.Varianta96a04f0f59e2a9dad6bdc4020571e0836a6bb420938284dd70c3629176a3478

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "18d88f02fc6b2c2a90b143d61b14410ff5188733",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/MatrixEncoding/Varianta96a04f0f59e2a9dad6bdc4020571e0836a6bb420938284dd70c3629176a3478.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/MatrixEncoding/Varianta96a04f0f59e2a9dad6bdc4020571e0836a6bb420938284dd70c3629176a3478.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/MatrixEncoding/Varianta96a04f0f59e2a9dad6bdc4020571e0836a6bb420938284dd70c3629176a3478.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `18d88f02fc6b2c2a90b143d61b14410ff5188733`.

Source path: `GRWTSK/Algebra/LinearAlgebra/MatrixEncoding/Varianta96a04f0f59e2a9dad6bdc4020571e0836a6bb420938284dd70c3629176a3478.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/MatrixEncoding/Varianta96a04f0f59e2a9dad6bdc4020571e0836a6bb420938284dd70c3629176a3478.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Tree.List` — import line 1; external provider; requires a separately pinned dependency.
- `Boolean.Matrix` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Tree.cellVariableTree](../../../../../mathematics/Algebra/LinearAlgebra/MatrixEncoding/Varianta96a04f0f59e2a9dad6bdc4020571e0836a6bb420938284dd70c3629176a3478.lean/declarations/tree-cellvariabletree--2b4bbca56db432613be33d45.md) | 9 | `declaration-track:2b4bbca56db432613be33d459f12094a0b39a14f52556b8aff4d51d84edbd753` |
| 2 | `def` | [Tree.cellConstTree](../../../../../mathematics/Algebra/LinearAlgebra/MatrixEncoding/Varianta96a04f0f59e2a9dad6bdc4020571e0836a6bb420938284dd70c3629176a3478.lean/declarations/tree-cellconsttree--25d591e8e39b09ce5f0c62da.md) | 17 | `declaration-track:25d591e8e39b09ce5f0c62da181cf19535f461638ba593af989568be93b83a88` |
| 3 | `def` | [Tree.cellConstNetwork](../../../../../mathematics/Algebra/LinearAlgebra/MatrixEncoding/Varianta96a04f0f59e2a9dad6bdc4020571e0836a6bb420938284dd70c3629176a3478.lean/declarations/tree-cellconstnetwork--57ee6681493b4db7253db472.md) | 28 | `declaration-track:57ee6681493b4db7253db472f0ab105836b8d521675f90c310c47ae33f50ce27` |
| 4 | `def` | [Tree.rowSupportTree](../../../../../mathematics/Algebra/LinearAlgebra/MatrixEncoding/Varianta96a04f0f59e2a9dad6bdc4020571e0836a6bb420938284dd70c3629176a3478.lean/declarations/tree-rowsupporttree--394bc85408d5761d4948bbca.md) | 38 | `declaration-track:394bc85408d5761d4948bbcad69aa3e47bd50ca9fb7a5741ccb041a07cc1333c` |
| 5 | `def` | [Tree.supportTree](../../../../../mathematics/Algebra/LinearAlgebra/MatrixEncoding/Varianta96a04f0f59e2a9dad6bdc4020571e0836a6bb420938284dd70c3629176a3478.lean/declarations/tree-supporttree--2c083b54dd2a3125eef009e5.md) | 53 | `declaration-track:2c083b54dd2a3125eef009e50196f9a77ad132db7bbbe3e6512aa56eb8e4a6be` |
| 6 | `def` | [Tree.anyTrueTree](../../../../../mathematics/Algebra/LinearAlgebra/MatrixEncoding/Varianta96a04f0f59e2a9dad6bdc4020571e0836a6bb420938284dd70c3629176a3478.lean/declarations/tree-anytruetree--2a78e2b3be4f1cf52f99bbe3.md) | 65 | `declaration-track:2a78e2b3be4f1cf52f99bbe3c55c7043ad8235f8ee265a98a7b6b50ec3c729c3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
